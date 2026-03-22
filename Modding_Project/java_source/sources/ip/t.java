package ip;

import androidx.annotation.Nullable;
import ao.f0;
import ao.o0;
import com.inmobi.commons.core.configs.AdConfig;
import io.bidmachine.media3.common.a;
import ip.l0;
/* compiled from: MpegAudioReader.java */
/* loaded from: classes8.dex */
public final class t implements m {

    /* renamed from: a  reason: collision with root package name */
    private final cn.b0 f60003a;

    /* renamed from: b  reason: collision with root package name */
    private final f0.a f60004b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f60005c;

    /* renamed from: d  reason: collision with root package name */
    private final int f60006d;

    /* renamed from: e  reason: collision with root package name */
    private final String f60007e;

    /* renamed from: f  reason: collision with root package name */
    private o0 f60008f;

    /* renamed from: g  reason: collision with root package name */
    private String f60009g;

    /* renamed from: h  reason: collision with root package name */
    private int f60010h;

    /* renamed from: i  reason: collision with root package name */
    private int f60011i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f60012j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f60013k;

    /* renamed from: l  reason: collision with root package name */
    private long f60014l;

    /* renamed from: m  reason: collision with root package name */
    private int f60015m;

    /* renamed from: n  reason: collision with root package name */
    private long f60016n;

    public t(String str) {
        this(null, 0, str);
    }

    private void e(cn.b0 b0Var) {
        boolean z10;
        boolean z11;
        byte[] e10 = b0Var.e();
        int g10 = b0Var.g();
        for (int f10 = b0Var.f(); f10 < g10; f10++) {
            byte b10 = e10[f10];
            if ((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 255) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.f60013k && (b10 & 224) == 224) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f60013k = z10;
            if (z11) {
                b0Var.W(f10 + 1);
                this.f60013k = false;
                this.f60003a.e()[1] = e10[f10];
                this.f60011i = 2;
                this.f60010h = 1;
                return;
            }
        }
        b0Var.W(g10);
    }

    private void f(cn.b0 b0Var) {
        boolean z10;
        int min = Math.min(b0Var.a(), this.f60015m - this.f60011i);
        this.f60008f.a(b0Var, min);
        int i10 = this.f60011i + min;
        this.f60011i = i10;
        if (i10 < this.f60015m) {
            return;
        }
        if (this.f60016n != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f60008f.c(this.f60016n, 1, this.f60015m, 0, null);
        this.f60016n += this.f60014l;
        this.f60011i = 0;
        this.f60010h = 0;
    }

    private void g(cn.b0 b0Var) {
        int min = Math.min(b0Var.a(), 4 - this.f60011i);
        b0Var.l(this.f60003a.e(), this.f60011i, min);
        int i10 = this.f60011i + min;
        this.f60011i = i10;
        if (i10 < 4) {
            return;
        }
        this.f60003a.W(0);
        if (!this.f60004b.a(this.f60003a.q())) {
            this.f60011i = 0;
            this.f60010h = 1;
            return;
        }
        f0.a aVar = this.f60004b;
        this.f60015m = aVar.f1830c;
        if (!this.f60012j) {
            this.f60014l = (aVar.f1834g * 1000000) / aVar.f1831d;
            this.f60008f.g(new a.b().f0(this.f60009g).U(this.f60007e).u0(this.f60004b.f1829b).k0(4096).R(this.f60004b.f1832e).v0(this.f60004b.f1831d).j0(this.f60005c).s0(this.f60006d).N());
            this.f60012j = true;
        }
        this.f60003a.W(0);
        this.f60008f.a(this.f60003a, 4);
        this.f60010h = 2;
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        cn.a.i(this.f60008f);
        while (b0Var.a() > 0) {
            int i10 = this.f60010h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        f(b0Var);
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    g(b0Var);
                }
            } else {
                e(b0Var);
            }
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f60009g = dVar.b();
        this.f60008f = rVar.track(dVar.c(), 1);
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f60016n = j10;
    }

    @Override // ip.m
    public void seek() {
        this.f60010h = 0;
        this.f60011i = 0;
        this.f60013k = false;
        this.f60016n = -9223372036854775807L;
    }

    public t(@Nullable String str, int i10, String str2) {
        this.f60010h = 0;
        cn.b0 b0Var = new cn.b0(4);
        this.f60003a = b0Var;
        b0Var.e()[0] = -1;
        this.f60004b = new f0.a();
        this.f60016n = -9223372036854775807L;
        this.f60005c = str;
        this.f60006d = i10;
        this.f60007e = str2;
    }

    @Override // ip.m
    public void d(boolean z10) {
    }
}
