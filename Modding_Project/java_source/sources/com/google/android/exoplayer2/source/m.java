package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b7.s0;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.y0;
/* compiled from: MaskingMediaSource.java */
/* loaded from: classes4.dex */
public final class m extends f0 {

    /* renamed from: m  reason: collision with root package name */
    private final boolean f18353m;

    /* renamed from: n  reason: collision with root package name */
    private final u1.d f18354n;

    /* renamed from: o  reason: collision with root package name */
    private final u1.b f18355o;

    /* renamed from: p  reason: collision with root package name */
    private a f18356p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private l f18357q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f18358r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f18359s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f18360t;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaskingMediaSource.java */
    /* loaded from: classes4.dex */
    public static final class a extends j {

        /* renamed from: f  reason: collision with root package name */
        public static final Object f18361f = new Object();
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final Object f18362d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final Object f18363e;

        private a(u1 u1Var, @Nullable Object obj, @Nullable Object obj2) {
            super(u1Var);
            this.f18362d = obj;
            this.f18363e = obj2;
        }

        public static a A(y0 y0Var) {
            return new a(new b(y0Var), u1.d.f18546r, f18361f);
        }

        public static a B(u1 u1Var, @Nullable Object obj, @Nullable Object obj2) {
            return new a(u1Var, obj, obj2);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public int f(Object obj) {
            Object obj2;
            u1 u1Var = this.f18338c;
            if (f18361f.equals(obj) && (obj2 = this.f18363e) != null) {
                obj = obj2;
            }
            return u1Var.f(obj);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.b k(int i10, u1.b bVar, boolean z10) {
            this.f18338c.k(i10, bVar, z10);
            if (s0.c(bVar.f18536b, this.f18363e) && z10) {
                bVar.f18536b = f18361f;
            }
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public Object q(int i10) {
            Object q10 = this.f18338c.q(i10);
            if (s0.c(q10, this.f18363e)) {
                return f18361f;
            }
            return q10;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.d s(int i10, u1.d dVar, long j10) {
            this.f18338c.s(i10, dVar, j10);
            if (s0.c(dVar.f18550a, this.f18362d)) {
                dVar.f18550a = u1.d.f18546r;
            }
            return dVar;
        }

        public a z(u1 u1Var) {
            return new a(u1Var, this.f18362d, this.f18363e);
        }
    }

    /* compiled from: MaskingMediaSource.java */
    @VisibleForTesting
    /* loaded from: classes4.dex */
    public static final class b extends u1 {

        /* renamed from: c  reason: collision with root package name */
        private final y0 f18364c;

        public b(y0 y0Var) {
            this.f18364c = y0Var;
        }

        @Override // com.google.android.exoplayer2.u1
        public int f(Object obj) {
            if (obj == a.f18361f) {
                return 0;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.u1
        public u1.b k(int i10, u1.b bVar, boolean z10) {
            Integer num;
            Object obj = null;
            if (z10) {
                num = 0;
            } else {
                num = null;
            }
            if (z10) {
                obj = a.f18361f;
            }
            bVar.w(num, obj, 0, -9223372036854775807L, 0L, o6.c.f63136g, true);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.u1
        public int m() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.u1
        public Object q(int i10) {
            return a.f18361f;
        }

        @Override // com.google.android.exoplayer2.u1
        public u1.d s(int i10, u1.d dVar, long j10) {
            dVar.k(u1.d.f18546r, this.f18364c, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            dVar.f18561l = true;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.u1
        public int t() {
            return 1;
        }
    }

    public m(o oVar, boolean z10) {
        super(oVar);
        boolean z11;
        if (z10 && oVar.c()) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f18353m = z11;
        this.f18354n = new u1.d();
        this.f18355o = new u1.b();
        u1 b10 = oVar.b();
        if (b10 != null) {
            this.f18356p = a.B(b10, null, null);
            this.f18360t = true;
            return;
        }
        this.f18356p = a.A(oVar.a());
    }

    private Object R(Object obj) {
        if (this.f18356p.f18363e != null && this.f18356p.f18363e.equals(obj)) {
            return a.f18361f;
        }
        return obj;
    }

    private Object S(Object obj) {
        if (this.f18356p.f18363e != null && obj.equals(a.f18361f)) {
            return this.f18356p.f18363e;
        }
        return obj;
    }

    private void U(long j10) {
        l lVar = this.f18357q;
        int f10 = this.f18356p.f(lVar.f18344a.f62787a);
        if (f10 == -1) {
            return;
        }
        long j11 = this.f18356p.j(f10, this.f18355o).f18538d;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        lVar.k(j10);
    }

    @Override // com.google.android.exoplayer2.source.f0
    @Nullable
    protected o.b G(o.b bVar) {
        return bVar.c(R(bVar.f62787a));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.exoplayer2.source.f0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void M(com.google.android.exoplayer2.u1 r15) {
        /*
            r14 = this;
            boolean r0 = r14.f18359s
            if (r0 == 0) goto L19
            com.google.android.exoplayer2.source.m$a r0 = r14.f18356p
            com.google.android.exoplayer2.source.m$a r15 = r0.z(r15)
            r14.f18356p = r15
            com.google.android.exoplayer2.source.l r15 = r14.f18357q
            if (r15 == 0) goto Lae
            long r0 = r15.e()
            r14.U(r0)
            goto Lae
        L19:
            boolean r0 = r15.u()
            if (r0 == 0) goto L36
            boolean r0 = r14.f18360t
            if (r0 == 0) goto L2a
            com.google.android.exoplayer2.source.m$a r0 = r14.f18356p
            com.google.android.exoplayer2.source.m$a r15 = r0.z(r15)
            goto L32
        L2a:
            java.lang.Object r0 = com.google.android.exoplayer2.u1.d.f18546r
            java.lang.Object r1 = com.google.android.exoplayer2.source.m.a.f18361f
            com.google.android.exoplayer2.source.m$a r15 = com.google.android.exoplayer2.source.m.a.B(r15, r0, r1)
        L32:
            r14.f18356p = r15
            goto Lae
        L36:
            com.google.android.exoplayer2.u1$d r0 = r14.f18354n
            r1 = 0
            r15.r(r1, r0)
            com.google.android.exoplayer2.u1$d r0 = r14.f18354n
            long r2 = r0.f()
            com.google.android.exoplayer2.u1$d r0 = r14.f18354n
            java.lang.Object r0 = r0.f18550a
            com.google.android.exoplayer2.source.l r4 = r14.f18357q
            if (r4 == 0) goto L74
            long r4 = r4.g()
            com.google.android.exoplayer2.source.m$a r6 = r14.f18356p
            com.google.android.exoplayer2.source.l r7 = r14.f18357q
            com.google.android.exoplayer2.source.o$b r7 = r7.f18344a
            java.lang.Object r7 = r7.f62787a
            com.google.android.exoplayer2.u1$b r8 = r14.f18355o
            r6.l(r7, r8)
            com.google.android.exoplayer2.u1$b r6 = r14.f18355o
            long r6 = r6.q()
            long r6 = r6 + r4
            com.google.android.exoplayer2.source.m$a r4 = r14.f18356p
            com.google.android.exoplayer2.u1$d r5 = r14.f18354n
            com.google.android.exoplayer2.u1$d r1 = r4.r(r1, r5)
            long r4 = r1.f()
            int r1 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r1 == 0) goto L74
            r12 = r6
            goto L75
        L74:
            r12 = r2
        L75:
            com.google.android.exoplayer2.u1$d r9 = r14.f18354n
            com.google.android.exoplayer2.u1$b r10 = r14.f18355o
            r11 = 0
            r8 = r15
            android.util.Pair r1 = r8.n(r9, r10, r11, r12)
            java.lang.Object r2 = r1.first
            java.lang.Object r1 = r1.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r3 = r1.longValue()
            boolean r1 = r14.f18360t
            if (r1 == 0) goto L94
            com.google.android.exoplayer2.source.m$a r0 = r14.f18356p
            com.google.android.exoplayer2.source.m$a r15 = r0.z(r15)
            goto L98
        L94:
            com.google.android.exoplayer2.source.m$a r15 = com.google.android.exoplayer2.source.m.a.B(r15, r0, r2)
        L98:
            r14.f18356p = r15
            com.google.android.exoplayer2.source.l r15 = r14.f18357q
            if (r15 == 0) goto Lae
            r14.U(r3)
            com.google.android.exoplayer2.source.o$b r15 = r15.f18344a
            java.lang.Object r0 = r15.f62787a
            java.lang.Object r0 = r14.S(r0)
            com.google.android.exoplayer2.source.o$b r15 = r15.c(r0)
            goto Laf
        Lae:
            r15 = 0
        Laf:
            r0 = 1
            r14.f18360t = r0
            r14.f18359s = r0
            com.google.android.exoplayer2.source.m$a r0 = r14.f18356p
            r14.x(r0)
            if (r15 == 0) goto Lc6
            com.google.android.exoplayer2.source.l r0 = r14.f18357q
            java.lang.Object r0 = b7.a.e(r0)
            com.google.android.exoplayer2.source.l r0 = (com.google.android.exoplayer2.source.l) r0
            r0.c(r15)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.m.M(com.google.android.exoplayer2.u1):void");
    }

    @Override // com.google.android.exoplayer2.source.f0
    public void P() {
        if (!this.f18353m) {
            this.f18358r = true;
            O();
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    /* renamed from: Q */
    public l f(o.b bVar, a7.b bVar2, long j10) {
        l lVar = new l(bVar, bVar2, j10);
        lVar.m(this.f18316k);
        if (this.f18359s) {
            lVar.c(bVar.c(S(bVar.f62787a)));
        } else {
            this.f18357q = lVar;
            if (!this.f18358r) {
                this.f18358r = true;
                O();
            }
        }
        return lVar;
    }

    public u1 T() {
        return this.f18356p;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void i(n nVar) {
        ((l) nVar).l();
        if (nVar == this.f18357q) {
            this.f18357q = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    public void y() {
        this.f18359s = false;
        this.f18358r = false;
        super.y();
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
    }
}
