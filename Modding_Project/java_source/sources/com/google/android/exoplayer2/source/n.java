package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.source.b0;
import java.io.IOException;
import o5.r0;
/* compiled from: MediaPeriod.java */
/* loaded from: classes4.dex */
public interface n extends b0 {

    /* compiled from: MediaPeriod.java */
    /* loaded from: classes4.dex */
    public interface a extends b0.a<n> {
        void d(n nVar);
    }

    long a(long j10, r0 r0Var);

    @Override // com.google.android.exoplayer2.source.b0
    boolean continueLoading(long j10);

    void discardBuffer(long j10, boolean z10);

    void f(a aVar, long j10);

    @Override // com.google.android.exoplayer2.source.b0
    long getBufferedPositionUs();

    @Override // com.google.android.exoplayer2.source.b0
    long getNextLoadPositionUs();

    n6.w getTrackGroups();

    long h(z6.y[] yVarArr, boolean[] zArr, n6.q[] qVarArr, boolean[] zArr2, long j10);

    @Override // com.google.android.exoplayer2.source.b0
    boolean isLoading();

    void maybeThrowPrepareError() throws IOException;

    long readDiscontinuity();

    @Override // com.google.android.exoplayer2.source.b0
    void reevaluateBuffer(long j10);

    long seekToUs(long j10);
}
