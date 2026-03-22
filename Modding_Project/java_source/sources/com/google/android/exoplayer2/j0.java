package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.p;
import com.google.android.exoplayer2.b;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.g1;
import com.google.android.exoplayer2.j0;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.r1;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u0;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import n6.r;
import p5.r3;
import p5.t3;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImpl.java */
/* loaded from: classes4.dex */
public final class j0 extends com.google.android.exoplayer2.e implements k {
    private final com.google.android.exoplayer2.d A;
    private final r1 B;
    private final w1 C;
    private final x1 D;
    private final long E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private boolean J;
    private int K;
    private o5.r0 L;
    private n6.r M;
    private boolean N;
    private l1.b O;
    private z0 P;
    private z0 Q;
    @Nullable
    private v0 R;
    @Nullable
    private v0 S;
    @Nullable
    private AudioTrack T;
    @Nullable
    private Object U;
    @Nullable
    private Surface V;
    @Nullable
    private SurfaceHolder W;
    @Nullable
    private SphericalGLSurfaceView X;
    private boolean Y;
    @Nullable
    private TextureView Z;

    /* renamed from: a0  reason: collision with root package name */
    private int f17719a0;

    /* renamed from: b  reason: collision with root package name */
    final z6.i0 f17720b;

    /* renamed from: b0  reason: collision with root package name */
    private int f17721b0;

    /* renamed from: c  reason: collision with root package name */
    final l1.b f17722c;

    /* renamed from: c0  reason: collision with root package name */
    private b7.j0 f17723c0;

    /* renamed from: d  reason: collision with root package name */
    private final b7.g f17724d;
    @Nullable

    /* renamed from: d0  reason: collision with root package name */
    private r5.e f17725d0;

    /* renamed from: e  reason: collision with root package name */
    private final Context f17726e;
    @Nullable

    /* renamed from: e0  reason: collision with root package name */
    private r5.e f17727e0;

    /* renamed from: f  reason: collision with root package name */
    private final l1 f17728f;

    /* renamed from: f0  reason: collision with root package name */
    private int f17729f0;

    /* renamed from: g  reason: collision with root package name */
    private final p1[] f17730g;

    /* renamed from: g0  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.a f17731g0;

    /* renamed from: h  reason: collision with root package name */
    private final z6.h0 f17732h;

    /* renamed from: h0  reason: collision with root package name */
    private float f17733h0;

    /* renamed from: i  reason: collision with root package name */
    private final b7.m f17734i;

    /* renamed from: i0  reason: collision with root package name */
    private boolean f17735i0;

    /* renamed from: j  reason: collision with root package name */
    private final u0.f f17736j;

    /* renamed from: j0  reason: collision with root package name */
    private p6.f f17737j0;

    /* renamed from: k  reason: collision with root package name */
    private final u0 f17738k;

    /* renamed from: k0  reason: collision with root package name */
    private boolean f17739k0;

    /* renamed from: l  reason: collision with root package name */
    private final b7.p<l1.d> f17740l;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f17741l0;

    /* renamed from: m  reason: collision with root package name */
    private final CopyOnWriteArraySet<k.a> f17742m;
    @Nullable

    /* renamed from: m0  reason: collision with root package name */
    private PriorityTaskManager f17743m0;

    /* renamed from: n  reason: collision with root package name */
    private final u1.b f17744n;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f17745n0;

    /* renamed from: o  reason: collision with root package name */
    private final List<e> f17746o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f17747o0;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f17748p;

    /* renamed from: p0  reason: collision with root package name */
    private j f17749p0;

    /* renamed from: q  reason: collision with root package name */
    private final o.a f17750q;

    /* renamed from: q0  reason: collision with root package name */
    private c7.z f17751q0;

    /* renamed from: r  reason: collision with root package name */
    private final p5.a f17752r;

    /* renamed from: r0  reason: collision with root package name */
    private z0 f17753r0;

    /* renamed from: s  reason: collision with root package name */
    private final Looper f17754s;

    /* renamed from: s0  reason: collision with root package name */
    private j1 f17755s0;

    /* renamed from: t  reason: collision with root package name */
    private final a7.d f17756t;

    /* renamed from: t0  reason: collision with root package name */
    private int f17757t0;

    /* renamed from: u  reason: collision with root package name */
    private final long f17758u;

    /* renamed from: u0  reason: collision with root package name */
    private int f17759u0;

    /* renamed from: v  reason: collision with root package name */
    private final long f17760v;

    /* renamed from: v0  reason: collision with root package name */
    private long f17761v0;

    /* renamed from: w  reason: collision with root package name */
    private final b7.d f17762w;

    /* renamed from: x  reason: collision with root package name */
    private final c f17763x;

    /* renamed from: y  reason: collision with root package name */
    private final d f17764y;

    /* renamed from: z  reason: collision with root package name */
    private final com.google.android.exoplayer2.b f17765z;

    /* compiled from: ExoPlayerImpl.java */
    @RequiresApi(31)
    /* loaded from: classes4.dex */
    private static final class b {
        @DoNotInline
        public static t3 a(Context context, j0 j0Var, boolean z10) {
            LogSessionId logSessionId;
            r3 A0 = r3.A0(context);
            if (A0 == null) {
                b7.q.i("ExoPlayerImpl", "MediaMetricsService unavailable.");
                logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
                return new t3(logSessionId);
            }
            if (z10) {
                j0Var.R0(A0);
            }
            return new t3(A0.H0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes4.dex */
    public static final class d implements c7.j, d7.a, m1.b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private c7.j f17767a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private d7.a f17768b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private c7.j f17769c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private d7.a f17770d;

        private d() {
        }

        @Override // d7.a
        public void a(long j10, float[] fArr) {
            d7.a aVar = this.f17770d;
            if (aVar != null) {
                aVar.a(j10, fArr);
            }
            d7.a aVar2 = this.f17768b;
            if (aVar2 != null) {
                aVar2.a(j10, fArr);
            }
        }

        @Override // d7.a
        public void b() {
            d7.a aVar = this.f17770d;
            if (aVar != null) {
                aVar.b();
            }
            d7.a aVar2 = this.f17768b;
            if (aVar2 != null) {
                aVar2.b();
            }
        }

        @Override // c7.j
        public void c(long j10, long j11, v0 v0Var, @Nullable MediaFormat mediaFormat) {
            c7.j jVar = this.f17769c;
            if (jVar != null) {
                jVar.c(j10, j11, v0Var, mediaFormat);
            }
            c7.j jVar2 = this.f17767a;
            if (jVar2 != null) {
                jVar2.c(j10, j11, v0Var, mediaFormat);
            }
        }

        @Override // com.google.android.exoplayer2.m1.b
        public void handleMessage(int i10, @Nullable Object obj) {
            if (i10 != 7) {
                if (i10 != 8) {
                    if (i10 == 10000) {
                        SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
                        if (sphericalGLSurfaceView == null) {
                            this.f17769c = null;
                            this.f17770d = null;
                            return;
                        }
                        this.f17769c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                        this.f17770d = sphericalGLSurfaceView.getCameraMotionListener();
                        return;
                    }
                    return;
                }
                this.f17768b = (d7.a) obj;
                return;
            }
            this.f17767a = (c7.j) obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes4.dex */
    public static final class e implements e1 {

        /* renamed from: a  reason: collision with root package name */
        private final Object f17771a;

        /* renamed from: b  reason: collision with root package name */
        private u1 f17772b;

        public e(Object obj, u1 u1Var) {
            this.f17771a = obj;
            this.f17772b = u1Var;
        }

        @Override // com.google.android.exoplayer2.e1
        public u1 a() {
            return this.f17772b;
        }

        @Override // com.google.android.exoplayer2.e1
        public Object getUid() {
            return this.f17771a;
        }
    }

    static {
        o5.z.a("goog.exo.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public j0(k.b bVar, @Nullable l1 l1Var) {
        boolean z10;
        j0 j0Var;
        t3 a10;
        com.google.android.exoplayer2.audio.a aVar;
        boolean z11;
        boolean z12;
        b7.g gVar = new b7.g();
        this.f17724d = gVar;
        try {
            b7.q.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.2] [" + b7.s0.f2510e + "]");
            Context applicationContext = bVar.f17792a.getApplicationContext();
            this.f17726e = applicationContext;
            p5.a apply = bVar.f17800i.apply(bVar.f17793b);
            this.f17752r = apply;
            this.f17743m0 = bVar.f17802k;
            this.f17731g0 = bVar.f17803l;
            this.f17719a0 = bVar.f17808q;
            this.f17721b0 = bVar.f17809r;
            this.f17735i0 = bVar.f17807p;
            this.E = bVar.f17816y;
            c cVar = new c();
            this.f17763x = cVar;
            d dVar = new d();
            this.f17764y = dVar;
            Handler handler = new Handler(bVar.f17801j);
            p1[] a11 = bVar.f17795d.get().a(handler, cVar, cVar, cVar, cVar);
            this.f17730g = a11;
            if (a11.length > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            z6.h0 h0Var = bVar.f17797f.get();
            this.f17732h = h0Var;
            this.f17750q = bVar.f17796e.get();
            a7.d dVar2 = bVar.f17799h.get();
            this.f17756t = dVar2;
            this.f17748p = bVar.f17810s;
            this.L = bVar.f17811t;
            this.f17758u = bVar.f17812u;
            this.f17760v = bVar.f17813v;
            this.N = bVar.f17817z;
            Looper looper = bVar.f17801j;
            this.f17754s = looper;
            b7.d dVar3 = bVar.f17793b;
            this.f17762w = dVar3;
            if (l1Var == null) {
                j0Var = this;
            } else {
                j0Var = l1Var;
            }
            this.f17728f = j0Var;
            this.f17740l = new b7.p<>(looper, dVar3, new p.b() { // from class: com.google.android.exoplayer2.v
                @Override // b7.p.b
                public final void a(Object obj, b7.l lVar) {
                    j0.this.p1((l1.d) obj, lVar);
                }
            });
            this.f17742m = new CopyOnWriteArraySet<>();
            this.f17746o = new ArrayList();
            this.M = new r.a(0);
            z6.i0 i0Var = new z6.i0(new o5.p0[a11.length], new z6.y[a11.length], v1.f19198b, null);
            this.f17720b = i0Var;
            this.f17744n = new u1.b();
            l1.b e10 = new l1.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).d(29, h0Var.e()).e();
            this.f17722c = e10;
            this.O = new l1.b.a().b(e10).a(4).a(10).e();
            this.f17734i = dVar3.createHandler(looper, null);
            u0.f fVar = new u0.f() { // from class: com.google.android.exoplayer2.x
                @Override // com.google.android.exoplayer2.u0.f
                public final void a(u0.e eVar) {
                    j0.this.r1(eVar);
                }
            };
            this.f17736j = fVar;
            this.f17755s0 = j1.j(i0Var);
            apply.t(j0Var, looper);
            int i10 = b7.s0.f2506a;
            if (i10 < 31) {
                a10 = new t3();
            } else {
                a10 = b.a(applicationContext, this, bVar.A);
            }
            u0 u0Var = new u0(a11, h0Var, i0Var, bVar.f17798g.get(), dVar2, this.F, this.G, apply, this.L, bVar.f17814w, bVar.f17815x, this.N, looper, dVar3, fVar, a10);
            this.f17738k = u0Var;
            this.f17733h0 = 1.0f;
            this.F = 0;
            z0 z0Var = z0.G;
            this.P = z0Var;
            this.Q = z0Var;
            this.f17753r0 = z0Var;
            this.f17757t0 = -1;
            if (i10 < 21) {
                this.f17729f0 = m1(0);
            } else {
                this.f17729f0 = b7.s0.C(applicationContext);
            }
            this.f17737j0 = p6.f.f64769c;
            this.f17739k0 = true;
            F(apply);
            dVar2.f(new Handler(looper), apply);
            S0(cVar);
            long j10 = bVar.f17794c;
            if (j10 > 0) {
                u0Var.r(j10);
            }
            com.google.android.exoplayer2.b bVar2 = new com.google.android.exoplayer2.b(bVar.f17792a, handler, cVar);
            this.f17765z = bVar2;
            bVar2.b(bVar.f17806o);
            com.google.android.exoplayer2.d dVar4 = new com.google.android.exoplayer2.d(bVar.f17792a, handler, cVar);
            this.A = dVar4;
            if (bVar.f17804m) {
                aVar = this.f17731g0;
            } else {
                aVar = null;
            }
            dVar4.m(aVar);
            r1 r1Var = new r1(bVar.f17792a, handler, cVar);
            this.B = r1Var;
            r1Var.h(b7.s0.a0(this.f17731g0.f17296c));
            w1 w1Var = new w1(bVar.f17792a);
            this.C = w1Var;
            if (bVar.f17805n != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            w1Var.a(z11);
            x1 x1Var = new x1(bVar.f17792a);
            this.D = x1Var;
            if (bVar.f17805n == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
            x1Var.a(z12);
            this.f17749p0 = X0(r1Var);
            this.f17751q0 = c7.z.f3329e;
            this.f17723c0 = b7.j0.f2460c;
            h0Var.i(this.f17731g0);
            U1(1, 10, Integer.valueOf(this.f17729f0));
            U1(2, 10, Integer.valueOf(this.f17729f0));
            U1(1, 3, this.f17731g0);
            U1(2, 4, Integer.valueOf(this.f17719a0));
            U1(2, 5, Integer.valueOf(this.f17721b0));
            U1(1, 9, Boolean.valueOf(this.f17735i0));
            U1(2, 7, dVar);
            U1(6, 8, dVar);
            gVar.e();
        } catch (Throwable th2) {
            this.f17724d.e();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B1(j1 j1Var, l1.d dVar) {
        dVar.K(j1Var.f17779f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C1(j1 j1Var, l1.d dVar) {
        dVar.L(j1Var.f17779f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(j1 j1Var, l1.d dVar) {
        dVar.U(j1Var.f17782i.f71427d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F1(j1 j1Var, l1.d dVar) {
        dVar.onLoadingChanged(j1Var.f17780g);
        dVar.F(j1Var.f17780g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G1(j1 j1Var, l1.d dVar) {
        dVar.onPlayerStateChanged(j1Var.f17785l, j1Var.f17778e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H1(j1 j1Var, l1.d dVar) {
        dVar.A(j1Var.f17778e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I1(j1 j1Var, int i10, l1.d dVar) {
        dVar.w(j1Var.f17785l, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J1(j1 j1Var, l1.d dVar) {
        dVar.z(j1Var.f17786m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K1(j1 j1Var, l1.d dVar) {
        dVar.y(n1(j1Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L1(j1 j1Var, l1.d dVar) {
        dVar.s(j1Var.f17787n);
    }

    private j1 M1(j1 j1Var, u1 u1Var, @Nullable Pair<Object, Long> pair) {
        boolean z10;
        o.b bVar;
        n6.w wVar;
        z6.i0 i0Var;
        List<Metadata> list;
        int i10;
        long j10;
        if (!u1Var.u() && pair == null) {
            z10 = false;
        } else {
            z10 = true;
        }
        b7.a.a(z10);
        u1 u1Var2 = j1Var.f17774a;
        j1 i11 = j1Var.i(u1Var);
        if (u1Var.u()) {
            o.b k10 = j1.k();
            long w02 = b7.s0.w0(this.f17761v0);
            j1 b10 = i11.c(k10, w02, w02, w02, 0L, n6.w.f62838d, this.f17720b, ImmutableList.A()).b(k10);
            b10.f17789p = b10.f17791r;
            return b10;
        }
        Object obj = i11.f17775b.f62787a;
        boolean equals = obj.equals(((Pair) b7.s0.j(pair)).first);
        if (!equals) {
            bVar = new o.b(pair.first);
        } else {
            bVar = i11.f17775b;
        }
        o.b bVar2 = bVar;
        long longValue = ((Long) pair.second).longValue();
        long w03 = b7.s0.w0(getContentPosition());
        if (!u1Var2.u()) {
            w03 -= u1Var2.l(obj, this.f17744n).q();
        }
        if (equals && longValue >= w03) {
            if (i10 == 0) {
                int f10 = u1Var.f(i11.f17784k.f62787a);
                if (f10 == -1 || u1Var.j(f10, this.f17744n).f18537c != u1Var.l(bVar2.f62787a, this.f17744n).f18537c) {
                    u1Var.l(bVar2.f62787a, this.f17744n);
                    if (bVar2.b()) {
                        j10 = this.f17744n.e(bVar2.f62788b, bVar2.f62789c);
                    } else {
                        j10 = this.f17744n.f18538d;
                    }
                    i11 = i11.c(bVar2, i11.f17791r, i11.f17791r, i11.f17777d, j10 - i11.f17791r, i11.f17781h, i11.f17782i, i11.f17783j).b(bVar2);
                    i11.f17789p = j10;
                }
            } else {
                b7.a.g(!bVar2.b());
                long max = Math.max(0L, i11.f17790q - (longValue - w03));
                long j11 = i11.f17789p;
                if (i11.f17784k.equals(i11.f17775b)) {
                    j11 = longValue + max;
                }
                i11 = i11.c(bVar2, longValue, longValue, longValue, max, i11.f17781h, i11.f17782i, i11.f17783j);
                i11.f17789p = j11;
            }
            return i11;
        }
        b7.a.g(!bVar2.b());
        if (!equals) {
            wVar = n6.w.f62838d;
        } else {
            wVar = i11.f17781h;
        }
        n6.w wVar2 = wVar;
        if (!equals) {
            i0Var = this.f17720b;
        } else {
            i0Var = i11.f17782i;
        }
        z6.i0 i0Var2 = i0Var;
        if (!equals) {
            list = ImmutableList.A();
        } else {
            list = i11.f17783j;
        }
        j1 b11 = i11.c(bVar2, longValue, longValue, longValue, 0L, wVar2, i0Var2, list).b(bVar2);
        b11.f17789p = longValue;
        return b11;
    }

    @Nullable
    private Pair<Object, Long> N1(u1 u1Var, int i10, long j10) {
        if (u1Var.u()) {
            this.f17757t0 = i10;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.f17761v0 = j10;
            this.f17759u0 = 0;
            return null;
        }
        if (i10 == -1 || i10 >= u1Var.t()) {
            i10 = u1Var.e(this.G);
            j10 = u1Var.r(i10, this.f17602a).e();
        }
        return u1Var.n(this.f17602a, this.f17744n, i10, b7.s0.w0(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O1(final int i10, final int i11) {
        if (i10 != this.f17723c0.b() || i11 != this.f17723c0.a()) {
            this.f17723c0 = new b7.j0(i10, i11);
            this.f17740l.l(24, new p.a() { // from class: com.google.android.exoplayer2.z
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).D(i10, i11);
                }
            });
        }
    }

    private long P1(u1 u1Var, o.b bVar, long j10) {
        u1Var.l(bVar.f62787a, this.f17744n);
        return j10 + this.f17744n.q();
    }

    private j1 Q1(int i10, int i11) {
        boolean z10;
        if (i10 >= 0 && i11 >= i10 && i11 <= this.f17746o.size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        int x10 = x();
        u1 currentTimeline = getCurrentTimeline();
        int size = this.f17746o.size();
        this.H++;
        R1(i10, i11);
        u1 Y0 = Y0();
        j1 M1 = M1(this.f17755s0, Y0, f1(currentTimeline, Y0));
        int i12 = M1.f17778e;
        if (i12 != 1 && i12 != 4 && i10 < i11 && i11 == size && x10 >= M1.f17774a.t()) {
            M1 = M1.g(4);
        }
        this.f17738k.l0(i10, i11, this.M);
        return M1;
    }

    private void R1(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            this.f17746o.remove(i12);
        }
        this.M = this.M.a(i10, i11);
    }

    private void S1() {
        if (this.X != null) {
            a1(this.f17764y).n(10000).m(null).l();
            this.X.i(this.f17763x);
            this.X = null;
        }
        TextureView textureView = this.Z;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f17763x) {
                b7.q.i("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.Z.setSurfaceTextureListener(null);
            }
            this.Z = null;
        }
        SurfaceHolder surfaceHolder = this.W;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f17763x);
            this.W = null;
        }
    }

    private List<g1.c> T0(int i10, List<com.google.android.exoplayer2.source.o> list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            g1.c cVar = new g1.c(list.get(i11), this.f17748p);
            arrayList.add(cVar);
            this.f17746o.add(i11 + i10, new e(cVar.f17672b, cVar.f17671a.T()));
        }
        this.M = this.M.cloneAndInsert(i10, arrayList.size());
        return arrayList;
    }

    private void T1(int i10, long j10, boolean z10) {
        this.f17752r.B();
        u1 u1Var = this.f17755s0.f17774a;
        if (i10 >= 0 && (u1Var.u() || i10 < u1Var.t())) {
            int i11 = 1;
            this.H++;
            if (isPlayingAd()) {
                b7.q.i("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                u0.e eVar = new u0.e(this.f17755s0);
                eVar.b(1);
                this.f17736j.a(eVar);
                return;
            }
            if (getPlaybackState() != 1) {
                i11 = 2;
            }
            int x10 = x();
            j1 M1 = M1(this.f17755s0.g(i11), u1Var, N1(u1Var, i10, j10));
            this.f17738k.y0(u1Var, i10, b7.s0.w0(j10));
            g2(M1, 0, 1, true, true, 1, d1(M1), x10, z10);
            return;
        }
        throw new IllegalSeekPositionException(u1Var, i10, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public z0 U0() {
        u1 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return this.f17753r0;
        }
        return this.f17753r0.b().H(currentTimeline.r(x(), this.f17602a).f18552c.f19337e).F();
    }

    private void U1(int i10, int i11, @Nullable Object obj) {
        p1[] p1VarArr;
        for (p1 p1Var : this.f17730g) {
            if (p1Var.getTrackType() == i10) {
                a1(p1Var).n(i11).m(obj).l();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1() {
        U1(1, 2, Float.valueOf(this.f17733h0 * this.A.g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j X0(r1 r1Var) {
        return new j(0, r1Var.d(), r1Var.c());
    }

    private u1 Y0() {
        return new n1(this.f17746o, this.M);
    }

    private void Y1(List<com.google.android.exoplayer2.source.o> list, int i10, long j10, boolean z10) {
        int i11;
        long j11;
        int e12 = e1();
        long currentPosition = getCurrentPosition();
        boolean z11 = true;
        this.H++;
        if (!this.f17746o.isEmpty()) {
            R1(0, this.f17746o.size());
        }
        List<g1.c> T0 = T0(0, list);
        u1 Y0 = Y0();
        if (!Y0.u() && i10 >= Y0.t()) {
            throw new IllegalSeekPositionException(Y0, i10, j10);
        }
        if (z10) {
            j11 = -9223372036854775807L;
            i11 = Y0.e(this.G);
        } else if (i10 == -1) {
            i11 = e12;
            j11 = currentPosition;
        } else {
            i11 = i10;
            j11 = j10;
        }
        j1 M1 = M1(this.f17755s0, Y0, N1(Y0, i11, j11));
        int i12 = M1.f17778e;
        if (i11 != -1 && i12 != 1) {
            i12 = (Y0.u() || i11 >= Y0.t()) ? 4 : 2;
        }
        j1 g10 = M1.g(i12);
        this.f17738k.K0(T0, i11, b7.s0.w0(j11), this.M);
        if (this.f17755s0.f17775b.f62787a.equals(g10.f17775b.f62787a) || this.f17755s0.f17774a.u()) {
            z11 = false;
        }
        g2(g10, 0, 1, false, z11, 4, d1(g10), -1, false);
    }

    private List<com.google.android.exoplayer2.source.o> Z0(List<y0> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(this.f17750q.c(list.get(i10)));
        }
        return arrayList;
    }

    private void Z1(SurfaceHolder surfaceHolder) {
        this.Y = false;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f17763x);
        Surface surface = this.W.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceFrame = this.W.getSurfaceFrame();
            O1(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        O1(0, 0);
    }

    private m1 a1(m1.b bVar) {
        int e12 = e1();
        u0 u0Var = this.f17738k;
        u1 u1Var = this.f17755s0.f17774a;
        if (e12 == -1) {
            e12 = 0;
        }
        return new m1(u0Var, bVar, u1Var, e12, this.f17762w, u0Var.z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        b2(surface);
        this.V = surface;
    }

    private Pair<Boolean, Integer> b1(j1 j1Var, j1 j1Var2, boolean z10, int i10, boolean z11, boolean z12) {
        u1 u1Var = j1Var2.f17774a;
        u1 u1Var2 = j1Var.f17774a;
        if (u1Var2.u() && u1Var.u()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i11 = 3;
        if (u1Var2.u() != u1Var.u()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (!u1Var.r(u1Var.l(j1Var2.f17775b.f62787a, this.f17744n).f18537c, this.f17602a).f18550a.equals(u1Var2.r(u1Var2.l(j1Var.f17775b.f62787a, this.f17744n).f18537c, this.f17602a).f18550a)) {
            if (z10 && i10 == 0) {
                i11 = 1;
            } else if (z10 && i10 == 1) {
                i11 = 2;
            } else if (!z11) {
                throw new IllegalStateException();
            }
            return new Pair<>(Boolean.TRUE, Integer.valueOf(i11));
        } else if (z10 && i10 == 0 && j1Var2.f17775b.f62790d < j1Var.f17775b.f62790d) {
            return new Pair<>(Boolean.TRUE, 0);
        } else {
            if (z10 && i10 == 1 && z12) {
                return new Pair<>(Boolean.TRUE, 2);
            }
            return new Pair<>(Boolean.FALSE, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2(@Nullable Object obj) {
        boolean z10;
        ArrayList<m1> arrayList = new ArrayList();
        p1[] p1VarArr = this.f17730g;
        int length = p1VarArr.length;
        int i10 = 0;
        while (true) {
            z10 = true;
            if (i10 >= length) {
                break;
            }
            p1 p1Var = p1VarArr[i10];
            if (p1Var.getTrackType() == 2) {
                arrayList.add(a1(p1Var).n(1).m(obj).l());
            }
            i10++;
        }
        Object obj2 = this.U;
        if (obj2 != null && obj2 != obj) {
            try {
                for (m1 m1Var : arrayList) {
                    m1Var.a(this.E);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z10 = false;
            Object obj3 = this.U;
            Surface surface = this.V;
            if (obj3 == surface) {
                surface.release();
                this.V = null;
            }
        } else {
            z10 = false;
        }
        this.U = obj;
        if (z10) {
            d2(false, ExoPlaybackException.n(new ExoTimeoutException(3), 1003));
        }
    }

    private long d1(j1 j1Var) {
        if (j1Var.f17774a.u()) {
            return b7.s0.w0(this.f17761v0);
        }
        if (j1Var.f17775b.b()) {
            return j1Var.f17791r;
        }
        return P1(j1Var.f17774a, j1Var.f17775b, j1Var.f17791r);
    }

    private void d2(boolean z10, @Nullable ExoPlaybackException exoPlaybackException) {
        j1 b10;
        boolean z11;
        if (z10) {
            b10 = Q1(0, this.f17746o.size()).e(null);
        } else {
            j1 j1Var = this.f17755s0;
            b10 = j1Var.b(j1Var.f17775b);
            b10.f17789p = b10.f17791r;
            b10.f17790q = 0L;
        }
        j1 g10 = b10.g(1);
        if (exoPlaybackException != null) {
            g10 = g10.e(exoPlaybackException);
        }
        j1 j1Var2 = g10;
        this.H++;
        this.f17738k.e1();
        if (j1Var2.f17774a.u() && !this.f17755s0.f17774a.u()) {
            z11 = true;
        } else {
            z11 = false;
        }
        g2(j1Var2, 0, 1, false, z11, 4, d1(j1Var2), -1, false);
    }

    private int e1() {
        if (this.f17755s0.f17774a.u()) {
            return this.f17757t0;
        }
        j1 j1Var = this.f17755s0;
        return j1Var.f17774a.l(j1Var.f17775b.f62787a, this.f17744n).f18537c;
    }

    private void e2() {
        l1.b bVar = this.O;
        l1.b E = b7.s0.E(this.f17728f, this.f17722c);
        this.O = E;
        if (!E.equals(bVar)) {
            this.f17740l.i(13, new p.a() { // from class: com.google.android.exoplayer2.b0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.this.x1((l1.d) obj);
                }
            });
        }
    }

    @Nullable
    private Pair<Object, Long> f1(u1 u1Var, u1 u1Var2) {
        boolean z10;
        long contentPosition = getContentPosition();
        int i10 = -1;
        if (!u1Var.u() && !u1Var2.u()) {
            Pair<Object, Long> n10 = u1Var.n(this.f17602a, this.f17744n, x(), b7.s0.w0(contentPosition));
            Object obj = ((Pair) b7.s0.j(n10)).first;
            if (u1Var2.f(obj) != -1) {
                return n10;
            }
            Object w02 = u0.w0(this.f17602a, this.f17744n, this.F, this.G, obj, u1Var, u1Var2);
            if (w02 != null) {
                u1Var2.l(w02, this.f17744n);
                int i11 = this.f17744n.f18537c;
                return N1(u1Var2, i11, u1Var2.r(i11, this.f17602a).e());
            }
            return N1(u1Var2, -1, -9223372036854775807L);
        }
        if (!u1Var.u() && u1Var2.u()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            i10 = e1();
        }
        if (z10) {
            contentPosition = -9223372036854775807L;
        }
        return N1(u1Var2, i10, contentPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2(boolean z10, int i10, int i11) {
        boolean z11;
        int i12 = 0;
        if (z10 && i10 != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 && i10 != 1) {
            i12 = 1;
        }
        j1 j1Var = this.f17755s0;
        if (j1Var.f17785l == z11 && j1Var.f17786m == i12) {
            return;
        }
        this.H++;
        j1 d10 = j1Var.d(z11, i12);
        this.f17738k.N0(z11, i12);
        g2(d10, 0, i11, false, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g1(boolean z10, int i10) {
        if (!z10 || i10 == 1) {
            return 1;
        }
        return 2;
    }

    private void g2(final j1 j1Var, final int i10, final int i11, boolean z10, boolean z11, final int i12, long j10, int i13, boolean z12) {
        boolean z13;
        boolean z14;
        boolean z15;
        j1 j1Var2 = this.f17755s0;
        this.f17755s0 = j1Var;
        boolean equals = j1Var2.f17774a.equals(j1Var.f17774a);
        Pair<Boolean, Integer> b12 = b1(j1Var, j1Var2, z11, i12, !equals, z12);
        boolean booleanValue = ((Boolean) b12.first).booleanValue();
        final int intValue = ((Integer) b12.second).intValue();
        z0 z0Var = this.P;
        final y0 y0Var = null;
        if (booleanValue) {
            if (!j1Var.f17774a.u()) {
                y0Var = j1Var.f17774a.r(j1Var.f17774a.l(j1Var.f17775b.f62787a, this.f17744n).f18537c, this.f17602a).f18552c;
            }
            this.f17753r0 = z0.G;
        }
        if (booleanValue || !j1Var2.f17783j.equals(j1Var.f17783j)) {
            this.f17753r0 = this.f17753r0.b().J(j1Var.f17783j).F();
            z0Var = U0();
        }
        boolean equals2 = z0Var.equals(this.P);
        this.P = z0Var;
        if (j1Var2.f17785l != j1Var.f17785l) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (j1Var2.f17778e != j1Var.f17778e) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (z14 || z13) {
            i2();
        }
        boolean z16 = j1Var2.f17780g;
        boolean z17 = j1Var.f17780g;
        if (z16 != z17) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z15) {
            h2(z17);
        }
        if (!equals) {
            this.f17740l.i(0, new p.a() { // from class: com.google.android.exoplayer2.d0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.y1(j1.this, i10, (l1.d) obj);
                }
            });
        }
        if (z11) {
            final l1.e j12 = j1(i12, j1Var2, i13);
            final l1.e i14 = i1(j10);
            this.f17740l.i(11, new p.a() { // from class: com.google.android.exoplayer2.i0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.z1(i12, j12, i14, (l1.d) obj);
                }
            });
        }
        if (booleanValue) {
            this.f17740l.i(1, new p.a() { // from class: com.google.android.exoplayer2.m
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).a0(y0.this, intValue);
                }
            });
        }
        if (j1Var2.f17779f != j1Var.f17779f) {
            this.f17740l.i(10, new p.a() { // from class: com.google.android.exoplayer2.n
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.B1(j1.this, (l1.d) obj);
                }
            });
            if (j1Var.f17779f != null) {
                this.f17740l.i(10, new p.a() { // from class: com.google.android.exoplayer2.o
                    @Override // b7.p.a
                    public final void invoke(Object obj) {
                        j0.C1(j1.this, (l1.d) obj);
                    }
                });
            }
        }
        z6.i0 i0Var = j1Var2.f17782i;
        z6.i0 i0Var2 = j1Var.f17782i;
        if (i0Var != i0Var2) {
            this.f17732h.f(i0Var2.f71428e);
            this.f17740l.i(2, new p.a() { // from class: com.google.android.exoplayer2.p
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.D1(j1.this, (l1.d) obj);
                }
            });
        }
        if (!equals2) {
            final z0 z0Var2 = this.P;
            this.f17740l.i(14, new p.a() { // from class: com.google.android.exoplayer2.q
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).J(z0.this);
                }
            });
        }
        if (z15) {
            this.f17740l.i(3, new p.a() { // from class: com.google.android.exoplayer2.r
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.F1(j1.this, (l1.d) obj);
                }
            });
        }
        if (z14 || z13) {
            this.f17740l.i(-1, new p.a() { // from class: com.google.android.exoplayer2.s
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.G1(j1.this, (l1.d) obj);
                }
            });
        }
        if (z14) {
            this.f17740l.i(4, new p.a() { // from class: com.google.android.exoplayer2.t
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.H1(j1.this, (l1.d) obj);
                }
            });
        }
        if (z13) {
            this.f17740l.i(5, new p.a() { // from class: com.google.android.exoplayer2.e0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.I1(j1.this, i11, (l1.d) obj);
                }
            });
        }
        if (j1Var2.f17786m != j1Var.f17786m) {
            this.f17740l.i(6, new p.a() { // from class: com.google.android.exoplayer2.f0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.J1(j1.this, (l1.d) obj);
                }
            });
        }
        if (n1(j1Var2) != n1(j1Var)) {
            this.f17740l.i(7, new p.a() { // from class: com.google.android.exoplayer2.g0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.K1(j1.this, (l1.d) obj);
                }
            });
        }
        if (!j1Var2.f17787n.equals(j1Var.f17787n)) {
            this.f17740l.i(12, new p.a() { // from class: com.google.android.exoplayer2.h0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.L1(j1.this, (l1.d) obj);
                }
            });
        }
        if (z10) {
            this.f17740l.i(-1, new p.a() { // from class: o5.w
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).onSeekProcessed();
                }
            });
        }
        e2();
        this.f17740l.f();
        if (j1Var2.f17788o != j1Var.f17788o) {
            Iterator<k.a> it = this.f17742m.iterator();
            while (it.hasNext()) {
                it.next().y(j1Var.f17788o);
            }
        }
    }

    private void h2(boolean z10) {
        PriorityTaskManager priorityTaskManager = this.f17743m0;
        if (priorityTaskManager != null) {
            if (z10 && !this.f17745n0) {
                priorityTaskManager.a(0);
                this.f17745n0 = true;
            } else if (!z10 && this.f17745n0) {
                priorityTaskManager.b(0);
                this.f17745n0 = false;
            }
        }
    }

    private l1.e i1(long j10) {
        y0 y0Var;
        Object obj;
        int i10;
        Object obj2;
        long j11;
        int x10 = x();
        if (!this.f17755s0.f17774a.u()) {
            j1 j1Var = this.f17755s0;
            Object obj3 = j1Var.f17775b.f62787a;
            j1Var.f17774a.l(obj3, this.f17744n);
            int f10 = this.f17755s0.f17774a.f(obj3);
            i10 = f10;
            obj = obj3;
            obj2 = this.f17755s0.f17774a.r(x10, this.f17602a).f18550a;
            y0Var = this.f17602a.f18552c;
        } else {
            y0Var = null;
            obj = null;
            i10 = -1;
            obj2 = null;
        }
        long Q0 = b7.s0.Q0(j10);
        if (this.f17755s0.f17775b.b()) {
            j11 = b7.s0.Q0(k1(this.f17755s0));
        } else {
            j11 = Q0;
        }
        o.b bVar = this.f17755s0.f17775b;
        return new l1.e(obj2, x10, y0Var, obj, i10, Q0, j11, bVar.f62788b, bVar.f62789c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i2() {
        int playbackState = getPlaybackState();
        boolean z10 = true;
        if (playbackState != 1) {
            if (playbackState != 2 && playbackState != 3) {
                if (playbackState != 4) {
                    throw new IllegalStateException();
                }
            } else {
                boolean c12 = c1();
                w1 w1Var = this.C;
                if (!getPlayWhenReady() || c12) {
                    z10 = false;
                }
                w1Var.b(z10);
                this.D.b(getPlayWhenReady());
                return;
            }
        }
        this.C.b(false);
        this.D.b(false);
    }

    private l1.e j1(int i10, j1 j1Var, int i11) {
        int i12;
        Object obj;
        y0 y0Var;
        Object obj2;
        int i13;
        long j10;
        long k12;
        u1.b bVar = new u1.b();
        if (!j1Var.f17774a.u()) {
            Object obj3 = j1Var.f17775b.f62787a;
            j1Var.f17774a.l(obj3, bVar);
            int i14 = bVar.f18537c;
            int f10 = j1Var.f17774a.f(obj3);
            Object obj4 = j1Var.f17774a.r(i14, this.f17602a).f18550a;
            y0Var = this.f17602a.f18552c;
            obj2 = obj3;
            i13 = f10;
            obj = obj4;
            i12 = i14;
        } else {
            i12 = i11;
            obj = null;
            y0Var = null;
            obj2 = null;
            i13 = -1;
        }
        if (i10 == 0) {
            if (j1Var.f17775b.b()) {
                o.b bVar2 = j1Var.f17775b;
                j10 = bVar.e(bVar2.f62788b, bVar2.f62789c);
                k12 = k1(j1Var);
            } else {
                if (j1Var.f17775b.f62791e != -1) {
                    j10 = k1(this.f17755s0);
                } else {
                    j10 = bVar.f18539e + bVar.f18538d;
                }
                k12 = j10;
            }
        } else if (j1Var.f17775b.b()) {
            j10 = j1Var.f17791r;
            k12 = k1(j1Var);
        } else {
            j10 = bVar.f18539e + j1Var.f17791r;
            k12 = j10;
        }
        long Q0 = b7.s0.Q0(j10);
        long Q02 = b7.s0.Q0(k12);
        o.b bVar3 = j1Var.f17775b;
        return new l1.e(obj, i12, y0Var, obj2, i13, Q0, Q02, bVar3.f62788b, bVar3.f62789c);
    }

    private void j2() {
        IllegalStateException illegalStateException;
        this.f17724d.b();
        if (Thread.currentThread() != s().getThread()) {
            String z10 = b7.s0.z("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), s().getThread().getName());
            if (!this.f17739k0) {
                if (this.f17741l0) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                b7.q.j("ExoPlayerImpl", z10, illegalStateException);
                this.f17741l0 = true;
                return;
            }
            throw new IllegalStateException(z10);
        }
    }

    private static long k1(j1 j1Var) {
        u1.d dVar = new u1.d();
        u1.b bVar = new u1.b();
        j1Var.f17774a.l(j1Var.f17775b.f62787a, bVar);
        if (j1Var.f17776c == -9223372036854775807L) {
            return j1Var.f17774a.r(bVar.f18537c, dVar).f();
        }
        return bVar.q() + j1Var.f17776c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l1 */
    public void q1(u0.e eVar) {
        long j10;
        boolean z10;
        long j11;
        boolean z11;
        int i10 = this.H - eVar.f18518c;
        this.H = i10;
        boolean z12 = true;
        if (eVar.f18519d) {
            this.I = eVar.f18520e;
            this.J = true;
        }
        if (eVar.f18521f) {
            this.K = eVar.f18522g;
        }
        if (i10 == 0) {
            u1 u1Var = eVar.f18517b.f17774a;
            if (!this.f17755s0.f17774a.u() && u1Var.u()) {
                this.f17757t0 = -1;
                this.f17761v0 = 0L;
                this.f17759u0 = 0;
            }
            if (!u1Var.u()) {
                List<u1> K = ((n1) u1Var).K();
                if (K.size() == this.f17746o.size()) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                b7.a.g(z11);
                for (int i11 = 0; i11 < K.size(); i11++) {
                    this.f17746o.get(i11).f17772b = K.get(i11);
                }
            }
            if (this.J) {
                if (eVar.f18517b.f17775b.equals(this.f17755s0.f17775b) && eVar.f18517b.f17777d == this.f17755s0.f17791r) {
                    z12 = false;
                }
                if (z12) {
                    if (!u1Var.u() && !eVar.f18517b.f17775b.b()) {
                        j1 j1Var = eVar.f18517b;
                        j11 = P1(u1Var, j1Var.f17775b, j1Var.f17777d);
                    } else {
                        j11 = eVar.f18517b.f17777d;
                    }
                    j10 = j11;
                } else {
                    j10 = -9223372036854775807L;
                }
                z10 = z12;
            } else {
                j10 = -9223372036854775807L;
                z10 = false;
            }
            this.J = false;
            g2(eVar.f18517b, 1, this.K, false, z10, this.I, j10, -1, false);
        }
    }

    private int m1(int i10) {
        AudioTrack audioTrack = this.T;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i10) {
            this.T.release();
            this.T = null;
        }
        if (this.T == null) {
            this.T = new AudioTrack(3, 4000, 4, 2, 2, 0, i10);
        }
        return this.T.getAudioSessionId();
    }

    private static boolean n1(j1 j1Var) {
        if (j1Var.f17778e == 3 && j1Var.f17785l && j1Var.f17786m == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p1(l1.d dVar, b7.l lVar) {
        dVar.X(this.f17728f, new l1.c(lVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r1(final u0.e eVar) {
        this.f17734i.post(new Runnable() { // from class: com.google.android.exoplayer2.a0
            @Override // java.lang.Runnable
            public final void run() {
                j0.this.q1(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s1(l1.d dVar) {
        dVar.L(ExoPlaybackException.n(new ExoTimeoutException(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x1(l1.d dVar) {
        dVar.O(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y1(j1 j1Var, int i10, l1.d dVar) {
        dVar.I(j1Var.f17774a, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z1(int i10, l1.e eVar, l1.e eVar2, l1.d dVar) {
        dVar.onPositionDiscontinuity(i10);
        dVar.H(eVar, eVar2, i10);
    }

    @Override // com.google.android.exoplayer2.l1
    public long A() {
        j2();
        return this.f17758u;
    }

    @Override // com.google.android.exoplayer2.k
    public void B(com.google.android.exoplayer2.source.o oVar) {
        j2();
        W1(Collections.singletonList(oVar));
    }

    @Override // com.google.android.exoplayer2.l1
    public void C(l1.d dVar) {
        b7.a.e(dVar);
        this.f17740l.k(dVar);
    }

    @Override // com.google.android.exoplayer2.l1
    public void D(final z6.f0 f0Var) {
        j2();
        if (this.f17732h.e() && !f0Var.equals(this.f17732h.b())) {
            this.f17732h.j(f0Var);
            this.f17740l.l(19, new p.a() { // from class: com.google.android.exoplayer2.c0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).M(z6.f0.this);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.l1
    public void F(l1.d dVar) {
        this.f17740l.c((l1.d) b7.a.e(dVar));
    }

    @Override // com.google.android.exoplayer2.e
    protected void K() {
        j2();
        T1(x(), -9223372036854775807L, true);
    }

    public void R0(p5.b bVar) {
        this.f17752r.b0((p5.b) b7.a.e(bVar));
    }

    public void S0(k.a aVar) {
        this.f17742m.add(aVar);
    }

    public void V0() {
        j2();
        S1();
        b2(null);
        O1(0, 0);
    }

    public void W0(@Nullable SurfaceHolder surfaceHolder) {
        j2();
        if (surfaceHolder != null && surfaceHolder == this.W) {
            V0();
        }
    }

    public void W1(List<com.google.android.exoplayer2.source.o> list) {
        j2();
        X1(list, true);
    }

    public void X1(List<com.google.android.exoplayer2.source.o> list, boolean z10) {
        j2();
        Y1(list, -1, -9223372036854775807L, z10);
    }

    @Override // com.google.android.exoplayer2.l1
    public long a() {
        j2();
        return b7.s0.Q0(this.f17755s0.f17790q);
    }

    @Override // com.google.android.exoplayer2.l1
    public void b(k1 k1Var) {
        j2();
        if (k1Var == null) {
            k1Var = k1.f17819d;
        }
        if (this.f17755s0.f17787n.equals(k1Var)) {
            return;
        }
        j1 f10 = this.f17755s0.f(k1Var);
        this.H++;
        this.f17738k.P0(k1Var);
        g2(f10, 0, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.l1
    public void c(List<y0> list, boolean z10) {
        j2();
        X1(Z0(list), z10);
    }

    public boolean c1() {
        j2();
        return this.f17755s0.f17788o;
    }

    public void c2(@Nullable SurfaceHolder surfaceHolder) {
        j2();
        if (surfaceHolder == null) {
            V0();
            return;
        }
        S1();
        this.Y = true;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f17763x);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            b2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            O1(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        b2(null);
        O1(0, 0);
    }

    @Override // com.google.android.exoplayer2.l1
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        j2();
        if (surfaceView == null) {
            holder = null;
        } else {
            holder = surfaceView.getHolder();
        }
        W0(holder);
    }

    @Override // com.google.android.exoplayer2.l1
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        j2();
        if (textureView != null && textureView == this.Z) {
            V0();
        }
    }

    @Override // com.google.android.exoplayer2.l1
    public v1 e() {
        j2();
        return this.f17755s0.f17782i.f71427d;
    }

    @Override // com.google.android.exoplayer2.l1
    public long getContentPosition() {
        j2();
        if (isPlayingAd()) {
            j1 j1Var = this.f17755s0;
            j1Var.f17774a.l(j1Var.f17775b.f62787a, this.f17744n);
            j1 j1Var2 = this.f17755s0;
            if (j1Var2.f17776c == -9223372036854775807L) {
                return j1Var2.f17774a.r(x(), this.f17602a).e();
            }
            return this.f17744n.p() + b7.s0.Q0(this.f17755s0.f17776c);
        }
        return getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.l1
    public int getCurrentAdGroupIndex() {
        j2();
        if (isPlayingAd()) {
            return this.f17755s0.f17775b.f62788b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.l1
    public int getCurrentAdIndexInAdGroup() {
        j2();
        if (isPlayingAd()) {
            return this.f17755s0.f17775b.f62789c;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.l1
    public int getCurrentPeriodIndex() {
        j2();
        if (this.f17755s0.f17774a.u()) {
            return this.f17759u0;
        }
        j1 j1Var = this.f17755s0;
        return j1Var.f17774a.f(j1Var.f17775b.f62787a);
    }

    @Override // com.google.android.exoplayer2.l1
    public long getCurrentPosition() {
        j2();
        return b7.s0.Q0(d1(this.f17755s0));
    }

    @Override // com.google.android.exoplayer2.l1
    public u1 getCurrentTimeline() {
        j2();
        return this.f17755s0.f17774a;
    }

    @Override // com.google.android.exoplayer2.l1
    public long getDuration() {
        j2();
        if (isPlayingAd()) {
            j1 j1Var = this.f17755s0;
            o.b bVar = j1Var.f17775b;
            j1Var.f17774a.l(bVar.f62787a, this.f17744n);
            return b7.s0.Q0(this.f17744n.e(bVar.f62788b, bVar.f62789c));
        }
        return G();
    }

    @Override // com.google.android.exoplayer2.l1
    public boolean getPlayWhenReady() {
        j2();
        return this.f17755s0.f17785l;
    }

    @Override // com.google.android.exoplayer2.l1
    public k1 getPlaybackParameters() {
        j2();
        return this.f17755s0.f17787n;
    }

    @Override // com.google.android.exoplayer2.l1
    public int getPlaybackState() {
        j2();
        return this.f17755s0.f17778e;
    }

    @Override // com.google.android.exoplayer2.l1
    public int getRepeatMode() {
        j2();
        return this.F;
    }

    @Override // com.google.android.exoplayer2.l1
    public boolean getShuffleModeEnabled() {
        j2();
        return this.G;
    }

    @Override // com.google.android.exoplayer2.l1
    public z6.f0 h() {
        j2();
        return this.f17732h.b();
    }

    @Override // com.google.android.exoplayer2.l1
    @Nullable
    /* renamed from: h1 */
    public ExoPlaybackException d() {
        j2();
        return this.f17755s0.f17779f;
    }

    @Override // com.google.android.exoplayer2.l1
    public long i() {
        j2();
        return 3000L;
    }

    @Override // com.google.android.exoplayer2.l1
    public boolean isPlayingAd() {
        j2();
        return this.f17755s0.f17775b.b();
    }

    @Override // com.google.android.exoplayer2.l1
    public long j() {
        j2();
        return this.f17760v;
    }

    @Override // com.google.android.exoplayer2.l1
    public long l() {
        j2();
        if (this.f17755s0.f17774a.u()) {
            return this.f17761v0;
        }
        j1 j1Var = this.f17755s0;
        if (j1Var.f17784k.f62790d != j1Var.f17775b.f62790d) {
            return j1Var.f17774a.r(x(), this.f17602a).g();
        }
        long j10 = j1Var.f17789p;
        if (this.f17755s0.f17784k.b()) {
            j1 j1Var2 = this.f17755s0;
            u1.b l10 = j1Var2.f17774a.l(j1Var2.f17784k.f62787a, this.f17744n);
            long i10 = l10.i(this.f17755s0.f17784k.f62788b);
            if (i10 == Long.MIN_VALUE) {
                j10 = l10.f18538d;
            } else {
                j10 = i10;
            }
        }
        j1 j1Var3 = this.f17755s0;
        return b7.s0.Q0(P1(j1Var3.f17774a, j1Var3.f17784k, j10));
    }

    @Override // com.google.android.exoplayer2.l1
    public p6.f p() {
        j2();
        return this.f17737j0;
    }

    @Override // com.google.android.exoplayer2.l1
    public void prepare() {
        j2();
        boolean playWhenReady = getPlayWhenReady();
        int i10 = 2;
        int p10 = this.A.p(playWhenReady, 2);
        f2(playWhenReady, p10, g1(playWhenReady, p10));
        j1 j1Var = this.f17755s0;
        if (j1Var.f17778e != 1) {
            return;
        }
        j1 e10 = j1Var.e(null);
        if (e10.f17774a.u()) {
            i10 = 4;
        }
        j1 g10 = e10.g(i10);
        this.H++;
        this.f17738k.g0();
        g2(g10, 1, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.l1
    public int r() {
        j2();
        return this.f17755s0.f17786m;
    }

    @Override // com.google.android.exoplayer2.l1
    public void release() {
        AudioTrack audioTrack;
        b7.q.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.2] [" + b7.s0.f2510e + "] [" + o5.z.b() + "]");
        j2();
        if (b7.s0.f2506a < 21 && (audioTrack = this.T) != null) {
            audioTrack.release();
            this.T = null;
        }
        this.f17765z.b(false);
        this.B.g();
        this.C.b(false);
        this.D.b(false);
        this.A.i();
        if (!this.f17738k.i0()) {
            this.f17740l.l(10, new p.a() { // from class: com.google.android.exoplayer2.w
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    j0.s1((l1.d) obj);
                }
            });
        }
        this.f17740l.j();
        this.f17734i.removeCallbacksAndMessages(null);
        this.f17756t.b(this.f17752r);
        j1 g10 = this.f17755s0.g(1);
        this.f17755s0 = g10;
        j1 b10 = g10.b(g10.f17775b);
        this.f17755s0 = b10;
        b10.f17789p = b10.f17791r;
        this.f17755s0.f17790q = 0L;
        this.f17752r.release();
        this.f17732h.g();
        S1();
        Surface surface = this.V;
        if (surface != null) {
            surface.release();
            this.V = null;
        }
        if (this.f17745n0) {
            ((PriorityTaskManager) b7.a.e(this.f17743m0)).b(0);
            this.f17745n0 = false;
        }
        this.f17737j0 = p6.f.f64769c;
        this.f17747o0 = true;
    }

    @Override // com.google.android.exoplayer2.l1
    public Looper s() {
        return this.f17754s;
    }

    @Override // com.google.android.exoplayer2.l1
    public void seekTo(int i10, long j10) {
        j2();
        T1(i10, j10, false);
    }

    @Override // com.google.android.exoplayer2.l1
    public void setPlayWhenReady(boolean z10) {
        j2();
        int p10 = this.A.p(z10, getPlaybackState());
        f2(z10, p10, g1(z10, p10));
    }

    @Override // com.google.android.exoplayer2.l1
    public void setRepeatMode(final int i10) {
        j2();
        if (this.F != i10) {
            this.F = i10;
            this.f17738k.R0(i10);
            this.f17740l.i(8, new p.a() { // from class: com.google.android.exoplayer2.y
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).onRepeatModeChanged(i10);
                }
            });
            e2();
            this.f17740l.f();
        }
    }

    @Override // com.google.android.exoplayer2.l1
    public void setShuffleModeEnabled(final boolean z10) {
        j2();
        if (this.G != z10) {
            this.G = z10;
            this.f17738k.U0(z10);
            this.f17740l.i(9, new p.a() { // from class: com.google.android.exoplayer2.l
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).onShuffleModeEnabledChanged(z10);
                }
            });
            e2();
            this.f17740l.f();
        }
    }

    @Override // com.google.android.exoplayer2.l1
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        j2();
        if (surfaceView instanceof c7.i) {
            S1();
            b2(surfaceView);
            Z1(surfaceView.getHolder());
        } else if (surfaceView instanceof SphericalGLSurfaceView) {
            S1();
            this.X = (SphericalGLSurfaceView) surfaceView;
            a1(this.f17764y).n(10000).m(this.X).l();
            this.X.d(this.f17763x);
            b2(this.X.getVideoSurface());
            Z1(surfaceView.getHolder());
        } else {
            if (surfaceView == null) {
                holder = null;
            } else {
                holder = surfaceView.getHolder();
            }
            c2(holder);
        }
    }

    @Override // com.google.android.exoplayer2.l1
    public void setVideoTextureView(@Nullable TextureView textureView) {
        SurfaceTexture surfaceTexture;
        j2();
        if (textureView == null) {
            V0();
            return;
        }
        S1();
        this.Z = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            b7.q.i("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f17763x);
        if (textureView.isAvailable()) {
            surfaceTexture = textureView.getSurfaceTexture();
        } else {
            surfaceTexture = null;
        }
        if (surfaceTexture == null) {
            b2(null);
            O1(0, 0);
            return;
        }
        a2(surfaceTexture);
        O1(textureView.getWidth(), textureView.getHeight());
    }

    @Override // com.google.android.exoplayer2.l1
    public void setVolume(float f10) {
        j2();
        final float o10 = b7.s0.o(f10, 0.0f, 1.0f);
        if (this.f17733h0 == o10) {
            return;
        }
        this.f17733h0 = o10;
        V1();
        this.f17740l.l(22, new p.a() { // from class: com.google.android.exoplayer2.u
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((l1.d) obj).G(o10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1
    public l1.b u() {
        j2();
        return this.O;
    }

    @Override // com.google.android.exoplayer2.l1
    public c7.z v() {
        j2();
        return this.f17751q0;
    }

    @Override // com.google.android.exoplayer2.l1
    public int x() {
        j2();
        int e12 = e1();
        if (e12 == -1) {
            return 0;
        }
        return e12;
    }

    @Override // com.google.android.exoplayer2.l1
    public z0 z() {
        j2();
        return this.P;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes4.dex */
    public final class c implements c7.x, com.google.android.exoplayer2.audio.b, p6.o, g6.d, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, d.b, b.InterfaceC0287b, r1.b, k.a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void O(l1.d dVar) {
            dVar.J(j0.this.P);
        }

        @Override // g6.d
        public void C(final Metadata metadata) {
            j0 j0Var = j0.this;
            j0Var.f17753r0 = j0Var.f17753r0.b().I(metadata).F();
            z0 U0 = j0.this.U0();
            if (!U0.equals(j0.this.P)) {
                j0.this.P = U0;
                j0.this.f17740l.i(14, new p.a() { // from class: com.google.android.exoplayer2.m0
                    @Override // b7.p.a
                    public final void invoke(Object obj) {
                        j0.c.this.O((l1.d) obj);
                    }
                });
            }
            j0.this.f17740l.i(28, new p.a() { // from class: com.google.android.exoplayer2.n0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).C(Metadata.this);
                }
            });
            j0.this.f17740l.f();
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void E(r5.e eVar) {
            j0.this.f17727e0 = eVar;
            j0.this.f17752r.E(eVar);
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void a(final boolean z10) {
            if (j0.this.f17735i0 != z10) {
                j0.this.f17735i0 = z10;
                j0.this.f17740l.l(23, new p.a() { // from class: com.google.android.exoplayer2.r0
                    @Override // b7.p.a
                    public final void invoke(Object obj) {
                        ((l1.d) obj).a(z10);
                    }
                });
            }
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void b(Exception exc) {
            j0.this.f17752r.b(exc);
        }

        @Override // c7.x
        public void c(String str) {
            j0.this.f17752r.c(str);
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void d(String str) {
            j0.this.f17752r.d(str);
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void e(Exception exc) {
            j0.this.f17752r.e(exc);
        }

        @Override // c7.x
        public void f(long j10, int i10) {
            j0.this.f17752r.f(j10, i10);
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void g(long j10) {
            j0.this.f17752r.g(j10);
        }

        @Override // c7.x
        public void h(Exception exc) {
            j0.this.f17752r.h(exc);
        }

        @Override // com.google.android.exoplayer2.b.InterfaceC0287b
        public void i() {
            j0.this.f2(false, -1, 3);
        }

        @Override // c7.x
        public void j(Object obj, long j10) {
            j0.this.f17752r.j(obj, j10);
            if (j0.this.U == obj) {
                j0.this.f17740l.l(26, new p.a() { // from class: o5.y
                    @Override // b7.p.a
                    public final void invoke(Object obj2) {
                        ((l1.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void k(int i10, long j10, long j11) {
            j0.this.f17752r.k(i10, j10, j11);
        }

        @Override // c7.x
        public void l(v0 v0Var, @Nullable r5.g gVar) {
            j0.this.R = v0Var;
            j0.this.f17752r.l(v0Var, gVar);
        }

        @Override // c7.x
        public void m(r5.e eVar) {
            j0.this.f17725d0 = eVar;
            j0.this.f17752r.m(eVar);
        }

        @Override // c7.x
        public void n(r5.e eVar) {
            j0.this.f17752r.n(eVar);
            j0.this.R = null;
            j0.this.f17725d0 = null;
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void o(r5.e eVar) {
            j0.this.f17752r.o(eVar);
            j0.this.S = null;
            j0.this.f17727e0 = null;
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void onAudioDecoderInitialized(String str, long j10, long j11) {
            j0.this.f17752r.onAudioDecoderInitialized(str, j10, j11);
        }

        @Override // p6.o
        public void onCues(final List<p6.b> list) {
            j0.this.f17740l.l(27, new p.a() { // from class: com.google.android.exoplayer2.k0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).onCues(list);
                }
            });
        }

        @Override // c7.x
        public void onDroppedFrames(int i10, long j10) {
            j0.this.f17752r.onDroppedFrames(i10, j10);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            j0.this.a2(surfaceTexture);
            j0.this.O1(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            j0.this.b2(null);
            j0.this.O1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            j0.this.O1(i10, i11);
        }

        @Override // c7.x
        public void onVideoDecoderInitialized(String str, long j10, long j11) {
            j0.this.f17752r.onVideoDecoderInitialized(str, j10, j11);
        }

        @Override // com.google.android.exoplayer2.audio.b
        public void p(v0 v0Var, @Nullable r5.g gVar) {
            j0.this.S = v0Var;
            j0.this.f17752r.p(v0Var, gVar);
        }

        @Override // com.google.android.exoplayer2.r1.b
        public void q(int i10) {
            final j X0 = j0.X0(j0.this.B);
            if (!X0.equals(j0.this.f17749p0)) {
                j0.this.f17749p0 = X0;
                j0.this.f17740l.l(29, new p.a() { // from class: com.google.android.exoplayer2.p0
                    @Override // b7.p.a
                    public final void invoke(Object obj) {
                        ((l1.d) obj).P(j.this);
                    }
                });
            }
        }

        @Override // p6.o
        public void r(final p6.f fVar) {
            j0.this.f17737j0 = fVar;
            j0.this.f17740l.l(27, new p.a() { // from class: com.google.android.exoplayer2.l0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).r(p6.f.this);
                }
            });
        }

        @Override // com.google.android.exoplayer2.d.b
        public void s(float f10) {
            j0.this.V1();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            j0.this.O1(i11, i12);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (j0.this.Y) {
                j0.this.b2(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (j0.this.Y) {
                j0.this.b2(null);
            }
            j0.this.O1(0, 0);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void t(Surface surface) {
            j0.this.b2(null);
        }

        @Override // c7.x
        public void u(final c7.z zVar) {
            j0.this.f17751q0 = zVar;
            j0.this.f17740l.l(25, new p.a() { // from class: com.google.android.exoplayer2.q0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).u(c7.z.this);
                }
            });
        }

        @Override // com.google.android.exoplayer2.d.b
        public void v(int i10) {
            boolean playWhenReady = j0.this.getPlayWhenReady();
            j0.this.f2(playWhenReady, i10, j0.g1(playWhenReady, i10));
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void w(Surface surface) {
            j0.this.b2(surface);
        }

        @Override // com.google.android.exoplayer2.r1.b
        public void x(final int i10, final boolean z10) {
            j0.this.f17740l.l(30, new p.a() { // from class: com.google.android.exoplayer2.o0
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((l1.d) obj).q(i10, z10);
                }
            });
        }

        @Override // com.google.android.exoplayer2.k.a
        public void y(boolean z10) {
            j0.this.i2();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }
}
