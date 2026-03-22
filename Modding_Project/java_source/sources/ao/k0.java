package ao;

import androidx.annotation.Nullable;
/* compiled from: SeekPoint.java */
/* loaded from: classes8.dex */
public final class k0 {

    /* renamed from: c  reason: collision with root package name */
    public static final k0 f1860c = new k0(0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final long f1861a;

    /* renamed from: b  reason: collision with root package name */
    public final long f1862b;

    public k0(long j10, long j11) {
        this.f1861a = j10;
        this.f1862b = j11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k0.class != obj.getClass()) {
            return false;
        }
        k0 k0Var = (k0) obj;
        if (this.f1861a == k0Var.f1861a && this.f1862b == k0Var.f1862b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f1861a) * 31) + ((int) this.f1862b);
    }

    public String toString() {
        return "[timeUs=" + this.f1861a + ", position=" + this.f1862b + "]";
    }
}
