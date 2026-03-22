package gn;

import androidx.annotation.Nullable;
/* compiled from: RendererConfiguration.java */
/* loaded from: classes8.dex */
public final class g0 {

    /* renamed from: c  reason: collision with root package name */
    public static final g0 f52456c = new g0(0, false);

    /* renamed from: a  reason: collision with root package name */
    public final int f52457a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f52458b;

    public g0(int i10, boolean z10) {
        this.f52457a = i10;
        this.f52458b = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g0.class != obj.getClass()) {
            return false;
        }
        g0 g0Var = (g0) obj;
        if (this.f52457a == g0Var.f52457a && this.f52458b == g0Var.f52458b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f52457a << 1) + (this.f52458b ? 1 : 0);
    }
}
