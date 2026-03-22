package t5;

import androidx.annotation.Nullable;
/* compiled from: SeekPoint.java */
/* loaded from: classes4.dex */
public final class a0 {

    /* renamed from: c  reason: collision with root package name */
    public static final a0 f67097c = new a0(0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final long f67098a;

    /* renamed from: b  reason: collision with root package name */
    public final long f67099b;

    public a0(long j10, long j11) {
        this.f67098a = j10;
        this.f67099b = j11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a0.class != obj.getClass()) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (this.f67098a == a0Var.f67098a && this.f67099b == a0Var.f67099b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f67098a) * 31) + ((int) this.f67099b);
    }

    public String toString() {
        return "[timeUs=" + this.f67098a + ", position=" + this.f67099b + "]";
    }
}
