package com.ss.ttm.player;

import android.annotation.SuppressLint;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.SystemClock;
import androidx.annotation.RequiresApi;
import com.ss.ttm.utils.AVLogger;
import com.ss.ttm.utils.Util;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Locale;
@Keep
/* loaded from: classes6.dex */
public class AJVoice implements AudioTrack.OnPlaybackPositionUpdateListener {
    private static final int DISCONTINGUNITY_MS = 200;
    private static final int ERROR_FORMAT_ILLEGAL = -12;
    private static final int ERROR_NULL_BUFFER = -10;
    private static final int ERROR_SIZE_ILLEGAL = -11;
    private static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    private static final int MAX_LATENCY_MS = 5000;
    private static final long MAX_PCM_BUFFER_DURATION_US = 750000;
    private static final int MIN_LATENCY_CHECK_MS = 500;
    private static final long MIN_PCM_BUFFER_DURATION_US = 250000;
    private static final int MS_UNIT = 1000;
    private static final int PCM_BUFFER_MULTIPLICATION_FACTOR = 4;
    private static final long RELEASE_WORKAROUND_TIME_MS = 80;
    private static final int SDK_INT = Build.VERSION.SDK_INT;
    private static final int START_NO_SET = -1;
    private static final int S_FAIL = -1;
    private static final int S_OK = 0;
    private static final String TAG = "JAJVoice";
    private static final long TIME_UNSET = -9223372036854775807L;
    private static final int kNoSettingVolume = -1;
    private static String mDeviceName = null;
    private static boolean mNeedReleaseWorkAround = false;
    private AudioTrackPositionTracker audioTrackPositionTracker;
    private byte[] mMinBytes;
    private int mOutputPcmFrameSize;
    private long mRawPlaybackHeadWrapCount;
    private ConditionVariable mReleasingConditionVariable;
    private int mStartMediaTimeMs;
    private AudioTrack mAudioTrack = null;
    private TTPlayer mPlayer = null;
    private int mBlockSize = 2048;
    private int mSampleRate = 44100;
    private int mChannels = 2;
    private int mSampleBytes = 2;
    private int mSampleFormat = 0;
    private int mFrameSamples = 0;
    private AudioManager mAudioManager = null;
    private int mChannelsLayout = 0;
    private int mAudioFormat = 2;
    private float mLeftVolume = -1.0f;
    private int mMaxVolume = 0;
    private volatile boolean mStoped = true;
    private int mSerial = -1;
    private Method getLatencyMethod = null;
    private int mTrackBufferSize = 0;
    private int mLatencyMs = 0;
    private int mBufferSizeMs = 0;
    private long mLastGetLatencyMs = 0;
    private long mWrittenPcmBytes = 0;
    private long lastRawPlaybackHeadPosition = 0;
    private long forceResetWorkaroundTimeMs = -9223372036854775807L;
    private long mStartTime = 0;
    private int mStreamType = 3;
    private int mEnableAudioTrackSmoothClock = 0;
    private int mSessionId = -1;
    private int mContentType = -1;
    private ByteBuffer mPCMFrameBuffer = null;
    private boolean mUseDirectBuffer = false;
    private int mCalibrationType = 0;
    private AudioTrackPool mAudioTrackPool = null;
    private boolean mEnableAudioTrackPool = false;
    private boolean mForceReleaseAudioTrackByPool = false;
    private boolean mBufferSizeError = false;
    @Keep
    private long mNativeObject = 0;

    @CalledByNative
    public AJVoice() {
        AVLogger.InfoTrackLife(TAG, this, "JAJVoice#^");
        this.mStartMediaTimeMs = -1;
        if (mDeviceName == null) {
            String str = Build.DEVICE;
            mDeviceName = str;
            if (str.equals("OnePlus6T")) {
                AVLogger.Debug(TAG, this, "device need workaround");
                mNeedReleaseWorkAround = true;
            }
        }
    }

    private int calTrackBufferSize(int i10) {
        int i11 = i10 * 4;
        int pcmFrameSize = getPcmFrameSize(this.mAudioFormat, this.mChannels);
        long durationUsToBytes = durationUsToBytes(MIN_PCM_BUFFER_DURATION_US, this.mSampleRate, pcmFrameSize);
        long durationUsToBytes2 = durationUsToBytes(MAX_PCM_BUFFER_DURATION_US, this.mSampleRate, pcmFrameSize);
        long j10 = i11;
        if (j10 < durationUsToBytes) {
            i11 = (int) durationUsToBytes;
        } else if (j10 > durationUsToBytes2) {
            i11 = (int) durationUsToBytes2;
        }
        if (i11 >= i10) {
            i10 = i11;
        }
        return (((i10 + pcmFrameSize) - 1) / pcmFrameSize) * pcmFrameSize;
    }

    private AudioTrack createAudioTrack() {
        int i10 = Util.SDK_INT;
        if (i10 >= 26 && this.mCalibrationType == 3) {
            return createAudioTrackV26();
        }
        if (i10 >= 21 && this.mContentType != -1) {
            return createAudioTrackV21();
        }
        return createAudioTrackV9();
    }

    @RequiresApi(api = 21)
    @SuppressLint({"WrongConstant"})
    private AudioTrack createAudioTrackV21() {
        AudioAttributes.Builder builder = new AudioAttributes.Builder();
        builder.setLegacyStreamType(this.mStreamType);
        int i10 = this.mContentType;
        if (i10 != -1) {
            builder.setContentType(i10);
        }
        AudioAttributes build = builder.build();
        AudioFormat build2 = new AudioFormat.Builder().setChannelMask(this.mChannelsLayout).setEncoding(this.mAudioFormat).setSampleRate(this.mSampleRate).build();
        int i11 = this.mTrackBufferSize;
        int i12 = this.mSessionId;
        if (i12 == -1) {
            i12 = 0;
        }
        return new AudioTrack(build, build2, i11, 1, i12);
    }

    @RequiresApi(api = 26)
    @SuppressLint({"WrongConstant"})
    private AudioTrack createAudioTrackV26() {
        AudioTrack.Builder builder = new AudioTrack.Builder();
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setUsage(1);
        int i10 = this.mContentType;
        if (i10 == -1) {
            i10 = 3;
        }
        return builder.setAudioAttributes(usage.setContentType(i10).setLegacyStreamType(this.mStreamType).build()).setAudioFormat(new AudioFormat.Builder().setEncoding(this.mAudioFormat).setSampleRate(this.mSampleRate).setChannelMask(this.mChannelsLayout).build()).setBufferSizeInBytes(this.mTrackBufferSize).build();
    }

    private AudioTrack createAudioTrackV9() {
        if (this.mSessionId == -1) {
            return new AudioTrack(this.mStreamType, this.mSampleRate, this.mChannelsLayout, this.mAudioFormat, this.mTrackBufferSize, 1);
        }
        return new AudioTrack(this.mStreamType, this.mSampleRate, this.mChannelsLayout, this.mAudioFormat, this.mTrackBufferSize, 1, this.mSessionId);
    }

    protected static long durationUsToBytes(long j10, int i10, int i11) {
        return ((j10 * i10) * i11) / 1000000;
    }

    public static int getAudioTrackChannelConfig(int i10) {
        switch (i10) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return 6396;
            default:
                return 0;
        }
    }

    public static int getPcmFrameSize(int i10, int i11) {
        if (i10 != 2) {
            if (i10 == 3) {
                return i11;
            }
            throw new IllegalArgumentException();
        }
        return i11 * 2;
    }

    private long getPlaybackBytes() {
        return getPlaybackHeadPosition() * getPcmFrameSize(this.mAudioFormat, this.mChannels);
    }

    private long getPlaybackHeadPosition() {
        int playState = this.mAudioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = this.mAudioTrack.getPlaybackHeadPosition() & 4294967295L;
        if (playbackHeadPosition == 0 && this.lastRawPlaybackHeadPosition > 0 && playState == 3) {
            if (this.forceResetWorkaroundTimeMs == -9223372036854775807L) {
                this.forceResetWorkaroundTimeMs = SystemClock.elapsedRealtime();
            }
            return this.lastRawPlaybackHeadPosition;
        }
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.lastRawPlaybackHeadPosition = playbackHeadPosition;
        return playbackHeadPosition;
    }

    private long getPlaybackHeadPositionV2() {
        int playState = this.mAudioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = this.mAudioTrack.getPlaybackHeadPosition() & 4294967295L;
        if (Util.SDK_INT <= 29) {
            if (playbackHeadPosition == 0 && this.lastRawPlaybackHeadPosition > 0 && playState == 3) {
                if (this.forceResetWorkaroundTimeMs == -9223372036854775807L) {
                    this.forceResetWorkaroundTimeMs = SystemClock.elapsedRealtime();
                }
                return this.lastRawPlaybackHeadPosition;
            }
            this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        }
        if (this.lastRawPlaybackHeadPosition > playbackHeadPosition) {
            this.mRawPlaybackHeadWrapCount++;
        }
        this.lastRawPlaybackHeadPosition = playbackHeadPosition;
        return playbackHeadPosition + (this.mRawPlaybackHeadWrapCount << 32);
    }

    private long getPlaybackPositionMs() {
        return (getPlaybackHeadPosition() * 1000) / this.mSampleRate;
    }

    private long getWrittenDurationMs() {
        return ((this.mWrittenPcmBytes / getPcmFrameSize(this.mAudioFormat, this.mChannels)) * 1000) / this.mSampleRate;
    }

    private int initAudioTrack() {
        int bufferSizeInFrames;
        if (this.mEnableAudioTrackPool) {
            AudioTrack reuseAudioTrack = this.mAudioTrackPool.getReuseAudioTrack(this.mStreamType, this.mSampleRate, this.mChannelsLayout, this.mAudioFormat, this.mTrackBufferSize, this.mSessionId, this.mContentType);
            if (reuseAudioTrack != null) {
                this.mAudioTrack = reuseAudioTrack;
            }
            AVLogger.Debug(TAG, this, "AudioTrackPool log: initAudioTrack, try get reuse AudioTrack: " + this.mAudioTrack);
        }
        if (this.mAudioTrack == null) {
            try {
                this.mAudioTrack = createAudioTrack();
                if (this.mEnableAudioTrackPool) {
                    AVLogger.Debug(TAG, this, "AudioTrackPool log: create new AudioTrack:" + this.mAudioTrack);
                }
            } catch (Throwable th2) {
                AVLogger.Error(TAG, this, "create audio track failed ,detail = " + th2);
                return -1;
            }
        }
        if (this.mCalibrationType > 1 && (bufferSizeInFrames = this.mAudioTrack.getBufferSizeInFrames() * this.mOutputPcmFrameSize) != this.mTrackBufferSize) {
            AVLogger.Error(TAG, this, "trackBufferSize error, mTrackBufferSize:" + this.mTrackBufferSize + ", actualBufferSize:" + bufferSizeInFrames);
        }
        if (this.mAudioTrack.getState() != 1) {
            try {
                this.mAudioTrack.release();
            } catch (Throwable unused) {
            }
            this.mAudioTrack = null;
            AVLogger.Error(TAG, this, "create audiotrack but failed to initialize");
            return -3;
        }
        return 0;
    }

    private boolean needsReset() {
        if (this.forceResetWorkaroundTimeMs != -9223372036854775807L && this.mWrittenPcmBytes > 0 && SystemClock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= FORCE_RESET_WORKAROUND_TIMEOUT_MS) {
            return true;
        }
        return false;
    }

    private int reconfigure() {
        int i10;
        AudioManager audioManager = (AudioManager) this.mPlayer.getContext().getSystemService("audio");
        this.mAudioManager = audioManager;
        if (audioManager != null) {
            this.mMaxVolume = audioManager.getStreamMaxVolume(this.mStreamType);
        }
        int audioTrackChannelConfig = getAudioTrackChannelConfig(this.mChannels);
        this.mChannelsLayout = audioTrackChannelConfig;
        if (audioTrackChannelConfig == 0) {
            AVLogger.Debug(TAG, this, String.format(Locale.US, "not supoort channel:%d", Integer.valueOf(this.mChannels)));
            return -1;
        }
        int i11 = this.mSampleBytes;
        if (i11 == 1) {
            this.mAudioFormat = 3;
        } else if (i11 == 2) {
            this.mAudioFormat = 2;
        } else {
            AVLogger.Debug(TAG, this, String.format(Locale.US, "not supoort format:%d", Integer.valueOf(i11)));
            return -12;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(this.mSampleRate, audioTrackChannelConfig, this.mAudioFormat);
        if (minBufferSize <= 0) {
            AVLogger.Error(TAG, this, "getMinBufferSize failed, trace: sampleRate = " + this.mSampleRate + ", mChannelsLayout = " + this.mChannelsLayout + ", mAudioFormat = " + this.mAudioFormat);
            return minBufferSize;
        }
        this.mTrackBufferSize = minBufferSize;
        if (this.mCalibrationType > 1) {
            i10 = this.mBlockSize;
        } else {
            i10 = minBufferSize;
        }
        boolean z10 = this.mUseDirectBuffer;
        if (!z10 || Util.SDK_INT < 21) {
            try {
                this.mMinBytes = new byte[i10];
            } catch (OutOfMemoryError unused) {
                AVLogger.Error(TAG, this, "out of memory error when new audio buffer for audiotrack");
                return -10;
            }
        }
        if (z10 && this.mPCMFrameBuffer == null) {
            try {
                this.mPCMFrameBuffer = ByteBuffer.allocateDirect(i10);
            } catch (Exception unused2) {
                AVLogger.Error(TAG, this, "out of memory error when new audio buffer for audiotrack");
                return -10;
            }
        }
        int pcmFrameSize = getPcmFrameSize(this.mAudioFormat, this.mChannels);
        this.mOutputPcmFrameSize = pcmFrameSize;
        this.mBufferSizeMs = ((this.mTrackBufferSize / pcmFrameSize) * 1000) / this.mSampleRate;
        AVLogger.Debug(TAG, this, String.format(Locale.US, "mNativeObject:%d,mBlockSize:%d,mSampleRate:%d,mChannels:%d,mSampBit:%d,minBufSize:%d,mFrameSamples:%d,format:%d", Long.valueOf(this.mNativeObject), Integer.valueOf(this.mBlockSize), Integer.valueOf(this.mSampleRate), Integer.valueOf(this.mChannelsLayout), Integer.valueOf(this.mSampleBytes), Integer.valueOf(minBufferSize), Integer.valueOf(this.mFrameSamples), Integer.valueOf(this.mAudioFormat)));
        this.mRawPlaybackHeadWrapCount = 0L;
        this.mBufferSizeError = false;
        return initAudioTrack();
    }

    private int reset() {
        this.mWrittenPcmBytes = 0L;
        this.mLatencyMs = 0;
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.mLastGetLatencyMs = 0L;
        this.lastRawPlaybackHeadPosition = 0L;
        this.mLeftVolume = -1.0f;
        if (this.mEnableAudioTrackPool) {
            AVLogger.Debug(TAG, this, "AudioTrackPool log: reset try pushback AudioTrack: " + this.mAudioTrack);
            this.mAudioTrack.stop();
            this.mAudioTrackPool.pushAudioTrackBack(this.mAudioTrack, this.mForceReleaseAudioTrackByPool, this.mStreamType, this.mSampleRate, this.mChannelsLayout, this.mAudioFormat, this.mTrackBufferSize, this.mSessionId, this.mContentType);
            this.mAudioTrack = null;
        } else {
            AudioTrack audioTrack = this.mAudioTrack;
            this.mAudioTrack = null;
            try {
                audioTrack.flush();
                audioTrack.release();
            } catch (Exception unused) {
            }
        }
        return reconfigure();
    }

    @CalledByNative
    public void close() {
        if (this.mEnableAudioTrackPool) {
            this.mAudioTrackPool.pushAudioTrackBack(this.mAudioTrack, this.mForceReleaseAudioTrackByPool, this.mStreamType, this.mSampleRate, this.mChannelsLayout, this.mAudioFormat, this.mTrackBufferSize, this.mSessionId, this.mContentType);
            this.mAudioTrack = null;
        }
        final AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            this.mAudioTrack = null;
            try {
                AVThreadPool.addTask(new Runnable() { // from class: com.ss.ttm.player.AJVoice.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AVLogger.Debug(AJVoice.TAG, this, "start release task");
                        AJVoice.this.releaseTrack(audioTrack);
                    }
                });
            } catch (Throwable th2) {
                AVLogger.Warn(TAG, this, "create close thread fail = " + th2);
                releaseTrack(audioTrack);
            }
        }
        AVLogger.InfoTrackLife(TAG, this, "JAJVoice#$");
    }

    @CalledByNative
    public void flush() {
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                audioTrackPositionTracker.reset();
            }
            this.mStartMediaTimeMs = -1;
            if (this.mCalibrationType >= 1) {
                this.lastRawPlaybackHeadPosition = 0L;
                this.mRawPlaybackHeadWrapCount = 0L;
            }
            this.mAudioTrack.flush();
            if (this.mWrittenPcmBytes > 0) {
                this.mWrittenPcmBytes = 0L;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @CalledByNative
    public int getAvailableBufferSize() {
        int playbackHeadPositionV2 = (int) (this.mWrittenPcmBytes - (getPlaybackHeadPositionV2() * this.mOutputPcmFrameSize));
        if (this.mCalibrationType > 1) {
            int bufferSizeInFrames = this.mAudioTrack.getBufferSizeInFrames() * this.mOutputPcmFrameSize;
            if (bufferSizeInFrames != this.mTrackBufferSize && !this.mBufferSizeError) {
                AVLogger.Error(TAG, this, "trackBufferSize error, mTrackBufferSize:" + this.mTrackBufferSize + ", actualBufferSize:" + bufferSizeInFrames);
                this.mBufferSizeError = true;
            }
            return bufferSizeInFrames - playbackHeadPositionV2;
        }
        return this.mTrackBufferSize - playbackHeadPositionV2;
    }

    @CalledByNative
    public int getCurrentPositionMs() {
        AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
        if (audioTrackPositionTracker == null) {
            return 0;
        }
        return this.mStartMediaTimeMs + ((int) (audioTrackPositionTracker.getCurrentPositionUs(false) / 1000));
    }

    @CalledByNative
    public int getEOSDelayMs() {
        long j10;
        long writtenDurationMs = getWrittenDurationMs();
        long playbackPositionMs = getPlaybackPositionMs();
        if (getLatency() > 0) {
            j10 = this.mLatencyMs - this.mBufferSizeMs;
        } else {
            j10 = 0;
        }
        return (int) ((writtenDurationMs - playbackPositionMs) + j10);
    }

    @CalledByNative
    public int getLatency() {
        if (this.mCalibrationType == 0) {
            getPlaybackHeadPosition();
        }
        if (this.getLatencyMethod != null) {
            long nanoTime = System.nanoTime() / 1000000;
            if (nanoTime - this.mLastGetLatencyMs > 500) {
                try {
                    int intValue = ((Integer) this.getLatencyMethod.invoke(this.mAudioTrack, null)).intValue();
                    this.mLatencyMs = intValue;
                    int max = Math.max(intValue, 0);
                    this.mLatencyMs = max;
                    if (max > 5000) {
                        AVLogger.Warn(TAG, this, "Ignoring impossibly large audio latency: " + this.mLatencyMs);
                        this.mLatencyMs = 0;
                    }
                } catch (Exception unused) {
                    this.getLatencyMethod = null;
                }
                this.mLastGetLatencyMs = nanoTime;
            }
        }
        return this.mLatencyMs;
    }

    @CalledByNative
    public int getMaxVolume() {
        AVLogger.d("ttmn", "getMaxVolume:" + this.mMaxVolume);
        return this.mMaxVolume;
    }

    @CalledByNative
    public ByteBuffer getPCMFrameBuffer() {
        return this.mPCMFrameBuffer;
    }

    @CalledByNative
    public int getSessionId() {
        AudioTrack audioTrack;
        int i10 = this.mSessionId;
        if (i10 == -1 && (audioTrack = this.mAudioTrack) != null) {
            return audioTrack.getAudioSessionId();
        }
        return i10;
    }

    @CalledByNative
    public int getTrackBufferSize() {
        if (this.mCalibrationType > 1) {
            return this.mAudioTrack.getBufferSizeInFrames() * this.mOutputPcmFrameSize;
        }
        return this.mTrackBufferSize;
    }

    @CalledByNative
    public int getUnderRunCount() {
        AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            return audioTrack.getUnderrunCount();
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    @com.ss.ttm.player.CalledByNative
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float getVolume() {
        /*
            r4 = this;
            com.ss.ttm.player.TTPlayer r0 = r4.mPlayer
            r1 = 0
            if (r0 == 0) goto L20
            float r0 = r4.mLeftVolume
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L20
            android.media.AudioManager r0 = r4.mAudioManager
            if (r0 == 0) goto L20
            int r2 = r4.mStreamType     // Catch: java.lang.Exception -> L20
            int r0 = r0.getStreamMaxVolume(r2)     // Catch: java.lang.Exception -> L20
            android.media.AudioManager r2 = r4.mAudioManager     // Catch: java.lang.Exception -> L21
            int r3 = r4.mStreamType     // Catch: java.lang.Exception -> L21
            int r1 = r2.getStreamVolume(r3)     // Catch: java.lang.Exception -> L21
            goto L21
        L20:
            r0 = r1
        L21:
            if (r1 < 0) goto L25
            float r0 = (float) r1
            return r0
        L25:
            if (r0 <= 0) goto L2b
            int r0 = r0 / 4
            float r0 = (float) r0
            return r0
        L2b:
            r0 = 1092616192(0x41200000, float:10.0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.AJVoice.getVolume():float");
    }

    @CalledByNative
    public int open(long j10, TTPlayer tTPlayer) {
        if (this.mEnableAudioTrackPool) {
            this.mAudioTrackPool = AudioTrackPool.getInstance();
        }
        this.mNativeObject = j10;
        AVLogger.Debug(TAG, this, String.format(Locale.US, "native object:%d", Long.valueOf(j10)));
        this.mPlayer = tTPlayer;
        int reconfigure = reconfigure();
        if (reconfigure == 0) {
            float f10 = this.mLeftVolume;
            if (f10 != -1.0f) {
                setVolume(f10, f10);
            }
            try {
                this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        return reconfigure;
    }

    @CalledByNative
    public void pause() {
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                audioTrackPositionTracker.pause();
            }
            this.mAudioTrack.pause();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void releaseTrack(AudioTrack audioTrack) {
        if (audioTrack == null) {
            return;
        }
        try {
            if (mNeedReleaseWorkAround) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.mStartTime;
                if (elapsedRealtime <= RELEASE_WORKAROUND_TIME_MS) {
                    Thread.sleep(RELEASE_WORKAROUND_TIME_MS - elapsedRealtime);
                }
            }
        } catch (Exception unused) {
        }
        try {
            audioTrack.release();
        } catch (Exception e10) {
            AVLogger.Warn(TAG, this, "release in invalid state = " + e10);
        }
    }

    @CalledByNative
    public void resume() {
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                AudioTrack audioTrack = this.mAudioTrack;
                int i10 = this.mAudioFormat;
                audioTrackPositionTracker.setAudioTrack(audioTrack, i10, getPcmFrameSize(i10, this.mChannels), this.mTrackBufferSize);
                this.audioTrackPositionTracker.start();
            }
            this.mAudioTrack.play();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @CalledByNative
    public void setAudioTrackSmoothClock(int i10) {
        if (Util.SDK_INT >= 21) {
            this.mEnableAudioTrackSmoothClock = i10;
            if (i10 > 0) {
                this.audioTrackPositionTracker = new AudioTrackPositionTracker(null);
                this.mReleasingConditionVariable = new ConditionVariable(true);
            }
        }
    }

    @CalledByNative
    public void setCalibrationType(int i10) {
        AVLogger.Debug(TAG, this, "type: " + i10);
        this.mCalibrationType = i10;
    }

    @CalledByNative
    public void setContentType(int i10) {
        AVLogger.Debug(TAG, this, "setContentType contentType=" + i10);
        this.mContentType = i10;
        if (this.mPlayer != null && reset() == 0) {
            start();
        }
    }

    @CalledByNative
    public void setEnableAudioTrackPool(boolean z10) {
        AVLogger.Debug(TAG, this, "enableAudioTrackPool: " + z10);
        this.mEnableAudioTrackPool = z10;
    }

    @CalledByNative
    public void setSampleInfo(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.mSampleRate = i11;
        this.mChannels = i12;
        this.mBlockSize = i13;
        this.mSampleBytes = i15;
        this.mSampleFormat = i10;
        this.mFrameSamples = i14;
        AVLogger.Debug(TAG, this, "mBlockSize:" + this.mBlockSize);
    }

    @CalledByNative
    public void setSessionId(int i10) {
        AVLogger.Debug(TAG, this, "setSessionId : " + i10);
        this.mSessionId = i10;
        if (this.mPlayer != null && reset() == 0) {
            start();
        }
    }

    @CalledByNative
    public void setStreamType(int i10) {
        AVLogger.Debug(TAG, this, "set Stream type : " + i10);
        this.mStreamType = i10;
        if (this.mPlayer != null && reset() == 0) {
            start();
        }
    }

    @CalledByNative
    public void setTrackVolume(float f10, float f11) {
        AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            this.mForceReleaseAudioTrackByPool = true;
            if (SDK_INT < 21) {
                audioTrack.setStereoVolume(f10, f11);
            } else {
                audioTrack.setVolume(f10);
            }
        }
    }

    @CalledByNative
    public void setUseDirectBuffer(boolean z10) {
        AVLogger.Debug(TAG, this, "useDirectBuffer: " + z10);
        this.mUseDirectBuffer = z10;
    }

    @CalledByNative
    public void setVolume(float f10, float f11) {
        AudioTrack audioTrack;
        try {
            int i10 = this.mMaxVolume;
            if (i10 < f10) {
                f10 = i10;
            }
            if (f11 == -1048575.0f && (audioTrack = this.mAudioTrack) != null) {
                this.mForceReleaseAudioTrackByPool = true;
                audioTrack.setStereoVolume(f10, f11);
            } else {
                AudioManager audioManager = this.mAudioManager;
                if (audioManager != null) {
                    audioManager.setStreamVolume(this.mStreamType, (int) f10, 0);
                }
            }
            this.mLeftVolume = f10;
        } catch (Exception unused) {
        }
    }

    @CalledByNative
    public int start() {
        AVLogger.Debug(TAG, this, "start--->");
        if (this.mAudioTrack == null) {
            AVLogger.Error(TAG, this, "audiotrack start before created");
            return -2;
        }
        this.mStoped = false;
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                AudioTrack audioTrack = this.mAudioTrack;
                int i10 = this.mAudioFormat;
                audioTrackPositionTracker.setAudioTrack(audioTrack, i10, getPcmFrameSize(i10, this.mChannels), this.mTrackBufferSize);
            }
            this.mAudioTrack.play();
            this.mSerial = -1;
            AVLogger.Debug(TAG, this, "end---->");
            if (mNeedReleaseWorkAround) {
                this.mStartTime = SystemClock.elapsedRealtime();
            }
            return 0;
        } catch (Throwable th2) {
            AVLogger.Error(TAG, this, "audioTrack start failed = " + th2);
            return -3;
        }
    }

    @CalledByNative
    public void stop() {
        AVLogger.Debug(TAG, this, "stop");
        if (this.mStoped) {
            return;
        }
        this.mStoped = true;
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                audioTrackPositionTracker.pause();
            }
            if (this.mEnableAudioTrackPool) {
                this.mAudioTrack.stop();
            } else {
                this.mAudioTrack.pause();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        AVLogger.Debug(TAG, this, "stop");
    }

    @CalledByNative
    public int write(byte[] bArr, int i10, int i11, int i12) {
        if (bArr == null || bArr.length == 0) {
            AVLogger.Error(TAG, this, "buffer is nullpoint");
            return -10;
        }
        int i13 = 0;
        if (this.mStoped) {
            return 0;
        }
        if (this.mSerial != i12) {
            this.mSerial = i12;
            if (this.mWrittenPcmBytes > 0) {
                this.mAudioTrack.flush();
            }
        }
        try {
            int write = this.mAudioTrack.write(bArr, i10, i11);
            if (write < 0) {
                AVLogger.Error(TAG, this, "write failed : ret: " + write + ", size = " + i11);
                return write;
            }
            this.mWrittenPcmBytes += write;
            if (needsReset() && reset() == 0) {
                i13 = start();
            }
            return i13 == 0 ? write : i13;
        } catch (Exception e10) {
            AVLogger.Debug(TAG, this, "write fail = " + e10);
            e10.printStackTrace();
            return -1;
        }
    }

    @CalledByNative
    @RequiresApi(api = 21)
    public int write(byte[] bArr, int i10, int i11, int i12, long j10) {
        if (bArr == null || bArr.length == 0) {
            AVLogger.Error(TAG, this, "buffer is nullpoint");
            return -10;
        }
        int i13 = 0;
        if (this.mStoped) {
            return 0;
        }
        if (this.mSerial != i12) {
            this.mSerial = i12;
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null && this.mReleasingConditionVariable != null) {
                if (this.mWrittenPcmBytes > 0) {
                    if (audioTrackPositionTracker.isPlaying()) {
                        this.mAudioTrack.pause();
                    }
                    this.audioTrackPositionTracker.reset();
                    this.mStartMediaTimeMs = -1;
                    this.mReleasingConditionVariable.close();
                    this.mWrittenPcmBytes = 0L;
                    final AudioTrack audioTrack = this.mAudioTrack;
                    this.mAudioTrack = null;
                    AVThreadPool.addTask(new Runnable() { // from class: com.ss.ttm.player.AJVoice.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                AVLogger.Debug(AJVoice.TAG, this, "release old track");
                                audioTrack.flush();
                                audioTrack.release();
                                AVLogger.Debug(AJVoice.TAG, this, "release old track done");
                            } finally {
                                if (AJVoice.this.mReleasingConditionVariable != null) {
                                    AJVoice.this.mReleasingConditionVariable.open();
                                }
                            }
                        }
                    });
                    this.mReleasingConditionVariable.block();
                    reconfigure();
                    start();
                    this.mSerial = i12;
                }
            } else if (this.mWrittenPcmBytes > 0) {
                this.mAudioTrack.flush();
            }
        }
        int i14 = this.mStartMediaTimeMs;
        if (i14 == -1) {
            this.mStartMediaTimeMs = (int) Math.max(0L, j10);
        } else {
            long writtenDurationMs = i14 + getWrittenDurationMs();
            if (Math.abs(writtenDurationMs - j10) > FORCE_RESET_WORKAROUND_TIMEOUT_MS) {
                AVLogger.Error(TAG, this, "Discontinuity detected [expected " + writtenDurationMs + ", got " + j10 + "]");
                this.mStartMediaTimeMs = (int) (((long) this.mStartMediaTimeMs) + (j10 - writtenDurationMs));
            }
        }
        try {
            int write = this.mAudioTrack.write(bArr, i10, i11);
            if (write < 0) {
                AVLogger.Error(TAG, this, "write failed : ret: " + write + ", size = " + i11);
                return write;
            }
            this.mWrittenPcmBytes += write;
            if (needsReset() && reset() == 0) {
                i13 = start();
                this.mSerial = i12;
            }
            return i13 == 0 ? write : i13;
        } catch (Exception e10) {
            AVLogger.Debug(TAG, this, "write fail = " + e10);
            e10.printStackTrace();
            return -1;
        }
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onMarkerReached(AudioTrack audioTrack) {
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onPeriodicNotification(AudioTrack audioTrack) {
    }

    @SuppressLint({"NewApi"})
    public int write(ByteBuffer byteBuffer, int i10) {
        if (byteBuffer == null) {
            AVLogger.Error(TAG, this, "buffer is nullpoint");
            return -1;
        } else if (this.mAudioTrack.write(byteBuffer, 0, byteBuffer.capacity()) != byteBuffer.capacity()) {
            return -1;
        } else {
            byteBuffer.flip();
            return 0;
        }
    }

    @CalledByNative
    public int write(int i10, int i11, int i12) {
        int write;
        int i13 = 0;
        if (this.mStoped) {
            return 0;
        }
        if (this.mSerial != i12) {
            this.mSerial = i12;
            if (this.mWrittenPcmBytes > 0) {
                this.mAudioTrack.flush();
            }
        }
        try {
            if (Util.SDK_INT >= 21) {
                write = this.mAudioTrack.write(this.mPCMFrameBuffer, i11, 0);
            } else {
                this.mPCMFrameBuffer.get(this.mMinBytes, i10, i11);
                write = this.mAudioTrack.write(this.mMinBytes, 0, i11);
            }
            if (write < 0) {
                AVLogger.Error(TAG, this, "write failed : ret: " + write + ", size = " + i11);
                return write;
            }
            this.mWrittenPcmBytes += write;
            if (needsReset() && reset() == 0) {
                i13 = start();
            }
            this.mPCMFrameBuffer.clear();
            return i13 == 0 ? write : i13;
        } catch (Exception e10) {
            AVLogger.Debug(TAG, this, "write fail = " + e10);
            e10.printStackTrace();
            return -1;
        }
    }
}
