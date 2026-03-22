package com.mbridge.msdk.playercommon.exoplayer2.upstream;
/* loaded from: classes6.dex */
public interface BandwidthMeter {

    /* loaded from: classes6.dex */
    public interface EventListener {
        void onBandwidthSample(int i10, long j10, long j11);
    }

    long getBitrateEstimate();
}
