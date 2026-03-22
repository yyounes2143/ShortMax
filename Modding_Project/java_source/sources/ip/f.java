package ip;

import androidx.annotation.Nullable;
import ao.c;
import ao.o0;
import io.bidmachine.media3.common.a;
import ip.l0;
/* compiled from: Ac4Reader.java */
/* loaded from: classes8.dex */
public final class f implements m {

    /* renamed from: a  reason: collision with root package name */
    private final cn.a0 f59703a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f59704b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f59705c;

    /* renamed from: d  reason: collision with root package name */
    private final int f59706d;

    /* renamed from: e  reason: collision with root package name */
    private final String f59707e;

    /* renamed from: f  reason: collision with root package name */
    private String f59708f;

    /* renamed from: g  reason: collision with root package name */
    private o0 f59709g;

    /* renamed from: h  reason: collision with root package name */
    private int f59710h;

    /* renamed from: i  reason: collision with root package name */
    private int f59711i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f59712j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59713k;

    /* renamed from: l  reason: collision with root package name */
    private long f59714l;

    /* renamed from: m  reason: collision with root package name */
    private io.bidmachine.media3.common.a f59715m;

    /* renamed from: n  reason: collision with root package name */
    private int f59716n;

    /* renamed from: o  reason: collision with root package name */
    private long f59717o;

    public f(String str) {
        this(null, 0, str);
    }

    private boolean e(cn.b0 b0Var, byte[] bArr, int i10) {
        int min = Math.min(b0Var.a(), i10 - this.f59711i);
        b0Var.l(bArr, this.f59711i, min);
        int i11 = this.f59711i + min;
        this.f59711i = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void f() {
        this.f59703a.p(0);
        c.C0070c f10 = ao.c.f(this.f59703a);
        io.bidmachine.media3.common.a aVar = this.f59715m;
        if (aVar == null || f10.f1764c != aVar.E || f10.f1763b != aVar.F || !"audio/ac4".equals(aVar.f55174o)) {
            io.bidmachine.media3.common.a N = new a.b().f0(this.f59708f).U(this.f59707e).u0("audio/ac4").R(f10.f1764c).v0(f10.f1763b).j0(this.f59705c).s0(this.f59706d).N();
            this.f59715m = N;
            this.f59709g.g(N);
        }
        this.f59716n = f10.f1765d;
        this.f59714l = (f10.f1766e * 1000000) / this.f59715m.F;
    }

    private boolean g(cn.b0 b0Var) {
        boolean z10;
        int H;
        boolean z11;
        while (true) {
            z10 = false;
            if (b0Var.a() <= 0) {
                return false;
            }
            if (!this.f59712j) {
                if (b0Var.H() == 172) {
                    z10 = true;
                }
                this.f59712j = z10;
            } else {
                H = b0Var.H();
                if (H == 172) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f59712j = z11;
                if (H == 64 || H == 65) {
                    break;
                }
            }
        }
        if (H == 65) {
            z10 = true;
        }
        this.f59713k = z10;
        return true;
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        int i10;
        cn.a.i(this.f59709g);
        while (b0Var.a() > 0) {
            int i11 = this.f59710h;
            boolean z10 = true;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        int min = Math.min(b0Var.a(), this.f59716n - this.f59711i);
                        this.f59709g.a(b0Var, min);
                        int i12 = this.f59711i + min;
                        this.f59711i = i12;
                        if (i12 == this.f59716n) {
                            if (this.f59717o == -9223372036854775807L) {
                                z10 = false;
                            }
                            cn.a.g(z10);
                            this.f59709g.c(this.f59717o, 1, this.f59716n, 0, null);
                            this.f59717o += this.f59714l;
                            this.f59710h = 0;
                        }
                    }
                } else if (e(b0Var, this.f59704b.e(), 16)) {
                    f();
                    this.f59704b.W(0);
                    this.f59709g.a(this.f59704b, 16);
                    this.f59710h = 2;
                }
            } else if (g(b0Var)) {
                this.f59710h = 1;
                this.f59704b.e()[0] = -84;
                byte[] e10 = this.f59704b.e();
                if (this.f59713k) {
                    i10 = 65;
                } else {
                    i10 = 64;
                }
                e10[1] = (byte) i10;
                this.f59711i = 2;
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59708f = dVar.b();
        this.f59709g = rVar.track(dVar.c(), 1);
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59717o = j10;
    }

    @Override // ip.m
    public void seek() {
        this.f59710h = 0;
        this.f59711i = 0;
        this.f59712j = false;
        this.f59713k = false;
        this.f59717o = -9223372036854775807L;
    }

    public f(@Nullable String str, int i10, String str2) {
        cn.a0 a0Var = new cn.a0(new byte[16]);
        this.f59703a = a0Var;
        this.f59704b = new cn.b0(a0Var.f3559a);
        this.f59710h = 0;
        this.f59711i = 0;
        this.f59712j = false;
        this.f59713k = false;
        this.f59717o = -9223372036854775807L;
        this.f59705c = str;
        this.f59706d = i10;
        this.f59707e = str2;
    }

    @Override // ip.m
    public void d(boolean z10) {
    }
}
