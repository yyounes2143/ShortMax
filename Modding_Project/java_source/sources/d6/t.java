package d6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v0;
import com.inmobi.commons.core.configs.AdConfig;
import d6.i0;
import q5.g0;
/* compiled from: MpegAudioReader.java */
/* loaded from: classes4.dex */
public final class t implements m {

    /* renamed from: a  reason: collision with root package name */
    private final b7.g0 f50150a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.a f50151b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f50152c;

    /* renamed from: d  reason: collision with root package name */
    private t5.b0 f50153d;

    /* renamed from: e  reason: collision with root package name */
    private String f50154e;

    /* renamed from: f  reason: collision with root package name */
    private int f50155f;

    /* renamed from: g  reason: collision with root package name */
    private int f50156g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f50157h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f50158i;

    /* renamed from: j  reason: collision with root package name */
    private long f50159j;

    /* renamed from: k  reason: collision with root package name */
    private int f50160k;

    /* renamed from: l  reason: collision with root package name */
    private long f50161l;

    public t() {
        this(null);
    }

    private void a(b7.g0 g0Var) {
        boolean z10;
        boolean z11;
        byte[] d10 = g0Var.d();
        int f10 = g0Var.f();
        for (int e10 = g0Var.e(); e10 < f10; e10++) {
            byte b10 = d10[e10];
            if ((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 255) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.f50158i && (b10 & 224) == 224) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f50158i = z10;
            if (z11) {
                g0Var.P(e10 + 1);
                this.f50158i = false;
                this.f50150a.d()[1] = d10[e10];
                this.f50156g = 2;
                this.f50155f = 1;
                return;
            }
        }
        g0Var.P(f10);
    }

    private void e(b7.g0 g0Var) {
        int min = Math.min(g0Var.a(), this.f50160k - this.f50156g);
        this.f50153d.a(g0Var, min);
        int i10 = this.f50156g + min;
        this.f50156g = i10;
        int i11 = this.f50160k;
        if (i10 < i11) {
            return;
        }
        long j10 = this.f50161l;
        if (j10 != -9223372036854775807L) {
            this.f50153d.e(j10, 1, i11, 0, null);
            this.f50161l += this.f50159j;
        }
        this.f50156g = 0;
        this.f50155f = 0;
    }

    private void f(b7.g0 g0Var) {
        int min = Math.min(g0Var.a(), 4 - this.f50156g);
        g0Var.j(this.f50150a.d(), this.f50156g, min);
        int i10 = this.f50156g + min;
        this.f50156g = i10;
        if (i10 < 4) {
            return;
        }
        this.f50150a.P(0);
        if (!this.f50151b.a(this.f50150a.n())) {
            this.f50156g = 0;
            this.f50155f = 1;
            return;
        }
        g0.a aVar = this.f50151b;
        this.f50160k = aVar.f65087c;
        if (!this.f50157h) {
            this.f50159j = (aVar.f65091g * 1000000) / aVar.f65088d;
            this.f50153d.b(new v0.b().S(this.f50154e).e0(this.f50151b.f65086b).W(4096).H(this.f50151b.f65089e).f0(this.f50151b.f65088d).V(this.f50152c).E());
            this.f50157h = true;
        }
        this.f50150a.P(0);
        this.f50153d.a(this.f50150a, 4);
        this.f50155f = 2;
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        b7.a.i(this.f50153d);
        while (g0Var.a() > 0) {
            int i10 = this.f50155f;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        e(g0Var);
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    f(g0Var);
                }
            } else {
                a(g0Var);
            }
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f50161l = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f50154e = dVar.b();
        this.f50153d = mVar.track(dVar.c(), 1);
    }

    @Override // d6.m
    public void seek() {
        this.f50155f = 0;
        this.f50156g = 0;
        this.f50158i = false;
        this.f50161l = -9223372036854775807L;
    }

    public t(@Nullable String str) {
        this.f50155f = 0;
        b7.g0 g0Var = new b7.g0(4);
        this.f50150a = g0Var;
        g0Var.d()[0] = -1;
        this.f50151b = new g0.a();
        this.f50161l = -9223372036854775807L;
        this.f50152c = str;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
