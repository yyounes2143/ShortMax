package com.google.android.exoplayer2.source;
/* compiled from: SequenceableLoader.java */
/* loaded from: classes4.dex */
public interface b0 {

    /* compiled from: SequenceableLoader.java */
    /* loaded from: classes4.dex */
    public interface a<T extends b0> {
        void b(T t10);
    }

    boolean continueLoading(long j10);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j10);
}
