package ip;

import ao.o0;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import ip.l0;
import ip.v;
/* compiled from: MpeghReader.java */
/* loaded from: classes8.dex */
public final class u implements m {

    /* renamed from: a  reason: collision with root package name */
    private final String f60017a;

    /* renamed from: f  reason: collision with root package name */
    private String f60022f;

    /* renamed from: g  reason: collision with root package name */
    private o0 f60023g;

    /* renamed from: j  reason: collision with root package name */
    private boolean f60026j;

    /* renamed from: l  reason: collision with root package name */
    private int f60028l;

    /* renamed from: m  reason: collision with root package name */
    private int f60029m;

    /* renamed from: o  reason: collision with root package name */
    private int f60031o;

    /* renamed from: p  reason: collision with root package name */
    private int f60032p;

    /* renamed from: t  reason: collision with root package name */
    private int f60036t;

    /* renamed from: v  reason: collision with root package name */
    private boolean f60038v;

    /* renamed from: e  reason: collision with root package name */
    private int f60021e = 0;

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f60018b = new cn.b0(new byte[15], 2);

    /* renamed from: c  reason: collision with root package name */
    private final cn.a0 f60019c = new cn.a0();

    /* renamed from: d  reason: collision with root package name */
    private final cn.b0 f60020d = new cn.b0();

    /* renamed from: q  reason: collision with root package name */
    private v.b f60033q = new v.b();

    /* renamed from: r  reason: collision with root package name */
    private int f60034r = -2147483647;

    /* renamed from: s  reason: collision with root package name */
    private int f60035s = -1;

    /* renamed from: u  reason: collision with root package name */
    private long f60037u = -1;

    /* renamed from: k  reason: collision with root package name */
    private boolean f60027k = true;

    /* renamed from: n  reason: collision with root package name */
    private boolean f60030n = true;

    /* renamed from: h  reason: collision with root package name */
    private double f60024h = -9.223372036854776E18d;

    /* renamed from: i  reason: collision with root package name */
    private double f60025i = -9.223372036854776E18d;

    public u(String str) {
        this.f60017a = str;
    }

    private void e(cn.b0 b0Var, cn.b0 b0Var2, boolean z10) {
        int f10 = b0Var.f();
        int min = Math.min(b0Var.a(), b0Var2.a());
        b0Var.l(b0Var2.e(), b0Var2.f(), min);
        b0Var2.X(min);
        if (z10) {
            b0Var.W(f10);
        }
    }

    private void f() {
        int i10;
        if (this.f60038v) {
            this.f60027k = false;
            i10 = 1;
        } else {
            i10 = 0;
        }
        double d10 = ((this.f60035s - this.f60036t) * 1000000.0d) / this.f60034r;
        long round = Math.round(this.f60024h);
        if (this.f60026j) {
            this.f60026j = false;
            this.f60024h = this.f60025i;
        } else {
            this.f60024h += d10;
        }
        this.f60023g.c(round, i10, this.f60032p, 0, null);
        this.f60038v = false;
        this.f60036t = 0;
        this.f60032p = 0;
    }

    private void g(cn.a0 a0Var) throws ParserException {
        ImmutableList immutableList;
        v.c h10 = v.h(a0Var);
        this.f60034r = h10.f60043b;
        this.f60035s = h10.f60044c;
        long j10 = this.f60037u;
        long j11 = this.f60033q.f60040b;
        if (j10 != j11) {
            this.f60037u = j11;
            String str = "mhm1";
            if (h10.f60042a != -1) {
                str = "mhm1" + String.format(".%02X", Integer.valueOf(h10.f60042a));
            }
            byte[] bArr = h10.f60045d;
            if (bArr != null && bArr.length > 0) {
                immutableList = ImmutableList.C(cn.m0.f3619f, bArr);
            } else {
                immutableList = null;
            }
            this.f60023g.g(new a.b().f0(this.f60022f).U(this.f60017a).u0("audio/mhm1").v0(this.f60034r).S(str).g0(immutableList).N());
        }
        this.f60038v = true;
    }

    private boolean h() throws ParserException {
        int g10 = this.f60018b.g();
        this.f60019c.o(this.f60018b.e(), g10);
        boolean g11 = v.g(this.f60019c, this.f60033q);
        if (g11) {
            this.f60031o = 0;
            this.f60032p += this.f60033q.f60041c + g10;
        }
        return g11;
    }

    private boolean i(int i10) {
        if (i10 == 1 || i10 == 17) {
            return true;
        }
        return false;
    }

    private boolean j(cn.b0 b0Var) {
        int i10 = this.f60028l;
        if ((i10 & 2) == 0) {
            b0Var.W(b0Var.g());
            return false;
        } else if ((i10 & 4) != 0) {
            return true;
        } else {
            while (b0Var.a() > 0) {
                int i11 = this.f60029m << 8;
                this.f60029m = i11;
                int H = i11 | b0Var.H();
                this.f60029m = H;
                if (v.e(H)) {
                    b0Var.W(b0Var.f() - 3);
                    this.f60029m = 0;
                    return true;
                }
            }
            return false;
        }
    }

    private void k(cn.b0 b0Var) {
        int min = Math.min(b0Var.a(), this.f60033q.f60041c - this.f60031o);
        this.f60023g.a(b0Var, min);
        this.f60031o += min;
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) throws ParserException {
        cn.a.i(this.f60023g);
        while (b0Var.a() > 0) {
            int i10 = this.f60021e;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        if (i(this.f60033q.f60039a)) {
                            e(b0Var, this.f60020d, true);
                        }
                        k(b0Var);
                        int i11 = this.f60031o;
                        v.b bVar = this.f60033q;
                        if (i11 == bVar.f60041c) {
                            int i12 = bVar.f60039a;
                            if (i12 == 1) {
                                g(new cn.a0(this.f60020d.e()));
                            } else if (i12 == 17) {
                                this.f60036t = v.f(new cn.a0(this.f60020d.e()));
                            } else if (i12 == 2) {
                                f();
                            }
                            this.f60021e = 1;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    e(b0Var, this.f60018b, false);
                    if (this.f60018b.a() == 0) {
                        if (h()) {
                            this.f60018b.W(0);
                            o0 o0Var = this.f60023g;
                            cn.b0 b0Var2 = this.f60018b;
                            o0Var.a(b0Var2, b0Var2.g());
                            this.f60018b.S(2);
                            this.f60020d.S(this.f60033q.f60041c);
                            this.f60030n = true;
                            this.f60021e = 2;
                        } else if (this.f60018b.g() < 15) {
                            cn.b0 b0Var3 = this.f60018b;
                            b0Var3.V(b0Var3.g() + 1);
                            this.f60030n = false;
                        }
                    } else {
                        this.f60030n = false;
                    }
                }
            } else if (j(b0Var)) {
                this.f60021e = 1;
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f60022f = dVar.b();
        this.f60023g = rVar.track(dVar.c(), 1);
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f60028l = i10;
        if (!this.f60027k && (this.f60032p != 0 || !this.f60030n)) {
            this.f60026j = true;
        }
        if (j10 != -9223372036854775807L) {
            if (this.f60026j) {
                this.f60025i = j10;
            } else {
                this.f60024h = j10;
            }
        }
    }

    @Override // ip.m
    public void seek() {
        this.f60021e = 0;
        this.f60029m = 0;
        this.f60018b.S(2);
        this.f60031o = 0;
        this.f60032p = 0;
        this.f60034r = -2147483647;
        this.f60035s = -1;
        this.f60036t = 0;
        this.f60037u = -1L;
        this.f60038v = false;
        this.f60026j = false;
        this.f60030n = true;
        this.f60027k = true;
        this.f60024h = -9.223372036854776E18d;
        this.f60025i = -9.223372036854776E18d;
    }

    @Override // ip.m
    public void d(boolean z10) {
    }
}
