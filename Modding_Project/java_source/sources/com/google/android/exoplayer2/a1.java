package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
/* compiled from: MediaPeriodHolder.java */
/* loaded from: classes4.dex */
final class a1 {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.exoplayer2.source.n f17194a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f17195b;

    /* renamed from: c  reason: collision with root package name */
    public final n6.q[] f17196c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f17197d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f17198e;

    /* renamed from: f  reason: collision with root package name */
    public b1 f17199f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f17200g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f17201h;

    /* renamed from: i  reason: collision with root package name */
    private final o5.o0[] f17202i;

    /* renamed from: j  reason: collision with root package name */
    private final z6.h0 f17203j;

    /* renamed from: k  reason: collision with root package name */
    private final g1 f17204k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private a1 f17205l;

    /* renamed from: m  reason: collision with root package name */
    private n6.w f17206m;

    /* renamed from: n  reason: collision with root package name */
    private z6.i0 f17207n;

    /* renamed from: o  reason: collision with root package name */
    private long f17208o;

    public a1(o5.o0[] o0VarArr, long j10, z6.h0 h0Var, a7.b bVar, g1 g1Var, b1 b1Var, z6.i0 i0Var) {
        this.f17202i = o0VarArr;
        this.f17208o = j10;
        this.f17203j = h0Var;
        this.f17204k = g1Var;
        o.b bVar2 = b1Var.f17431a;
        this.f17195b = bVar2.f62787a;
        this.f17199f = b1Var;
        this.f17206m = n6.w.f62838d;
        this.f17207n = i0Var;
        this.f17196c = new n6.q[o0VarArr.length];
        this.f17201h = new boolean[o0VarArr.length];
        this.f17194a = e(bVar2, g1Var, bVar, b1Var.f17432b, b1Var.f17434d);
    }

    private void c(n6.q[] qVarArr) {
        int i10 = 0;
        while (true) {
            o5.o0[] o0VarArr = this.f17202i;
            if (i10 < o0VarArr.length) {
                if (o0VarArr[i10].getTrackType() == -2 && this.f17207n.c(i10)) {
                    qVarArr[i10] = new n6.g();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private static com.google.android.exoplayer2.source.n e(o.b bVar, g1 g1Var, a7.b bVar2, long j10, long j11) {
        com.google.android.exoplayer2.source.n h10 = g1Var.h(bVar, bVar2, j10);
        if (j11 != -9223372036854775807L) {
            return new com.google.android.exoplayer2.source.b(h10, true, 0L, j11);
        }
        return h10;
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            z6.i0 i0Var = this.f17207n;
            if (i10 < i0Var.f71424a) {
                boolean c10 = i0Var.c(i10);
                z6.y yVar = this.f17207n.f71426c[i10];
                if (c10 && yVar != null) {
                    yVar.disable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void g(n6.q[] qVarArr) {
        int i10 = 0;
        while (true) {
            o5.o0[] o0VarArr = this.f17202i;
            if (i10 < o0VarArr.length) {
                if (o0VarArr[i10].getTrackType() == -2) {
                    qVarArr[i10] = null;
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            z6.i0 i0Var = this.f17207n;
            if (i10 < i0Var.f71424a) {
                boolean c10 = i0Var.c(i10);
                z6.y yVar = this.f17207n.f71426c[i10];
                if (c10 && yVar != null) {
                    yVar.enable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private boolean r() {
        if (this.f17205l == null) {
            return true;
        }
        return false;
    }

    private static void u(g1 g1Var, com.google.android.exoplayer2.source.n nVar) {
        try {
            if (nVar instanceof com.google.android.exoplayer2.source.b) {
                g1Var.z(((com.google.android.exoplayer2.source.b) nVar).f18251a);
            } else {
                g1Var.z(nVar);
            }
        } catch (RuntimeException e10) {
            b7.q.d("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public void A() {
        com.google.android.exoplayer2.source.n nVar = this.f17194a;
        if (nVar instanceof com.google.android.exoplayer2.source.b) {
            long j10 = this.f17199f.f17434d;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            ((com.google.android.exoplayer2.source.b) nVar).k(0L, j10);
        }
    }

    public long a(z6.i0 i0Var, long j10, boolean z10) {
        return b(i0Var, j10, z10, new boolean[this.f17202i.length]);
    }

    public long b(z6.i0 i0Var, long j10, boolean z10, boolean[] zArr) {
        boolean z11;
        int i10 = 0;
        while (true) {
            boolean z12 = true;
            if (i10 >= i0Var.f71424a) {
                break;
            }
            boolean[] zArr2 = this.f17201h;
            if (z10 || !i0Var.b(this.f17207n, i10)) {
                z12 = false;
            }
            zArr2[i10] = z12;
            i10++;
        }
        g(this.f17196c);
        f();
        this.f17207n = i0Var;
        h();
        long h10 = this.f17194a.h(i0Var.f71426c, this.f17201h, this.f17196c, zArr, j10);
        c(this.f17196c);
        this.f17198e = false;
        int i11 = 0;
        while (true) {
            n6.q[] qVarArr = this.f17196c;
            if (i11 < qVarArr.length) {
                if (qVarArr[i11] != null) {
                    b7.a.g(i0Var.c(i11));
                    if (this.f17202i[i11].getTrackType() != -2) {
                        this.f17198e = true;
                    }
                } else {
                    if (i0Var.f71426c[i11] == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    b7.a.g(z11);
                }
                i11++;
            } else {
                return h10;
            }
        }
    }

    public void d(long j10) {
        b7.a.g(r());
        this.f17194a.continueLoading(y(j10));
    }

    public long i() {
        long j10;
        if (!this.f17197d) {
            return this.f17199f.f17432b;
        }
        if (this.f17198e) {
            j10 = this.f17194a.getBufferedPositionUs();
        } else {
            j10 = Long.MIN_VALUE;
        }
        if (j10 == Long.MIN_VALUE) {
            return this.f17199f.f17435e;
        }
        return j10;
    }

    @Nullable
    public a1 j() {
        return this.f17205l;
    }

    public long k() {
        if (!this.f17197d) {
            return 0L;
        }
        return this.f17194a.getNextLoadPositionUs();
    }

    public long l() {
        return this.f17208o;
    }

    public long m() {
        return this.f17199f.f17432b + this.f17208o;
    }

    public n6.w n() {
        return this.f17206m;
    }

    public z6.i0 o() {
        return this.f17207n;
    }

    public void p(float f10, u1 u1Var) throws ExoPlaybackException {
        this.f17197d = true;
        this.f17206m = this.f17194a.getTrackGroups();
        z6.i0 v10 = v(f10, u1Var);
        b1 b1Var = this.f17199f;
        long j10 = b1Var.f17432b;
        long j11 = b1Var.f17435e;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        long a10 = a(v10, j10, false);
        long j12 = this.f17208o;
        b1 b1Var2 = this.f17199f;
        this.f17208o = j12 + (b1Var2.f17432b - a10);
        this.f17199f = b1Var2.b(a10);
    }

    public boolean q() {
        if (this.f17197d && (!this.f17198e || this.f17194a.getBufferedPositionUs() == Long.MIN_VALUE)) {
            return true;
        }
        return false;
    }

    public void s(long j10) {
        b7.a.g(r());
        if (this.f17197d) {
            this.f17194a.reevaluateBuffer(y(j10));
        }
    }

    public void t() {
        f();
        u(this.f17204k, this.f17194a);
    }

    public z6.i0 v(float f10, u1 u1Var) throws ExoPlaybackException {
        z6.y[] yVarArr;
        z6.i0 h10 = this.f17203j.h(this.f17202i, n(), this.f17199f.f17431a, u1Var);
        for (z6.y yVar : h10.f71426c) {
            if (yVar != null) {
                yVar.onPlaybackSpeed(f10);
            }
        }
        return h10;
    }

    public void w(@Nullable a1 a1Var) {
        if (a1Var == this.f17205l) {
            return;
        }
        f();
        this.f17205l = a1Var;
        h();
    }

    public void x(long j10) {
        this.f17208o = j10;
    }

    public long y(long j10) {
        return j10 - l();
    }

    public long z(long j10) {
        return j10 + l();
    }
}
