package ip;

import androidx.annotation.Nullable;
import ao.o0;
import dn.g;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.Collections;
import kotlin.jvm.internal.ByteCompanionObject;
import zm.g;
/* compiled from: H265Reader.java */
/* loaded from: classes8.dex */
public final class q implements m {

    /* renamed from: a  reason: collision with root package name */
    private final g0 f59945a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59946b;

    /* renamed from: c  reason: collision with root package name */
    private String f59947c;

    /* renamed from: d  reason: collision with root package name */
    private o0 f59948d;

    /* renamed from: e  reason: collision with root package name */
    private a f59949e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f59950f;

    /* renamed from: m  reason: collision with root package name */
    private long f59957m;

    /* renamed from: g  reason: collision with root package name */
    private final boolean[] f59951g = new boolean[3];

    /* renamed from: h  reason: collision with root package name */
    private final w f59952h = new w(32, 128);

    /* renamed from: i  reason: collision with root package name */
    private final w f59953i = new w(33, 128);

    /* renamed from: j  reason: collision with root package name */
    private final w f59954j = new w(34, 128);

    /* renamed from: k  reason: collision with root package name */
    private final w f59955k = new w(39, 128);

    /* renamed from: l  reason: collision with root package name */
    private final w f59956l = new w(40, 128);

    /* renamed from: n  reason: collision with root package name */
    private long f59958n = -9223372036854775807L;

    /* renamed from: o  reason: collision with root package name */
    private final cn.b0 f59959o = new cn.b0();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H265Reader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final o0 f59960a;

        /* renamed from: b  reason: collision with root package name */
        private long f59961b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f59962c;

        /* renamed from: d  reason: collision with root package name */
        private int f59963d;

        /* renamed from: e  reason: collision with root package name */
        private long f59964e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f59965f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f59966g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f59967h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f59968i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f59969j;

        /* renamed from: k  reason: collision with root package name */
        private long f59970k;

        /* renamed from: l  reason: collision with root package name */
        private long f59971l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f59972m;

        public a(o0 o0Var) {
            this.f59960a = o0Var;
        }

        private static boolean b(int i10) {
            if ((32 <= i10 && i10 <= 35) || i10 == 39) {
                return true;
            }
            return false;
        }

        private static boolean c(int i10) {
            if (i10 >= 32 && i10 != 40) {
                return false;
            }
            return true;
        }

        private void d(int i10) {
            long j10 = this.f59971l;
            if (j10 != -9223372036854775807L) {
                long j11 = this.f59961b;
                long j12 = this.f59970k;
                if (j11 != j12) {
                    boolean z10 = this.f59972m;
                    this.f59960a.c(j10, z10 ? 1 : 0, (int) (j11 - j12), i10, null);
                }
            }
        }

        public void a(long j10, int i10, boolean z10) {
            if (this.f59969j && this.f59966g) {
                this.f59972m = this.f59962c;
                this.f59969j = false;
            } else if (this.f59967h || this.f59966g) {
                if (z10 && this.f59968i) {
                    d(i10 + ((int) (j10 - this.f59961b)));
                }
                this.f59970k = this.f59961b;
                this.f59971l = this.f59964e;
                this.f59972m = this.f59962c;
                this.f59968i = true;
            }
        }

        public void e(byte[] bArr, int i10, int i11) {
            boolean z10;
            if (this.f59965f) {
                int i12 = this.f59963d;
                int i13 = (i10 + 2) - i12;
                if (i13 < i11) {
                    if ((bArr[i13] & ByteCompanionObject.MIN_VALUE) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f59966g = z10;
                    this.f59965f = false;
                    return;
                }
                this.f59963d = i12 + (i11 - i10);
            }
        }

        public void f() {
            this.f59965f = false;
            this.f59966g = false;
            this.f59967h = false;
            this.f59968i = false;
            this.f59969j = false;
        }

        public void g(long j10, int i10, int i11, long j11, boolean z10) {
            boolean z11;
            boolean z12 = false;
            this.f59966g = false;
            this.f59967h = false;
            this.f59964e = j11;
            this.f59963d = 0;
            this.f59961b = j10;
            if (!c(i11)) {
                if (this.f59968i && !this.f59969j) {
                    if (z10) {
                        d(i10);
                    }
                    this.f59968i = false;
                }
                if (b(i11)) {
                    this.f59967h = !this.f59969j;
                    this.f59969j = true;
                }
            }
            if (i11 >= 16 && i11 <= 21) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f59962c = z11;
            if (z11 || i11 <= 9) {
                z12 = true;
            }
            this.f59965f = z12;
        }
    }

    public q(g0 g0Var, String str) {
        this.f59945a = g0Var;
        this.f59946b = str;
    }

    private void e() {
        cn.a.i(this.f59948d);
        cn.m0.i(this.f59949e);
    }

    private void f(long j10, int i10, int i11, long j11) {
        boolean z10;
        this.f59949e.a(j10, i10, this.f59950f);
        if (!this.f59950f) {
            this.f59952h.b(i11);
            this.f59953i.b(i11);
            this.f59954j.b(i11);
            if (this.f59952h.c() && this.f59953i.c() && this.f59954j.c()) {
                io.bidmachine.media3.common.a h10 = h(this.f59947c, this.f59952h, this.f59953i, this.f59954j, this.f59946b);
                this.f59948d.g(h10);
                if (h10.f55176q != -1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                h7.k.o(z10);
                this.f59945a.g(h10.f55176q);
                this.f59950f = true;
            }
        }
        if (this.f59955k.b(i11)) {
            w wVar = this.f59955k;
            this.f59959o.U(this.f59955k.f60049d, dn.g.L(wVar.f60049d, wVar.f60050e));
            this.f59959o.X(5);
            this.f59945a.c(j11, this.f59959o);
        }
        if (this.f59956l.b(i11)) {
            w wVar2 = this.f59956l;
            this.f59959o.U(this.f59956l.f60049d, dn.g.L(wVar2.f60049d, wVar2.f60050e));
            this.f59959o.X(5);
            this.f59945a.c(j11, this.f59959o);
        }
    }

    private void g(byte[] bArr, int i10, int i11) {
        this.f59949e.e(bArr, i10, i11);
        if (!this.f59950f) {
            this.f59952h.a(bArr, i10, i11);
            this.f59953i.a(bArr, i10, i11);
            this.f59954j.a(bArr, i10, i11);
        }
        this.f59955k.a(bArr, i10, i11);
        this.f59956l.a(bArr, i10, i11);
    }

    private static io.bidmachine.media3.common.a h(@Nullable String str, w wVar, w wVar2, w wVar3, String str2) {
        int i10 = wVar.f60050e;
        byte[] bArr = new byte[wVar2.f60050e + i10 + wVar3.f60050e];
        System.arraycopy(wVar.f60049d, 0, bArr, 0, i10);
        System.arraycopy(wVar2.f60049d, 0, bArr, wVar.f60050e, wVar2.f60050e);
        System.arraycopy(wVar3.f60049d, 0, bArr, wVar.f60050e + wVar2.f60050e, wVar3.f60050e);
        String str3 = null;
        g.h u10 = dn.g.u(wVar2.f60049d, 3, wVar2.f60050e, null);
        g.c cVar = u10.f50497c;
        if (cVar != null) {
            str3 = cn.i.f(cVar.f50471a, cVar.f50472b, cVar.f50473c, cVar.f50474d, cVar.f50475e, cVar.f50476f);
        }
        return new a.b().f0(str).U(str2).u0("video/hevc").S(str3).B0(u10.f50502h).d0(u10.f50503i).T(new g.b().d(u10.f50506l).c(u10.f50507m).e(u10.f50508n).g(u10.f50499e + 8).b(u10.f50500f + 8).a()).q0(u10.f50504j).l0(u10.f50505k).m0(u10.f50496b + 1).g0(Collections.singletonList(bArr)).N();
    }

    private void i(long j10, int i10, int i11, long j11) {
        this.f59949e.g(j10, i10, i11, j11, this.f59950f);
        if (!this.f59950f) {
            this.f59952h.e(i11);
            this.f59953i.e(i11);
            this.f59954j.e(i11);
        }
        this.f59955k.e(i11);
        this.f59956l.e(i11);
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        int i10;
        int i11;
        e();
        while (b0Var.a() > 0) {
            int f10 = b0Var.f();
            int g10 = b0Var.g();
            byte[] e10 = b0Var.e();
            this.f59957m += b0Var.a();
            this.f59948d.a(b0Var, b0Var.a());
            while (f10 < g10) {
                int e11 = dn.g.e(e10, f10, g10, this.f59951g);
                if (e11 == g10) {
                    g(e10, f10, g10);
                    return;
                }
                int i12 = dn.g.i(e10, e11);
                if (e11 > 0 && e10[e11 - 1] == 0) {
                    e11--;
                    i10 = 4;
                } else {
                    i10 = 3;
                }
                int i13 = e11;
                int i14 = i10;
                int i15 = i13 - f10;
                if (i15 > 0) {
                    g(e10, f10, i13);
                }
                int i16 = g10 - i13;
                long j10 = this.f59957m - i16;
                if (i15 < 0) {
                    i11 = -i15;
                } else {
                    i11 = 0;
                }
                f(j10, i16, i11, this.f59958n);
                i(j10, i16, i12, this.f59958n);
                f10 = i13 + i14;
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59947c = dVar.b();
        o0 track = rVar.track(dVar.c(), 2);
        this.f59948d = track;
        this.f59949e = new a(track);
        this.f59945a.d(rVar, dVar);
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59958n = j10;
    }

    @Override // ip.m
    public void d(boolean z10) {
        e();
        if (z10) {
            this.f59945a.e();
            f(this.f59957m, 0, 0, this.f59958n);
            i(this.f59957m, 0, 48, this.f59958n);
        }
    }

    @Override // ip.m
    public void seek() {
        this.f59957m = 0L;
        this.f59958n = -9223372036854775807L;
        dn.g.c(this.f59951g);
        this.f59952h.d();
        this.f59953i.d();
        this.f59954j.d();
        this.f59955k.d();
        this.f59956l.d();
        this.f59945a.b();
        a aVar = this.f59949e;
        if (aVar != null) {
            aVar.f();
        }
    }
}
