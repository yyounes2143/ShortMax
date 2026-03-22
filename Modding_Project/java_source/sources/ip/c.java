package ip;

import androidx.annotation.Nullable;
import ao.b;
import ao.o0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.Objects;
/* compiled from: Ac3Reader.java */
/* loaded from: classes8.dex */
public final class c implements m {

    /* renamed from: a  reason: collision with root package name */
    private final cn.a0 f59659a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f59660b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f59661c;

    /* renamed from: d  reason: collision with root package name */
    private final int f59662d;

    /* renamed from: e  reason: collision with root package name */
    private final String f59663e;

    /* renamed from: f  reason: collision with root package name */
    private String f59664f;

    /* renamed from: g  reason: collision with root package name */
    private o0 f59665g;

    /* renamed from: h  reason: collision with root package name */
    private int f59666h;

    /* renamed from: i  reason: collision with root package name */
    private int f59667i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f59668j;

    /* renamed from: k  reason: collision with root package name */
    private long f59669k;

    /* renamed from: l  reason: collision with root package name */
    private io.bidmachine.media3.common.a f59670l;

    /* renamed from: m  reason: collision with root package name */
    private int f59671m;

    /* renamed from: n  reason: collision with root package name */
    private long f59672n;

    public c(String str) {
        this(null, 0, str);
    }

    private boolean e(cn.b0 b0Var, byte[] bArr, int i10) {
        int min = Math.min(b0Var.a(), i10 - this.f59667i);
        b0Var.l(bArr, this.f59667i, min);
        int i11 = this.f59667i + min;
        this.f59667i = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void f() {
        this.f59659a.p(0);
        b.C0069b f10 = ao.b.f(this.f59659a);
        io.bidmachine.media3.common.a aVar = this.f59670l;
        if (aVar == null || f10.f1748d != aVar.E || f10.f1747c != aVar.F || !Objects.equals(f10.f1745a, aVar.f55174o)) {
            a.b p02 = new a.b().f0(this.f59664f).U(this.f59663e).u0(f10.f1745a).R(f10.f1748d).v0(f10.f1747c).j0(this.f59661c).s0(this.f59662d).p0(f10.f1751g);
            if (MimeTypes.AUDIO_AC3.equals(f10.f1745a)) {
                p02.Q(f10.f1751g);
            }
            io.bidmachine.media3.common.a N = p02.N();
            this.f59670l = N;
            this.f59665g.g(N);
        }
        this.f59671m = f10.f1749e;
        this.f59669k = (f10.f1750f * 1000000) / this.f59670l.F;
    }

    private boolean g(cn.b0 b0Var) {
        while (true) {
            boolean z10 = false;
            if (b0Var.a() <= 0) {
                return false;
            }
            if (!this.f59668j) {
                if (b0Var.H() == 11) {
                    z10 = true;
                }
                this.f59668j = z10;
            } else {
                int H = b0Var.H();
                if (H == 119) {
                    this.f59668j = false;
                    return true;
                }
                if (H == 11) {
                    z10 = true;
                }
                this.f59668j = z10;
            }
        }
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        cn.a.i(this.f59665g);
        while (b0Var.a() > 0) {
            int i10 = this.f59666h;
            boolean z10 = true;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int min = Math.min(b0Var.a(), this.f59671m - this.f59667i);
                        this.f59665g.a(b0Var, min);
                        int i11 = this.f59667i + min;
                        this.f59667i = i11;
                        if (i11 == this.f59671m) {
                            if (this.f59672n == -9223372036854775807L) {
                                z10 = false;
                            }
                            cn.a.g(z10);
                            this.f59665g.c(this.f59672n, 1, this.f59671m, 0, null);
                            this.f59672n += this.f59669k;
                            this.f59666h = 0;
                        }
                    }
                } else if (e(b0Var, this.f59660b.e(), 128)) {
                    f();
                    this.f59660b.W(0);
                    this.f59665g.a(this.f59660b, 128);
                    this.f59666h = 2;
                }
            } else if (g(b0Var)) {
                this.f59666h = 1;
                this.f59660b.e()[0] = 11;
                this.f59660b.e()[1] = 119;
                this.f59667i = 2;
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59664f = dVar.b();
        this.f59665g = rVar.track(dVar.c(), 1);
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59672n = j10;
    }

    @Override // ip.m
    public void seek() {
        this.f59666h = 0;
        this.f59667i = 0;
        this.f59668j = false;
        this.f59672n = -9223372036854775807L;
    }

    public c(@Nullable String str, int i10, String str2) {
        cn.a0 a0Var = new cn.a0(new byte[128]);
        this.f59659a = a0Var;
        this.f59660b = new cn.b0(a0Var.f3559a);
        this.f59666h = 0;
        this.f59672n = -9223372036854775807L;
        this.f59661c = str;
        this.f59662d = i10;
        this.f59663e = str2;
    }

    @Override // ip.m
    public void d(boolean z10) {
    }
}
