package io.bidmachine.media3.ui;

import androidx.annotation.Nullable;
/* compiled from: TimeBar.java */
/* loaded from: classes8.dex */
public interface j1 {

    /* compiled from: TimeBar.java */
    /* loaded from: classes8.dex */
    public interface a {
        void K(j1 j1Var, long j10, boolean z10);

        void i(j1 j1Var, long j10);

        void x(j1 j1Var, long j10);
    }

    void a(a aVar);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i10);

    void setBufferedPosition(long j10);

    void setDuration(long j10);

    void setEnabled(boolean z10);

    void setPosition(long j10);
}
