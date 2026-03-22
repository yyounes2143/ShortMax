package ip;

import androidx.annotation.Nullable;
import ao.o;
import ao.o0;
import com.google.common.primitives.Ints;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: DtsReader.java */
/* loaded from: classes8.dex */
public final class k implements m {

    /* renamed from: a  reason: collision with root package name */
    private final cn.b0 f59775a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f59777c;

    /* renamed from: d  reason: collision with root package name */
    private final int f59778d;

    /* renamed from: e  reason: collision with root package name */
    private final String f59779e;

    /* renamed from: f  reason: collision with root package name */
    private String f59780f;

    /* renamed from: g  reason: collision with root package name */
    private o0 f59781g;

    /* renamed from: i  reason: collision with root package name */
    private int f59783i;

    /* renamed from: j  reason: collision with root package name */
    private int f59784j;

    /* renamed from: k  reason: collision with root package name */
    private long f59785k;

    /* renamed from: l  reason: collision with root package name */
    private io.bidmachine.media3.common.a f59786l;

    /* renamed from: m  reason: collision with root package name */
    private int f59787m;

    /* renamed from: n  reason: collision with root package name */
    private int f59788n;

    /* renamed from: h  reason: collision with root package name */
    private int f59782h = 0;

    /* renamed from: q  reason: collision with root package name */
    private long f59791q = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f59776b = new AtomicInteger();

    /* renamed from: o  reason: collision with root package name */
    private int f59789o = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f59790p = -1;

    public k(@Nullable String str, int i10, int i11, String str2) {
        this.f59775a = new cn.b0(new byte[i11]);
        this.f59777c = str;
        this.f59778d = i10;
        this.f59779e = str2;
    }

    private boolean e(cn.b0 b0Var, byte[] bArr, int i10) {
        int min = Math.min(b0Var.a(), i10 - this.f59783i);
        b0Var.l(bArr, this.f59783i, min);
        int i11 = this.f59783i + min;
        this.f59783i = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void f() {
        byte[] e10 = this.f59775a.e();
        if (this.f59786l == null) {
            io.bidmachine.media3.common.a h10 = ao.o.h(e10, this.f59780f, this.f59777c, this.f59778d, this.f59779e, null);
            this.f59786l = h10;
            this.f59781g.g(h10);
        }
        this.f59787m = ao.o.b(e10);
        this.f59785k = Ints.d(cn.m0.e1(ao.o.g(e10), this.f59786l.F));
    }

    private void g() throws ParserException {
        o.b i10 = ao.o.i(this.f59775a.e());
        j(i10);
        this.f59787m = i10.f1911d;
        long j10 = i10.f1912e;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        this.f59785k = j10;
    }

    private void h() throws ParserException {
        o.b k10 = ao.o.k(this.f59775a.e(), this.f59776b);
        if (this.f59788n == 3) {
            j(k10);
        }
        this.f59787m = k10.f1911d;
        long j10 = k10.f1912e;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        this.f59785k = j10;
    }

    private boolean i(cn.b0 b0Var) {
        while (b0Var.a() > 0) {
            int i10 = this.f59784j << 8;
            this.f59784j = i10;
            int H = i10 | b0Var.H();
            this.f59784j = H;
            int c10 = ao.o.c(H);
            this.f59788n = c10;
            if (c10 != 0) {
                byte[] e10 = this.f59775a.e();
                int i11 = this.f59784j;
                e10[0] = (byte) ((i11 >> 24) & 255);
                e10[1] = (byte) ((i11 >> 16) & 255);
                e10[2] = (byte) ((i11 >> 8) & 255);
                e10[3] = (byte) (i11 & 255);
                this.f59783i = 4;
                this.f59784j = 0;
                return true;
            }
        }
        return false;
    }

    private void j(o.b bVar) {
        int i10;
        a.b b10;
        int i11 = bVar.f1909b;
        if (i11 != -2147483647 && (i10 = bVar.f1910c) != -1) {
            io.bidmachine.media3.common.a aVar = this.f59786l;
            if (aVar == null || i10 != aVar.E || i11 != aVar.F || !Objects.equals(bVar.f1908a, aVar.f55174o)) {
                io.bidmachine.media3.common.a aVar2 = this.f59786l;
                if (aVar2 == null) {
                    b10 = new a.b();
                } else {
                    b10 = aVar2.b();
                }
                io.bidmachine.media3.common.a N = b10.f0(this.f59780f).U(this.f59779e).u0(bVar.f1908a).R(bVar.f1910c).v0(bVar.f1909b).j0(this.f59777c).s0(this.f59778d).N();
                this.f59786l = N;
                this.f59781g.g(N);
            }
        }
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) throws ParserException {
        boolean z10;
        int i10;
        cn.a.i(this.f59781g);
        while (b0Var.a() > 0) {
            switch (this.f59782h) {
                case 0:
                    if (!i(b0Var)) {
                        break;
                    } else {
                        int i11 = this.f59788n;
                        if (i11 != 3 && i11 != 4) {
                            if (i11 == 1) {
                                this.f59782h = 1;
                                break;
                            } else {
                                this.f59782h = 2;
                                break;
                            }
                        } else {
                            this.f59782h = 4;
                            break;
                        }
                    }
                case 1:
                    if (!e(b0Var, this.f59775a.e(), 18)) {
                        break;
                    } else {
                        f();
                        this.f59775a.W(0);
                        this.f59781g.a(this.f59775a, 18);
                        this.f59782h = 6;
                        break;
                    }
                case 2:
                    if (!e(b0Var, this.f59775a.e(), 7)) {
                        break;
                    } else {
                        this.f59789o = ao.o.j(this.f59775a.e());
                        this.f59782h = 3;
                        break;
                    }
                case 3:
                    if (!e(b0Var, this.f59775a.e(), this.f59789o)) {
                        break;
                    } else {
                        g();
                        this.f59775a.W(0);
                        this.f59781g.a(this.f59775a, this.f59789o);
                        this.f59782h = 6;
                        break;
                    }
                case 4:
                    if (!e(b0Var, this.f59775a.e(), 6)) {
                        break;
                    } else {
                        int l10 = ao.o.l(this.f59775a.e());
                        this.f59790p = l10;
                        int i12 = this.f59783i;
                        if (i12 > l10) {
                            int i13 = i12 - l10;
                            this.f59783i = i12 - i13;
                            b0Var.W(b0Var.f() - i13);
                        }
                        this.f59782h = 5;
                        break;
                    }
                case 5:
                    if (!e(b0Var, this.f59775a.e(), this.f59790p)) {
                        break;
                    } else {
                        h();
                        this.f59775a.W(0);
                        this.f59781g.a(this.f59775a, this.f59790p);
                        this.f59782h = 6;
                        break;
                    }
                case 6:
                    int min = Math.min(b0Var.a(), this.f59787m - this.f59783i);
                    this.f59781g.a(b0Var, min);
                    int i14 = this.f59783i + min;
                    this.f59783i = i14;
                    if (i14 == this.f59787m) {
                        if (this.f59791q != -9223372036854775807L) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        cn.a.g(z10);
                        o0 o0Var = this.f59781g;
                        long j10 = this.f59791q;
                        if (this.f59788n == 4) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        o0Var.c(j10, i10, this.f59787m, 0, null);
                        this.f59791q += this.f59785k;
                        this.f59782h = 0;
                        break;
                    } else {
                        break;
                    }
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59780f = dVar.b();
        this.f59781g = rVar.track(dVar.c(), 1);
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59791q = j10;
    }

    @Override // ip.m
    public void seek() {
        this.f59782h = 0;
        this.f59783i = 0;
        this.f59784j = 0;
        this.f59791q = -9223372036854775807L;
        this.f59776b.set(0);
    }

    @Override // ip.m
    public void d(boolean z10) {
    }
}
