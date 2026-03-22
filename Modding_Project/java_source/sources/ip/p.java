package ip;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import ao.o0;
import dn.g;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.ArrayList;
import java.util.Arrays;
import zm.g;
/* compiled from: H264Reader.java */
/* loaded from: classes8.dex */
public final class p implements m {

    /* renamed from: a  reason: collision with root package name */
    private final g0 f59894a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f59895b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f59896c;

    /* renamed from: d  reason: collision with root package name */
    private final String f59897d;

    /* renamed from: h  reason: collision with root package name */
    private long f59901h;

    /* renamed from: j  reason: collision with root package name */
    private String f59903j;

    /* renamed from: k  reason: collision with root package name */
    private o0 f59904k;

    /* renamed from: l  reason: collision with root package name */
    private b f59905l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f59906m;

    /* renamed from: o  reason: collision with root package name */
    private boolean f59908o;

    /* renamed from: i  reason: collision with root package name */
    private final boolean[] f59902i = new boolean[3];

    /* renamed from: e  reason: collision with root package name */
    private final w f59898e = new w(7, 128);

    /* renamed from: f  reason: collision with root package name */
    private final w f59899f = new w(8, 128);

    /* renamed from: g  reason: collision with root package name */
    private final w f59900g = new w(6, 128);

    /* renamed from: n  reason: collision with root package name */
    private long f59907n = -9223372036854775807L;

    /* renamed from: p  reason: collision with root package name */
    private final cn.b0 f59909p = new cn.b0();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H264Reader.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final o0 f59910a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f59911b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f59912c;

        /* renamed from: f  reason: collision with root package name */
        private final dn.h f59915f;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f59916g;

        /* renamed from: h  reason: collision with root package name */
        private int f59917h;

        /* renamed from: i  reason: collision with root package name */
        private int f59918i;

        /* renamed from: j  reason: collision with root package name */
        private long f59919j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f59920k;

        /* renamed from: l  reason: collision with root package name */
        private long f59921l;

        /* renamed from: o  reason: collision with root package name */
        private boolean f59924o;

        /* renamed from: p  reason: collision with root package name */
        private long f59925p;

        /* renamed from: q  reason: collision with root package name */
        private long f59926q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f59927r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f59928s;

        /* renamed from: d  reason: collision with root package name */
        private final SparseArray<g.m> f59913d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        private final SparseArray<g.l> f59914e = new SparseArray<>();

        /* renamed from: m  reason: collision with root package name */
        private a f59922m = new a();

        /* renamed from: n  reason: collision with root package name */
        private a f59923n = new a();

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: H264Reader.java */
        /* loaded from: classes8.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f59929a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f59930b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private g.m f59931c;

            /* renamed from: d  reason: collision with root package name */
            private int f59932d;

            /* renamed from: e  reason: collision with root package name */
            private int f59933e;

            /* renamed from: f  reason: collision with root package name */
            private int f59934f;

            /* renamed from: g  reason: collision with root package name */
            private int f59935g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f59936h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f59937i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f59938j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f59939k;

            /* renamed from: l  reason: collision with root package name */
            private int f59940l;

            /* renamed from: m  reason: collision with root package name */
            private int f59941m;

            /* renamed from: n  reason: collision with root package name */
            private int f59942n;

            /* renamed from: o  reason: collision with root package name */
            private int f59943o;

            /* renamed from: p  reason: collision with root package name */
            private int f59944p;

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i10;
                int i11;
                int i12;
                boolean z10;
                if (!this.f59929a) {
                    return false;
                }
                if (!aVar.f59929a) {
                    return true;
                }
                g.m mVar = (g.m) cn.a.i(this.f59931c);
                g.m mVar2 = (g.m) cn.a.i(aVar.f59931c);
                if (this.f59934f == aVar.f59934f && this.f59935g == aVar.f59935g && this.f59936h == aVar.f59936h && ((!this.f59937i || !aVar.f59937i || this.f59938j == aVar.f59938j) && (((i10 = this.f59932d) == (i11 = aVar.f59932d) || (i10 != 0 && i11 != 0)) && (((i12 = mVar.f50535n) != 0 || mVar2.f50535n != 0 || (this.f59941m == aVar.f59941m && this.f59942n == aVar.f59942n)) && ((i12 != 1 || mVar2.f50535n != 1 || (this.f59943o == aVar.f59943o && this.f59944p == aVar.f59944p)) && (z10 = this.f59939k) == aVar.f59939k && (!z10 || this.f59940l == aVar.f59940l)))))) {
                    return false;
                }
                return true;
            }

            public void b() {
                this.f59930b = false;
                this.f59929a = false;
            }

            public boolean d() {
                int i10;
                if (this.f59930b && ((i10 = this.f59933e) == 7 || i10 == 2)) {
                    return true;
                }
                return false;
            }

            public void e(g.m mVar, int i10, int i11, int i12, int i13, boolean z10, boolean z11, boolean z12, boolean z13, int i14, int i15, int i16, int i17, int i18) {
                this.f59931c = mVar;
                this.f59932d = i10;
                this.f59933e = i11;
                this.f59934f = i12;
                this.f59935g = i13;
                this.f59936h = z10;
                this.f59937i = z11;
                this.f59938j = z12;
                this.f59939k = z13;
                this.f59940l = i14;
                this.f59941m = i15;
                this.f59942n = i16;
                this.f59943o = i17;
                this.f59944p = i18;
                this.f59929a = true;
                this.f59930b = true;
            }

            public void f(int i10) {
                this.f59933e = i10;
                this.f59930b = true;
            }
        }

        public b(o0 o0Var, boolean z10, boolean z11) {
            this.f59910a = o0Var;
            this.f59911b = z10;
            this.f59912c = z11;
            byte[] bArr = new byte[128];
            this.f59916g = bArr;
            this.f59915f = new dn.h(bArr, 0, 0);
            g();
        }

        private void d(int i10) {
            long j10 = this.f59926q;
            if (j10 != -9223372036854775807L) {
                long j11 = this.f59919j;
                long j12 = this.f59925p;
                if (j11 != j12) {
                    boolean z10 = this.f59927r;
                    this.f59910a.c(j10, z10 ? 1 : 0, (int) (j11 - j12), i10, null);
                }
            }
        }

        private void h() {
            boolean z10;
            if (this.f59911b) {
                z10 = this.f59923n.d();
            } else {
                z10 = this.f59928s;
            }
            boolean z11 = this.f59927r;
            int i10 = this.f59918i;
            boolean z12 = true;
            if (i10 != 5 && (!z10 || i10 != 1)) {
                z12 = false;
            }
            this.f59927r = z11 | z12;
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
            throw new UnsupportedOperationException("Method not decompiled: ip.p.b.a(byte[], int, int):void");
        }

        public boolean b(long j10, int i10, boolean z10) {
            if (this.f59918i == 9 || (this.f59912c && this.f59923n.c(this.f59922m))) {
                if (z10 && this.f59924o) {
                    d(i10 + ((int) (j10 - this.f59919j)));
                }
                this.f59925p = this.f59919j;
                this.f59926q = this.f59921l;
                this.f59927r = false;
                this.f59924o = true;
            }
            h();
            this.f59918i = 24;
            return this.f59927r;
        }

        public boolean c() {
            return this.f59912c;
        }

        public void e(g.l lVar) {
            this.f59914e.append(lVar.f50519a, lVar);
        }

        public void f(g.m mVar) {
            this.f59913d.append(mVar.f50525d, mVar);
        }

        public void g() {
            this.f59920k = false;
            this.f59924o = false;
            this.f59923n.b();
        }

        public void i(long j10, int i10, long j11, boolean z10) {
            this.f59918i = i10;
            this.f59921l = j11;
            this.f59919j = j10;
            this.f59928s = z10;
            if (!this.f59911b || i10 != 1) {
                if (this.f59912c) {
                    if (i10 != 5 && i10 != 1 && i10 != 2) {
                        return;
                    }
                } else {
                    return;
                }
            }
            a aVar = this.f59922m;
            this.f59922m = this.f59923n;
            this.f59923n = aVar;
            aVar.b();
            this.f59917h = 0;
            this.f59920k = true;
        }
    }

    public p(g0 g0Var, boolean z10, boolean z11, String str) {
        this.f59894a = g0Var;
        this.f59895b = z10;
        this.f59896c = z11;
        this.f59897d = str;
    }

    private void e() {
        cn.a.i(this.f59904k);
        cn.m0.i(this.f59905l);
    }

    private void f(long j10, int i10, int i11, long j11) {
        if (!this.f59906m || this.f59905l.c()) {
            this.f59898e.b(i11);
            this.f59899f.b(i11);
            if (!this.f59906m) {
                if (this.f59898e.c() && this.f59899f.c()) {
                    ArrayList arrayList = new ArrayList();
                    w wVar = this.f59898e;
                    arrayList.add(Arrays.copyOf(wVar.f60049d, wVar.f60050e));
                    w wVar2 = this.f59899f;
                    arrayList.add(Arrays.copyOf(wVar2.f60049d, wVar2.f60050e));
                    w wVar3 = this.f59898e;
                    g.m C = dn.g.C(wVar3.f60049d, 3, wVar3.f60050e);
                    w wVar4 = this.f59899f;
                    g.l A = dn.g.A(wVar4.f60049d, 3, wVar4.f60050e);
                    this.f59904k.g(new a.b().f0(this.f59903j).U(this.f59897d).u0("video/avc").S(cn.i.d(C.f50522a, C.f50523b, C.f50524c)).B0(C.f50527f).d0(C.f50528g).T(new g.b().d(C.f50538q).c(C.f50539r).e(C.f50540s).g(C.f50530i + 8).b(C.f50531j + 8).a()).q0(C.f50529h).g0(arrayList).l0(C.f50541t).N());
                    this.f59906m = true;
                    this.f59894a.g(C.f50541t);
                    this.f59905l.f(C);
                    this.f59905l.e(A);
                    this.f59898e.d();
                    this.f59899f.d();
                }
            } else if (this.f59898e.c()) {
                w wVar5 = this.f59898e;
                g.m C2 = dn.g.C(wVar5.f60049d, 3, wVar5.f60050e);
                this.f59894a.g(C2.f50541t);
                this.f59905l.f(C2);
                this.f59898e.d();
            } else if (this.f59899f.c()) {
                w wVar6 = this.f59899f;
                this.f59905l.e(dn.g.A(wVar6.f60049d, 3, wVar6.f60050e));
                this.f59899f.d();
            }
        }
        if (this.f59900g.b(i11)) {
            w wVar7 = this.f59900g;
            this.f59909p.U(this.f59900g.f60049d, dn.g.L(wVar7.f60049d, wVar7.f60050e));
            this.f59909p.W(4);
            this.f59894a.c(j11, this.f59909p);
        }
        if (this.f59905l.b(j10, i10, this.f59906m)) {
            this.f59908o = false;
        }
    }

    private void g(byte[] bArr, int i10, int i11) {
        if (!this.f59906m || this.f59905l.c()) {
            this.f59898e.a(bArr, i10, i11);
            this.f59899f.a(bArr, i10, i11);
        }
        this.f59900g.a(bArr, i10, i11);
        this.f59905l.a(bArr, i10, i11);
    }

    private void h(long j10, int i10, long j11) {
        if (!this.f59906m || this.f59905l.c()) {
            this.f59898e.e(i10);
            this.f59899f.e(i10);
        }
        this.f59900g.e(i10);
        this.f59905l.i(j10, i10, j11, this.f59908o);
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        int i10;
        int i11;
        e();
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        byte[] e10 = b0Var.e();
        this.f59901h += b0Var.a();
        this.f59904k.a(b0Var, b0Var.a());
        while (true) {
            int e11 = dn.g.e(e10, f10, g10, this.f59902i);
            if (e11 == g10) {
                g(e10, f10, g10);
                return;
            }
            int j10 = dn.g.j(e10, e11);
            if (e11 > 0 && e10[e11 - 1] == 0) {
                e11--;
                i10 = 4;
            } else {
                i10 = 3;
            }
            int i12 = e11;
            int i13 = i10;
            int i14 = i12 - f10;
            if (i14 > 0) {
                g(e10, f10, i12);
            }
            int i15 = g10 - i12;
            long j11 = this.f59901h - i15;
            if (i14 < 0) {
                i11 = -i14;
            } else {
                i11 = 0;
            }
            f(j11, i15, i11, this.f59907n);
            h(j11, j10, this.f59907n);
            f10 = i12 + i13;
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59903j = dVar.b();
        o0 track = rVar.track(dVar.c(), 2);
        this.f59904k = track;
        this.f59905l = new b(track, this.f59895b, this.f59896c);
        this.f59894a.d(rVar, dVar);
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        boolean z10;
        this.f59907n = j10;
        boolean z11 = this.f59908o;
        if ((i10 & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f59908o = z11 | z10;
    }

    @Override // ip.m
    public void d(boolean z10) {
        e();
        if (z10) {
            this.f59894a.e();
            f(this.f59901h, 0, 0, this.f59907n);
            h(this.f59901h, 9, this.f59907n);
            f(this.f59901h, 0, 0, this.f59907n);
        }
    }

    @Override // ip.m
    public void seek() {
        this.f59901h = 0L;
        this.f59908o = false;
        this.f59907n = -9223372036854775807L;
        dn.g.c(this.f59902i);
        this.f59898e.d();
        this.f59899f.d();
        this.f59900g.d();
        this.f59894a.b();
        b bVar = this.f59905l;
        if (bVar != null) {
            bVar.g();
        }
    }
}
