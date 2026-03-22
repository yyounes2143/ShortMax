package com.google.firebase;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
/* compiled from: StartupTime.java */
@AutoValue
/* loaded from: classes5.dex */
public abstract class n {
    @NonNull
    public static n a(long j10, long j11, long j12) {
        return new a(j10, j11, j12);
    }

    @NonNull
    public static n e() {
        return a(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
    }

    public abstract long b();

    public abstract long c();

    public abstract long d();
}
