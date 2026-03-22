package o5;

import androidx.annotation.Nullable;
/* compiled from: SeekParameters.java */
/* loaded from: classes4.dex */
public final class r0 {

    /* renamed from: c  reason: collision with root package name */
    public static final r0 f63125c;

    /* renamed from: d  reason: collision with root package name */
    public static final r0 f63126d;

    /* renamed from: e  reason: collision with root package name */
    public static final r0 f63127e;

    /* renamed from: f  reason: collision with root package name */
    public static final r0 f63128f;

    /* renamed from: g  reason: collision with root package name */
    public static final r0 f63129g;

    /* renamed from: a  reason: collision with root package name */
    public final long f63130a;

    /* renamed from: b  reason: collision with root package name */
    public final long f63131b;

    static {
        r0 r0Var = new r0(0L, 0L);
        f63125c = r0Var;
        f63126d = new r0(Long.MAX_VALUE, Long.MAX_VALUE);
        f63127e = new r0(Long.MAX_VALUE, 0L);
        f63128f = new r0(0L, Long.MAX_VALUE);
        f63129g = r0Var;
    }

    public r0(long j10, long j11) {
        boolean z10;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        b7.a.a(j11 >= 0);
        this.f63130a = j10;
        this.f63131b = j11;
    }

    public long a(long j10, long j11, long j12) {
        boolean z10;
        long j13 = this.f63130a;
        if (j13 == 0 && this.f63131b == 0) {
            return j10;
        }
        long L0 = b7.s0.L0(j10, j13, Long.MIN_VALUE);
        long b10 = b7.s0.b(j10, this.f63131b, Long.MAX_VALUE);
        boolean z11 = false;
        if (L0 <= j11 && j11 <= b10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (L0 <= j12 && j12 <= b10) {
            z11 = true;
        }
        if (z10 && z11) {
            if (Math.abs(j11 - j10) <= Math.abs(j12 - j10)) {
                return j11;
            }
            return j12;
        } else if (z10) {
            return j11;
        } else {
            if (z11) {
                return j12;
            }
            return L0;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r0.class != obj.getClass()) {
            return false;
        }
        r0 r0Var = (r0) obj;
        if (this.f63130a == r0Var.f63130a && this.f63131b == r0Var.f63131b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f63130a) * 31) + ((int) this.f63131b);
    }
}
