package d6;

import androidx.annotation.Nullable;
import b7.o0;
import com.google.android.exoplayer2.ParserException;
import d6.i0;
/* compiled from: PesReader.java */
/* loaded from: classes4.dex */
public final class w implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final m f50170a;

    /* renamed from: b  reason: collision with root package name */
    private final b7.f0 f50171b = new b7.f0(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    private int f50172c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f50173d;

    /* renamed from: e  reason: collision with root package name */
    private o0 f50174e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f50175f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f50176g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f50177h;

    /* renamed from: i  reason: collision with root package name */
    private int f50178i;

    /* renamed from: j  reason: collision with root package name */
    private int f50179j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f50180k;

    /* renamed from: l  reason: collision with root package name */
    private long f50181l;

    public w(m mVar) {
        this.f50170a = mVar;
    }

    private boolean c(b7.g0 g0Var, @Nullable byte[] bArr, int i10) {
        int min = Math.min(g0Var.a(), i10 - this.f50173d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            g0Var.Q(min);
        } else {
            g0Var.j(bArr, this.f50173d, min);
        }
        int i11 = this.f50173d + min;
        this.f50173d = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private boolean d() {
        this.f50171b.p(0);
        int h10 = this.f50171b.h(24);
        if (h10 != 1) {
            b7.q.i("PesReader", "Unexpected start code prefix: " + h10);
            this.f50179j = -1;
            return false;
        }
        this.f50171b.r(8);
        int h11 = this.f50171b.h(16);
        this.f50171b.r(5);
        this.f50180k = this.f50171b.g();
        this.f50171b.r(2);
        this.f50175f = this.f50171b.g();
        this.f50176g = this.f50171b.g();
        this.f50171b.r(6);
        int h12 = this.f50171b.h(8);
        this.f50178i = h12;
        if (h11 == 0) {
            this.f50179j = -1;
        } else {
            int i10 = (h11 - 3) - h12;
            this.f50179j = i10;
            if (i10 < 0) {
                b7.q.i("PesReader", "Found negative packet payload size: " + this.f50179j);
                this.f50179j = -1;
            }
        }
        return true;
    }

    private void e() {
        this.f50171b.p(0);
        this.f50181l = -9223372036854775807L;
        if (this.f50175f) {
            this.f50171b.r(4);
            this.f50171b.r(1);
            this.f50171b.r(1);
            long h10 = (this.f50171b.h(3) << 30) | (this.f50171b.h(15) << 15) | this.f50171b.h(15);
            this.f50171b.r(1);
            if (!this.f50177h && this.f50176g) {
                this.f50171b.r(4);
                this.f50171b.r(1);
                this.f50171b.r(1);
                this.f50171b.r(1);
                this.f50174e.b((this.f50171b.h(3) << 30) | (this.f50171b.h(15) << 15) | this.f50171b.h(15));
                this.f50177h = true;
            }
            this.f50181l = this.f50174e.b(h10);
        }
    }

    private void f(int i10) {
        this.f50172c = i10;
        this.f50173d = 0;
    }

    @Override // d6.i0
    public void a(o0 o0Var, t5.m mVar, i0.d dVar) {
        this.f50174e = o0Var;
        this.f50170a.d(mVar, dVar);
    }

    @Override // d6.i0
    public final void b(b7.g0 g0Var, int i10) throws ParserException {
        b7.a.i(this.f50174e);
        if ((i10 & 1) != 0) {
            int i11 = this.f50172c;
            if (i11 != 0 && i11 != 1) {
                if (i11 != 2) {
                    if (i11 == 3) {
                        if (this.f50179j != -1) {
                            b7.q.i("PesReader", "Unexpected start indicator: expected " + this.f50179j + " more bytes");
                        }
                        this.f50170a.packetFinished();
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    b7.q.i("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            f(1);
        }
        while (g0Var.a() > 0) {
            int i12 = this.f50172c;
            if (i12 != 0) {
                int i13 = 0;
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 == 3) {
                            int a10 = g0Var.a();
                            int i14 = this.f50179j;
                            if (i14 != -1) {
                                i13 = a10 - i14;
                            }
                            if (i13 > 0) {
                                a10 -= i13;
                                g0Var.O(g0Var.e() + a10);
                            }
                            this.f50170a.b(g0Var);
                            int i15 = this.f50179j;
                            if (i15 != -1) {
                                int i16 = i15 - a10;
                                this.f50179j = i16;
                                if (i16 == 0) {
                                    this.f50170a.packetFinished();
                                    f(1);
                                }
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        if (c(g0Var, this.f50171b.f2443a, Math.min(10, this.f50178i)) && c(g0Var, null, this.f50178i)) {
                            e();
                            if (this.f50180k) {
                                i13 = 4;
                            }
                            i10 |= i13;
                            this.f50170a.c(this.f50181l, i10);
                            f(3);
                        }
                    }
                } else if (c(g0Var, this.f50171b.f2443a, 9)) {
                    if (d()) {
                        i13 = 2;
                    }
                    f(i13);
                }
            } else {
                g0Var.Q(g0Var.a());
            }
        }
    }

    @Override // d6.i0
    public final void seek() {
        this.f50172c = 0;
        this.f50173d = 0;
        this.f50177h = false;
        this.f50170a.seek();
    }
}
