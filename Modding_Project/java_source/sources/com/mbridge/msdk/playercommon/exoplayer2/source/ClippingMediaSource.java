package com.mbridge.msdk.playercommon.exoplayer2.source;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public final class ClippingMediaSource extends CompositeMediaSource<Void> {
    private final boolean allowDynamicClippingUpdates;
    private IllegalClippingException clippingError;
    private ClippingTimeline clippingTimeline;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    @Nullable
    private Object manifest;
    private final ArrayList<ClippingMediaPeriod> mediaPeriods;
    private final MediaSource mediaSource;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final Timeline.Window window;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class ClippingTimeline extends ForwardingTimeline {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        public ClippingTimeline(Timeline timeline, long j10, long j11) throws IllegalClippingException {
            super(timeline);
            long max;
            boolean z10 = false;
            if (timeline.getPeriodCount() == 1) {
                Timeline.Window window = timeline.getWindow(0, new Timeline.Window(), false);
                long max2 = Math.max(0L, j10);
                if (j11 == Long.MIN_VALUE) {
                    max = window.durationUs;
                } else {
                    max = Math.max(0L, j11);
                }
                long j12 = window.durationUs;
                int i10 = (j12 > (-9223372036854775807L) ? 1 : (j12 == (-9223372036854775807L) ? 0 : -1));
                if (i10 != 0) {
                    max = max > j12 ? j12 : max;
                    if (max2 != 0 && !window.isSeekable) {
                        throw new IllegalClippingException(1);
                    }
                    if (max2 > max) {
                        throw new IllegalClippingException(2);
                    }
                }
                this.startUs = max2;
                this.endUs = max;
                int i11 = (max > (-9223372036854775807L) ? 1 : (max == (-9223372036854775807L) ? 0 : -1));
                this.durationUs = i11 != 0 ? max - max2 : -9223372036854775807L;
                if (window.isDynamic && (i11 == 0 || (i10 != 0 && max == j12))) {
                    z10 = true;
                }
                this.isDynamic = z10;
                return;
            }
            throw new IllegalClippingException(0);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ForwardingTimeline, com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i10, Timeline.Period period, boolean z10) {
            long j10;
            this.timeline.getPeriod(0, period, z10);
            long positionInWindowUs = period.getPositionInWindowUs() - this.startUs;
            long j11 = this.durationUs;
            if (j11 == -9223372036854775807L) {
                j10 = -9223372036854775807L;
            } else {
                j10 = j11 - positionInWindowUs;
            }
            return period.set(period.f28475id, period.uid, 0, j10, positionInWindowUs);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ForwardingTimeline, com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public Timeline.Window getWindow(int i10, Timeline.Window window, boolean z10, long j10) {
            this.timeline.getWindow(0, window, z10, 0L);
            long j11 = window.positionInFirstPeriodUs;
            long j12 = this.startUs;
            window.positionInFirstPeriodUs = j11 + j12;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            long j13 = window.defaultPositionUs;
            if (j13 != -9223372036854775807L) {
                long max = Math.max(j13, j12);
                window.defaultPositionUs = max;
                long j14 = this.endUs;
                if (j14 != -9223372036854775807L) {
                    max = Math.min(max, j14);
                }
                window.defaultPositionUs = max - this.startUs;
            }
            long usToMs = C.usToMs(this.startUs);
            long j15 = window.presentationStartTimeMs;
            if (j15 != -9223372036854775807L) {
                window.presentationStartTimeMs = j15 + usToMs;
            }
            long j16 = window.windowStartTimeMs;
            if (j16 != -9223372036854775807L) {
                window.windowStartTimeMs = j16 + usToMs;
            }
            return window;
        }
    }

    /* loaded from: classes6.dex */
    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes6.dex */
        public @interface Reason {
        }

        public IllegalClippingException(int i10) {
            super("Illegal clipping: " + getReasonDescription(i10));
            this.reason = i10;
        }

        private static String getReasonDescription(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return "unknown";
                    }
                    return "start exceeds end";
                }
                return "not seekable to start";
            }
            return "invalid period count";
        }
    }

    public ClippingMediaSource(MediaSource mediaSource, long j10, long j11) {
        this(mediaSource, j10, j11, true, false, false);
    }

    private void refreshClippedTimeline(Timeline timeline) {
        long j10;
        timeline.getWindow(0, this.window);
        long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs();
        long j11 = Long.MIN_VALUE;
        if (this.clippingTimeline != null && !this.mediaPeriods.isEmpty() && !this.allowDynamicClippingUpdates) {
            long j12 = this.periodStartUs - positionInFirstPeriodUs;
            if (this.endUs != Long.MIN_VALUE) {
                j11 = this.periodEndUs - positionInFirstPeriodUs;
            }
            j10 = j12;
        } else {
            long j13 = this.startUs;
            long j14 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long defaultPositionUs = this.window.getDefaultPositionUs();
                j13 += defaultPositionUs;
                j14 += defaultPositionUs;
            }
            this.periodStartUs = positionInFirstPeriodUs + j13;
            if (this.endUs != Long.MIN_VALUE) {
                j11 = positionInFirstPeriodUs + j14;
            }
            this.periodEndUs = j11;
            int size = this.mediaPeriods.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mediaPeriods.get(i10).updateClipping(this.periodStartUs, this.periodEndUs);
            }
            j10 = j13;
            j11 = j14;
        }
        try {
            ClippingTimeline clippingTimeline = new ClippingTimeline(timeline, j10, j11);
            this.clippingTimeline = clippingTimeline;
            refreshSourceInfo(clippingTimeline, this.manifest);
        } catch (IllegalClippingException e10) {
            this.clippingError = e10;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.mediaSource.createPeriod(mediaPeriodId, allocator), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource, com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException == null) {
            super.maybeThrowSourceInfoRefreshError();
            return;
        }
        throw illegalClippingException;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource, com.mbridge.msdk.playercommon.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(ExoPlayer exoPlayer, boolean z10) {
        super.prepareSourceInternal(exoPlayer, z10);
        prepareChildSource(null, this.mediaSource);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        Assertions.checkState(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (this.mediaPeriods.isEmpty() && !this.allowDynamicClippingUpdates) {
            refreshClippedTimeline(this.clippingTimeline.timeline);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource, com.mbridge.msdk.playercommon.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.clippingError = null;
        this.clippingTimeline = null;
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j10, long j11, boolean z10) {
        this(mediaSource, j10, j11, z10, false, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource
    public long getMediaTimeForChildMediaTime(Void r72, long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long usToMs = C.usToMs(this.startUs);
        long max = Math.max(0L, j10 - usToMs);
        long j11 = this.endUs;
        return j11 != Long.MIN_VALUE ? Math.min(C.usToMs(j11) - usToMs, max) : max;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource
    public void onChildSourceInfoRefreshed(Void r12, MediaSource mediaSource, Timeline timeline, @Nullable Object obj) {
        if (this.clippingError != null) {
            return;
        }
        this.manifest = obj;
        refreshClippedTimeline(timeline);
    }

    public ClippingMediaSource(MediaSource mediaSource, long j10) {
        this(mediaSource, 0L, j10, true, false, true);
    }

    public ClippingMediaSource(MediaSource mediaSource, long j10, long j11, boolean z10, boolean z11, boolean z12) {
        Assertions.checkArgument(j10 >= 0);
        this.mediaSource = (MediaSource) Assertions.checkNotNull(mediaSource);
        this.startUs = j10;
        this.endUs = j11;
        this.enableInitialDiscontinuity = z10;
        this.allowDynamicClippingUpdates = z11;
        this.relativeToDefaultPosition = z12;
        this.mediaPeriods = new ArrayList<>();
        this.window = new Timeline.Window();
    }
}
