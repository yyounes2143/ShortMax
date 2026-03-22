package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.BandwidthMeter;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Clock;
import com.mbridge.msdk.playercommon.exoplayer2.util.SlidingPercentile;
/* loaded from: classes6.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener<Object> {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;
    private long bitrateEstimate;
    private final Clock clock;
    @Nullable
    private final Handler eventHandler;
    @Nullable
    private final BandwidthMeter.EventListener eventListener;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final SlidingPercentile slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;

    /* loaded from: classes6.dex */
    public static final class Builder {
        @Nullable
        private Handler eventHandler;
        @Nullable
        private BandwidthMeter.EventListener eventListener;
        private long initialBitrateEstimate = 1000000;
        private int slidingWindowMaxWeight = 2000;
        private Clock clock = Clock.DEFAULT;

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.eventHandler, this.eventListener, this.initialBitrateEstimate, this.slidingWindowMaxWeight, this.clock);
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
            boolean z10;
            if (handler != null && eventListener != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            Assertions.checkArgument(z10);
            this.eventHandler = handler;
            this.eventListener = eventListener;
            return this;
        }

        public Builder setInitialBitrateEstimate(long j10) {
            this.initialBitrateEstimate = j10;
            return this;
        }

        public Builder setSlidingWindowMaxWeight(int i10) {
            this.slidingWindowMaxWeight = i10;
            return this;
        }
    }

    private void notifyBandwidthSample(final int i10, final long j10, final long j11) {
        Handler handler = this.eventHandler;
        if (handler != null && this.eventListener != null) {
            handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultBandwidthMeter.1
                @Override // java.lang.Runnable
                public void run() {
                    DefaultBandwidthMeter.this.eventListener.onBandwidthSample(i10, j10, j11);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.TransferListener
    public synchronized void onBytesTransferred(Object obj, int i10) {
        this.sampleBytesTransferred += i10;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.TransferListener
    public synchronized void onTransferEnd(Object obj) {
        boolean z10;
        try {
            if (this.streamCount > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            Assertions.checkState(z10);
            long elapsedRealtime = this.clock.elapsedRealtime();
            int i10 = (int) (elapsedRealtime - this.sampleStartTimeMs);
            long j10 = i10;
            this.totalElapsedTimeMs += j10;
            long j11 = this.totalBytesTransferred;
            long j12 = this.sampleBytesTransferred;
            this.totalBytesTransferred = j11 + j12;
            if (i10 > 0) {
                this.slidingPercentile.addSample((int) Math.sqrt(j12), (float) ((8000 * j12) / j10));
                if (this.totalElapsedTimeMs < 2000) {
                    if (this.totalBytesTransferred >= 524288) {
                    }
                }
                this.bitrateEstimate = this.slidingPercentile.getPercentile(0.5f);
            }
            notifyBandwidthSample(i10, this.sampleBytesTransferred, this.bitrateEstimate);
            int i11 = this.streamCount - 1;
            this.streamCount = i11;
            if (i11 > 0) {
                this.sampleStartTimeMs = elapsedRealtime;
            }
            this.sampleBytesTransferred = 0L;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.TransferListener
    public synchronized void onTransferStart(Object obj, DataSpec dataSpec) {
        try {
            if (this.streamCount == 0) {
                this.sampleStartTimeMs = this.clock.elapsedRealtime();
            }
            this.streamCount++;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public DefaultBandwidthMeter() {
        this(null, null, 1000000L, 2000, Clock.DEFAULT);
    }

    @Deprecated
    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener) {
        this(handler, eventListener, 1000000L, 2000, Clock.DEFAULT);
    }

    @Deprecated
    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener, int i10) {
        this(handler, eventListener, 1000000L, i10, Clock.DEFAULT);
    }

    private DefaultBandwidthMeter(@Nullable Handler handler, @Nullable BandwidthMeter.EventListener eventListener, long j10, int i10, Clock clock) {
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.slidingPercentile = new SlidingPercentile(i10);
        this.clock = clock;
        this.bitrateEstimate = j10;
    }
}
