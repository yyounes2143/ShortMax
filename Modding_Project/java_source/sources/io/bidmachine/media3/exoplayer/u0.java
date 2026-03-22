package io.bidmachine.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.f;
import cn.q;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.IllegalSeekPositionException;
import io.bidmachine.media3.common.PriorityTaskManager;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.d;
import io.bidmachine.media3.exoplayer.d2;
import io.bidmachine.media3.exoplayer.f2;
import io.bidmachine.media3.exoplayer.i1;
import io.bidmachine.media3.exoplayer.image.ImageOutput;
import io.bidmachine.media3.exoplayer.o2;
import io.bidmachine.media3.exoplayer.q2;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.u0;
import io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import sn.t;
import zm.a0;
import zm.k;
import zm.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImpl.java */
/* loaded from: classes8.dex */
public final class u0 extends zm.e implements ExoPlayer {
    private final d A;
    private final io.bidmachine.media3.exoplayer.d B;
    @Nullable
    private final o2 C;
    private final t2 D;
    private final w2 E;
    private final long F;
    @Nullable
    private final q2 G;
    private final cn.f<Integer> H;
    private int I;
    private boolean J;
    private int K;
    private int L;
    private boolean M;
    private gn.i0 N;
    private sn.t O;
    private ExoPlayer.c P;
    private boolean Q;
    private w.b R;
    private zm.s S;
    private zm.s T;
    @Nullable
    private io.bidmachine.media3.common.a U;
    @Nullable
    private io.bidmachine.media3.common.a V;
    @Nullable
    private Object W;
    @Nullable
    private Surface X;
    @Nullable
    private SurfaceHolder Y;
    @Nullable
    private SphericalGLSurfaceView Z;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f57029a0;

    /* renamed from: b  reason: collision with root package name */
    final vn.w f57030b;
    @Nullable

    /* renamed from: b0  reason: collision with root package name */
    private TextureView f57031b0;

    /* renamed from: c  reason: collision with root package name */
    final w.b f57032c;

    /* renamed from: c0  reason: collision with root package name */
    private int f57033c0;

    /* renamed from: d  reason: collision with root package name */
    private final cn.k f57034d = new cn.k();

    /* renamed from: d0  reason: collision with root package name */
    private int f57035d0;

    /* renamed from: e  reason: collision with root package name */
    private final Context f57036e;

    /* renamed from: e0  reason: collision with root package name */
    private cn.d0 f57037e0;

    /* renamed from: f  reason: collision with root package name */
    private final zm.w f57038f;
    @Nullable

    /* renamed from: f0  reason: collision with root package name */
    private gn.b f57039f0;

    /* renamed from: g  reason: collision with root package name */
    private final h2[] f57040g;
    @Nullable

    /* renamed from: g0  reason: collision with root package name */
    private gn.b f57041g0;

    /* renamed from: h  reason: collision with root package name */
    private final h2[] f57042h;

    /* renamed from: h0  reason: collision with root package name */
    private zm.c f57043h0;

    /* renamed from: i  reason: collision with root package name */
    private final vn.v f57044i;

    /* renamed from: i0  reason: collision with root package name */
    private float f57045i0;

    /* renamed from: j  reason: collision with root package name */
    private final cn.n f57046j;

    /* renamed from: j0  reason: collision with root package name */
    private boolean f57047j0;

    /* renamed from: k  reason: collision with root package name */
    private final i1.f f57048k;

    /* renamed from: k0  reason: collision with root package name */
    private bn.b f57049k0;

    /* renamed from: l  reason: collision with root package name */
    private final i1 f57050l;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f57051l0;

    /* renamed from: m  reason: collision with root package name */
    private final cn.q<w.d> f57052m;

    /* renamed from: m0  reason: collision with root package name */
    private boolean f57053m0;

    /* renamed from: n  reason: collision with root package name */
    private final CopyOnWriteArraySet<ExoPlayer.a> f57054n;

    /* renamed from: n0  reason: collision with root package name */
    private int f57055n0;

    /* renamed from: o  reason: collision with root package name */
    private final a0.b f57056o;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private PriorityTaskManager f57057o0;

    /* renamed from: p  reason: collision with root package name */
    private final List<e> f57058p;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f57059p0;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f57060q;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f57061q0;

    /* renamed from: r  reason: collision with root package name */
    private final r.a f57062r;

    /* renamed from: r0  reason: collision with root package name */
    private zm.k f57063r0;

    /* renamed from: s  reason: collision with root package name */
    private final hn.a f57064s;

    /* renamed from: s0  reason: collision with root package name */
    private zm.i0 f57065s0;

    /* renamed from: t  reason: collision with root package name */
    private final Looper f57066t;

    /* renamed from: t0  reason: collision with root package name */
    private zm.s f57067t0;

    /* renamed from: u  reason: collision with root package name */
    private final wn.d f57068u;

    /* renamed from: u0  reason: collision with root package name */
    private e2 f57069u0;

    /* renamed from: v  reason: collision with root package name */
    private final long f57070v;

    /* renamed from: v0  reason: collision with root package name */
    private int f57071v0;

    /* renamed from: w  reason: collision with root package name */
    private final long f57072w;

    /* renamed from: w0  reason: collision with root package name */
    private int f57073w0;

    /* renamed from: x  reason: collision with root package name */
    private final long f57074x;

    /* renamed from: x0  reason: collision with root package name */
    private long f57075x0;

    /* renamed from: y  reason: collision with root package name */
    private final cn.h f57076y;

    /* renamed from: z  reason: collision with root package name */
    private final c f57077z;

    /* compiled from: ExoPlayerImpl.java */
    @RequiresApi(31)
    /* loaded from: classes8.dex */
    private static final class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(Context context, boolean z10, u0 u0Var, hn.b2 b2Var) {
            hn.z1 E0 = hn.z1.E0(context);
            if (E0 == null) {
                cn.r.h("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return;
            }
            if (z10) {
                u0Var.U0(E0);
            }
            b2Var.b(E0.L0());
        }

        public static void c(final Context context, final u0 u0Var, final boolean z10, final hn.b2 b2Var) {
            u0Var.g1().createHandler(u0Var.k1(), null).post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.v0
                @Override // java.lang.Runnable
                public final void run() {
                    u0.b.b(context, z10, u0Var, b2Var);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes8.dex */
    public static final class d implements yn.f, zn.a, f2.b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private yn.f f57079a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private zn.a f57080b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private yn.f f57081c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private zn.a f57082d;

        private d() {
        }

        @Override // zn.a
        public void a(long j10, float[] fArr) {
            zn.a aVar = this.f57082d;
            if (aVar != null) {
                aVar.a(j10, fArr);
            }
            zn.a aVar2 = this.f57080b;
            if (aVar2 != null) {
                aVar2.a(j10, fArr);
            }
        }

        @Override // zn.a
        public void b() {
            zn.a aVar = this.f57082d;
            if (aVar != null) {
                aVar.b();
            }
            zn.a aVar2 = this.f57080b;
            if (aVar2 != null) {
                aVar2.b();
            }
        }

        @Override // yn.f
        public void c(long j10, long j11, io.bidmachine.media3.common.a aVar, @Nullable MediaFormat mediaFormat) {
            yn.f fVar = this.f57081c;
            if (fVar != null) {
                fVar.c(j10, j11, aVar, mediaFormat);
            }
            yn.f fVar2 = this.f57079a;
            if (fVar2 != null) {
                fVar2.c(j10, j11, aVar, mediaFormat);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.f2.b
        public void handleMessage(int i10, @Nullable Object obj) {
            if (i10 != 7) {
                if (i10 != 8) {
                    if (i10 == 10000) {
                        SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
                        if (sphericalGLSurfaceView == null) {
                            this.f57081c = null;
                            this.f57082d = null;
                            return;
                        }
                        this.f57081c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                        this.f57082d = sphericalGLSurfaceView.getCameraMotionListener();
                        return;
                    }
                    return;
                }
                this.f57080b = (zn.a) obj;
                return;
            }
            this.f57079a = (yn.f) obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes8.dex */
    public static final class e implements p1 {

        /* renamed from: a  reason: collision with root package name */
        private final Object f57083a;

        /* renamed from: b  reason: collision with root package name */
        private final io.bidmachine.media3.exoplayer.source.r f57084b;

        /* renamed from: c  reason: collision with root package name */
        private zm.a0 f57085c;

        public e(Object obj, io.bidmachine.media3.exoplayer.source.p pVar) {
            this.f57083a = obj;
            this.f57084b = pVar;
            this.f57085c = pVar.V();
        }

        @Override // io.bidmachine.media3.exoplayer.p1
        public zm.a0 a() {
            return this.f57085c;
        }

        public void b(zm.a0 a0Var) {
            this.f57085c = a0Var;
        }

        @Override // io.bidmachine.media3.exoplayer.p1
        public Object getUid() {
            return this.f57083a;
        }
    }

    static {
        zm.r.a("media3.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public u0(ExoPlayer.b bVar, @Nullable zm.w wVar) {
        boolean z10;
        zm.w wVar2;
        boolean z11;
        boolean z12;
        try {
            cn.r.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.7.1] [" + cn.m0.f3618e + "]");
            this.f57036e = bVar.f55360a.getApplicationContext();
            this.f57064s = bVar.f55368i.apply(bVar.f55361b);
            this.f57055n0 = bVar.f55370k;
            this.f57057o0 = bVar.f55371l;
            this.f57043h0 = bVar.f55372m;
            this.f57033c0 = bVar.f55378s;
            this.f57035d0 = bVar.f55379t;
            this.f57047j0 = bVar.f55376q;
            this.F = bVar.B;
            c cVar = new c();
            this.f57077z = cVar;
            this.A = new d();
            Handler handler = new Handler(bVar.f55369j);
            gn.h0 h0Var = bVar.f55363d.get();
            h2[] b10 = h0Var.b(handler, cVar, cVar, cVar, cVar);
            this.f57040g = b10;
            if (b10.length > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            this.f57042h = new h2[b10.length];
            int i10 = 0;
            while (true) {
                h2[] h2VarArr = this.f57042h;
                if (i10 >= h2VarArr.length) {
                    break;
                }
                h2 h2Var = this.f57040g[i10];
                c cVar2 = this.f57077z;
                h2VarArr[i10] = h0Var.a(h2Var, handler, cVar2, cVar2, cVar2, cVar2);
                i10++;
            }
            vn.v vVar = bVar.f55365f.get();
            this.f57044i = vVar;
            this.f57062r = bVar.f55364e.get();
            wn.d dVar = bVar.f55367h.get();
            this.f57068u = dVar;
            this.f57060q = bVar.f55380u;
            this.N = bVar.f55381v;
            this.f57070v = bVar.f55382w;
            this.f57072w = bVar.f55383x;
            this.f57074x = bVar.f55384y;
            this.Q = bVar.C;
            Looper looper = bVar.f55369j;
            this.f57066t = looper;
            cn.h hVar = bVar.f55361b;
            this.f57076y = hVar;
            if (wVar == null) {
                wVar2 = this;
            } else {
                wVar2 = wVar;
            }
            this.f57038f = wVar2;
            this.f57052m = new cn.q<>(looper, hVar, new q.b() { // from class: io.bidmachine.media3.exoplayer.b0
                @Override // cn.q.b
                public final void a(Object obj, zm.n nVar) {
                    u0.this.s1((w.d) obj, nVar);
                }
            });
            this.f57054n = new CopyOnWriteArraySet<>();
            this.f57058p = new ArrayList();
            this.O = new t.a(0);
            this.P = ExoPlayer.c.f55386b;
            h2[] h2VarArr2 = this.f57040g;
            vn.w wVar3 = new vn.w(new gn.g0[h2VarArr2.length], new vn.q[h2VarArr2.length], zm.e0.f71916b, null);
            this.f57030b = wVar3;
            this.f57056o = new a0.b();
            w.b e10 = new w.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32).d(29, vVar.h()).d(23, bVar.f55377r).d(25, bVar.f55377r).d(33, bVar.f55377r).d(26, bVar.f55377r).d(34, bVar.f55377r).e();
            this.f57032c = e10;
            this.R = new w.b.a().b(e10).a(4).a(10).e();
            this.f57046j = hVar.createHandler(looper, null);
            i1.f fVar = new i1.f() { // from class: io.bidmachine.media3.exoplayer.c0
                @Override // io.bidmachine.media3.exoplayer.i1.f
                public final void a(i1.e eVar) {
                    u0.this.u1(eVar);
                }
            };
            this.f57048k = fVar;
            this.f57069u0 = e2.k(wVar3);
            this.f57064s.X(wVar2, looper);
            hn.b2 b2Var = new hn.b2(bVar.H);
            i1 i1Var = new i1(this.f57036e, this.f57040g, this.f57042h, vVar, wVar3, bVar.f55366g.get(), dVar, this.I, this.J, this.f57064s, this.N, bVar.f55385z, bVar.A, this.Q, bVar.I, looper, hVar, fVar, b2Var, bVar.E, this.P);
            this.f57050l = i1Var;
            Looper K = i1Var.K();
            this.f57045i0 = 1.0f;
            this.I = 0;
            zm.s sVar = zm.s.I;
            this.S = sVar;
            this.T = sVar;
            this.f57067t0 = sVar;
            this.f57071v0 = -1;
            this.f57049k0 = bn.b.f2734c;
            this.f57051l0 = true;
            C(this.f57064s);
            dVar.h(new Handler(looper), this.f57064s);
            V0(this.f57077z);
            long j10 = bVar.f55362c;
            if (j10 > 0) {
                i1Var.E(j10);
            }
            if (cn.m0.f3614a >= 31) {
                b.c(this.f57036e, this, bVar.D, b2Var);
            }
            cn.f<Integer> fVar2 = new cn.f<>(0, K, looper, hVar, new f.a() { // from class: io.bidmachine.media3.exoplayer.e0
                @Override // cn.f.a
                public final void a(Object obj, Object obj2) {
                    u0.this.V1(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
            this.H = fVar2;
            fVar2.h(new Runnable() { // from class: io.bidmachine.media3.exoplayer.f0
                @Override // java.lang.Runnable
                public final void run() {
                    u0.this.v1();
                }
            });
            io.bidmachine.media3.exoplayer.d dVar2 = new io.bidmachine.media3.exoplayer.d(bVar.f55360a, K, bVar.f55369j, this.f57077z, hVar);
            this.B = dVar2;
            dVar2.f(bVar.f55375p);
            if (bVar.G) {
                q2 q2Var = bVar.J;
                this.G = q2Var;
                q2Var.a(new q2.a() { // from class: io.bidmachine.media3.exoplayer.g0
                    @Override // io.bidmachine.media3.exoplayer.q2.a
                    public final void a(boolean z13) {
                        u0.this.W1(z13);
                    }
                }, this.f57036e, looper, K, hVar);
            } else {
                this.G = null;
            }
            if (bVar.f55377r) {
                this.C = new o2(bVar.f55360a, this.f57077z, this.f57043h0.b(), K, looper, hVar);
            } else {
                this.C = null;
            }
            t2 t2Var = new t2(bVar.f55360a, K, hVar);
            this.D = t2Var;
            if (bVar.f55374o != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            t2Var.e(z11);
            w2 w2Var = new w2(bVar.f55360a, K, hVar);
            this.E = w2Var;
            if (bVar.f55374o == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
            w2Var.e(z12);
            this.f57063r0 = zm.k.f71964e;
            this.f57065s0 = zm.i0.f71955e;
            this.f57037e0 = cn.d0.f3574c;
            i1Var.c1(this.f57043h0, bVar.f55373n);
            a2(1, 3, this.f57043h0);
            a2(2, 4, Integer.valueOf(this.f57033c0));
            a2(2, 5, Integer.valueOf(this.f57035d0));
            a2(1, 9, Boolean.valueOf(this.f57047j0));
            a2(2, 7, this.A);
            a2(6, 8, this.A);
            b2(16, Integer.valueOf(this.f57055n0));
            this.f57034d.e();
        } catch (Throwable th2) {
            this.f57034d.e();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C1(w.d dVar) {
        dVar.f0(this.R);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(e2 e2Var, int i10, w.d dVar) {
        dVar.H(e2Var.f55889a, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E1(int i10, w.e eVar, w.e eVar2, w.d dVar) {
        dVar.onPositionDiscontinuity(i10);
        dVar.P(eVar, eVar2, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G1(e2 e2Var, w.d dVar) {
        dVar.M(e2Var.f55894f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H1(e2 e2Var, w.d dVar) {
        dVar.U(e2Var.f55894f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I1(e2 e2Var, w.d dVar) {
        dVar.T(e2Var.f55897i.f69175d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K1(e2 e2Var, w.d dVar) {
        dVar.onLoadingChanged(e2Var.f55895g);
        dVar.F(e2Var.f55895g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L1(e2 e2Var, w.d dVar) {
        dVar.onPlayerStateChanged(e2Var.f55900l, e2Var.f55893e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M1(e2 e2Var, w.d dVar) {
        dVar.A(e2Var.f55893e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N1(e2 e2Var, w.d dVar) {
        dVar.w(e2Var.f55900l, e2Var.f55901m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O1(e2 e2Var, w.d dVar) {
        dVar.z(e2Var.f55902n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P1(e2 e2Var, w.d dVar) {
        dVar.y(e2Var.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Q1(e2 e2Var, w.d dVar) {
        dVar.t(e2Var.f55903o);
    }

    private static e2 R1(e2 e2Var, int i10) {
        e2 h10 = e2Var.h(i10);
        if (i10 == 1 || i10 == 4) {
            return h10.b(false);
        }
        return h10;
    }

    private e2 S1(e2 e2Var, zm.a0 a0Var, @Nullable Pair<Object, Long> pair) {
        boolean z10;
        r.b bVar;
        sn.x xVar;
        vn.w wVar;
        List<zm.t> list;
        int i10;
        long j10;
        if (!a0Var.q() && pair == null) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.a(z10);
        zm.a0 a0Var2 = e2Var.f55889a;
        long h12 = h1(e2Var);
        e2 j11 = e2Var.j(a0Var);
        if (a0Var.q()) {
            r.b l10 = e2.l();
            long S0 = cn.m0.S0(this.f57075x0);
            e2 c10 = j11.d(l10, S0, S0, S0, 0L, sn.x.f66545d, this.f57030b, ImmutableList.A()).c(l10);
            c10.f55905q = c10.f55907s;
            return c10;
        }
        Object obj = j11.f55890b.f56990a;
        boolean equals = obj.equals(((Pair) cn.m0.i(pair)).first);
        if (!equals) {
            bVar = new r.b(pair.first);
        } else {
            bVar = j11.f55890b;
        }
        r.b bVar2 = bVar;
        long longValue = ((Long) pair.second).longValue();
        long S02 = cn.m0.S0(h12);
        if (!a0Var2.q()) {
            S02 -= a0Var2.h(obj, this.f57056o).n();
        }
        if (equals && longValue >= S02) {
            if (i10 == 0) {
                int b10 = a0Var.b(j11.f55899k.f56990a);
                if (b10 == -1 || a0Var.f(b10, this.f57056o).f71742c != a0Var.h(bVar2.f56990a, this.f57056o).f71742c) {
                    a0Var.h(bVar2.f56990a, this.f57056o);
                    if (bVar2.b()) {
                        j10 = this.f57056o.b(bVar2.f56991b, bVar2.f56992c);
                    } else {
                        j10 = this.f57056o.f71743d;
                    }
                    j11 = j11.d(bVar2, j11.f55907s, j11.f55907s, j11.f55892d, j10 - j11.f55907s, j11.f55896h, j11.f55897i, j11.f55898j).c(bVar2);
                    j11.f55905q = j10;
                }
            } else {
                cn.a.g(!bVar2.b());
                long max = Math.max(0L, j11.f55906r - (longValue - S02));
                long j12 = j11.f55905q;
                if (j11.f55899k.equals(j11.f55890b)) {
                    j12 = longValue + max;
                }
                j11 = j11.d(bVar2, longValue, longValue, longValue, max, j11.f55896h, j11.f55897i, j11.f55898j);
                j11.f55905q = j12;
            }
            return j11;
        }
        cn.a.g(!bVar2.b());
        if (!equals) {
            xVar = sn.x.f66545d;
        } else {
            xVar = j11.f55896h;
        }
        sn.x xVar2 = xVar;
        if (!equals) {
            wVar = this.f57030b;
        } else {
            wVar = j11.f55897i;
        }
        vn.w wVar2 = wVar;
        if (!equals) {
            list = ImmutableList.A();
        } else {
            list = j11.f55898j;
        }
        e2 c11 = j11.d(bVar2, longValue, longValue, longValue, 0L, xVar2, wVar2, list).c(bVar2);
        c11.f55905q = longValue;
        return c11;
    }

    @Nullable
    private Pair<Object, Long> T1(zm.a0 a0Var, int i10, long j10) {
        if (a0Var.q()) {
            this.f57071v0 = i10;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.f57075x0 = j10;
            this.f57073w0 = 0;
            return null;
        }
        if (i10 == -1 || i10 >= a0Var.p()) {
            i10 = a0Var.a(this.J);
            j10 = a0Var.n(i10, this.f71915a).b();
        }
        return a0Var.j(this.f71915a, this.f57056o, i10, cn.m0.S0(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U1(final int i10, final int i11) {
        if (i10 != this.f57037e0.b() || i11 != this.f57037e0.a()) {
            this.f57037e0 = new cn.d0(i10, i11);
            this.f57052m.l(24, new q.a() { // from class: io.bidmachine.media3.exoplayer.d0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).D(i10, i11);
                }
            });
            a2(2, 14, new cn.d0(i10, i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(int i10, final int i11) {
        o2();
        a2(1, 10, Integer.valueOf(i11));
        a2(2, 10, Integer.valueOf(i11));
        this.f57052m.l(21, new q.a() { // from class: io.bidmachine.media3.exoplayer.l0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((w.d) obj).I(i11);
            }
        });
    }

    private List<d2.c> W0(int i10, List<io.bidmachine.media3.exoplayer.source.r> list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            d2.c cVar = new d2.c(list.get(i11), this.f57060q);
            arrayList.add(cVar);
            this.f57058p.add(i11 + i10, new e(cVar.f55636b, cVar.f55635a));
        }
        this.O = this.O.cloneAndInsert(i10, arrayList.size());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W1(boolean z10) {
        if (this.f57061q0) {
            return;
        }
        if (z10) {
            e2 e2Var = this.f57069u0;
            if (e2Var.f55902n == 3) {
                k2(e2Var.f55900l, 1);
                return;
            }
            return;
        }
        k2(this.f57069u0.f55900l, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zm.s X0() {
        zm.a0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return this.f57067t0;
        }
        return this.f57067t0.a().L(currentTimeline.n(x(), this.f71915a).f71759c.f71995e).J();
    }

    private long X1(zm.a0 a0Var, r.b bVar, long j10) {
        a0Var.h(bVar.f56990a, this.f57056o);
        return j10 + this.f57056o.n();
    }

    private void Y1(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            this.f57058p.remove(i12);
        }
        this.O = this.O.a(i10, i11);
    }

    private void Z1() {
        if (this.Z != null) {
            e1(this.A).m(10000).l(null).k();
            this.Z.i(this.f57077z);
            this.Z = null;
        }
        TextureView textureView = this.f57031b0;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f57077z) {
                cn.r.h("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f57031b0.setSurfaceTextureListener(null);
            }
            this.f57031b0 = null;
        }
        SurfaceHolder surfaceHolder = this.Y;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f57077z);
            this.Y = null;
        }
    }

    private int a1(boolean z10) {
        q2 q2Var = this.G;
        if (q2Var != null && !q2Var.b()) {
            return 3;
        }
        if (this.f57069u0.f55902n == 1 && !z10) {
            return 1;
        }
        return 0;
    }

    private void a2(int i10, int i11, @Nullable Object obj) {
        h2[] h2VarArr;
        h2[] h2VarArr2;
        for (h2 h2Var : this.f57040g) {
            if (i10 == -1 || h2Var.getTrackType() == i10) {
                e1(h2Var).m(i11).l(obj).k();
            }
        }
        for (h2 h2Var2 : this.f57042h) {
            if (h2Var2 != null && (i10 == -1 || h2Var2.getTrackType() == i10)) {
                e1(h2Var2).m(i11).l(obj).k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zm.k b1(@Nullable o2 o2Var) {
        int i10;
        int i11 = 0;
        k.b bVar = new k.b(0);
        if (o2Var != null) {
            i10 = o2Var.j();
        } else {
            i10 = 0;
        }
        k.b g10 = bVar.g(i10);
        if (o2Var != null) {
            i11 = o2Var.i();
        }
        return g10.f(i11).e();
    }

    private void b2(int i10, @Nullable Object obj) {
        a2(-1, i10, obj);
    }

    private zm.a0 c1() {
        return new g2(this.f57058p, this.O);
    }

    private List<io.bidmachine.media3.exoplayer.source.r> d1(List<zm.q> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(this.f57062r.d(list.get(i10)));
        }
        return arrayList;
    }

    private void d2(List<io.bidmachine.media3.exoplayer.source.r> list, int i10, long j10, boolean z10) {
        int i11;
        long j11;
        int j12 = j1(this.f57069u0);
        long currentPosition = getCurrentPosition();
        boolean z11 = true;
        this.K++;
        if (!this.f57058p.isEmpty()) {
            Y1(0, this.f57058p.size());
        }
        List<d2.c> W0 = W0(0, list);
        zm.a0 c12 = c1();
        if (!c12.q() && i10 >= c12.p()) {
            throw new IllegalSeekPositionException(c12, i10, j10);
        }
        if (z10) {
            j11 = -9223372036854775807L;
            i11 = c12.a(this.J);
        } else if (i10 == -1) {
            i11 = j12;
            j11 = currentPosition;
        } else {
            i11 = i10;
            j11 = j10;
        }
        e2 S1 = S1(this.f57069u0, c12, T1(c12, i11, j11));
        int i12 = S1.f55893e;
        if (i11 != -1 && i12 != 1) {
            i12 = (c12.q() || i11 >= c12.p()) ? 4 : 2;
        }
        e2 R1 = R1(S1, i12);
        this.f57050l.h1(W0, i11, cn.m0.S0(j11), this.O);
        if (this.f57069u0.f55890b.f56990a.equals(R1.f55890b.f56990a) || this.f57069u0.f55889a.q()) {
            z11 = false;
        }
        l2(R1, 0, z11, 4, i1(R1), -1, false);
    }

    private f2 e1(f2.b bVar) {
        int j12 = j1(this.f57069u0);
        i1 i1Var = this.f57050l;
        zm.a0 a0Var = this.f57069u0.f55889a;
        if (j12 == -1) {
            j12 = 0;
        }
        return new f2(i1Var, bVar, a0Var, j12, this.f57076y, i1Var.K());
    }

    private void e2(SurfaceHolder surfaceHolder) {
        this.f57029a0 = false;
        this.Y = surfaceHolder;
        surfaceHolder.addCallback(this.f57077z);
        Surface surface = this.Y.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceFrame = this.Y.getSurfaceFrame();
            U1(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        U1(0, 0);
    }

    private Pair<Boolean, Integer> f1(e2 e2Var, e2 e2Var2, boolean z10, int i10, boolean z11, boolean z12) {
        zm.a0 a0Var = e2Var2.f55889a;
        zm.a0 a0Var2 = e2Var.f55889a;
        if (a0Var2.q() && a0Var.q()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i11 = 3;
        if (a0Var2.q() != a0Var.q()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (!a0Var.n(a0Var.h(e2Var2.f55890b.f56990a, this.f57056o).f71742c, this.f71915a).f71757a.equals(a0Var2.n(a0Var2.h(e2Var.f55890b.f56990a, this.f57056o).f71742c, this.f71915a).f71757a)) {
            if (z10 && i10 == 0) {
                i11 = 1;
            } else if (z10 && i10 == 1) {
                i11 = 2;
            } else if (!z11) {
                throw new IllegalStateException();
            }
            return new Pair<>(Boolean.TRUE, Integer.valueOf(i11));
        } else if (z10 && i10 == 0 && e2Var2.f55890b.f56993d < e2Var.f55890b.f56993d) {
            return new Pair<>(Boolean.TRUE, 0);
        } else {
            if (z10 && i10 == 1 && z12) {
                return new Pair<>(Boolean.TRUE, 2);
            }
            return new Pair<>(Boolean.FALSE, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        g2(surface);
        this.X = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g2(@Nullable Object obj) {
        boolean z10;
        long j10;
        Object obj2 = this.W;
        if (obj2 != null && obj2 != obj) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            j10 = this.F;
        } else {
            j10 = -9223372036854775807L;
        }
        boolean w12 = this.f57050l.w1(obj, j10);
        if (z10) {
            Object obj3 = this.W;
            Surface surface = this.X;
            if (obj3 == surface) {
                surface.release();
                this.X = null;
            }
        }
        this.W = obj;
        if (!w12) {
            i2(ExoPlaybackException.f(new ExoTimeoutException(3), 1003));
        }
    }

    private long h1(e2 e2Var) {
        if (e2Var.f55890b.b()) {
            e2Var.f55889a.h(e2Var.f55890b.f56990a, this.f57056o);
            if (e2Var.f55891c == -9223372036854775807L) {
                return e2Var.f55889a.n(j1(e2Var), this.f71915a).b();
            }
            return this.f57056o.m() + cn.m0.u1(e2Var.f55891c);
        }
        return cn.m0.u1(i1(e2Var));
    }

    private long i1(e2 e2Var) {
        long j10;
        if (e2Var.f55889a.q()) {
            return cn.m0.S0(this.f57075x0);
        }
        if (e2Var.f55904p) {
            j10 = e2Var.m();
        } else {
            j10 = e2Var.f55907s;
        }
        if (e2Var.f55890b.b()) {
            return j10;
        }
        return X1(e2Var.f55889a, e2Var.f55890b, j10);
    }

    private void i2(@Nullable ExoPlaybackException exoPlaybackException) {
        e2 e2Var = this.f57069u0;
        e2 c10 = e2Var.c(e2Var.f55890b);
        c10.f55905q = c10.f55907s;
        c10.f55906r = 0L;
        e2 R1 = R1(c10, 1);
        if (exoPlaybackException != null) {
            R1 = R1.f(exoPlaybackException);
        }
        this.K++;
        this.f57050l.G1();
        l2(R1, 0, false, 5, -9223372036854775807L, -1, false);
    }

    private int j1(e2 e2Var) {
        if (e2Var.f55889a.q()) {
            return this.f57071v0;
        }
        return e2Var.f55889a.h(e2Var.f55890b.f56990a, this.f57056o).f71742c;
    }

    private void j2() {
        w.b bVar = this.R;
        w.b O = cn.m0.O(this.f57038f, this.f57032c);
        this.R = O;
        if (!O.equals(bVar)) {
            this.f57052m.i(13, new q.a() { // from class: io.bidmachine.media3.exoplayer.j0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.this.C1((w.d) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k2(boolean z10, int i10) {
        int a12 = a1(z10);
        e2 e2Var = this.f57069u0;
        if (e2Var.f55900l == z10 && e2Var.f55902n == a12 && e2Var.f55901m == i10) {
            return;
        }
        this.K++;
        if (e2Var.f55904p) {
            e2Var = e2Var.a();
        }
        e2 e10 = e2Var.e(z10, i10, a12);
        this.f57050l.k1(z10, i10, a12);
        l2(e10, 0, false, 5, -9223372036854775807L, -1, false);
    }

    private void l2(final e2 e2Var, final int i10, boolean z10, final int i11, long j10, int i12, boolean z11) {
        boolean z12;
        boolean z13;
        boolean z14;
        e2 e2Var2 = this.f57069u0;
        this.f57069u0 = e2Var;
        boolean equals = e2Var2.f55889a.equals(e2Var.f55889a);
        Pair<Boolean, Integer> f12 = f1(e2Var, e2Var2, z10, i11, !equals, z11);
        boolean booleanValue = ((Boolean) f12.first).booleanValue();
        final int intValue = ((Integer) f12.second).intValue();
        final zm.q qVar = null;
        if (booleanValue) {
            if (!e2Var.f55889a.q()) {
                qVar = e2Var.f55889a.n(e2Var.f55889a.h(e2Var.f55890b.f56990a, this.f57056o).f71742c, this.f71915a).f71759c;
            }
            this.f57067t0 = zm.s.I;
        }
        if (booleanValue || !e2Var2.f55898j.equals(e2Var.f55898j)) {
            this.f57067t0 = this.f57067t0.a().M(e2Var.f55898j).J();
        }
        zm.s X0 = X0();
        boolean equals2 = X0.equals(this.S);
        this.S = X0;
        if (e2Var2.f55900l != e2Var.f55900l) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (e2Var2.f55893e != e2Var.f55893e) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z13 || z12) {
            n2();
        }
        boolean z15 = e2Var2.f55895g;
        boolean z16 = e2Var.f55895g;
        if (z15 != z16) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (z14) {
            m2(z16);
        }
        if (!equals) {
            this.f57052m.i(0, new q.a() { // from class: io.bidmachine.media3.exoplayer.n0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.D1(e2.this, i10, (w.d) obj);
                }
            });
        }
        if (z10) {
            final w.e n12 = n1(i11, e2Var2, i12);
            final w.e m12 = m1(j10);
            this.f57052m.i(11, new q.a() { // from class: io.bidmachine.media3.exoplayer.s0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.E1(i11, n12, m12, (w.d) obj);
                }
            });
        }
        if (booleanValue) {
            this.f57052m.i(1, new q.a() { // from class: io.bidmachine.media3.exoplayer.t0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).Q(zm.q.this, intValue);
                }
            });
        }
        if (e2Var2.f55894f != e2Var.f55894f) {
            this.f57052m.i(10, new q.a() { // from class: io.bidmachine.media3.exoplayer.t
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.G1(e2.this, (w.d) obj);
                }
            });
            if (e2Var.f55894f != null) {
                this.f57052m.i(10, new q.a() { // from class: io.bidmachine.media3.exoplayer.u
                    @Override // cn.q.a
                    public final void invoke(Object obj) {
                        u0.H1(e2.this, (w.d) obj);
                    }
                });
            }
        }
        vn.w wVar = e2Var2.f55897i;
        vn.w wVar2 = e2Var.f55897i;
        if (wVar != wVar2) {
            this.f57044i.i(wVar2.f69176e);
            this.f57052m.i(2, new q.a() { // from class: io.bidmachine.media3.exoplayer.v
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.I1(e2.this, (w.d) obj);
                }
            });
        }
        if (!equals2) {
            final zm.s sVar = this.S;
            this.f57052m.i(14, new q.a() { // from class: io.bidmachine.media3.exoplayer.w
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).e0(zm.s.this);
                }
            });
        }
        if (z14) {
            this.f57052m.i(3, new q.a() { // from class: io.bidmachine.media3.exoplayer.x
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.K1(e2.this, (w.d) obj);
                }
            });
        }
        if (z13 || z12) {
            this.f57052m.i(-1, new q.a() { // from class: io.bidmachine.media3.exoplayer.y
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.L1(e2.this, (w.d) obj);
                }
            });
        }
        if (z13) {
            this.f57052m.i(4, new q.a() { // from class: io.bidmachine.media3.exoplayer.z
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.M1(e2.this, (w.d) obj);
                }
            });
        }
        if (z12 || e2Var2.f55901m != e2Var.f55901m) {
            this.f57052m.i(5, new q.a() { // from class: io.bidmachine.media3.exoplayer.o0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.N1(e2.this, (w.d) obj);
                }
            });
        }
        if (e2Var2.f55902n != e2Var.f55902n) {
            this.f57052m.i(6, new q.a() { // from class: io.bidmachine.media3.exoplayer.p0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.O1(e2.this, (w.d) obj);
                }
            });
        }
        if (e2Var2.n() != e2Var.n()) {
            this.f57052m.i(7, new q.a() { // from class: io.bidmachine.media3.exoplayer.q0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.P1(e2.this, (w.d) obj);
                }
            });
        }
        if (!e2Var2.f55903o.equals(e2Var.f55903o)) {
            this.f57052m.i(12, new q.a() { // from class: io.bidmachine.media3.exoplayer.r0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.Q1(e2.this, (w.d) obj);
                }
            });
        }
        j2();
        this.f57052m.f();
        if (e2Var2.f55904p != e2Var.f55904p) {
            Iterator<ExoPlayer.a> it = this.f57054n.iterator();
            while (it.hasNext()) {
                it.next().z(e2Var.f55904p);
            }
        }
    }

    private w.e m1(long j10) {
        zm.q qVar;
        Object obj;
        int i10;
        Object obj2;
        long j11;
        int x10 = x();
        if (!this.f57069u0.f55889a.q()) {
            e2 e2Var = this.f57069u0;
            Object obj3 = e2Var.f55890b.f56990a;
            e2Var.f55889a.h(obj3, this.f57056o);
            int b10 = this.f57069u0.f55889a.b(obj3);
            i10 = b10;
            obj = obj3;
            obj2 = this.f57069u0.f55889a.n(x10, this.f71915a).f71757a;
            qVar = this.f71915a.f71759c;
        } else {
            qVar = null;
            obj = null;
            i10 = -1;
            obj2 = null;
        }
        long u12 = cn.m0.u1(j10);
        if (this.f57069u0.f55890b.b()) {
            j11 = cn.m0.u1(o1(this.f57069u0));
        } else {
            j11 = u12;
        }
        r.b bVar = this.f57069u0.f55890b;
        return new w.e(obj2, x10, qVar, obj, i10, u12, j11, bVar.f56991b, bVar.f56992c);
    }

    private void m2(boolean z10) {
        PriorityTaskManager priorityTaskManager = this.f57057o0;
        if (priorityTaskManager != null) {
            if (z10 && !this.f57059p0) {
                priorityTaskManager.a(this.f57055n0);
                this.f57059p0 = true;
            } else if (!z10 && this.f57059p0) {
                priorityTaskManager.b(this.f57055n0);
                this.f57059p0 = false;
            }
        }
    }

    private w.e n1(int i10, e2 e2Var, int i11) {
        int i12;
        Object obj;
        zm.q qVar;
        Object obj2;
        int i13;
        long j10;
        long o12;
        a0.b bVar = new a0.b();
        if (!e2Var.f55889a.q()) {
            Object obj3 = e2Var.f55890b.f56990a;
            e2Var.f55889a.h(obj3, bVar);
            int i14 = bVar.f71742c;
            int b10 = e2Var.f55889a.b(obj3);
            Object obj4 = e2Var.f55889a.n(i14, this.f71915a).f71757a;
            qVar = this.f71915a.f71759c;
            obj2 = obj3;
            i13 = b10;
            obj = obj4;
            i12 = i14;
        } else {
            i12 = i11;
            obj = null;
            qVar = null;
            obj2 = null;
            i13 = -1;
        }
        if (i10 == 0) {
            if (e2Var.f55890b.b()) {
                r.b bVar2 = e2Var.f55890b;
                j10 = bVar.b(bVar2.f56991b, bVar2.f56992c);
                o12 = o1(e2Var);
            } else {
                if (e2Var.f55890b.f56994e != -1) {
                    j10 = o1(this.f57069u0);
                } else {
                    j10 = bVar.f71744e + bVar.f71743d;
                }
                o12 = j10;
            }
        } else if (e2Var.f55890b.b()) {
            j10 = e2Var.f55907s;
            o12 = o1(e2Var);
        } else {
            j10 = bVar.f71744e + e2Var.f55907s;
            o12 = j10;
        }
        long u12 = cn.m0.u1(j10);
        long u13 = cn.m0.u1(o12);
        r.b bVar3 = e2Var.f55890b;
        return new w.e(obj, i12, qVar, obj2, i13, u12, u13, bVar3.f56991b, bVar3.f56992c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n2() {
        int playbackState = getPlaybackState();
        boolean z10 = true;
        if (playbackState != 1) {
            if (playbackState != 2 && playbackState != 3) {
                if (playbackState != 4) {
                    throw new IllegalStateException();
                }
            } else {
                boolean q12 = q1();
                t2 t2Var = this.D;
                if (!getPlayWhenReady() || q12) {
                    z10 = false;
                }
                t2Var.f(z10);
                this.E.f(getPlayWhenReady());
                return;
            }
        }
        this.D.f(false);
        this.E.f(false);
    }

    private static long o1(e2 e2Var) {
        a0.c cVar = new a0.c();
        a0.b bVar = new a0.b();
        e2Var.f55889a.h(e2Var.f55890b.f56990a, bVar);
        if (e2Var.f55891c == -9223372036854775807L) {
            return e2Var.f55889a.n(bVar.f71742c, cVar).c();
        }
        return bVar.n() + e2Var.f55891c;
    }

    private void o2() {
        IllegalStateException illegalStateException;
        this.f57034d.b();
        if (Thread.currentThread() != s().getThread()) {
            String G = cn.m0.G("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), s().getThread().getName());
            if (!this.f57051l0) {
                if (this.f57053m0) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                cn.r.i("ExoPlayerImpl", G, illegalStateException);
                this.f57053m0 = true;
                return;
            }
            throw new IllegalStateException(G);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p1 */
    public void t1(i1.e eVar) {
        long j10;
        boolean z10;
        int i10 = this.K - eVar.f56361c;
        this.K = i10;
        boolean z11 = true;
        if (eVar.f56362d) {
            this.L = eVar.f56363e;
            this.M = true;
        }
        if (i10 == 0) {
            zm.a0 a0Var = eVar.f56360b.f55889a;
            if (!this.f57069u0.f55889a.q() && a0Var.q()) {
                this.f57071v0 = -1;
                this.f57075x0 = 0L;
                this.f57073w0 = 0;
            }
            if (!a0Var.q()) {
                List<zm.a0> F = ((g2) a0Var).F();
                if (F.size() == this.f57058p.size()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                cn.a.g(z10);
                for (int i11 = 0; i11 < F.size(); i11++) {
                    this.f57058p.get(i11).b(F.get(i11));
                }
            }
            long j11 = -9223372036854775807L;
            if (this.M) {
                if (eVar.f56360b.f55890b.equals(this.f57069u0.f55890b) && eVar.f56360b.f55892d == this.f57069u0.f55907s) {
                    z11 = false;
                }
                if (z11) {
                    if (!a0Var.q() && !eVar.f56360b.f55890b.b()) {
                        e2 e2Var = eVar.f56360b;
                        j10 = X1(a0Var, e2Var.f55890b, e2Var.f55892d);
                    } else {
                        j10 = eVar.f56360b.f55892d;
                    }
                    j11 = j10;
                }
            } else {
                z11 = false;
            }
            this.M = false;
            l2(eVar.f56360b, 1, z11, this.L, j11, -1, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s1(w.d dVar, zm.n nVar) {
        dVar.R(this.f57038f, new w.c(nVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u1(final i1.e eVar) {
        this.f57046j.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.i0
            @Override // java.lang.Runnable
            public final void run() {
                u0.this.t1(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v1() {
        this.H.i(Integer.valueOf(cn.m0.J(this.f57036e)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x1(w.d dVar) {
        dVar.U(ExoPlaybackException.f(new ExoTimeoutException(1), 1003));
    }

    @Override // zm.w
    public long A() {
        o2();
        return this.f57070v;
    }

    @Override // zm.w
    public void B(w.d dVar) {
        o2();
        this.f57052m.k((w.d) cn.a.e(dVar));
    }

    @Override // zm.w
    public void C(w.d dVar) {
        this.f57052m.c((w.d) cn.a.e(dVar));
    }

    @Override // zm.w
    public void E(final zm.d0 d0Var) {
        o2();
        if (this.f57044i.h() && !d0Var.equals(this.f57044i.c())) {
            this.f57044i.m(d0Var);
            this.f57052m.l(19, new q.a() { // from class: io.bidmachine.media3.exoplayer.h0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).a0(zm.d0.this);
                }
            });
        }
    }

    @Override // zm.e
    protected void L(int i10, long j10, int i11, boolean z10) {
        boolean z11;
        o2();
        if (i10 == -1) {
            return;
        }
        if (i10 >= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        cn.a.a(z11);
        zm.a0 a0Var = this.f57069u0.f55889a;
        if (!a0Var.q() && i10 >= a0Var.p()) {
            return;
        }
        this.f57064s.B();
        this.K++;
        if (isPlayingAd()) {
            cn.r.h("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            i1.e eVar = new i1.e(this.f57069u0);
            eVar.b(1);
            this.f57048k.a(eVar);
            return;
        }
        e2 e2Var = this.f57069u0;
        int i12 = e2Var.f55893e;
        if (i12 == 3 || (i12 == 4 && !a0Var.q())) {
            e2Var = R1(this.f57069u0, 2);
        }
        int x10 = x();
        e2 S1 = S1(e2Var, a0Var, T1(a0Var, i10, j10));
        this.f57050l.T0(a0Var, i10, cn.m0.S0(j10));
        l2(S1, 0, true, 1, i1(S1), x10, z10);
    }

    public void U0(hn.b bVar) {
        this.f57064s.c0((hn.b) cn.a.e(bVar));
    }

    public void V0(ExoPlayer.a aVar) {
        this.f57054n.add(aVar);
    }

    public void Y0() {
        o2();
        Z1();
        g2(null);
        U1(0, 0);
    }

    public void Z0(@Nullable SurfaceHolder surfaceHolder) {
        o2();
        if (surfaceHolder != null && surfaceHolder == this.Y) {
            Y0();
        }
    }

    @Override // zm.w
    public long a() {
        o2();
        return cn.m0.u1(this.f57069u0.f55906r);
    }

    @Override // zm.w
    public void b(zm.v vVar) {
        o2();
        if (vVar == null) {
            vVar = zm.v.f72205d;
        }
        if (this.f57069u0.f55903o.equals(vVar)) {
            return;
        }
        e2 g10 = this.f57069u0.g(vVar);
        this.K++;
        this.f57050l.m1(vVar);
        l2(g10, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // zm.w
    public void c(List<zm.q> list, boolean z10) {
        o2();
        c2(d1(list), z10);
    }

    public void c2(List<io.bidmachine.media3.exoplayer.source.r> list, boolean z10) {
        o2();
        d2(list, -1, -9223372036854775807L, z10);
    }

    @Override // zm.w
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        o2();
        if (surfaceView == null) {
            holder = null;
        } else {
            holder = surfaceView.getHolder();
        }
        Z0(holder);
    }

    @Override // zm.w
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        o2();
        if (textureView != null && textureView == this.f57031b0) {
            Y0();
        }
    }

    @Override // zm.w
    public zm.e0 e() {
        o2();
        return this.f57069u0.f55897i.f69175d;
    }

    public cn.h g1() {
        return this.f57076y;
    }

    @Override // zm.w
    public long getContentPosition() {
        o2();
        return h1(this.f57069u0);
    }

    @Override // zm.w
    public int getCurrentAdGroupIndex() {
        o2();
        if (isPlayingAd()) {
            return this.f57069u0.f55890b.f56991b;
        }
        return -1;
    }

    @Override // zm.w
    public int getCurrentAdIndexInAdGroup() {
        o2();
        if (isPlayingAd()) {
            return this.f57069u0.f55890b.f56992c;
        }
        return -1;
    }

    @Override // zm.w
    public int getCurrentPeriodIndex() {
        o2();
        if (this.f57069u0.f55889a.q()) {
            return this.f57073w0;
        }
        e2 e2Var = this.f57069u0;
        return e2Var.f55889a.b(e2Var.f55890b.f56990a);
    }

    @Override // zm.w
    public long getCurrentPosition() {
        o2();
        return cn.m0.u1(i1(this.f57069u0));
    }

    @Override // zm.w
    public zm.a0 getCurrentTimeline() {
        o2();
        return this.f57069u0.f55889a;
    }

    @Override // zm.w
    public long getDuration() {
        o2();
        if (isPlayingAd()) {
            e2 e2Var = this.f57069u0;
            r.b bVar = e2Var.f55890b;
            e2Var.f55889a.h(bVar.f56990a, this.f57056o);
            return cn.m0.u1(this.f57056o.b(bVar.f56991b, bVar.f56992c));
        }
        return D();
    }

    @Override // zm.w
    public boolean getPlayWhenReady() {
        o2();
        return this.f57069u0.f55900l;
    }

    @Override // zm.w
    public zm.v getPlaybackParameters() {
        o2();
        return this.f57069u0.f55903o;
    }

    @Override // zm.w
    public int getPlaybackState() {
        o2();
        return this.f57069u0.f55893e;
    }

    @Override // zm.w
    public int getRepeatMode() {
        o2();
        return this.I;
    }

    @Override // zm.w
    public boolean getShuffleModeEnabled() {
        o2();
        return this.J;
    }

    @Override // zm.w
    public float getVolume() {
        o2();
        return this.f57045i0;
    }

    @Override // zm.w
    public zm.d0 h() {
        o2();
        return this.f57044i.c();
    }

    public void h2(@Nullable SurfaceHolder surfaceHolder) {
        o2();
        if (surfaceHolder == null) {
            Y0();
            return;
        }
        Z1();
        this.f57029a0 = true;
        this.Y = surfaceHolder;
        surfaceHolder.addCallback(this.f57077z);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            g2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            U1(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        g2(null);
        U1(0, 0);
    }

    @Override // zm.w
    public long i() {
        o2();
        return this.f57074x;
    }

    @Override // zm.w
    public boolean isPlayingAd() {
        o2();
        return this.f57069u0.f55890b.b();
    }

    @Override // zm.w
    public long j() {
        o2();
        return this.f57072w;
    }

    public Looper k1() {
        return this.f57050l.K();
    }

    @Override // zm.w
    public long l() {
        o2();
        if (this.f57069u0.f55889a.q()) {
            return this.f57075x0;
        }
        e2 e2Var = this.f57069u0;
        if (e2Var.f55899k.f56993d != e2Var.f55890b.f56993d) {
            return e2Var.f55889a.n(x(), this.f71915a).d();
        }
        long j10 = e2Var.f55905q;
        if (this.f57069u0.f55899k.b()) {
            e2 e2Var2 = this.f57069u0;
            a0.b h10 = e2Var2.f55889a.h(e2Var2.f55899k.f56990a, this.f57056o);
            long f10 = h10.f(this.f57069u0.f55899k.f56991b);
            if (f10 == Long.MIN_VALUE) {
                j10 = h10.f71743d;
            } else {
                j10 = f10;
            }
        }
        e2 e2Var3 = this.f57069u0;
        return cn.m0.u1(X1(e2Var3.f55889a, e2Var3.f55899k, j10));
    }

    @Override // zm.w
    @Nullable
    /* renamed from: l1 */
    public ExoPlaybackException d() {
        o2();
        return this.f57069u0.f55894f;
    }

    @Override // zm.w
    public bn.b p() {
        o2();
        return this.f57049k0;
    }

    @Override // zm.w
    public void prepare() {
        int i10;
        o2();
        e2 e2Var = this.f57069u0;
        if (e2Var.f55893e != 1) {
            return;
        }
        e2 f10 = e2Var.f(null);
        if (f10.f55889a.q()) {
            i10 = 4;
        } else {
            i10 = 2;
        }
        e2 R1 = R1(f10, i10);
        this.K++;
        this.f57050l.B0();
        l2(R1, 1, false, 5, -9223372036854775807L, -1, false);
    }

    public boolean q1() {
        o2();
        return this.f57069u0.f55904p;
    }

    @Override // zm.w
    public int r() {
        o2();
        return this.f57069u0.f55902n;
    }

    @Override // io.bidmachine.media3.exoplayer.ExoPlayer
    public void release() {
        cn.r.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.7.1] [" + cn.m0.f3618e + "] [" + zm.r.b() + "]");
        o2();
        this.B.f(false);
        o2 o2Var = this.C;
        if (o2Var != null) {
            o2Var.o();
        }
        this.D.f(false);
        this.E.f(false);
        q2 q2Var = this.G;
        if (q2Var != null) {
            q2Var.disable();
        }
        if (!this.f57050l.D0()) {
            this.f57052m.l(10, new q.a() { // from class: io.bidmachine.media3.exoplayer.k0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    u0.x1((w.d) obj);
                }
            });
        }
        this.f57052m.j();
        this.f57046j.removeCallbacksAndMessages(null);
        this.f57068u.d(this.f57064s);
        e2 e2Var = this.f57069u0;
        if (e2Var.f55904p) {
            this.f57069u0 = e2Var.a();
        }
        e2 R1 = R1(this.f57069u0, 1);
        this.f57069u0 = R1;
        e2 c10 = R1.c(R1.f55890b);
        this.f57069u0 = c10;
        c10.f55905q = c10.f55907s;
        this.f57069u0.f55906r = 0L;
        this.f57064s.release();
        Z1();
        Surface surface = this.X;
        if (surface != null) {
            surface.release();
            this.X = null;
        }
        if (this.f57059p0) {
            ((PriorityTaskManager) cn.a.e(this.f57057o0)).b(this.f57055n0);
            this.f57059p0 = false;
        }
        this.f57049k0 = bn.b.f2734c;
        this.f57061q0 = true;
    }

    @Override // zm.w
    public Looper s() {
        return this.f57066t;
    }

    @Override // io.bidmachine.media3.exoplayer.ExoPlayer
    public void setImageOutput(@Nullable ImageOutput imageOutput) {
        o2();
        a2(4, 15, imageOutput);
    }

    @Override // zm.w
    public void setPlayWhenReady(boolean z10) {
        o2();
        k2(z10, 1);
    }

    @Override // zm.w
    public void setRepeatMode(final int i10) {
        o2();
        if (this.I != i10) {
            this.I = i10;
            this.f57050l.p1(i10);
            this.f57052m.i(8, new q.a() { // from class: io.bidmachine.media3.exoplayer.s
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).onRepeatModeChanged(i10);
                }
            });
            j2();
            this.f57052m.f();
        }
    }

    @Override // zm.w
    public void setShuffleModeEnabled(final boolean z10) {
        o2();
        if (this.J != z10) {
            this.J = z10;
            this.f57050l.s1(z10);
            this.f57052m.i(9, new q.a() { // from class: io.bidmachine.media3.exoplayer.a0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).onShuffleModeEnabledChanged(z10);
                }
            });
            j2();
            this.f57052m.f();
        }
    }

    @Override // zm.w
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        o2();
        if (surfaceView instanceof yn.e) {
            Z1();
            g2(surfaceView);
            e2(surfaceView.getHolder());
        } else if (surfaceView instanceof SphericalGLSurfaceView) {
            Z1();
            this.Z = (SphericalGLSurfaceView) surfaceView;
            e1(this.A).m(10000).l(this.Z).k();
            this.Z.d(this.f57077z);
            g2(this.Z.getVideoSurface());
            e2(surfaceView.getHolder());
        } else {
            if (surfaceView == null) {
                holder = null;
            } else {
                holder = surfaceView.getHolder();
            }
            h2(holder);
        }
    }

    @Override // zm.w
    public void setVideoTextureView(@Nullable TextureView textureView) {
        SurfaceTexture surfaceTexture;
        o2();
        if (textureView == null) {
            Y0();
            return;
        }
        Z1();
        this.f57031b0 = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            cn.r.h("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f57077z);
        if (textureView.isAvailable()) {
            surfaceTexture = textureView.getSurfaceTexture();
        } else {
            surfaceTexture = null;
        }
        if (surfaceTexture == null) {
            g2(null);
            U1(0, 0);
            return;
        }
        f2(surfaceTexture);
        U1(textureView.getWidth(), textureView.getHeight());
    }

    @Override // zm.w
    public void setVolume(float f10) {
        o2();
        final float o10 = cn.m0.o(f10, 0.0f, 1.0f);
        if (this.f57045i0 == o10) {
            return;
        }
        this.f57045i0 = o10;
        this.f57050l.y1(o10);
        this.f57052m.l(22, new q.a() { // from class: io.bidmachine.media3.exoplayer.m0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((w.d) obj).G(o10);
            }
        });
    }

    @Override // zm.w
    public void stop() {
        o2();
        i2(null);
        this.f57049k0 = new bn.b(ImmutableList.A(), this.f57069u0.f55907s);
    }

    @Override // zm.w
    public w.b u() {
        o2();
        return this.R;
    }

    @Override // zm.w
    public zm.i0 v() {
        o2();
        return this.f57065s0;
    }

    @Override // zm.w
    public int x() {
        o2();
        int j12 = j1(this.f57069u0);
        if (j12 == -1) {
            return 0;
        }
        return j12;
    }

    @Override // zm.w
    public zm.s z() {
        o2();
        return this.S;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes8.dex */
    public final class c implements io.bidmachine.media3.exoplayer.video.p, io.bidmachine.media3.exoplayer.audio.e, un.h, qn.b, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, d.b, o2.b, ExoPlayer.a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void M(w.d dVar) {
            dVar.e0(u0.this.S);
        }

        @Override // un.h
        public void C(final bn.b bVar) {
            u0.this.f57049k0 = bVar;
            u0.this.f57052m.l(27, new q.a() { // from class: io.bidmachine.media3.exoplayer.w0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).C(bn.b.this);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void E(io.bidmachine.media3.common.a aVar, @Nullable gn.c cVar) {
            u0.this.V = aVar;
            u0.this.f57064s.E(aVar, cVar);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void a(final boolean z10) {
            if (u0.this.f57047j0 != z10) {
                u0.this.f57047j0 = z10;
                u0.this.f57052m.l(23, new q.a() { // from class: io.bidmachine.media3.exoplayer.d1
                    @Override // cn.q.a
                    public final void invoke(Object obj) {
                        ((w.d) obj).a(z10);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void b(Exception exc) {
            u0.this.f57064s.b(exc);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void c(String str) {
            u0.this.f57064s.c(str);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void d(String str) {
            u0.this.f57064s.d(str);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void e(Exception exc) {
            u0.this.f57064s.e(exc);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void f(long j10, int i10) {
            u0.this.f57064s.f(j10, i10);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void g(long j10) {
            u0.this.f57064s.g(j10);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void h(Exception exc) {
            u0.this.f57064s.h(exc);
        }

        @Override // io.bidmachine.media3.exoplayer.d.b
        public void i() {
            u0.this.k2(false, 3);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void j(Object obj, long j10) {
            u0.this.f57064s.j(obj, j10);
            if (u0.this.W == obj) {
                u0.this.f57052m.l(26, new q.a() { // from class: gn.a0
                    @Override // cn.q.a
                    public final void invoke(Object obj2) {
                        ((w.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void k(int i10, long j10, long j11) {
            u0.this.f57064s.k(i10, j10, j11);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void l(AudioSink.a aVar) {
            u0.this.f57064s.l(aVar);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void m(final zm.i0 i0Var) {
            u0.this.f57065s0 = i0Var;
            u0.this.f57052m.l(25, new q.a() { // from class: io.bidmachine.media3.exoplayer.c1
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).m(zm.i0.this);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void n(AudioSink.a aVar) {
            u0.this.f57064s.n(aVar);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void o(gn.b bVar) {
            u0.this.f57039f0 = bVar;
            u0.this.f57064s.o(bVar);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void onAudioDecoderInitialized(String str, long j10, long j11) {
            u0.this.f57064s.onAudioDecoderInitialized(str, j10, j11);
        }

        @Override // un.h
        public void onCues(final List<bn.a> list) {
            u0.this.f57052m.l(27, new q.a() { // from class: io.bidmachine.media3.exoplayer.z0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).onCues(list);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void onDroppedFrames(int i10, long j10) {
            u0.this.f57064s.onDroppedFrames(i10, j10);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            u0.this.f2(surfaceTexture);
            u0.this.U1(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            u0.this.g2(null);
            u0.this.U1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            u0.this.U1(i10, i11);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void onVideoDecoderInitialized(String str, long j10, long j11) {
            u0.this.f57064s.onVideoDecoderInitialized(str, j10, j11);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void p(gn.b bVar) {
            u0.this.f57064s.p(bVar);
            u0.this.U = null;
            u0.this.f57039f0 = null;
        }

        @Override // io.bidmachine.media3.exoplayer.o2.b
        public void q(int i10) {
            final zm.k b12 = u0.b1(u0.this.C);
            if (!b12.equals(u0.this.f57063r0)) {
                u0.this.f57063r0 = b12;
                u0.this.f57052m.l(29, new q.a() { // from class: io.bidmachine.media3.exoplayer.b1
                    @Override // cn.q.a
                    public final void invoke(Object obj) {
                        ((w.d) obj).J(zm.k.this);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void r(gn.b bVar) {
            u0.this.f57064s.r(bVar);
            u0.this.V = null;
            u0.this.f57041g0 = null;
        }

        @Override // io.bidmachine.media3.exoplayer.audio.e
        public void s(gn.b bVar) {
            u0.this.f57041g0 = bVar;
            u0.this.f57064s.s(bVar);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            u0.this.U1(i11, i12);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (u0.this.f57029a0) {
                u0.this.g2(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (u0.this.f57029a0) {
                u0.this.g2(null);
            }
            u0.this.U1(0, 0);
        }

        @Override // io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView.b
        public void t(Surface surface) {
            u0.this.g2(null);
        }

        @Override // io.bidmachine.media3.exoplayer.video.p
        public void u(io.bidmachine.media3.common.a aVar, @Nullable gn.c cVar) {
            u0.this.U = aVar;
            u0.this.f57064s.u(aVar, cVar);
        }

        @Override // qn.b
        public void v(final zm.t tVar) {
            u0 u0Var = u0.this;
            u0Var.f57067t0 = u0Var.f57067t0.a().N(tVar).J();
            zm.s X0 = u0.this.X0();
            if (!X0.equals(u0.this.S)) {
                u0.this.S = X0;
                u0.this.f57052m.i(14, new q.a() { // from class: io.bidmachine.media3.exoplayer.x0
                    @Override // cn.q.a
                    public final void invoke(Object obj) {
                        u0.c.this.M((w.d) obj);
                    }
                });
            }
            u0.this.f57052m.i(28, new q.a() { // from class: io.bidmachine.media3.exoplayer.y0
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).v(zm.t.this);
                }
            });
            u0.this.f57052m.f();
        }

        @Override // io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView.b
        public void w(Surface surface) {
            u0.this.g2(surface);
        }

        @Override // io.bidmachine.media3.exoplayer.o2.b
        public void x(final int i10, final boolean z10) {
            u0.this.f57052m.l(30, new q.a() { // from class: io.bidmachine.media3.exoplayer.a1
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((w.d) obj).q(i10, z10);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.ExoPlayer.a
        public void z(boolean z10) {
            u0.this.n2();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }
}
