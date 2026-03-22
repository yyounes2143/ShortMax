package com.google.android.exoplayer2.ui;

import androidx.annotation.Nullable;
/* compiled from: TimeBar.java */
/* loaded from: classes4.dex */
public interface y0 {

    /* compiled from: TimeBar.java */
    /* loaded from: classes4.dex */
    public interface a {
        void i(y0 y0Var, long j10, boolean z10);

        void v(y0 y0Var, long j10);

        void x(y0 y0Var, long j10);
    }

    void a(a aVar);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i10);

    void setBufferedPosition(long j10);

    void setDuration(long j10);

    void setEnabled(boolean z10);

    void setPosition(long j10);
}
