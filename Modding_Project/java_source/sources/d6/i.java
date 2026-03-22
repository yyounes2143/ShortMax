package d6;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.v0;
import com.google.android.material.internal.ViewUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
import java.util.Arrays;
import java.util.Collections;
import q5.a;
/* compiled from: AdtsReader.java */
/* loaded from: classes4.dex */
public final class i implements m {

    /* renamed from: v  reason: collision with root package name */
    private static final byte[] f49944v = {73, 68, 51};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f49945a;

    /* renamed from: b  reason: collision with root package name */
    private final b7.f0 f49946b;

    /* renamed from: c  reason: collision with root package name */
    private final b7.g0 f49947c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f49948d;

    /* renamed from: e  reason: collision with root package name */
    private String f49949e;

    /* renamed from: f  reason: collision with root package name */
    private t5.b0 f49950f;

    /* renamed from: g  reason: collision with root package name */
    private t5.b0 f49951g;

    /* renamed from: h  reason: collision with root package name */
    private int f49952h;

    /* renamed from: i  reason: collision with root package name */
    private int f49953i;

    /* renamed from: j  reason: collision with root package name */
    private int f49954j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f49955k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f49956l;

    /* renamed from: m  reason: collision with root package name */
    private int f49957m;

    /* renamed from: n  reason: collision with root package name */
    private int f49958n;

    /* renamed from: o  reason: collision with root package name */
    private int f49959o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f49960p;

    /* renamed from: q  reason: collision with root package name */
    private long f49961q;

    /* renamed from: r  reason: collision with root package name */
    private int f49962r;

    /* renamed from: s  reason: collision with root package name */
    private long f49963s;

    /* renamed from: t  reason: collision with root package name */
    private t5.b0 f49964t;

    /* renamed from: u  reason: collision with root package name */
    private long f49965u;

    public i(boolean z10) {
        this(z10, null);
    }

    private void a() {
        b7.a.e(this.f49950f);
        s0.j(this.f49964t);
        s0.j(this.f49951g);
    }

    private void e(b7.g0 g0Var) {
        if (g0Var.a() == 0) {
            return;
        }
        this.f49946b.f2443a[0] = g0Var.d()[g0Var.e()];
        this.f49946b.p(2);
        int h10 = this.f49946b.h(4);
        int i10 = this.f49958n;
        if (i10 != -1 && h10 != i10) {
            o();
            return;
        }
        if (!this.f49956l) {
            this.f49956l = true;
            this.f49957m = this.f49959o;
            this.f49958n = h10;
        }
        r();
    }

    private boolean f(b7.g0 g0Var, int i10) {
        g0Var.P(i10 + 1);
        if (!u(g0Var, this.f49946b.f2443a, 1)) {
            return false;
        }
        this.f49946b.p(4);
        int h10 = this.f49946b.h(1);
        int i11 = this.f49957m;
        if (i11 != -1 && h10 != i11) {
            return false;
        }
        if (this.f49958n != -1) {
            if (!u(g0Var, this.f49946b.f2443a, 1)) {
                return true;
            }
            this.f49946b.p(2);
            if (this.f49946b.h(4) != this.f49958n) {
                return false;
            }
            g0Var.P(i10 + 2);
        }
        if (!u(g0Var, this.f49946b.f2443a, 4)) {
            return true;
        }
        this.f49946b.p(14);
        int h11 = this.f49946b.h(13);
        if (h11 < 7) {
            return false;
        }
        byte[] d10 = g0Var.d();
        int f10 = g0Var.f();
        int i12 = i10 + h11;
        if (i12 >= f10) {
            return true;
        }
        byte b10 = d10[i12];
        if (b10 == -1) {
            int i13 = i12 + 1;
            if (i13 == f10) {
                return true;
            }
            if (j((byte) -1, d10[i13]) && ((d10[i13] & 8) >> 3) == h10) {
                return true;
            }
            return false;
        } else if (b10 != 73) {
            return false;
        } else {
            int i14 = i12 + 1;
            if (i14 == f10) {
                return true;
            }
            if (d10[i14] != 68) {
                return false;
            }
            int i15 = i12 + 2;
            if (i15 == f10 || d10[i15] == 51) {
                return true;
            }
            return false;
        }
    }

    private boolean g(b7.g0 g0Var, byte[] bArr, int i10) {
        int min = Math.min(g0Var.a(), i10 - this.f49953i);
        g0Var.j(bArr, this.f49953i, min);
        int i11 = this.f49953i + min;
        this.f49953i = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void h(b7.g0 g0Var) {
        byte[] d10 = g0Var.d();
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        while (e10 < f10) {
            int i10 = e10 + 1;
            byte b10 = d10[e10];
            int i11 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            if (this.f49954j == 512 && j((byte) -1, (byte) i11) && (this.f49956l || f(g0Var, e10 - 1))) {
                this.f49959o = (b10 & 8) >> 3;
                boolean z10 = true;
                if ((b10 & 1) != 0) {
                    z10 = false;
                }
                this.f49955k = z10;
                if (!this.f49956l) {
                    p();
                } else {
                    r();
                }
                g0Var.P(i10);
                return;
            }
            int i12 = this.f49954j;
            int i13 = i11 | i12;
            if (i13 != 329) {
                if (i13 != 511) {
                    if (i13 != 836) {
                        if (i13 != 1075) {
                            if (i12 != 256) {
                                this.f49954j = 256;
                            }
                        } else {
                            s();
                            g0Var.P(i10);
                            return;
                        }
                    } else {
                        this.f49954j = 1024;
                    }
                } else {
                    this.f49954j = 512;
                }
            } else {
                this.f49954j = ViewUtils.EDGE_TO_EDGE_FLAGS;
            }
            e10 = i10;
        }
        g0Var.P(e10);
    }

    private boolean j(byte b10, byte b11) {
        return k(((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
    }

    public static boolean k(int i10) {
        if ((i10 & 65526) == 65520) {
            return true;
        }
        return false;
    }

    private void l() throws ParserException {
        this.f49946b.p(0);
        if (!this.f49960p) {
            int i10 = 2;
            int h10 = this.f49946b.h(2) + 1;
            if (h10 != 2) {
                b7.q.i("AdtsReader", "Detected audio object type: " + h10 + ", but assuming AAC LC.");
            } else {
                i10 = h10;
            }
            this.f49946b.r(5);
            byte[] a10 = q5.a.a(i10, this.f49958n, this.f49946b.h(3));
            a.b e10 = q5.a.e(a10);
            v0 E = new v0.b().S(this.f49949e).e0(MimeTypes.AUDIO_AAC).I(e10.f65056c).H(e10.f65055b).f0(e10.f65054a).T(Collections.singletonList(a10)).V(this.f49948d).E();
            this.f49961q = 1024000000 / E.f19171z;
            this.f49950f.b(E);
            this.f49960p = true;
        } else {
            this.f49946b.r(10);
        }
        this.f49946b.r(4);
        int h11 = this.f49946b.h(13);
        int i11 = h11 - 7;
        if (this.f49955k) {
            i11 = h11 - 9;
        }
        t(this.f49950f, this.f49961q, 0, i11);
    }

    private void m() {
        this.f49951g.a(this.f49947c, 10);
        this.f49947c.P(6);
        t(this.f49951g, 0L, 10, this.f49947c.C() + 10);
    }

    private void n(b7.g0 g0Var) {
        int min = Math.min(g0Var.a(), this.f49962r - this.f49953i);
        this.f49964t.a(g0Var, min);
        int i10 = this.f49953i + min;
        this.f49953i = i10;
        int i11 = this.f49962r;
        if (i10 == i11) {
            long j10 = this.f49963s;
            if (j10 != -9223372036854775807L) {
                this.f49964t.e(j10, 1, i11, 0, null);
                this.f49963s += this.f49965u;
            }
            q();
        }
    }

    private void o() {
        this.f49956l = false;
        q();
    }

    private void p() {
        this.f49952h = 1;
        this.f49953i = 0;
    }

    private void q() {
        this.f49952h = 0;
        this.f49953i = 0;
        this.f49954j = 256;
    }

    private void r() {
        this.f49952h = 3;
        this.f49953i = 0;
    }

    private void s() {
        this.f49952h = 2;
        this.f49953i = f49944v.length;
        this.f49962r = 0;
        this.f49947c.P(0);
    }

    private void t(t5.b0 b0Var, long j10, int i10, int i11) {
        this.f49952h = 4;
        this.f49953i = i10;
        this.f49964t = b0Var;
        this.f49965u = j10;
        this.f49962r = i11;
    }

    private boolean u(b7.g0 g0Var, byte[] bArr, int i10) {
        if (g0Var.a() < i10) {
            return false;
        }
        g0Var.j(bArr, 0, i10);
        return true;
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) throws ParserException {
        int i10;
        a();
        while (g0Var.a() > 0) {
            int i11 = this.f49952h;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                n(g0Var);
                            } else {
                                throw new IllegalStateException();
                            }
                        } else {
                            if (this.f49955k) {
                                i10 = 7;
                            } else {
                                i10 = 5;
                            }
                            if (g(g0Var, this.f49946b.f2443a, i10)) {
                                l();
                            }
                        }
                    } else if (g(g0Var, this.f49947c.d(), 10)) {
                        m();
                    }
                } else {
                    e(g0Var);
                }
            } else {
                h(g0Var);
            }
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f49963s = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f49949e = dVar.b();
        t5.b0 track = mVar.track(dVar.c(), 1);
        this.f49950f = track;
        this.f49964t = track;
        if (this.f49945a) {
            dVar.a();
            t5.b0 track2 = mVar.track(dVar.c(), 5);
            this.f49951g = track2;
            track2.b(new v0.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
            return;
        }
        this.f49951g = new t5.j();
    }

    public long i() {
        return this.f49961q;
    }

    @Override // d6.m
    public void seek() {
        this.f49963s = -9223372036854775807L;
        o();
    }

    public i(boolean z10, @Nullable String str) {
        this.f49946b = new b7.f0(new byte[7]);
        this.f49947c = new b7.g0(Arrays.copyOf(f49944v, 10));
        q();
        this.f49957m = -1;
        this.f49958n = -1;
        this.f49961q = -9223372036854775807L;
        this.f49963s = -9223372036854775807L;
        this.f49945a = z10;
        this.f49948d = str;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
