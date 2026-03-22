package com.ss.ttm.player;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.ss.ttm.utils.Util;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
final class AudioTrackPositionTracker {
    private static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_LATENCY_US = 5000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final int MIN_LATENCY_SAMPLE_INTERVAL_US = 500000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final int PLAYSTATE_PAUSED = 2;
    private static final int PLAYSTATE_PLAYING = 3;
    private static final int PLAYSTATE_STOPPED = 1;
    @Nullable
    private AudioTimestampPoller audioTimestampPoller;
    @Nullable
    private AudioTrack audioTrack;
    private int bufferSize;
    private long bufferSizeUs;
    private long endPlaybackHeadPosition;
    private long forceResetWorkaroundTimeMs;
    @Nullable
    private Method getLatencyMethod;
    private boolean hasData;
    private boolean isOutputPcm;
    private long lastLatencySampleTimeUs;
    private long lastPlayheadSampleTimeUs;
    private long lastRawPlaybackHeadPosition;
    private long latencyUs;
    private final Listener listener;
    private boolean needsPassthroughWorkarounds;
    private int nextPlayheadOffsetIndex;
    private int outputPcmFrameSize;
    private int outputSampleRate;
    private long passthroughWorkaroundPauseOffset;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private long rawPlaybackHeadWrapCount;
    private long smoothedPlayheadOffsetUs;
    private long stopPlaybackHeadPosition;
    private long stopTimestampUs;

    /* loaded from: classes6.dex */
    public interface Listener {
        void onInvalidLatency(long j10);

        void onPositionFramesMismatch(long j10, long j11, long j12, long j13);

        void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13);

        void onUnderrun(int i10, long j10);
    }

    public AudioTrackPositionTracker(Listener listener) {
        this.listener = listener;
        if (Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.playheadOffsets = new long[10];
    }

    private boolean forceHasPendingData() {
        if (this.needsPassthroughWorkarounds && this.audioTrack.getPlayState() == 2 && getPlaybackHeadPosition() == 0) {
            return true;
        }
        return false;
    }

    private long framesToDurationUs(long j10) {
        return (j10 * 1000000) / this.outputSampleRate;
    }

    private long getPlaybackHeadPosition() {
        int playState;
        AudioTrack audioTrack = this.audioTrack;
        if (this.stopTimestampUs != -9223372036854775807L) {
            return Math.min(this.endPlaybackHeadPosition, this.stopPlaybackHeadPosition + ((((SystemClock.elapsedRealtime() * 1000) - this.stopTimestampUs) * this.outputSampleRate) / 1000000));
        }
        if (audioTrack == null || (playState = audioTrack.getPlayState()) == 1) {
            return 0L;
        }
        long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.passthroughWorkaroundPauseOffset = this.lastRawPlaybackHeadPosition;
            }
            playbackHeadPosition += this.passthroughWorkaroundPauseOffset;
        }
        if (Util.SDK_INT <= 28) {
            if (playbackHeadPosition == 0 && this.lastRawPlaybackHeadPosition > 0 && playState == 3) {
                if (this.forceResetWorkaroundTimeMs == -9223372036854775807L) {
                    this.forceResetWorkaroundTimeMs = SystemClock.elapsedRealtime();
                }
                return this.lastRawPlaybackHeadPosition;
            }
            this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        }
        if (this.lastRawPlaybackHeadPosition > playbackHeadPosition) {
            this.rawPlaybackHeadWrapCount++;
        }
        this.lastRawPlaybackHeadPosition = playbackHeadPosition;
        return playbackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
    }

    private long getPlaybackHeadPositionUs() {
        return framesToDurationUs(getPlaybackHeadPosition());
    }

    public static boolean isEncodingLinearPcm(int i10) {
        if (i10 != 3 && i10 != 2 && i10 != Integer.MIN_VALUE && i10 != 1073741824 && i10 != 4) {
            return false;
        }
        return true;
    }

    private void maybePollAndCheckTimestamp(long j10, long j11) {
        AudioTimestampPoller audioTimestampPoller = this.audioTimestampPoller;
        if (audioTimestampPoller != null && audioTimestampPoller.maybePollTimestamp(j10)) {
            long timestampSystemTimeUs = audioTimestampPoller.getTimestampSystemTimeUs();
            long timestampPositionFrames = audioTimestampPoller.getTimestampPositionFrames();
            if (Math.abs(timestampSystemTimeUs - j10) > 5000000) {
                Listener listener = this.listener;
                if (listener != null) {
                    listener.onSystemTimeUsMismatch(timestampPositionFrames, timestampSystemTimeUs, j10, j11);
                }
                audioTimestampPoller.rejectTimestamp();
            } else if (Math.abs(framesToDurationUs(timestampPositionFrames) - j11) > 5000000) {
                Listener listener2 = this.listener;
                if (listener2 != null) {
                    listener2.onPositionFramesMismatch(timestampPositionFrames, timestampSystemTimeUs, j10, j11);
                }
                audioTimestampPoller.rejectTimestamp();
            } else {
                audioTimestampPoller.acceptTimestamp();
            }
        }
    }

    private void maybeSampleSyncParams() {
        long playbackHeadPositionUs = getPlaybackHeadPositionUs();
        if (playbackHeadPositionUs == 0) {
            return;
        }
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
            long[] jArr = this.playheadOffsets;
            int i10 = this.nextPlayheadOffsetIndex;
            jArr[i10] = playbackHeadPositionUs - nanoTime;
            this.nextPlayheadOffsetIndex = (i10 + 1) % 10;
            int i11 = this.playheadOffsetCount;
            if (i11 < 10) {
                this.playheadOffsetCount = i11 + 1;
            }
            this.lastPlayheadSampleTimeUs = nanoTime;
            this.smoothedPlayheadOffsetUs = 0L;
            int i12 = 0;
            while (true) {
                int i13 = this.playheadOffsetCount;
                if (i12 >= i13) {
                    break;
                }
                this.smoothedPlayheadOffsetUs += this.playheadOffsets[i12] / i13;
                i12++;
            }
        }
        if (this.needsPassthroughWorkarounds) {
            return;
        }
        maybePollAndCheckTimestamp(nanoTime, playbackHeadPositionUs);
        maybeUpdateLatency(nanoTime);
    }

    private void maybeUpdateLatency(long j10) {
        Method method;
        if (this.isOutputPcm && (method = this.getLatencyMethod) != null && j10 - this.lastLatencySampleTimeUs >= 500000) {
            try {
                long intValue = (((Integer) method.invoke(this.audioTrack, new Object[0])).intValue() * 1000) - this.bufferSizeUs;
                this.latencyUs = intValue;
                long max = Math.max(intValue, 0L);
                this.latencyUs = max;
                if (max > 5000000) {
                    Listener listener = this.listener;
                    if (listener != null) {
                        listener.onInvalidLatency(max);
                    }
                    this.latencyUs = 0L;
                }
            } catch (Exception unused) {
                this.getLatencyMethod = null;
            }
            this.lastLatencySampleTimeUs = j10;
        }
    }

    private static boolean needsPassthroughWorkarounds(int i10) {
        if (Util.SDK_INT < 23 && (i10 == 5 || i10 == 6)) {
            return true;
        }
        return false;
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
    }

    public int getAvailableBufferSize(long j10) {
        return this.bufferSize - ((int) (j10 - (getPlaybackHeadPosition() * this.outputPcmFrameSize)));
    }

    public long getCurrentPositionUs(boolean z10) {
        long j10;
        if (this.audioTrack.getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long nanoTime = System.nanoTime() / 1000;
        AudioTimestampPoller audioTimestampPoller = this.audioTimestampPoller;
        if (audioTimestampPoller.hasTimestamp()) {
            long framesToDurationUs = framesToDurationUs(audioTimestampPoller.getTimestampPositionFrames());
            if (!audioTimestampPoller.isTimestampAdvancing()) {
                return framesToDurationUs;
            }
            return framesToDurationUs + (nanoTime - audioTimestampPoller.getTimestampSystemTimeUs());
        }
        if (this.playheadOffsetCount == 0) {
            j10 = getPlaybackHeadPositionUs();
        } else {
            j10 = nanoTime + this.smoothedPlayheadOffsetUs;
        }
        if (!z10) {
            return j10 - this.latencyUs;
        }
        return j10;
    }

    public void handleEndOfStream(long j10) {
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
        this.stopTimestampUs = SystemClock.elapsedRealtime() * 1000;
        this.endPlaybackHeadPosition = j10;
    }

    public boolean hasPendingData(long j10) {
        if (j10 <= getPlaybackHeadPosition() && !forceHasPendingData()) {
            return false;
        }
        return true;
    }

    public boolean isPlaying() {
        if (this.audioTrack.getPlayState() == 3) {
            return true;
        }
        return false;
    }

    public boolean isStalled(long j10) {
        if (this.forceResetWorkaroundTimeMs != -9223372036854775807L && j10 > 0 && SystemClock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= FORCE_RESET_WORKAROUND_TIMEOUT_MS) {
            return true;
        }
        return false;
    }

    public boolean mayHandleBuffer(long j10) {
        Listener listener;
        int playState = this.audioTrack.getPlayState();
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2) {
                this.hasData = false;
                return false;
            } else if (playState == 1 && getPlaybackHeadPosition() == 0) {
                return false;
            }
        }
        boolean z10 = this.hasData;
        boolean hasPendingData = hasPendingData(j10);
        this.hasData = hasPendingData;
        if (z10 && !hasPendingData && playState != 1 && (listener = this.listener) != null) {
            listener.onUnderrun(this.bufferSize, this.bufferSizeUs / 1000);
        }
        return true;
    }

    public boolean pause() {
        resetSyncParams();
        if (this.stopTimestampUs == -9223372036854775807L) {
            this.audioTimestampPoller.reset();
            return true;
        }
        return false;
    }

    public void reset() {
        resetSyncParams();
        this.audioTrack = null;
        this.audioTimestampPoller = null;
    }

    public void setAudioTrack(AudioTrack audioTrack, int i10, int i11, int i12) {
        long j10;
        this.audioTrack = audioTrack;
        this.outputPcmFrameSize = i11;
        this.bufferSize = i12;
        this.audioTimestampPoller = new AudioTimestampPoller(audioTrack);
        this.outputSampleRate = audioTrack.getSampleRate();
        this.needsPassthroughWorkarounds = needsPassthroughWorkarounds(i10);
        boolean isEncodingLinearPcm = isEncodingLinearPcm(i10);
        this.isOutputPcm = isEncodingLinearPcm;
        if (isEncodingLinearPcm) {
            j10 = framesToDurationUs(i12 / i11);
        } else {
            j10 = -9223372036854775807L;
        }
        this.bufferSizeUs = j10;
        this.lastRawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.passthroughWorkaroundPauseOffset = 0L;
        this.hasData = false;
        this.stopTimestampUs = -9223372036854775807L;
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.latencyUs = 0L;
    }

    public void start() {
        this.audioTimestampPoller.reset();
    }
}
