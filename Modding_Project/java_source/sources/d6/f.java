package d6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v0;
import d6.i0;
import q5.c;
/* compiled from: Ac4Reader.java */
/* loaded from: classes4.dex */
public final class f implements m {

    /* renamed from: a  reason: collision with root package name */
    private final b7.f0 f49882a;

    /* renamed from: b  reason: collision with root package name */
    private final b7.g0 f49883b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f49884c;

    /* renamed from: d  reason: collision with root package name */
    private String f49885d;

    /* renamed from: e  reason: collision with root package name */
    private t5.b0 f49886e;

    /* renamed from: f  reason: collision with root package name */
    private int f49887f;

    /* renamed from: g  reason: collision with root package name */
    private int f49888g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f49889h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f49890i;

    /* renamed from: j  reason: collision with root package name */
    private long f49891j;

    /* renamed from: k  reason: collision with root package name */
    private v0 f49892k;

    /* renamed from: l  reason: collision with root package name */
    private int f49893l;

    /* renamed from: m  reason: collision with root package name */
    private long f49894m;

    public f() {
        this(null);
    }

    private boolean a(b7.g0 g0Var, byte[] bArr, int i10) {
        int min = Math.min(g0Var.a(), i10 - this.f49888g);
        g0Var.j(bArr, this.f49888g, min);
        int i11 = this.f49888g + min;
        this.f49888g = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void e() {
        this.f49882a.p(0);
        c.b d10 = q5.c.d(this.f49882a);
        v0 v0Var = this.f49892k;
        if (v0Var == null || d10.f65072c != v0Var.f19170y || d10.f65071b != v0Var.f19171z || !"audio/ac4".equals(v0Var.f19157l)) {
            v0 E = new v0.b().S(this.f49885d).e0("audio/ac4").H(d10.f65072c).f0(d10.f65071b).V(this.f49884c).E();
            this.f49892k = E;
            this.f49886e.b(E);
        }
        this.f49893l = d10.f65073d;
        this.f49891j = (d10.f65074e * 1000000) / this.f49892k.f19171z;
    }

    private boolean f(b7.g0 g0Var) {
        boolean z10;
        int D;
        boolean z11;
        while (true) {
            z10 = false;
            if (g0Var.a() <= 0) {
                return false;
            }
            if (!this.f49889h) {
                if (g0Var.D() == 172) {
                    z10 = true;
                }
                this.f49889h = z10;
            } else {
                D = g0Var.D();
                if (D == 172) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f49889h = z11;
                if (D == 64 || D == 65) {
                    break;
                }
            }
        }
        if (D == 65) {
            z10 = true;
        }
        this.f49890i = z10;
        return true;
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        int i10;
        b7.a.i(this.f49886e);
        while (g0Var.a() > 0) {
            int i11 = this.f49887f;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        int min = Math.min(g0Var.a(), this.f49893l - this.f49888g);
                        this.f49886e.a(g0Var, min);
                        int i12 = this.f49888g + min;
                        this.f49888g = i12;
                        int i13 = this.f49893l;
                        if (i12 == i13) {
                            long j10 = this.f49894m;
                            if (j10 != -9223372036854775807L) {
                                this.f49886e.e(j10, 1, i13, 0, null);
                                this.f49894m += this.f49891j;
                            }
                            this.f49887f = 0;
                        }
                    }
                } else if (a(g0Var, this.f49883b.d(), 16)) {
                    e();
                    this.f49883b.P(0);
                    this.f49886e.a(this.f49883b, 16);
                    this.f49887f = 2;
                }
            } else if (f(g0Var)) {
                this.f49887f = 1;
                this.f49883b.d()[0] = -84;
                byte[] d10 = this.f49883b.d();
                if (this.f49890i) {
                    i10 = 65;
                } else {
                    i10 = 64;
                }
                d10[1] = (byte) i10;
                this.f49888g = 2;
            }
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f49894m = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f49885d = dVar.b();
        this.f49886e = mVar.track(dVar.c(), 1);
    }

    @Override // d6.m
    public void seek() {
        this.f49887f = 0;
        this.f49888g = 0;
        this.f49889h = false;
        this.f49890i = false;
        this.f49894m = -9223372036854775807L;
    }

    public f(@Nullable String str) {
        b7.f0 f0Var = new b7.f0(new byte[16]);
        this.f49882a = f0Var;
        this.f49883b = new b7.g0(f0Var.f2443a);
        this.f49887f = 0;
        this.f49888g = 0;
        this.f49889h = false;
        this.f49890i = false;
        this.f49894m = -9223372036854775807L;
        this.f49884c = str;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
