package d6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
import java.util.Collections;
import q5.a;
/* compiled from: LatmReader.java */
/* loaded from: classes4.dex */
public final class s implements m {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f50129a;

    /* renamed from: b  reason: collision with root package name */
    private final b7.g0 f50130b;

    /* renamed from: c  reason: collision with root package name */
    private final b7.f0 f50131c;

    /* renamed from: d  reason: collision with root package name */
    private t5.b0 f50132d;

    /* renamed from: e  reason: collision with root package name */
    private String f50133e;

    /* renamed from: f  reason: collision with root package name */
    private v0 f50134f;

    /* renamed from: g  reason: collision with root package name */
    private int f50135g;

    /* renamed from: h  reason: collision with root package name */
    private int f50136h;

    /* renamed from: i  reason: collision with root package name */
    private int f50137i;

    /* renamed from: j  reason: collision with root package name */
    private int f50138j;

    /* renamed from: k  reason: collision with root package name */
    private long f50139k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f50140l;

    /* renamed from: m  reason: collision with root package name */
    private int f50141m;

    /* renamed from: n  reason: collision with root package name */
    private int f50142n;

    /* renamed from: o  reason: collision with root package name */
    private int f50143o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f50144p;

    /* renamed from: q  reason: collision with root package name */
    private long f50145q;

    /* renamed from: r  reason: collision with root package name */
    private int f50146r;

    /* renamed from: s  reason: collision with root package name */
    private long f50147s;

    /* renamed from: t  reason: collision with root package name */
    private int f50148t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f50149u;

    public s(@Nullable String str) {
        this.f50129a = str;
        b7.g0 g0Var = new b7.g0(1024);
        this.f50130b = g0Var;
        this.f50131c = new b7.f0(g0Var.d());
        this.f50139k = -9223372036854775807L;
    }

    private static long a(b7.f0 f0Var) {
        return f0Var.h((f0Var.h(2) + 1) * 8);
    }

    private void e(b7.f0 f0Var) throws ParserException {
        if (!f0Var.g()) {
            this.f50140l = true;
            j(f0Var);
        } else if (!this.f50140l) {
            return;
        }
        if (this.f50141m == 0) {
            if (this.f50142n == 0) {
                i(f0Var, h(f0Var));
                if (this.f50144p) {
                    f0Var.r((int) this.f50145q);
                    return;
                }
                return;
            }
            throw ParserException.b(null, null);
        }
        throw ParserException.b(null, null);
    }

    private int f(b7.f0 f0Var) throws ParserException {
        int b10 = f0Var.b();
        a.b d10 = q5.a.d(f0Var, true);
        this.f50149u = d10.f65056c;
        this.f50146r = d10.f65054a;
        this.f50148t = d10.f65055b;
        return b10 - f0Var.b();
    }

    private void g(b7.f0 f0Var) {
        int h10 = f0Var.h(3);
        this.f50143o = h10;
        if (h10 != 0) {
            if (h10 != 1) {
                if (h10 != 3 && h10 != 4 && h10 != 5) {
                    if (h10 != 6 && h10 != 7) {
                        throw new IllegalStateException();
                    }
                    f0Var.r(1);
                    return;
                }
                f0Var.r(6);
                return;
            }
            f0Var.r(9);
            return;
        }
        f0Var.r(8);
    }

    private int h(b7.f0 f0Var) throws ParserException {
        int h10;
        if (this.f50143o == 0) {
            int i10 = 0;
            do {
                h10 = f0Var.h(8);
                i10 += h10;
            } while (h10 == 255);
            return i10;
        }
        throw ParserException.b(null, null);
    }

    private void i(b7.f0 f0Var, int i10) {
        int e10 = f0Var.e();
        if ((e10 & 7) == 0) {
            this.f50130b.P(e10 >> 3);
        } else {
            f0Var.i(this.f50130b.d(), 0, i10 * 8);
            this.f50130b.P(0);
        }
        this.f50132d.a(this.f50130b, i10);
        long j10 = this.f50139k;
        if (j10 != -9223372036854775807L) {
            this.f50132d.e(j10, 1, i10, 0, null);
            this.f50139k += this.f50147s;
        }
    }

    private void j(b7.f0 f0Var) throws ParserException {
        int i10;
        boolean g10;
        int h10 = f0Var.h(1);
        if (h10 == 1) {
            i10 = f0Var.h(1);
        } else {
            i10 = 0;
        }
        this.f50141m = i10;
        if (i10 == 0) {
            if (h10 == 1) {
                a(f0Var);
            }
            if (f0Var.g()) {
                this.f50142n = f0Var.h(6);
                int h11 = f0Var.h(4);
                int h12 = f0Var.h(3);
                if (h11 == 0 && h12 == 0) {
                    if (h10 == 0) {
                        int e10 = f0Var.e();
                        int f10 = f(f0Var);
                        f0Var.p(e10);
                        byte[] bArr = new byte[(f10 + 7) / 8];
                        f0Var.i(bArr, 0, f10);
                        v0 E = new v0.b().S(this.f50133e).e0(MimeTypes.AUDIO_AAC).I(this.f50149u).H(this.f50148t).f0(this.f50146r).T(Collections.singletonList(bArr)).V(this.f50129a).E();
                        if (!E.equals(this.f50134f)) {
                            this.f50134f = E;
                            this.f50147s = 1024000000 / E.f19171z;
                            this.f50132d.b(E);
                        }
                    } else {
                        f0Var.r(((int) a(f0Var)) - f(f0Var));
                    }
                    g(f0Var);
                    boolean g11 = f0Var.g();
                    this.f50144p = g11;
                    this.f50145q = 0L;
                    if (g11) {
                        if (h10 == 1) {
                            this.f50145q = a(f0Var);
                        } else {
                            do {
                                g10 = f0Var.g();
                                this.f50145q = (this.f50145q << 8) + f0Var.h(8);
                            } while (g10);
                        }
                    }
                    if (f0Var.g()) {
                        f0Var.r(8);
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

    private void k(int i10) {
        this.f50130b.L(i10);
        this.f50131c.n(this.f50130b.d());
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) throws ParserException {
        b7.a.i(this.f50132d);
        while (g0Var.a() > 0) {
            int i10 = this.f50135g;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            int min = Math.min(g0Var.a(), this.f50137i - this.f50136h);
                            g0Var.j(this.f50131c.f2443a, this.f50136h, min);
                            int i11 = this.f50136h + min;
                            this.f50136h = i11;
                            if (i11 == this.f50137i) {
                                this.f50131c.p(0);
                                e(this.f50131c);
                                this.f50135g = 0;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        int D = ((this.f50138j & (-225)) << 8) | g0Var.D();
                        this.f50137i = D;
                        if (D > this.f50130b.d().length) {
                            k(this.f50137i);
                        }
                        this.f50136h = 0;
                        this.f50135g = 3;
                    }
                } else {
                    int D2 = g0Var.D();
                    if ((D2 & 224) == 224) {
                        this.f50138j = D2;
                        this.f50135g = 2;
                    } else if (D2 != 86) {
                        this.f50135g = 0;
                    }
                }
            } else if (g0Var.D() == 86) {
                this.f50135g = 1;
            }
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f50139k = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f50132d = mVar.track(dVar.c(), 1);
        this.f50133e = dVar.b();
    }

    @Override // d6.m
    public void seek() {
        this.f50135g = 0;
        this.f50139k = -9223372036854775807L;
        this.f50140l = false;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
