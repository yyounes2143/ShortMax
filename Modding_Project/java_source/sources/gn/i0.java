package gn;

import androidx.annotation.Nullable;
import cn.m0;
/* compiled from: SeekParameters.java */
/* loaded from: classes8.dex */
public final class i0 {

    /* renamed from: c  reason: collision with root package name */
    public static final i0 f52459c;

    /* renamed from: d  reason: collision with root package name */
    public static final i0 f52460d;

    /* renamed from: e  reason: collision with root package name */
    public static final i0 f52461e;

    /* renamed from: f  reason: collision with root package name */
    public static final i0 f52462f;

    /* renamed from: g  reason: collision with root package name */
    public static final i0 f52463g;

    /* renamed from: a  reason: collision with root package name */
    public final long f52464a;

    /* renamed from: b  reason: collision with root package name */
    public final long f52465b;

    static {
        i0 i0Var = new i0(0L, 0L);
        f52459c = i0Var;
        f52460d = new i0(Long.MAX_VALUE, Long.MAX_VALUE);
        f52461e = new i0(Long.MAX_VALUE, 0L);
        f52462f = new i0(0L, Long.MAX_VALUE);
        f52463g = i0Var;
    }

    public i0(long j10, long j11) {
        boolean z10;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        cn.a.a(j11 >= 0);
        this.f52464a = j10;
        this.f52465b = j11;
    }

    public long a(long j10, long j11, long j12) {
        boolean z10;
        long j13 = this.f52464a;
        if (j13 == 0 && this.f52465b == 0) {
            return j10;
        }
        long q12 = m0.q1(j10, j13, Long.MIN_VALUE);
        long c10 = m0.c(j10, this.f52465b, Long.MAX_VALUE);
        boolean z11 = false;
        if (q12 <= j11 && j11 <= c10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (q12 <= j12 && j12 <= c10) {
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
            return q12;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i0.class != obj.getClass()) {
            return false;
        }
        i0 i0Var = (i0) obj;
        if (this.f52464a == i0Var.f52464a && this.f52465b == i0Var.f52465b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f52464a) * 31) + ((int) this.f52465b);
    }
}
