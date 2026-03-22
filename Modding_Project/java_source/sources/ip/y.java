package ip;

import androidx.annotation.Nullable;
import io.bidmachine.media3.common.ParserException;
import ip.l0;
/* compiled from: PesReader.java */
/* loaded from: classes8.dex */
public final class y implements l0 {

    /* renamed from: a  reason: collision with root package name */
    private final m f60054a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.a0 f60055b = new cn.a0(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    private int f60056c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f60057d;

    /* renamed from: e  reason: collision with root package name */
    private cn.h0 f60058e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f60059f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f60060g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f60061h;

    /* renamed from: i  reason: collision with root package name */
    private int f60062i;

    /* renamed from: j  reason: collision with root package name */
    private int f60063j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f60064k;

    /* renamed from: l  reason: collision with root package name */
    private long f60065l;

    public y(m mVar) {
        this.f60054a = mVar;
    }

    private boolean d(cn.b0 b0Var, @Nullable byte[] bArr, int i10) {
        int min = Math.min(b0Var.a(), i10 - this.f60057d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            b0Var.X(min);
        } else {
            b0Var.l(bArr, this.f60057d, min);
        }
        int i11 = this.f60057d + min;
        this.f60057d = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private boolean e() {
        this.f60055b.p(0);
        int h10 = this.f60055b.h(24);
        if (h10 != 1) {
            cn.r.h("PesReader", "Unexpected start code prefix: " + h10);
            this.f60063j = -1;
            return false;
        }
        this.f60055b.r(8);
        int h11 = this.f60055b.h(16);
        this.f60055b.r(5);
        this.f60064k = this.f60055b.g();
        this.f60055b.r(2);
        this.f60059f = this.f60055b.g();
        this.f60060g = this.f60055b.g();
        this.f60055b.r(6);
        int h12 = this.f60055b.h(8);
        this.f60062i = h12;
        if (h11 == 0) {
            this.f60063j = -1;
        } else {
            int i10 = (h11 - 3) - h12;
            this.f60063j = i10;
            if (i10 < 0) {
                cn.r.h("PesReader", "Found negative packet payload size: " + this.f60063j);
                this.f60063j = -1;
            }
        }
        return true;
    }

    private void f() {
        this.f60055b.p(0);
        this.f60065l = -9223372036854775807L;
        if (this.f60059f) {
            this.f60055b.r(4);
            this.f60055b.r(1);
            this.f60055b.r(1);
            long h10 = (this.f60055b.h(3) << 30) | (this.f60055b.h(15) << 15) | this.f60055b.h(15);
            this.f60055b.r(1);
            if (!this.f60061h && this.f60060g) {
                this.f60055b.r(4);
                this.f60055b.r(1);
                this.f60055b.r(1);
                this.f60055b.r(1);
                this.f60058e.b((this.f60055b.h(3) << 30) | (this.f60055b.h(15) << 15) | this.f60055b.h(15));
                this.f60061h = true;
            }
            this.f60065l = this.f60058e.b(h10);
        }
    }

    private void g(int i10) {
        this.f60056c = i10;
        this.f60057d = 0;
    }

    @Override // ip.l0
    public void a(cn.b0 b0Var, int i10) throws ParserException {
        int i11;
        int i12;
        int i13;
        boolean z10;
        cn.a.i(this.f60058e);
        if ((i10 & 1) != 0) {
            int i14 = this.f60056c;
            if (i14 != 0 && i14 != 1) {
                if (i14 != 2) {
                    if (i14 == 3) {
                        if (this.f60063j != -1) {
                            cn.r.h("PesReader", "Unexpected start indicator: expected " + this.f60063j + " more bytes");
                        }
                        if (b0Var.g() == 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.f60054a.d(z10);
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    cn.r.h("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            g(1);
        }
        while (b0Var.a() > 0) {
            int i15 = this.f60056c;
            if (i15 != 0) {
                if (i15 != 1) {
                    if (i15 != 2) {
                        if (i15 == 3) {
                            int a10 = b0Var.a();
                            int i16 = this.f60063j;
                            if (i16 == -1) {
                                i11 = 0;
                            } else {
                                i11 = a10 - i16;
                            }
                            if (i11 > 0) {
                                a10 -= i11;
                                b0Var.V(b0Var.f() + a10);
                            }
                            this.f60054a.a(b0Var);
                            int i17 = this.f60063j;
                            if (i17 != -1) {
                                int i18 = i17 - a10;
                                this.f60063j = i18;
                                if (i18 == 0) {
                                    this.f60054a.d(false);
                                    g(1);
                                }
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        if (d(b0Var, this.f60055b.f3559a, Math.min(10, this.f60062i)) && d(b0Var, null, this.f60062i)) {
                            f();
                            if (this.f60064k) {
                                i12 = 4;
                            } else {
                                i12 = 0;
                            }
                            i10 |= i12;
                            this.f60054a.c(this.f60065l, i10);
                            g(3);
                        }
                    }
                } else if (d(b0Var, this.f60055b.f3559a, 9)) {
                    if (e()) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    g(i13);
                }
            } else {
                b0Var.X(b0Var.a());
            }
        }
    }

    @Override // ip.l0
    public void b(cn.h0 h0Var, ao.r rVar, l0.d dVar) {
        this.f60058e = h0Var;
        this.f60054a.b(rVar, dVar);
    }

    public boolean c(boolean z10) {
        boolean z11;
        if (z10 && !e()) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (this.f60056c == 3 && this.f60063j == -1 && ((!z10 || !(this.f60054a instanceof n)) && z11)) {
            return true;
        }
        return false;
    }

    @Override // ip.l0
    public void seek() {
        this.f60056c = 0;
        this.f60057d = 0;
        this.f60061h = false;
        this.f60054a.seek();
    }
}
