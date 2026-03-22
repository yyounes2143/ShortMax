package ip;

import androidx.annotation.Nullable;
import ao.a;
import ao.o0;
import com.google.android.material.internal.ViewUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: AdtsReader.java */
/* loaded from: classes8.dex */
public final class i implements m {

    /* renamed from: x  reason: collision with root package name */
    private static final byte[] f59740x = {73, 68, 51};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f59741a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.a0 f59742b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.b0 f59743c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f59744d;

    /* renamed from: e  reason: collision with root package name */
    private final int f59745e;

    /* renamed from: f  reason: collision with root package name */
    private final String f59746f;

    /* renamed from: g  reason: collision with root package name */
    private String f59747g;

    /* renamed from: h  reason: collision with root package name */
    private o0 f59748h;

    /* renamed from: i  reason: collision with root package name */
    private o0 f59749i;

    /* renamed from: j  reason: collision with root package name */
    private int f59750j;

    /* renamed from: k  reason: collision with root package name */
    private int f59751k;

    /* renamed from: l  reason: collision with root package name */
    private int f59752l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f59753m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f59754n;

    /* renamed from: o  reason: collision with root package name */
    private int f59755o;

    /* renamed from: p  reason: collision with root package name */
    private int f59756p;

    /* renamed from: q  reason: collision with root package name */
    private int f59757q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f59758r;

    /* renamed from: s  reason: collision with root package name */
    private long f59759s;

    /* renamed from: t  reason: collision with root package name */
    private int f59760t;

    /* renamed from: u  reason: collision with root package name */
    private long f59761u;

    /* renamed from: v  reason: collision with root package name */
    private o0 f59762v;

    /* renamed from: w  reason: collision with root package name */
    private long f59763w;

    public i(boolean z10, String str) {
        this(z10, null, 0, str);
    }

    private void e() {
        cn.a.e(this.f59748h);
        cn.m0.i(this.f59762v);
        cn.m0.i(this.f59749i);
    }

    private void f(cn.b0 b0Var) {
        if (b0Var.a() == 0) {
            return;
        }
        this.f59742b.f3559a[0] = b0Var.e()[b0Var.f()];
        this.f59742b.p(2);
        int h10 = this.f59742b.h(4);
        int i10 = this.f59756p;
        if (i10 != -1 && h10 != i10) {
            p();
            return;
        }
        if (!this.f59754n) {
            this.f59754n = true;
            this.f59755o = this.f59757q;
            this.f59756p = h10;
        }
        s();
    }

    private boolean g(cn.b0 b0Var, int i10) {
        b0Var.W(i10 + 1);
        if (!v(b0Var, this.f59742b.f3559a, 1)) {
            return false;
        }
        this.f59742b.p(4);
        int h10 = this.f59742b.h(1);
        int i11 = this.f59755o;
        if (i11 != -1 && h10 != i11) {
            return false;
        }
        if (this.f59756p != -1) {
            if (!v(b0Var, this.f59742b.f3559a, 1)) {
                return true;
            }
            this.f59742b.p(2);
            if (this.f59742b.h(4) != this.f59756p) {
                return false;
            }
            b0Var.W(i10 + 2);
        }
        if (!v(b0Var, this.f59742b.f3559a, 4)) {
            return true;
        }
        this.f59742b.p(14);
        int h11 = this.f59742b.h(13);
        if (h11 < 7) {
            return false;
        }
        byte[] e10 = b0Var.e();
        int g10 = b0Var.g();
        int i12 = i10 + h11;
        if (i12 >= g10) {
            return true;
        }
        byte b10 = e10[i12];
        if (b10 == -1) {
            int i13 = i12 + 1;
            if (i13 == g10) {
                return true;
            }
            if (k((byte) -1, e10[i13]) && ((e10[i13] & 8) >> 3) == h10) {
                return true;
            }
            return false;
        } else if (b10 != 73) {
            return false;
        } else {
            int i14 = i12 + 1;
            if (i14 == g10) {
                return true;
            }
            if (e10[i14] != 68) {
                return false;
            }
            int i15 = i12 + 2;
            if (i15 == g10 || e10[i15] == 51) {
                return true;
            }
            return false;
        }
    }

    private boolean h(cn.b0 b0Var, byte[] bArr, int i10) {
        int min = Math.min(b0Var.a(), i10 - this.f59751k);
        b0Var.l(bArr, this.f59751k, min);
        int i11 = this.f59751k + min;
        this.f59751k = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void i(cn.b0 b0Var) {
        byte[] e10 = b0Var.e();
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        while (f10 < g10) {
            int i10 = f10 + 1;
            byte b10 = e10[f10];
            int i11 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            if (this.f59752l == 512 && k((byte) -1, (byte) i11) && (this.f59754n || g(b0Var, f10 - 1))) {
                this.f59757q = (b10 & 8) >> 3;
                boolean z10 = true;
                if ((b10 & 1) != 0) {
                    z10 = false;
                }
                this.f59753m = z10;
                if (!this.f59754n) {
                    q();
                } else {
                    s();
                }
                b0Var.W(i10);
                return;
            }
            int i12 = this.f59752l;
            int i13 = i11 | i12;
            if (i13 != 329) {
                if (i13 != 511) {
                    if (i13 != 836) {
                        if (i13 != 1075) {
                            if (i12 != 256) {
                                this.f59752l = 256;
                            }
                        } else {
                            t();
                            b0Var.W(i10);
                            return;
                        }
                    } else {
                        this.f59752l = 1024;
                    }
                } else {
                    this.f59752l = 512;
                }
            } else {
                this.f59752l = ViewUtils.EDGE_TO_EDGE_FLAGS;
            }
            f10 = i10;
        }
        b0Var.W(f10);
    }

    private boolean k(byte b10, byte b11) {
        return l(((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
    }

    public static boolean l(int i10) {
        if ((i10 & 65526) == 65520) {
            return true;
        }
        return false;
    }

    private void m() throws ParserException {
        this.f59742b.p(0);
        if (!this.f59758r) {
            int i10 = 2;
            int h10 = this.f59742b.h(2) + 1;
            if (h10 != 2) {
                cn.r.h("AdtsReader", "Detected audio object type: " + h10 + ", but assuming AAC LC.");
            } else {
                i10 = h10;
            }
            this.f59742b.r(5);
            byte[] a10 = ao.a.a(i10, this.f59756p, this.f59742b.h(3));
            a.b e10 = ao.a.e(a10);
            io.bidmachine.media3.common.a N = new a.b().f0(this.f59747g).U(this.f59746f).u0(MimeTypes.AUDIO_AAC).S(e10.f1737c).R(e10.f1736b).v0(e10.f1735a).g0(Collections.singletonList(a10)).j0(this.f59744d).s0(this.f59745e).N();
            this.f59759s = 1024000000 / N.F;
            this.f59748h.g(N);
            this.f59758r = true;
        } else {
            this.f59742b.r(10);
        }
        this.f59742b.r(4);
        int h11 = this.f59742b.h(13);
        int i11 = h11 - 7;
        if (this.f59753m) {
            i11 = h11 - 9;
        }
        u(this.f59748h, this.f59759s, 0, i11);
    }

    private void n() {
        this.f59749i.a(this.f59743c, 10);
        this.f59743c.W(6);
        u(this.f59749i, 0L, 10, this.f59743c.G() + 10);
    }

    private void o(cn.b0 b0Var) {
        boolean z10;
        int min = Math.min(b0Var.a(), this.f59760t - this.f59751k);
        this.f59762v.a(b0Var, min);
        int i10 = this.f59751k + min;
        this.f59751k = i10;
        if (i10 == this.f59760t) {
            if (this.f59761u != -9223372036854775807L) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            this.f59762v.c(this.f59761u, 1, this.f59760t, 0, null);
            this.f59761u += this.f59763w;
            r();
        }
    }

    private void p() {
        this.f59754n = false;
        r();
    }

    private void q() {
        this.f59750j = 1;
        this.f59751k = 0;
    }

    private void r() {
        this.f59750j = 0;
        this.f59751k = 0;
        this.f59752l = 256;
    }

    private void s() {
        this.f59750j = 3;
        this.f59751k = 0;
    }

    private void t() {
        this.f59750j = 2;
        this.f59751k = f59740x.length;
        this.f59760t = 0;
        this.f59743c.W(0);
    }

    private void u(o0 o0Var, long j10, int i10, int i11) {
        this.f59750j = 4;
        this.f59751k = i10;
        this.f59762v = o0Var;
        this.f59763w = j10;
        this.f59760t = i11;
    }

    private boolean v(cn.b0 b0Var, byte[] bArr, int i10) {
        if (b0Var.a() < i10) {
            return false;
        }
        b0Var.l(bArr, 0, i10);
        return true;
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) throws ParserException {
        int i10;
        e();
        while (b0Var.a() > 0) {
            int i11 = this.f59750j;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                o(b0Var);
                            } else {
                                throw new IllegalStateException();
                            }
                        } else {
                            if (this.f59753m) {
                                i10 = 7;
                            } else {
                                i10 = 5;
                            }
                            if (h(b0Var, this.f59742b.f3559a, i10)) {
                                m();
                            }
                        }
                    } else if (h(b0Var, this.f59743c.e(), 10)) {
                        n();
                    }
                } else {
                    f(b0Var);
                }
            } else {
                i(b0Var);
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59747g = dVar.b();
        o0 track = rVar.track(dVar.c(), 1);
        this.f59748h = track;
        this.f59762v = track;
        if (this.f59741a) {
            dVar.a();
            o0 track2 = rVar.track(dVar.c(), 5);
            this.f59749i = track2;
            track2.g(new a.b().f0(dVar.b()).U(this.f59746f).u0(MimeTypes.APPLICATION_ID3).N());
            return;
        }
        this.f59749i = new ao.m();
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59761u = j10;
    }

    public long j() {
        return this.f59759s;
    }

    @Override // ip.m
    public void seek() {
        this.f59761u = -9223372036854775807L;
        p();
    }

    public i(boolean z10, @Nullable String str, int i10, String str2) {
        this.f59742b = new cn.a0(new byte[7]);
        this.f59743c = new cn.b0(Arrays.copyOf(f59740x, 10));
        this.f59755o = -1;
        this.f59756p = -1;
        this.f59759s = -9223372036854775807L;
        this.f59761u = -9223372036854775807L;
        this.f59741a = z10;
        this.f59744d = str;
        this.f59745e = i10;
        this.f59746f = str2;
        r();
    }

    @Override // ip.m
    public void d(boolean z10) {
    }
}
