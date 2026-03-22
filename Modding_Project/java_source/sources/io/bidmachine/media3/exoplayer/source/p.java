package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.Objects;
import zm.a0;
/* compiled from: MaskingMediaSource.java */
/* loaded from: classes8.dex */
public final class p extends l0 {

    /* renamed from: m  reason: collision with root package name */
    private final boolean f56977m;

    /* renamed from: n  reason: collision with root package name */
    private final a0.c f56978n;

    /* renamed from: o  reason: collision with root package name */
    private final a0.b f56979o;

    /* renamed from: p  reason: collision with root package name */
    private a f56980p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private o f56981q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f56982r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f56983s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f56984t;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaskingMediaSource.java */
    /* loaded from: classes8.dex */
    public static final class a extends m {

        /* renamed from: h  reason: collision with root package name */
        public static final Object f56985h = new Object();
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final Object f56986f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final Object f56987g;

        private a(zm.a0 a0Var, @Nullable Object obj, @Nullable Object obj2) {
            super(a0Var);
            this.f56986f = obj;
            this.f56987g = obj2;
        }

        public static a u(zm.q qVar) {
            return new a(new b(qVar), a0.c.f71747q, f56985h);
        }

        public static a v(zm.a0 a0Var, @Nullable Object obj, @Nullable Object obj2) {
            return new a(a0Var, obj, obj2);
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public int b(Object obj) {
            Object obj2;
            zm.a0 a0Var = this.f56962e;
            if (f56985h.equals(obj) && (obj2 = this.f56987g) != null) {
                obj = obj2;
            }
            return a0Var.b(obj);
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.b g(int i10, a0.b bVar, boolean z10) {
            this.f56962e.g(i10, bVar, z10);
            if (Objects.equals(bVar.f71741b, this.f56987g) && z10) {
                bVar.f71741b = f56985h;
            }
            return bVar;
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public Object m(int i10) {
            Object m10 = this.f56962e.m(i10);
            if (Objects.equals(m10, this.f56987g)) {
                return f56985h;
            }
            return m10;
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.c o(int i10, a0.c cVar, long j10) {
            this.f56962e.o(i10, cVar, j10);
            if (Objects.equals(cVar.f71757a, this.f56986f)) {
                cVar.f71757a = a0.c.f71747q;
            }
            return cVar;
        }

        public a t(zm.a0 a0Var) {
            return new a(a0Var, this.f56986f, this.f56987g);
        }
    }

    /* compiled from: MaskingMediaSource.java */
    @VisibleForTesting
    /* loaded from: classes8.dex */
    public static final class b extends zm.a0 {

        /* renamed from: e  reason: collision with root package name */
        private final zm.q f56988e;

        public b(zm.q qVar) {
            this.f56988e = qVar;
        }

        @Override // zm.a0
        public int b(Object obj) {
            if (obj == a.f56985h) {
                return 0;
            }
            return -1;
        }

        @Override // zm.a0
        public a0.b g(int i10, a0.b bVar, boolean z10) {
            Integer num;
            Object obj = null;
            if (z10) {
                num = 0;
            } else {
                num = null;
            }
            if (z10) {
                obj = a.f56985h;
            }
            bVar.t(num, obj, 0, -9223372036854775807L, 0L, zm.b.f71773g, true);
            return bVar;
        }

        @Override // zm.a0
        public int i() {
            return 1;
        }

        @Override // zm.a0
        public Object m(int i10) {
            return a.f56985h;
        }

        @Override // zm.a0
        public a0.c o(int i10, a0.c cVar, long j10) {
            cVar.g(a0.c.f71747q, this.f56988e, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            cVar.f71767k = true;
            return cVar;
        }

        @Override // zm.a0
        public int p() {
            return 1;
        }
    }

    public p(r rVar, boolean z10) {
        super(rVar);
        boolean z11;
        if (z10 && rVar.c()) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f56977m = z11;
        this.f56978n = new a0.c();
        this.f56979o = new a0.b();
        zm.a0 b10 = rVar.b();
        if (b10 != null) {
            this.f56980p = a.v(b10, null, null);
            this.f56984t = true;
            return;
        }
        this.f56980p = a.u(rVar.a());
    }

    private Object T(Object obj) {
        if (this.f56980p.f56987g != null && this.f56980p.f56987g.equals(obj)) {
            return a.f56985h;
        }
        return obj;
    }

    private Object U(Object obj) {
        if (this.f56980p.f56987g != null && obj.equals(a.f56985h)) {
            return this.f56980p.f56987g;
        }
        return obj;
    }

    private boolean W(long j10) {
        o oVar = this.f56981q;
        int b10 = this.f56980p.b(oVar.f56968a.f56990a);
        if (b10 == -1) {
            return false;
        }
        long j11 = this.f56980p.f(b10, this.f56979o).f71743d;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        oVar.m(j10);
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.a
    public void A() {
        this.f56983s = false;
        this.f56982r = false;
        super.A();
    }

    @Override // io.bidmachine.media3.exoplayer.source.l0
    @Nullable
    protected r.b I(r.b bVar) {
        return bVar.a(T(bVar.f56990a));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // io.bidmachine.media3.exoplayer.source.l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void P(zm.a0 r15) {
        /*
            r14 = this;
            boolean r0 = r14.f56983s
            if (r0 == 0) goto L19
            io.bidmachine.media3.exoplayer.source.p$a r0 = r14.f56980p
            io.bidmachine.media3.exoplayer.source.p$a r15 = r0.t(r15)
            r14.f56980p = r15
            io.bidmachine.media3.exoplayer.source.o r15 = r14.f56981q
            if (r15 == 0) goto Lb1
            long r0 = r15.h()
            r14.W(r0)
            goto Lb1
        L19:
            boolean r0 = r15.q()
            if (r0 == 0) goto L36
            boolean r0 = r14.f56984t
            if (r0 == 0) goto L2a
            io.bidmachine.media3.exoplayer.source.p$a r0 = r14.f56980p
            io.bidmachine.media3.exoplayer.source.p$a r15 = r0.t(r15)
            goto L32
        L2a:
            java.lang.Object r0 = zm.a0.c.f71747q
            java.lang.Object r1 = io.bidmachine.media3.exoplayer.source.p.a.f56985h
            io.bidmachine.media3.exoplayer.source.p$a r15 = io.bidmachine.media3.exoplayer.source.p.a.v(r15, r0, r1)
        L32:
            r14.f56980p = r15
            goto Lb1
        L36:
            zm.a0$c r0 = r14.f56978n
            r1 = 0
            r15.n(r1, r0)
            zm.a0$c r0 = r14.f56978n
            long r2 = r0.c()
            zm.a0$c r0 = r14.f56978n
            java.lang.Object r0 = r0.f71757a
            io.bidmachine.media3.exoplayer.source.o r4 = r14.f56981q
            if (r4 == 0) goto L74
            long r4 = r4.j()
            io.bidmachine.media3.exoplayer.source.p$a r6 = r14.f56980p
            io.bidmachine.media3.exoplayer.source.o r7 = r14.f56981q
            io.bidmachine.media3.exoplayer.source.r$b r7 = r7.f56968a
            java.lang.Object r7 = r7.f56990a
            zm.a0$b r8 = r14.f56979o
            r6.h(r7, r8)
            zm.a0$b r6 = r14.f56979o
            long r6 = r6.n()
            long r6 = r6 + r4
            io.bidmachine.media3.exoplayer.source.p$a r4 = r14.f56980p
            zm.a0$c r5 = r14.f56978n
            zm.a0$c r1 = r4.n(r1, r5)
            long r4 = r1.c()
            int r1 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r1 == 0) goto L74
            r12 = r6
            goto L75
        L74:
            r12 = r2
        L75:
            zm.a0$c r9 = r14.f56978n
            zm.a0$b r10 = r14.f56979o
            r11 = 0
            r8 = r15
            android.util.Pair r1 = r8.j(r9, r10, r11, r12)
            java.lang.Object r2 = r1.first
            java.lang.Object r1 = r1.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r3 = r1.longValue()
            boolean r1 = r14.f56984t
            if (r1 == 0) goto L94
            io.bidmachine.media3.exoplayer.source.p$a r0 = r14.f56980p
            io.bidmachine.media3.exoplayer.source.p$a r15 = r0.t(r15)
            goto L98
        L94:
            io.bidmachine.media3.exoplayer.source.p$a r15 = io.bidmachine.media3.exoplayer.source.p.a.v(r15, r0, r2)
        L98:
            r14.f56980p = r15
            io.bidmachine.media3.exoplayer.source.o r15 = r14.f56981q
            if (r15 == 0) goto Lb1
            boolean r0 = r14.W(r3)
            if (r0 == 0) goto Lb1
            io.bidmachine.media3.exoplayer.source.r$b r15 = r15.f56968a
            java.lang.Object r0 = r15.f56990a
            java.lang.Object r0 = r14.U(r0)
            io.bidmachine.media3.exoplayer.source.r$b r15 = r15.a(r0)
            goto Lb2
        Lb1:
            r15 = 0
        Lb2:
            r0 = 1
            r14.f56984t = r0
            r14.f56983s = r0
            io.bidmachine.media3.exoplayer.source.p$a r0 = r14.f56980p
            r14.z(r0)
            if (r15 == 0) goto Lc9
            io.bidmachine.media3.exoplayer.source.o r0 = r14.f56981q
            java.lang.Object r0 = cn.a.e(r0)
            io.bidmachine.media3.exoplayer.source.o r0 = (io.bidmachine.media3.exoplayer.source.o) r0
            r0.c(r15)
        Lc9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.source.p.P(zm.a0):void");
    }

    @Override // io.bidmachine.media3.exoplayer.source.l0
    public void R() {
        if (!this.f56977m) {
            this.f56982r = true;
            Q();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    /* renamed from: S */
    public o f(r.b bVar, wn.b bVar2, long j10) {
        o oVar = new o(bVar, bVar2, j10);
        oVar.o(this.f56961k);
        if (this.f56983s) {
            oVar.c(bVar.a(U(bVar.f56990a)));
        } else {
            this.f56981q = oVar;
            if (!this.f56982r) {
                this.f56982r = true;
                Q();
            }
        }
        return oVar;
    }

    public zm.a0 V() {
        return this.f56980p;
    }

    @Override // io.bidmachine.media3.exoplayer.source.l0, io.bidmachine.media3.exoplayer.source.r
    public void d(zm.q qVar) {
        if (this.f56984t) {
            this.f56980p = this.f56980p.t(new sn.v(this.f56980p.f56962e, qVar));
        } else {
            this.f56980p = a.u(qVar);
        }
        this.f56961k.d(qVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(q qVar) {
        ((o) qVar).n();
        if (qVar == this.f56981q) {
            this.f56981q = null;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }
}
