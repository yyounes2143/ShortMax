package d6;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import b7.s0;
import b7.v;
import com.google.android.exoplayer2.v0;
import d6.i0;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: H264Reader.java */
/* loaded from: classes4.dex */
public final class p implements m {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f50047a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f50048b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f50049c;

    /* renamed from: g  reason: collision with root package name */
    private long f50053g;

    /* renamed from: i  reason: collision with root package name */
    private String f50055i;

    /* renamed from: j  reason: collision with root package name */
    private t5.b0 f50056j;

    /* renamed from: k  reason: collision with root package name */
    private b f50057k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f50058l;

    /* renamed from: n  reason: collision with root package name */
    private boolean f50060n;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f50054h = new boolean[3];

    /* renamed from: d  reason: collision with root package name */
    private final u f50050d = new u(7, 128);

    /* renamed from: e  reason: collision with root package name */
    private final u f50051e = new u(8, 128);

    /* renamed from: f  reason: collision with root package name */
    private final u f50052f = new u(6, 128);

    /* renamed from: m  reason: collision with root package name */
    private long f50059m = -9223372036854775807L;

    /* renamed from: o  reason: collision with root package name */
    private final b7.g0 f50061o = new b7.g0();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H264Reader.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final t5.b0 f50062a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f50063b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f50064c;

        /* renamed from: f  reason: collision with root package name */
        private final b7.h0 f50067f;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f50068g;

        /* renamed from: h  reason: collision with root package name */
        private int f50069h;

        /* renamed from: i  reason: collision with root package name */
        private int f50070i;

        /* renamed from: j  reason: collision with root package name */
        private long f50071j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f50072k;

        /* renamed from: l  reason: collision with root package name */
        private long f50073l;

        /* renamed from: o  reason: collision with root package name */
        private boolean f50076o;

        /* renamed from: p  reason: collision with root package name */
        private long f50077p;

        /* renamed from: q  reason: collision with root package name */
        private long f50078q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f50079r;

        /* renamed from: d  reason: collision with root package name */
        private final SparseArray<v.c> f50065d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        private final SparseArray<v.b> f50066e = new SparseArray<>();

        /* renamed from: m  reason: collision with root package name */
        private a f50074m = new a();

        /* renamed from: n  reason: collision with root package name */
        private a f50075n = new a();

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: H264Reader.java */
        /* loaded from: classes4.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f50080a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f50081b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private v.c f50082c;

            /* renamed from: d  reason: collision with root package name */
            private int f50083d;

            /* renamed from: e  reason: collision with root package name */
            private int f50084e;

            /* renamed from: f  reason: collision with root package name */
            private int f50085f;

            /* renamed from: g  reason: collision with root package name */
            private int f50086g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f50087h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f50088i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f50089j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f50090k;

            /* renamed from: l  reason: collision with root package name */
            private int f50091l;

            /* renamed from: m  reason: collision with root package name */
            private int f50092m;

            /* renamed from: n  reason: collision with root package name */
            private int f50093n;

            /* renamed from: o  reason: collision with root package name */
            private int f50094o;

            /* renamed from: p  reason: collision with root package name */
            private int f50095p;

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i10;
                int i11;
                int i12;
                boolean z10;
                if (!this.f50080a) {
                    return false;
                }
                if (!aVar.f50080a) {
                    return true;
                }
                v.c cVar = (v.c) b7.a.i(this.f50082c);
                v.c cVar2 = (v.c) b7.a.i(aVar.f50082c);
                if (this.f50085f == aVar.f50085f && this.f50086g == aVar.f50086g && this.f50087h == aVar.f50087h && ((!this.f50088i || !aVar.f50088i || this.f50089j == aVar.f50089j) && (((i10 = this.f50083d) == (i11 = aVar.f50083d) || (i10 != 0 && i11 != 0)) && (((i12 = cVar.f2556l) != 0 || cVar2.f2556l != 0 || (this.f50092m == aVar.f50092m && this.f50093n == aVar.f50093n)) && ((i12 != 1 || cVar2.f2556l != 1 || (this.f50094o == aVar.f50094o && this.f50095p == aVar.f50095p)) && (z10 = this.f50090k) == aVar.f50090k && (!z10 || this.f50091l == aVar.f50091l)))))) {
                    return false;
                }
                return true;
            }

            public void b() {
                this.f50081b = false;
                this.f50080a = false;
            }

            public boolean d() {
                int i10;
                if (this.f50081b && ((i10 = this.f50084e) == 7 || i10 == 2)) {
                    return true;
                }
                return false;
            }

            public void e(v.c cVar, int i10, int i11, int i12, int i13, boolean z10, boolean z11, boolean z12, boolean z13, int i14, int i15, int i16, int i17, int i18) {
                this.f50082c = cVar;
                this.f50083d = i10;
                this.f50084e = i11;
                this.f50085f = i12;
                this.f50086g = i13;
                this.f50087h = z10;
                this.f50088i = z11;
                this.f50089j = z12;
                this.f50090k = z13;
                this.f50091l = i14;
                this.f50092m = i15;
                this.f50093n = i16;
                this.f50094o = i17;
                this.f50095p = i18;
                this.f50080a = true;
                this.f50081b = true;
            }

            public void f(int i10) {
                this.f50084e = i10;
                this.f50081b = true;
            }
        }

        public b(t5.b0 b0Var, boolean z10, boolean z11) {
            this.f50062a = b0Var;
            this.f50063b = z10;
            this.f50064c = z11;
            byte[] bArr = new byte[128];
            this.f50068g = bArr;
            this.f50067f = new b7.h0(bArr, 0, 0);
            g();
        }

        private void d(int i10) {
            long j10 = this.f50078q;
            if (j10 == -9223372036854775807L) {
                return;
            }
            boolean z10 = this.f50079r;
            this.f50062a.e(j10, z10 ? 1 : 0, (int) (this.f50071j - this.f50077p), i10, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x0100  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0119  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x011f  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0157  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instructions count: 416
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d6.p.b.a(byte[], int, int):void");
        }

        public boolean b(long j10, int i10, boolean z10, boolean z11) {
            boolean z12 = false;
            if (this.f50070i == 9 || (this.f50064c && this.f50075n.c(this.f50074m))) {
                if (z10 && this.f50076o) {
                    d(i10 + ((int) (j10 - this.f50071j)));
                }
                this.f50077p = this.f50071j;
                this.f50078q = this.f50073l;
                this.f50079r = false;
                this.f50076o = true;
            }
            if (this.f50063b) {
                z11 = this.f50075n.d();
            }
            boolean z13 = this.f50079r;
            int i11 = this.f50070i;
            if (i11 == 5 || (z11 && i11 == 1)) {
                z12 = true;
            }
            boolean z14 = z13 | z12;
            this.f50079r = z14;
            return z14;
        }

        public boolean c() {
            return this.f50064c;
        }

        public void e(v.b bVar) {
            this.f50066e.append(bVar.f2542a, bVar);
        }

        public void f(v.c cVar) {
            this.f50065d.append(cVar.f2548d, cVar);
        }

        public void g() {
            this.f50072k = false;
            this.f50076o = false;
            this.f50075n.b();
        }

        public void h(long j10, int i10, long j11) {
            this.f50070i = i10;
            this.f50073l = j11;
            this.f50071j = j10;
            if (!this.f50063b || i10 != 1) {
                if (this.f50064c) {
                    if (i10 != 5 && i10 != 1 && i10 != 2) {
                        return;
                    }
                } else {
                    return;
                }
            }
            a aVar = this.f50074m;
            this.f50074m = this.f50075n;
            this.f50075n = aVar;
            aVar.b();
            this.f50069h = 0;
            this.f50072k = true;
        }
    }

    public p(d0 d0Var, boolean z10, boolean z11) {
        this.f50047a = d0Var;
        this.f50048b = z10;
        this.f50049c = z11;
    }

    private void a() {
        b7.a.i(this.f50056j);
        s0.j(this.f50057k);
    }

    private void e(long j10, int i10, int i11, long j11) {
        if (!this.f50058l || this.f50057k.c()) {
            this.f50050d.b(i11);
            this.f50051e.b(i11);
            if (!this.f50058l) {
                if (this.f50050d.c() && this.f50051e.c()) {
                    ArrayList arrayList = new ArrayList();
                    u uVar = this.f50050d;
                    arrayList.add(Arrays.copyOf(uVar.f50165d, uVar.f50166e));
                    u uVar2 = this.f50051e;
                    arrayList.add(Arrays.copyOf(uVar2.f50165d, uVar2.f50166e));
                    u uVar3 = this.f50050d;
                    v.c l10 = b7.v.l(uVar3.f50165d, 3, uVar3.f50166e);
                    u uVar4 = this.f50051e;
                    v.b j12 = b7.v.j(uVar4.f50165d, 3, uVar4.f50166e);
                    this.f50056j.b(new v0.b().S(this.f50055i).e0("video/avc").I(b7.e.a(l10.f2545a, l10.f2546b, l10.f2547c)).j0(l10.f2550f).Q(l10.f2551g).a0(l10.f2552h).T(arrayList).E());
                    this.f50058l = true;
                    this.f50057k.f(l10);
                    this.f50057k.e(j12);
                    this.f50050d.d();
                    this.f50051e.d();
                }
            } else if (this.f50050d.c()) {
                u uVar5 = this.f50050d;
                this.f50057k.f(b7.v.l(uVar5.f50165d, 3, uVar5.f50166e));
                this.f50050d.d();
            } else if (this.f50051e.c()) {
                u uVar6 = this.f50051e;
                this.f50057k.e(b7.v.j(uVar6.f50165d, 3, uVar6.f50166e));
                this.f50051e.d();
            }
        }
        if (this.f50052f.b(i11)) {
            u uVar7 = this.f50052f;
            this.f50061o.N(this.f50052f.f50165d, b7.v.q(uVar7.f50165d, uVar7.f50166e));
            this.f50061o.P(4);
            this.f50047a.a(j11, this.f50061o);
        }
        if (this.f50057k.b(j10, i10, this.f50058l, this.f50060n)) {
            this.f50060n = false;
        }
    }

    private void f(byte[] bArr, int i10, int i11) {
        if (!this.f50058l || this.f50057k.c()) {
            this.f50050d.a(bArr, i10, i11);
            this.f50051e.a(bArr, i10, i11);
        }
        this.f50052f.a(bArr, i10, i11);
        this.f50057k.a(bArr, i10, i11);
    }

    private void g(long j10, int i10, long j11) {
        if (!this.f50058l || this.f50057k.c()) {
            this.f50050d.e(i10);
            this.f50051e.e(i10);
        }
        this.f50052f.e(i10);
        this.f50057k.h(j10, i10, j11);
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        int i10;
        a();
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        byte[] d10 = g0Var.d();
        this.f50053g += g0Var.a();
        this.f50056j.a(g0Var, g0Var.a());
        while (true) {
            int c10 = b7.v.c(d10, e10, f10, this.f50054h);
            if (c10 == f10) {
                f(d10, e10, f10);
                return;
            }
            int f11 = b7.v.f(d10, c10);
            int i11 = c10 - e10;
            if (i11 > 0) {
                f(d10, e10, c10);
            }
            int i12 = f10 - c10;
            long j10 = this.f50053g - i12;
            if (i11 < 0) {
                i10 = -i11;
            } else {
                i10 = 0;
            }
            e(j10, i12, i10, this.f50059m);
            g(j10, f11, this.f50059m);
            e10 = c10 + 3;
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        boolean z10;
        if (j10 != -9223372036854775807L) {
            this.f50059m = j10;
        }
        boolean z11 = this.f50060n;
        if ((i10 & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f50060n = z11 | z10;
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f50055i = dVar.b();
        t5.b0 track = mVar.track(dVar.c(), 2);
        this.f50056j = track;
        this.f50057k = new b(track, this.f50048b, this.f50049c);
        this.f50047a.b(mVar, dVar);
    }

    @Override // d6.m
    public void seek() {
        this.f50053g = 0L;
        this.f50060n = false;
        this.f50059m = -9223372036854775807L;
        b7.v.a(this.f50054h);
        this.f50050d.d();
        this.f50051e.d();
        this.f50052f.d();
        b bVar = this.f50057k;
        if (bVar != null) {
            bVar.g();
        }
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
