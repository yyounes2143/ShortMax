package io.bidmachine.media3.exoplayer.source;

import io.bidmachine.media3.exoplayer.k1;
/* compiled from: SequenceableLoader.java */
/* loaded from: classes8.dex */
public interface g0 {

    /* compiled from: SequenceableLoader.java */
    /* loaded from: classes8.dex */
    public interface a<T extends g0> {
        void f(T t10);
    }

    boolean b(k1 k1Var);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j10);
}
