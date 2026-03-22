package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.common.collect.ImmutableList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaPeriodQueue.java */
/* loaded from: classes4.dex */
public final class d1 {

    /* renamed from: a  reason: collision with root package name */
    private final u1.b f17459a = new u1.b();

    /* renamed from: b  reason: collision with root package name */
    private final u1.d f17460b = new u1.d();

    /* renamed from: c  reason: collision with root package name */
    private final p5.a f17461c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f17462d;

    /* renamed from: e  reason: collision with root package name */
    private long f17463e;

    /* renamed from: f  reason: collision with root package name */
    private int f17464f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f17465g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private a1 f17466h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private a1 f17467i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private a1 f17468j;

    /* renamed from: k  reason: collision with root package name */
    private int f17469k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Object f17470l;

    /* renamed from: m  reason: collision with root package name */
    private long f17471m;

    public d1(p5.a aVar, Handler handler) {
        this.f17461c = aVar;
        this.f17462d = handler;
    }

    private static o.b A(u1 u1Var, Object obj, long j10, long j11, u1.d dVar, u1.b bVar) {
        u1Var.l(obj, bVar);
        u1Var.r(bVar.f18537c, dVar);
        int f10 = u1Var.f(obj);
        Object obj2 = obj;
        while (bVar.f18538d == 0 && bVar.f() > 0 && bVar.t(bVar.r()) && bVar.h(0L) == -1) {
            int i10 = f10 + 1;
            if (f10 >= dVar.f18565p) {
                break;
            }
            u1Var.k(i10, bVar, true);
            obj2 = b7.a.e(bVar.f18536b);
            f10 = i10;
        }
        u1Var.l(obj2, bVar);
        int h10 = bVar.h(j10);
        if (h10 == -1) {
            return new o.b(obj2, j11, bVar.g(j10));
        }
        return new o.b(obj2, h10, bVar.n(h10), j11);
    }

    private long C(u1 u1Var, Object obj) {
        int f10;
        int i10 = u1Var.l(obj, this.f17459a).f18537c;
        Object obj2 = this.f17470l;
        if (obj2 != null && (f10 = u1Var.f(obj2)) != -1 && u1Var.j(f10, this.f17459a).f18537c == i10) {
            return this.f17471m;
        }
        for (a1 a1Var = this.f17466h; a1Var != null; a1Var = a1Var.j()) {
            if (a1Var.f17195b.equals(obj)) {
                return a1Var.f17199f.f17431a.f62790d;
            }
        }
        for (a1 a1Var2 = this.f17466h; a1Var2 != null; a1Var2 = a1Var2.j()) {
            int f11 = u1Var.f(a1Var2.f17195b);
            if (f11 != -1 && u1Var.j(f11, this.f17459a).f18537c == i10) {
                return a1Var2.f17199f.f17431a.f62790d;
            }
        }
        long j10 = this.f17463e;
        this.f17463e = 1 + j10;
        if (this.f17466h == null) {
            this.f17470l = obj;
            this.f17471m = j10;
        }
        return j10;
    }

    private boolean E(u1 u1Var) {
        a1 a1Var = this.f17466h;
        if (a1Var == null) {
            return true;
        }
        int f10 = u1Var.f(a1Var.f17195b);
        while (true) {
            f10 = u1Var.h(f10, this.f17459a, this.f17460b, this.f17464f, this.f17465g);
            while (a1Var.j() != null && !a1Var.f17199f.f17437g) {
                a1Var = a1Var.j();
            }
            a1 j10 = a1Var.j();
            if (f10 == -1 || j10 == null || u1Var.f(j10.f17195b) != f10) {
                break;
            }
            a1Var = j10;
        }
        boolean z10 = z(a1Var);
        a1Var.f17199f = r(u1Var, a1Var.f17199f);
        return !z10;
    }

    private boolean d(long j10, long j11) {
        if (j10 != -9223372036854775807L && j10 != j11) {
            return false;
        }
        return true;
    }

    private boolean e(b1 b1Var, b1 b1Var2) {
        if (b1Var.f17432b == b1Var2.f17432b && b1Var.f17431a.equals(b1Var2.f17431a)) {
            return true;
        }
        return false;
    }

    @Nullable
    private b1 h(j1 j1Var) {
        return k(j1Var.f17774a, j1Var.f17775b, j1Var.f17776c, j1Var.f17791r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cc, code lost:
        if (r0.t(r0.r()) != false) goto L26;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.b1 i(com.google.android.exoplayer2.u1 r20, com.google.android.exoplayer2.a1 r21, long r22) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.d1.i(com.google.android.exoplayer2.u1, com.google.android.exoplayer2.a1, long):com.google.android.exoplayer2.b1");
    }

    @Nullable
    private b1 k(u1 u1Var, o.b bVar, long j10, long j11) {
        u1Var.l(bVar.f62787a, this.f17459a);
        if (bVar.b()) {
            return l(u1Var, bVar.f62787a, bVar.f62788b, bVar.f62789c, j10, bVar.f62790d);
        }
        return m(u1Var, bVar.f62787a, j11, j10, bVar.f62790d);
    }

    private b1 l(u1 u1Var, Object obj, int i10, int i11, long j10, long j11) {
        long j12;
        long j13;
        o.b bVar = new o.b(obj, i10, i11, j11);
        long e10 = u1Var.l(bVar.f62787a, this.f17459a).e(bVar.f62788b, bVar.f62789c);
        if (i11 == this.f17459a.n(i10)) {
            j12 = this.f17459a.j();
        } else {
            j12 = 0;
        }
        boolean t10 = this.f17459a.t(bVar.f62788b);
        if (e10 != -9223372036854775807L && j12 >= e10) {
            j13 = Math.max(0L, e10 - 1);
        } else {
            j13 = j12;
        }
        return new b1(bVar, j13, j10, -9223372036854775807L, e10, t10, false, false, false);
    }

    private b1 m(u1 u1Var, Object obj, long j10, long j11, long j12) {
        boolean z10;
        boolean z11;
        long j13;
        long j14;
        long j15;
        long j16 = j10;
        u1Var.l(obj, this.f17459a);
        int g10 = this.f17459a.g(j16);
        int i10 = 1;
        if (g10 == -1) {
            if (this.f17459a.f() > 0) {
                u1.b bVar = this.f17459a;
                if (bVar.t(bVar.r())) {
                    z10 = true;
                }
            }
            z10 = false;
        } else {
            if (this.f17459a.t(g10)) {
                long i11 = this.f17459a.i(g10);
                u1.b bVar2 = this.f17459a;
                if (i11 == bVar2.f18538d && bVar2.s(g10)) {
                    z10 = true;
                    g10 = -1;
                }
            }
            z10 = false;
        }
        o.b bVar3 = new o.b(obj, j12, g10);
        boolean s10 = s(bVar3);
        boolean u10 = u(u1Var, bVar3);
        boolean t10 = t(u1Var, bVar3, s10);
        if (g10 != -1 && this.f17459a.t(g10)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (g10 != -1) {
            j14 = this.f17459a.i(g10);
        } else if (z10) {
            j14 = this.f17459a.f18538d;
        } else {
            j13 = -9223372036854775807L;
            if (j13 == -9223372036854775807L && j13 != Long.MIN_VALUE) {
                j15 = j13;
            } else {
                j15 = this.f17459a.f18538d;
            }
            if (j15 != -9223372036854775807L && j16 >= j15) {
                if (!t10 && z10) {
                    i10 = 0;
                }
                j16 = Math.max(0L, j15 - i10);
            }
            return new b1(bVar3, j16, j11, j13, j15, z11, s10, u10, t10);
        }
        j13 = j14;
        if (j13 == -9223372036854775807L) {
        }
        j15 = this.f17459a.f18538d;
        if (j15 != -9223372036854775807L) {
            if (!t10) {
                i10 = 0;
            }
            j16 = Math.max(0L, j15 - i10);
        }
        return new b1(bVar3, j16, j11, j13, j15, z11, s10, u10, t10);
    }

    private long n(u1 u1Var, Object obj, int i10) {
        u1Var.l(obj, this.f17459a);
        long i11 = this.f17459a.i(i10);
        if (i11 == Long.MIN_VALUE) {
            return this.f17459a.f18538d;
        }
        return i11 + this.f17459a.l(i10);
    }

    private boolean s(o.b bVar) {
        if (!bVar.b() && bVar.f62791e == -1) {
            return true;
        }
        return false;
    }

    private boolean t(u1 u1Var, o.b bVar, boolean z10) {
        int f10 = u1Var.f(bVar.f62787a);
        if (!u1Var.r(u1Var.j(f10, this.f17459a).f18537c, this.f17460b).f18558i && u1Var.v(f10, this.f17459a, this.f17460b, this.f17464f, this.f17465g) && z10) {
            return true;
        }
        return false;
    }

    private boolean u(u1 u1Var, o.b bVar) {
        if (!s(bVar)) {
            return false;
        }
        int i10 = u1Var.l(bVar.f62787a, this.f17459a).f18537c;
        if (u1Var.r(i10, this.f17460b).f18565p != u1Var.f(bVar.f62787a)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(ImmutableList.a aVar, o.b bVar) {
        this.f17461c.Y(aVar.k(), bVar);
    }

    private void x() {
        final o.b bVar;
        final ImmutableList.a r10 = ImmutableList.r();
        for (a1 a1Var = this.f17466h; a1Var != null; a1Var = a1Var.j()) {
            r10.a(a1Var.f17199f.f17431a);
        }
        a1 a1Var2 = this.f17467i;
        if (a1Var2 == null) {
            bVar = null;
        } else {
            bVar = a1Var2.f17199f.f17431a;
        }
        this.f17462d.post(new Runnable() { // from class: com.google.android.exoplayer2.c1
            @Override // java.lang.Runnable
            public final void run() {
                d1.this.w(r10, bVar);
            }
        });
    }

    public o.b B(u1 u1Var, Object obj, long j10) {
        long C = C(u1Var, obj);
        u1Var.l(obj, this.f17459a);
        u1Var.r(this.f17459a.f18537c, this.f17460b);
        boolean z10 = false;
        for (int f10 = u1Var.f(obj); f10 >= this.f17460b.f18564o; f10--) {
            boolean z11 = true;
            u1Var.k(f10, this.f17459a, true);
            if (this.f17459a.f() <= 0) {
                z11 = false;
            }
            z10 |= z11;
            u1.b bVar = this.f17459a;
            if (bVar.h(bVar.f18538d) != -1) {
                obj = b7.a.e(this.f17459a.f18536b);
            }
            if (z10 && (!z11 || this.f17459a.f18538d != 0)) {
                break;
            }
        }
        return A(u1Var, obj, j10, C, this.f17460b, this.f17459a);
    }

    public boolean D() {
        a1 a1Var = this.f17468j;
        if (a1Var != null && (a1Var.f17199f.f17439i || !a1Var.q() || this.f17468j.f17199f.f17435e == -9223372036854775807L || this.f17469k >= 100)) {
            return false;
        }
        return true;
    }

    public boolean F(u1 u1Var, long j10, long j11) {
        b1 b1Var;
        long z10;
        boolean z11;
        a1 a1Var = null;
        for (a1 a1Var2 = this.f17466h; a1Var2 != null; a1Var2 = a1Var2.j()) {
            b1 b1Var2 = a1Var2.f17199f;
            if (a1Var == null) {
                b1Var = r(u1Var, b1Var2);
            } else {
                b1 i10 = i(u1Var, a1Var, j10);
                if (i10 == null) {
                    return !z(a1Var);
                }
                if (!e(b1Var2, i10)) {
                    return !z(a1Var);
                }
                b1Var = i10;
            }
            a1Var2.f17199f = b1Var.a(b1Var2.f17433c);
            if (!d(b1Var2.f17435e, b1Var.f17435e)) {
                a1Var2.A();
                long j12 = b1Var.f17435e;
                if (j12 == -9223372036854775807L) {
                    z10 = Long.MAX_VALUE;
                } else {
                    z10 = a1Var2.z(j12);
                }
                if (a1Var2 == this.f17467i && !a1Var2.f17199f.f17436f && (j11 == Long.MIN_VALUE || j11 >= z10)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (!z(a1Var2) && !z11) {
                    return true;
                }
                return false;
            }
            a1Var = a1Var2;
        }
        return true;
    }

    public boolean G(u1 u1Var, int i10) {
        this.f17464f = i10;
        return E(u1Var);
    }

    public boolean H(u1 u1Var, boolean z10) {
        this.f17465g = z10;
        return E(u1Var);
    }

    @Nullable
    public a1 b() {
        a1 a1Var = this.f17466h;
        if (a1Var == null) {
            return null;
        }
        if (a1Var == this.f17467i) {
            this.f17467i = a1Var.j();
        }
        this.f17466h.t();
        int i10 = this.f17469k - 1;
        this.f17469k = i10;
        if (i10 == 0) {
            this.f17468j = null;
            a1 a1Var2 = this.f17466h;
            this.f17470l = a1Var2.f17195b;
            this.f17471m = a1Var2.f17199f.f17431a.f62790d;
        }
        this.f17466h = this.f17466h.j();
        x();
        return this.f17466h;
    }

    public a1 c() {
        boolean z10;
        a1 a1Var = this.f17467i;
        if (a1Var != null && a1Var.j() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f17467i = this.f17467i.j();
        x();
        return this.f17467i;
    }

    public void f() {
        if (this.f17469k == 0) {
            return;
        }
        a1 a1Var = (a1) b7.a.i(this.f17466h);
        this.f17470l = a1Var.f17195b;
        this.f17471m = a1Var.f17199f.f17431a.f62790d;
        while (a1Var != null) {
            a1Var.t();
            a1Var = a1Var.j();
        }
        this.f17466h = null;
        this.f17468j = null;
        this.f17467i = null;
        this.f17469k = 0;
        x();
    }

    public a1 g(o5.o0[] o0VarArr, z6.h0 h0Var, a7.b bVar, g1 g1Var, b1 b1Var, z6.i0 i0Var) {
        long l10;
        a1 a1Var = this.f17468j;
        if (a1Var == null) {
            l10 = 1000000000000L;
        } else {
            l10 = (a1Var.l() + this.f17468j.f17199f.f17435e) - b1Var.f17432b;
        }
        a1 a1Var2 = new a1(o0VarArr, l10, h0Var, bVar, g1Var, b1Var, i0Var);
        a1 a1Var3 = this.f17468j;
        if (a1Var3 != null) {
            a1Var3.w(a1Var2);
        } else {
            this.f17466h = a1Var2;
            this.f17467i = a1Var2;
        }
        this.f17470l = null;
        this.f17468j = a1Var2;
        this.f17469k++;
        x();
        return a1Var2;
    }

    @Nullable
    public a1 j() {
        return this.f17468j;
    }

    @Nullable
    public b1 o(long j10, j1 j1Var) {
        a1 a1Var = this.f17468j;
        if (a1Var == null) {
            return h(j1Var);
        }
        return i(j1Var.f17774a, a1Var, j10);
    }

    @Nullable
    public a1 p() {
        return this.f17466h;
    }

    @Nullable
    public a1 q() {
        return this.f17467i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.b1 r(com.google.android.exoplayer2.u1 r19, com.google.android.exoplayer2.b1 r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.exoplayer2.source.o$b r3 = r2.f17431a
            boolean r12 = r0.s(r3)
            boolean r13 = r0.u(r1, r3)
            boolean r14 = r0.t(r1, r3, r12)
            com.google.android.exoplayer2.source.o$b r4 = r2.f17431a
            java.lang.Object r4 = r4.f62787a
            com.google.android.exoplayer2.u1$b r5 = r0.f17459a
            r1.l(r4, r5)
            boolean r1 = r3.b()
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = -1
            if (r1 != 0) goto L35
            int r1 = r3.f62791e
            if (r1 != r6) goto L2e
            goto L35
        L2e:
            com.google.android.exoplayer2.u1$b r7 = r0.f17459a
            long r7 = r7.i(r1)
            goto L36
        L35:
            r7 = r4
        L36:
            boolean r1 = r3.b()
            if (r1 == 0) goto L48
            com.google.android.exoplayer2.u1$b r1 = r0.f17459a
            int r4 = r3.f62788b
            int r5 = r3.f62789c
            long r4 = r1.e(r4, r5)
        L46:
            r9 = r4
            goto L5c
        L48:
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 == 0) goto L55
            r4 = -9223372036854775808
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            com.google.android.exoplayer2.u1$b r1 = r0.f17459a
            long r4 = r1.m()
            goto L46
        L5c:
            boolean r1 = r3.b()
            if (r1 == 0) goto L6c
            com.google.android.exoplayer2.u1$b r1 = r0.f17459a
            int r4 = r3.f62788b
            boolean r1 = r1.t(r4)
        L6a:
            r11 = r1
            goto L7c
        L6c:
            int r1 = r3.f62791e
            if (r1 == r6) goto L7a
            com.google.android.exoplayer2.u1$b r4 = r0.f17459a
            boolean r1 = r4.t(r1)
            if (r1 == 0) goto L7a
            r1 = 1
            goto L6a
        L7a:
            r1 = 0
            goto L6a
        L7c:
            com.google.android.exoplayer2.b1 r15 = new com.google.android.exoplayer2.b1
            long r4 = r2.f17432b
            long r1 = r2.f17433c
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.d1.r(com.google.android.exoplayer2.u1, com.google.android.exoplayer2.b1):com.google.android.exoplayer2.b1");
    }

    public boolean v(com.google.android.exoplayer2.source.n nVar) {
        a1 a1Var = this.f17468j;
        if (a1Var != null && a1Var.f17194a == nVar) {
            return true;
        }
        return false;
    }

    public void y(long j10) {
        a1 a1Var = this.f17468j;
        if (a1Var != null) {
            a1Var.s(j10);
        }
    }

    public boolean z(a1 a1Var) {
        boolean z10;
        boolean z11 = false;
        if (a1Var != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (a1Var.equals(this.f17468j)) {
            return false;
        }
        this.f17468j = a1Var;
        while (a1Var.j() != null) {
            a1Var = a1Var.j();
            if (a1Var == this.f17467i) {
                this.f17467i = this.f17466h;
                z11 = true;
            }
            a1Var.t();
            this.f17469k--;
        }
        this.f17468j.w(null);
        x();
        return z11;
    }
}
