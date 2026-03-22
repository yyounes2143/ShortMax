package ip;

import androidx.annotation.Nullable;
import ao.a;
import ao.o0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.Collections;
/* compiled from: LatmReader.java */
/* loaded from: classes8.dex */
public final class s implements m {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f59980a;

    /* renamed from: b  reason: collision with root package name */
    private final int f59981b;

    /* renamed from: c  reason: collision with root package name */
    private final String f59982c;

    /* renamed from: d  reason: collision with root package name */
    private final cn.b0 f59983d;

    /* renamed from: e  reason: collision with root package name */
    private final cn.a0 f59984e;

    /* renamed from: f  reason: collision with root package name */
    private o0 f59985f;

    /* renamed from: g  reason: collision with root package name */
    private String f59986g;

    /* renamed from: h  reason: collision with root package name */
    private io.bidmachine.media3.common.a f59987h;

    /* renamed from: i  reason: collision with root package name */
    private int f59988i;

    /* renamed from: j  reason: collision with root package name */
    private int f59989j;

    /* renamed from: k  reason: collision with root package name */
    private int f59990k;

    /* renamed from: l  reason: collision with root package name */
    private int f59991l;

    /* renamed from: m  reason: collision with root package name */
    private long f59992m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f59993n;

    /* renamed from: o  reason: collision with root package name */
    private int f59994o;

    /* renamed from: p  reason: collision with root package name */
    private int f59995p;

    /* renamed from: q  reason: collision with root package name */
    private int f59996q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f59997r;

    /* renamed from: s  reason: collision with root package name */
    private long f59998s;

    /* renamed from: t  reason: collision with root package name */
    private int f59999t;

    /* renamed from: u  reason: collision with root package name */
    private long f60000u;

    /* renamed from: v  reason: collision with root package name */
    private int f60001v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private String f60002w;

    public s(@Nullable String str, int i10, String str2) {
        this.f59980a = str;
        this.f59981b = i10;
        this.f59982c = str2;
        cn.b0 b0Var = new cn.b0(1024);
        this.f59983d = b0Var;
        this.f59984e = new cn.a0(b0Var.e());
        this.f59992m = -9223372036854775807L;
    }

    private static long e(cn.a0 a0Var) {
        return a0Var.h((a0Var.h(2) + 1) * 8);
    }

    private void f(cn.a0 a0Var) throws ParserException {
        if (!a0Var.g()) {
            this.f59993n = true;
            k(a0Var);
        } else if (!this.f59993n) {
            return;
        }
        if (this.f59994o == 0) {
            if (this.f59995p == 0) {
                j(a0Var, i(a0Var));
                if (this.f59997r) {
                    a0Var.r((int) this.f59998s);
                    return;
                }
                return;
            }
            throw ParserException.b(null, null);
        }
        throw ParserException.b(null, null);
    }

    private int g(cn.a0 a0Var) throws ParserException {
        int b10 = a0Var.b();
        a.b d10 = ao.a.d(a0Var, true);
        this.f60002w = d10.f1737c;
        this.f59999t = d10.f1735a;
        this.f60001v = d10.f1736b;
        return b10 - a0Var.b();
    }

    private void h(cn.a0 a0Var) {
        int h10 = a0Var.h(3);
        this.f59996q = h10;
        if (h10 != 0) {
            if (h10 != 1) {
                if (h10 != 3 && h10 != 4 && h10 != 5) {
                    if (h10 != 6 && h10 != 7) {
                        throw new IllegalStateException();
                    }
                    a0Var.r(1);
                    return;
                }
                a0Var.r(6);
                return;
            }
            a0Var.r(9);
            return;
        }
        a0Var.r(8);
    }

    private int i(cn.a0 a0Var) throws ParserException {
        int h10;
        if (this.f59996q == 0) {
            int i10 = 0;
            do {
                h10 = a0Var.h(8);
                i10 += h10;
            } while (h10 == 255);
            return i10;
        }
        throw ParserException.b(null, null);
    }

    private void j(cn.a0 a0Var, int i10) {
        int e10 = a0Var.e();
        boolean z10 = false;
        if ((e10 & 7) == 0) {
            this.f59983d.W(e10 >> 3);
        } else {
            a0Var.i(this.f59983d.e(), 0, i10 * 8);
            this.f59983d.W(0);
        }
        this.f59985f.a(this.f59983d, i10);
        if (this.f59992m != -9223372036854775807L) {
            z10 = true;
        }
        cn.a.g(z10);
        this.f59985f.c(this.f59992m, 1, i10, 0, null);
        this.f59992m += this.f60000u;
    }

    private void k(cn.a0 a0Var) throws ParserException {
        int i10;
        boolean g10;
        int h10 = a0Var.h(1);
        if (h10 == 1) {
            i10 = a0Var.h(1);
        } else {
            i10 = 0;
        }
        this.f59994o = i10;
        if (i10 == 0) {
            if (h10 == 1) {
                e(a0Var);
            }
            if (a0Var.g()) {
                this.f59995p = a0Var.h(6);
                int h11 = a0Var.h(4);
                int h12 = a0Var.h(3);
                if (h11 == 0 && h12 == 0) {
                    if (h10 == 0) {
                        int e10 = a0Var.e();
                        int g11 = g(a0Var);
                        a0Var.p(e10);
                        byte[] bArr = new byte[(g11 + 7) / 8];
                        a0Var.i(bArr, 0, g11);
                        io.bidmachine.media3.common.a N = new a.b().f0(this.f59986g).U(this.f59982c).u0(MimeTypes.AUDIO_AAC).S(this.f60002w).R(this.f60001v).v0(this.f59999t).g0(Collections.singletonList(bArr)).j0(this.f59980a).s0(this.f59981b).N();
                        if (!N.equals(this.f59987h)) {
                            this.f59987h = N;
                            this.f60000u = 1024000000 / N.F;
                            this.f59985f.g(N);
                        }
                    } else {
                        a0Var.r(((int) e(a0Var)) - g(a0Var));
                    }
                    h(a0Var);
                    boolean g12 = a0Var.g();
                    this.f59997r = g12;
                    this.f59998s = 0L;
                    if (g12) {
                        if (h10 == 1) {
                            this.f59998s = e(a0Var);
                        } else {
                            do {
                                g10 = a0Var.g();
                                this.f59998s = (this.f59998s << 8) + a0Var.h(8);
                            } while (g10);
                        }
                    }
                    if (a0Var.g()) {
                        a0Var.r(8);
                        return;
                    }
                    return;
                }
                throw ParserException.b(null, null);
            }
            throw ParserException.b(null, null);
        }
        throw ParserException.b(null, null);
    }

    private void l(int i10) {
        this.f59983d.S(i10);
        this.f59984e.n(this.f59983d.e());
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) throws ParserException {
        cn.a.i(this.f59985f);
        while (b0Var.a() > 0) {
            int i10 = this.f59988i;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            int min = Math.min(b0Var.a(), this.f59990k - this.f59989j);
                            b0Var.l(this.f59984e.f3559a, this.f59989j, min);
                            int i11 = this.f59989j + min;
                            this.f59989j = i11;
                            if (i11 == this.f59990k) {
                                this.f59984e.p(0);
                                f(this.f59984e);
                                this.f59988i = 0;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        int H = ((this.f59991l & (-225)) << 8) | b0Var.H();
                        this.f59990k = H;
                        if (H > this.f59983d.e().length) {
                            l(this.f59990k);
                        }
                        this.f59989j = 0;
                        this.f59988i = 3;
                    }
                } else {
                    int H2 = b0Var.H();
                    if ((H2 & 224) == 224) {
                        this.f59991l = H2;
                        this.f59988i = 2;
                    } else if (H2 != 86) {
                        this.f59988i = 0;
                    }
                }
            } else if (b0Var.H() == 86) {
                this.f59988i = 1;
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59985f = rVar.track(dVar.c(), 1);
        this.f59986g = dVar.b();
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59992m = j10;
    }

    @Override // ip.m
    public void seek() {
        this.f59988i = 0;
        this.f59992m = -9223372036854775807L;
        this.f59993n = false;
    }

    @Override // ip.m
    public void d(boolean z10) {
    }
}
