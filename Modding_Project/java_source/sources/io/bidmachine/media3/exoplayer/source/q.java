package io.bidmachine.media3.exoplayer.source;

import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.g0;
import java.io.IOException;
/* compiled from: MediaPeriod.java */
/* loaded from: classes8.dex */
public interface q extends g0 {

    /* compiled from: MediaPeriod.java */
    /* loaded from: classes8.dex */
    public interface a extends g0.a<q> {
        void d(q qVar);
    }

    long a(long j10, gn.i0 i0Var);

    @Override // io.bidmachine.media3.exoplayer.source.g0
    boolean b(k1 k1Var);

    void discardBuffer(long j10, boolean z10);

    void e(a aVar, long j10);

    @Override // io.bidmachine.media3.exoplayer.source.g0
    long getBufferedPositionUs();

    @Override // io.bidmachine.media3.exoplayer.source.g0
    long getNextLoadPositionUs();

    sn.x getTrackGroups();

    long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10);

    @Override // io.bidmachine.media3.exoplayer.source.g0
    boolean isLoading();

    void maybeThrowPrepareError() throws IOException;

    long readDiscontinuity();

    @Override // io.bidmachine.media3.exoplayer.source.g0
    void reevaluateBuffer(long j10);

    long seekToUs(long j10);
}
