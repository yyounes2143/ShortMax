package d6;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.v0;
import d6.i0;
import q5.b;
/* compiled from: Ac3Reader.java */
/* loaded from: classes4.dex */
public final class c implements m {

    /* renamed from: a  reason: collision with root package name */
    private final b7.f0 f49854a;

    /* renamed from: b  reason: collision with root package name */
    private final b7.g0 f49855b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f49856c;

    /* renamed from: d  reason: collision with root package name */
    private String f49857d;

    /* renamed from: e  reason: collision with root package name */
    private t5.b0 f49858e;

    /* renamed from: f  reason: collision with root package name */
    private int f49859f;

    /* renamed from: g  reason: collision with root package name */
    private int f49860g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f49861h;

    /* renamed from: i  reason: collision with root package name */
    private long f49862i;

    /* renamed from: j  reason: collision with root package name */
    private v0 f49863j;

    /* renamed from: k  reason: collision with root package name */
    private int f49864k;

    /* renamed from: l  reason: collision with root package name */
    private long f49865l;

    public c() {
        this(null);
    }

    private boolean a(b7.g0 g0Var, byte[] bArr, int i10) {
        int min = Math.min(g0Var.a(), i10 - this.f49860g);
        g0Var.j(bArr, this.f49860g, min);
        int i11 = this.f49860g + min;
        this.f49860g = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void e() {
        this.f49854a.p(0);
        b.C0904b e10 = q5.b.e(this.f49854a);
        v0 v0Var = this.f49863j;
        if (v0Var == null || e10.f65066d != v0Var.f19170y || e10.f65065c != v0Var.f19171z || !s0.c(e10.f65063a, v0Var.f19157l)) {
            v0 E = new v0.b().S(this.f49857d).e0(e10.f65063a).H(e10.f65066d).f0(e10.f65065c).V(this.f49856c).E();
            this.f49863j = E;
            this.f49858e.b(E);
        }
        this.f49864k = e10.f65067e;
        this.f49862i = (e10.f65068f * 1000000) / this.f49863j.f19171z;
    }

    private boolean f(b7.g0 g0Var) {
        while (true) {
            boolean z10 = false;
            if (g0Var.a() <= 0) {
                return false;
            }
            if (!this.f49861h) {
                if (g0Var.D() == 11) {
                    z10 = true;
                }
                this.f49861h = z10;
            } else {
                int D = g0Var.D();
                if (D == 119) {
                    this.f49861h = false;
                    return true;
                }
                if (D == 11) {
                    z10 = true;
                }
                this.f49861h = z10;
            }
        }
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        b7.a.i(this.f49858e);
        while (g0Var.a() > 0) {
            int i10 = this.f49859f;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int min = Math.min(g0Var.a(), this.f49864k - this.f49860g);
                        this.f49858e.a(g0Var, min);
                        int i11 = this.f49860g + min;
                        this.f49860g = i11;
                        int i12 = this.f49864k;
                        if (i11 == i12) {
                            long j10 = this.f49865l;
                            if (j10 != -9223372036854775807L) {
                                this.f49858e.e(j10, 1, i12, 0, null);
                                this.f49865l += this.f49862i;
                            }
                            this.f49859f = 0;
                        }
                    }
                } else if (a(g0Var, this.f49855b.d(), 128)) {
                    e();
                    this.f49855b.P(0);
                    this.f49858e.a(this.f49855b, 128);
                    this.f49859f = 2;
                }
            } else if (f(g0Var)) {
                this.f49859f = 1;
                this.f49855b.d()[0] = 11;
                this.f49855b.d()[1] = 119;
                this.f49860g = 2;
            }
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f49865l = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f49857d = dVar.b();
        this.f49858e = mVar.track(dVar.c(), 1);
    }

    @Override // d6.m
    public void seek() {
        this.f49859f = 0;
        this.f49860g = 0;
        this.f49861h = false;
        this.f49865l = -9223372036854775807L;
    }

    public c(@Nullable String str) {
        b7.f0 f0Var = new b7.f0(new byte[128]);
        this.f49854a = f0Var;
        this.f49855b = new b7.g0(f0Var.f2443a);
        this.f49859f = 0;
        this.f49865l = -9223372036854775807L;
        this.f49856c = str;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
