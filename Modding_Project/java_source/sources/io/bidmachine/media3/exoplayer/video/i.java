package io.bidmachine.media3.exoplayer.video;

import android.content.Context;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import cn.d0;
import cn.g0;
import cn.m0;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.VideoFrameProcessingException;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.video.VideoSink;
import io.bidmachine.media3.exoplayer.video.i;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import zm.f0;
import zm.g0;
import zm.h0;
import zm.i0;
import zm.x;
import zm.z;
/* compiled from: PlaybackVideoGraphWrapper.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes8.dex */
public final class i implements h0.a {

    /* renamed from: z  reason: collision with root package name */
    private static final Executor f57233z = new Executor() { // from class: yn.c
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            io.bidmachine.media3.exoplayer.video.i.H(runnable);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Context f57234a;

    /* renamed from: b  reason: collision with root package name */
    private final g0<Long> f57235b;

    /* renamed from: c  reason: collision with root package name */
    private final x.a f57236c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<d> f57237d;

    /* renamed from: e  reason: collision with root package name */
    private final List<Object> f57238e;

    /* renamed from: f  reason: collision with root package name */
    private final f0 f57239f;

    /* renamed from: g  reason: collision with root package name */
    private final VideoSink f57240g;

    /* renamed from: h  reason: collision with root package name */
    private final VideoSink.b f57241h;

    /* renamed from: i  reason: collision with root package name */
    private final cn.h f57242i;

    /* renamed from: j  reason: collision with root package name */
    private final CopyOnWriteArraySet<e> f57243j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f57244k;

    /* renamed from: l  reason: collision with root package name */
    private io.bidmachine.media3.common.a f57245l;

    /* renamed from: m  reason: collision with root package name */
    private cn.n f57246m;

    /* renamed from: n  reason: collision with root package name */
    private x f57247n;

    /* renamed from: o  reason: collision with root package name */
    private long f57248o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Pair<Surface, d0> f57249p;

    /* renamed from: q  reason: collision with root package name */
    private int f57250q;

    /* renamed from: r  reason: collision with root package name */
    private int f57251r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private h2.a f57252s;

    /* renamed from: t  reason: collision with root package name */
    private long f57253t;

    /* renamed from: u  reason: collision with root package name */
    private long f57254u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f57255v;

    /* renamed from: w  reason: collision with root package name */
    private long f57256w;

    /* renamed from: x  reason: collision with root package name */
    private int f57257x;

    /* renamed from: y  reason: collision with root package name */
    private int f57258y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlaybackVideoGraphWrapper.java */
    /* loaded from: classes8.dex */
    public class a implements VideoSink.b {
        a() {
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.b
        public void a() {
            ((x) cn.a.i(i.this.f57247n)).c(-2L);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.b
        public void b(long j10) {
            ((x) cn.a.i(i.this.f57247n)).c(j10);
        }
    }

    /* compiled from: PlaybackVideoGraphWrapper.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f57260a;

        /* renamed from: b  reason: collision with root package name */
        private final n f57261b;

        /* renamed from: c  reason: collision with root package name */
        private g0.a f57262c;

        /* renamed from: d  reason: collision with root package name */
        private x.a f57263d;

        /* renamed from: e  reason: collision with root package name */
        private List<Object> f57264e = ImmutableList.A();

        /* renamed from: f  reason: collision with root package name */
        private f0 f57265f = f0.f71933a;

        /* renamed from: g  reason: collision with root package name */
        private cn.h f57266g = cn.h.f3594a;

        /* renamed from: h  reason: collision with root package name */
        private boolean f57267h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f57268i;

        public b(Context context, n nVar) {
            this.f57260a = context.getApplicationContext();
            this.f57261b = nVar;
        }

        public i h() {
            cn.a.g(!this.f57268i);
            if (this.f57263d == null) {
                if (this.f57262c == null) {
                    this.f57262c = new f(null);
                }
                this.f57263d = new g(this.f57262c);
            }
            i iVar = new i(this, null);
            this.f57268i = true;
            return iVar;
        }

        public b i(cn.h hVar) {
            this.f57266g = hVar;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PlaybackVideoGraphWrapper.java */
    /* loaded from: classes8.dex */
    public final class c implements VideoSink.a {
        private c() {
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
        public void a(VideoSink videoSink, i0 i0Var) {
            Iterator it = i.this.f57243j.iterator();
            while (it.hasNext()) {
                ((e) it.next()).q(i.this, i0Var);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
        public void b(VideoSink videoSink) {
            Iterator it = i.this.f57243j.iterator();
            while (it.hasNext()) {
                ((e) it.next()).n(i.this);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
        public void c(VideoSink videoSink) {
            Iterator it = i.this.f57243j.iterator();
            while (it.hasNext()) {
                ((e) it.next()).c(i.this);
            }
        }

        /* synthetic */ c(i iVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PlaybackVideoGraphWrapper.java */
    /* loaded from: classes8.dex */
    public final class d implements VideoSink, e {

        /* renamed from: a  reason: collision with root package name */
        private final int f57270a;

        /* renamed from: b  reason: collision with root package name */
        private final int f57271b;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private zm.g0 f57273d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private io.bidmachine.media3.common.a f57274e;

        /* renamed from: f  reason: collision with root package name */
        private int f57275f;

        /* renamed from: g  reason: collision with root package name */
        private long f57276g;

        /* renamed from: k  reason: collision with root package name */
        private boolean f57280k;

        /* renamed from: c  reason: collision with root package name */
        private ImmutableList<Object> f57272c = ImmutableList.A();

        /* renamed from: h  reason: collision with root package name */
        private long f57277h = -9223372036854775807L;

        /* renamed from: i  reason: collision with root package name */
        private VideoSink.a f57278i = VideoSink.a.f57168a;

        /* renamed from: j  reason: collision with root package name */
        private Executor f57279j = i.f57233z;

        public d(Context context, int i10) {
            this.f57271b = i10;
            this.f57270a = m0.f0(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void C(VideoSink.a aVar) {
            aVar.c(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void D(VideoSink.a aVar) {
            aVar.b((VideoSink) cn.a.i(this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void E(VideoSink.a aVar, i0 i0Var) {
            aVar.a(this, i0Var);
        }

        private void F(io.bidmachine.media3.common.a aVar) {
            ((zm.g0) cn.a.i(this.f57273d)).b(this.f57275f, aVar.b().T(i.B(aVar.C)).N(), this.f57272c, 0L);
        }

        private void G(List<Object> list) {
            if (i.this.f57236c.b()) {
                this.f57272c = ImmutableList.u(list);
            } else {
                this.f57272c = new ImmutableList.a().j(list).j(i.this.f57238e).k();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public Surface a() {
            cn.a.g(isInitialized());
            return ((zm.g0) cn.a.i(this.f57273d)).a();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void b(boolean z10) {
            if (isInitialized()) {
                this.f57273d.flush();
            }
            this.f57277h = -9223372036854775807L;
            i.this.A(z10);
            this.f57280k = false;
        }

        @Override // io.bidmachine.media3.exoplayer.video.i.e
        public void c(i iVar) {
            final VideoSink.a aVar = this.f57278i;
            this.f57279j.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.j
                @Override // java.lang.Runnable
                public final void run() {
                    i.d.this.C(aVar);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void d() {
            i.this.f57254u = this.f57277h;
            if (i.this.f57253t >= i.this.f57254u) {
                i.this.f57240g.d();
                i.this.f57255v = true;
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void e() {
            i.this.f57240g.e();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void f(int i10, io.bidmachine.media3.common.a aVar, List<Object> list) {
            cn.a.g(isInitialized());
            if (i10 != 1 && i10 != 2) {
                throw new UnsupportedOperationException("Unsupported input type " + i10);
            }
            G(list);
            this.f57275f = i10;
            this.f57274e = aVar;
            i.this.f57254u = -9223372036854775807L;
            i.this.f57255v = false;
            F(aVar);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void g(boolean z10) {
            i.this.f57240g.g(z10);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void h() {
            i.this.f57240g.h();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean i(io.bidmachine.media3.common.a aVar) throws VideoSink.VideoSinkException {
            cn.a.g(!isInitialized());
            zm.g0 J = i.this.J(aVar, this.f57271b);
            this.f57273d = J;
            if (J != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean isEnded() {
            if (isInitialized() && i.this.D()) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean isInitialized() {
            if (this.f57273d != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void j(yn.f fVar) {
            i.this.Q(fVar);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void k(int i10) {
            i.this.f57240g.k(i10);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void l(h2.a aVar) {
            i.this.f57252s = aVar;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void m(long j10, long j11) {
            long j12;
            cn.g0 g0Var = i.this.f57235b;
            long j13 = this.f57277h;
            if (j13 == -9223372036854775807L) {
                j12 = 0;
            } else {
                j12 = j13 + 1;
            }
            g0Var.a(j12, Long.valueOf(j10));
            this.f57276g = j11;
            i.this.M(j11);
        }

        @Override // io.bidmachine.media3.exoplayer.video.i.e
        public void n(i iVar) {
            final VideoSink.a aVar = this.f57278i;
            this.f57279j.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.l
                @Override // java.lang.Runnable
                public final void run() {
                    i.d.this.D(aVar);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void o(List<Object> list) {
            if (this.f57272c.equals(list)) {
                return;
            }
            G(list);
            io.bidmachine.media3.common.a aVar = this.f57274e;
            if (aVar != null) {
                F(aVar);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean p(boolean z10) {
            boolean z11;
            i iVar = i.this;
            if (z10 && isInitialized()) {
                z11 = true;
            } else {
                z11 = false;
            }
            return iVar.F(z11);
        }

        @Override // io.bidmachine.media3.exoplayer.video.i.e
        public void q(i iVar, final i0 i0Var) {
            final VideoSink.a aVar = this.f57278i;
            this.f57279j.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.k
                @Override // java.lang.Runnable
                public final void run() {
                    i.d.this.E(aVar, i0Var);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void r(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
            i.this.O(f10);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void release() {
            i.this.K();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void render(long j10, long j11) throws VideoSink.VideoSinkException {
            i.this.L(j10, j11);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void s() {
            i.this.f57240g.s();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean t(long j10, boolean z10, VideoSink.b bVar) {
            cn.a.g(isInitialized());
            if (!i.this.R() || ((zm.g0) cn.a.i(this.f57273d)).d() >= this.f57270a || !((zm.g0) cn.a.i(this.f57273d)).c()) {
                return false;
            }
            this.f57277h = j10 - this.f57276g;
            bVar.b(j10 * 1000);
            return true;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void u() {
            i.this.f57240g.u();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void v() {
            i.this.z();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void w(VideoSink.a aVar, Executor executor) {
            this.f57278i = aVar;
            this.f57279j = executor;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void x(Surface surface, d0 d0Var) {
            i.this.N(surface, d0Var);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void y(boolean z10) {
            i.this.f57240g.y(z10);
        }
    }

    /* compiled from: PlaybackVideoGraphWrapper.java */
    /* loaded from: classes8.dex */
    public interface e {
        void c(i iVar);

        void n(i iVar);

        void q(i iVar, i0 i0Var);
    }

    /* compiled from: PlaybackVideoGraphWrapper.java */
    /* loaded from: classes8.dex */
    private static final class f implements g0.a {

        /* renamed from: a  reason: collision with root package name */
        private static final h7.n<g0.a> f57282a = Suppliers.a(new h7.n() { // from class: io.bidmachine.media3.exoplayer.video.m
            @Override // h7.n
            public final Object get() {
                g0.a b10;
                b10 = i.f.b();
                return b10;
            }
        });

        private f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ g0.a b() {
            try {
                Class<?> cls = Class.forName("io.bidmachine.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                return (g0.a) cn.a.e(cls.getMethod("build", new Class[0]).invoke(cls.getConstructor(new Class[0]).newInstance(new Object[0]), new Object[0]));
            } catch (Exception e10) {
                throw new IllegalStateException(e10);
            }
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    /* compiled from: PlaybackVideoGraphWrapper.java */
    /* loaded from: classes8.dex */
    private static final class g implements x.a {

        /* renamed from: a  reason: collision with root package name */
        private final g0.a f57283a;

        public g(g0.a aVar) {
            this.f57283a = aVar;
        }

        @Override // zm.x.a
        public x a(Context context, zm.g gVar, zm.j jVar, h0.a aVar, Executor executor, f0 f0Var, List<Object> list, long j10) throws VideoFrameProcessingException {
            try {
                try {
                    return ((x.a) Class.forName("io.bidmachine.media3.effect.PreviewingSingleInputVideoGraph$Factory").getConstructor(g0.a.class).newInstance(this.f57283a)).a(context, gVar, jVar, aVar, executor, f0Var, list, j10);
                } catch (Exception e10) {
                    e = e10;
                    throw VideoFrameProcessingException.b(e);
                }
            } catch (Exception e11) {
                e = e11;
            }
        }

        @Override // zm.x.a
        public boolean b() {
            return false;
        }
    }

    /* synthetic */ i(b bVar, a aVar) {
        this(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(boolean z10) {
        if (!E()) {
            return;
        }
        this.f57250q++;
        this.f57240g.b(z10);
        while (this.f57235b.l() > 1) {
            this.f57235b.i();
        }
        if (this.f57235b.l() == 1) {
            this.f57240g.m(((Long) cn.a.e(this.f57235b.i())).longValue(), this.f57256w);
        }
        this.f57253t = -9223372036854775807L;
        this.f57254u = -9223372036854775807L;
        this.f57255v = false;
        ((cn.n) cn.a.i(this.f57246m)).post(new Runnable() { // from class: yn.d
            @Override // java.lang.Runnable
            public final void run() {
                io.bidmachine.media3.exoplayer.video.i.this.G();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zm.g B(@Nullable zm.g gVar) {
        if (gVar != null && gVar.g()) {
            return gVar;
        }
        return zm.g.f71934h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean D() {
        if (this.f57250q == 0 && this.f57255v && this.f57240g.isEnded()) {
            return true;
        }
        return false;
    }

    private boolean E() {
        if (this.f57251r == 1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean F(boolean z10) {
        boolean z11;
        VideoSink videoSink = this.f57240g;
        if (z10 && this.f57250q == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        return videoSink.p(z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        this.f57250q--;
    }

    private void I(@Nullable Surface surface, int i10, int i11) {
        x xVar = this.f57247n;
        if (xVar == null) {
            return;
        }
        if (surface != null) {
            xVar.b(new z(surface, i10, i11));
            this.f57240g.x(surface, new d0(i10, i11));
            return;
        }
        xVar.b(null);
        this.f57240g.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public zm.g0 J(io.bidmachine.media3.common.a aVar, int i10) throws VideoSink.VideoSinkException {
        boolean z10;
        if (i10 == 0) {
            if (this.f57251r == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            zm.g B = B(aVar.C);
            if (this.f57244k) {
                B = zm.g.f71934h;
            } else if (B.f71944c == 7 && m0.f3614a < 34) {
                B = B.a().e(6).a();
            }
            zm.g gVar = B;
            final cn.n createHandler = this.f57242i.createHandler((Looper) cn.a.i(Looper.myLooper()), null);
            this.f57246m = createHandler;
            try {
                x.a aVar2 = this.f57236c;
                Context context = this.f57234a;
                zm.j jVar = zm.j.f71963a;
                Objects.requireNonNull(createHandler);
                x a10 = aVar2.a(context, gVar, jVar, this, new Executor() { // from class: yn.b
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        cn.n.this.post(runnable);
                    }
                }, this.f57239f, this.f57238e, 0L);
                this.f57247n = a10;
                a10.initialize();
                Pair<Surface, d0> pair = this.f57249p;
                if (pair != null) {
                    d0 d0Var = (d0) pair.second;
                    I((Surface) pair.first, d0Var.b(), d0Var.a());
                }
                this.f57240g.i(aVar);
                this.f57251r = 1;
            } catch (VideoFrameProcessingException e10) {
                throw new VideoSink.VideoSinkException(e10, aVar);
            }
        } else if (!E()) {
            return null;
        }
        try {
            ((x) cn.a.e(this.f57247n)).d(i10);
            this.f57258y++;
            VideoSink videoSink = this.f57240g;
            c cVar = new c(this, null);
            final cn.n nVar = (cn.n) cn.a.e(this.f57246m);
            Objects.requireNonNull(nVar);
            videoSink.w(cVar, new Executor() { // from class: yn.b
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    cn.n.this.post(runnable);
                }
            });
            return this.f57247n.a(i10);
        } catch (VideoFrameProcessingException e11) {
            throw new VideoSink.VideoSinkException(e11, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(long j10, long j11) throws VideoSink.VideoSinkException {
        this.f57240g.render(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(long j10) {
        this.f57256w = j10;
        this.f57240g.m(this.f57248o, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(float f10) {
        this.f57240g.r(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(yn.f fVar) {
        this.f57240g.j(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean R() {
        int i10 = this.f57257x;
        if (i10 != -1 && i10 == this.f57258y) {
            return true;
        }
        return false;
    }

    public VideoSink C(int i10) {
        cn.a.g(!m0.r(this.f57237d, i10));
        d dVar = new d(this.f57234a, i10);
        y(dVar);
        this.f57237d.put(i10, dVar);
        return dVar;
    }

    public void K() {
        if (this.f57251r == 2) {
            return;
        }
        cn.n nVar = this.f57246m;
        if (nVar != null) {
            nVar.removeCallbacksAndMessages(null);
        }
        x xVar = this.f57247n;
        if (xVar != null) {
            xVar.release();
        }
        this.f57249p = null;
        this.f57251r = 2;
    }

    public void N(Surface surface, d0 d0Var) {
        Pair<Surface, d0> pair = this.f57249p;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((d0) this.f57249p.second).equals(d0Var)) {
            return;
        }
        this.f57249p = Pair.create(surface, d0Var);
        I(surface, d0Var.b(), d0Var.a());
    }

    public void P(int i10) {
        this.f57257x = i10;
    }

    public void y(e eVar) {
        this.f57243j.add(eVar);
    }

    public void z() {
        d0 d0Var = d0.f3574c;
        I(null, d0Var.b(), d0Var.a());
        this.f57249p = null;
    }

    private i(b bVar) {
        this.f57234a = bVar.f57260a;
        this.f57235b = new cn.g0<>();
        this.f57236c = (x.a) cn.a.i(bVar.f57263d);
        this.f57237d = new SparseArray<>();
        this.f57238e = bVar.f57264e;
        this.f57239f = bVar.f57265f;
        cn.h hVar = bVar.f57266g;
        this.f57242i = hVar;
        this.f57240g = new io.bidmachine.media3.exoplayer.video.d(bVar.f57261b, hVar);
        this.f57241h = new a();
        this.f57243j = new CopyOnWriteArraySet<>();
        this.f57244k = bVar.f57267h;
        this.f57245l = new a.b().N();
        this.f57253t = -9223372036854775807L;
        this.f57254u = -9223372036854775807L;
        this.f57257x = -1;
        this.f57251r = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H(Runnable runnable) {
    }
}
