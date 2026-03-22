package com.airbnb.lottie;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* compiled from: LottieResult.java */
/* loaded from: classes2.dex */
public final class r0<V> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final V f4726a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f4727b;

    public r0(V v10) {
        this.f4726a = v10;
        this.f4727b = null;
    }

    @Nullable
    public Throwable a() {
        return this.f4727b;
    }

    @Nullable
    public V b() {
        return this.f4726a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r0)) {
            return false;
        }
        r0 r0Var = (r0) obj;
        if (b() != null && b().equals(r0Var.b())) {
            return true;
        }
        if (a() == null || r0Var.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public r0(Throwable th2) {
        this.f4727b = th2;
        this.f4726a = null;
    }
}
