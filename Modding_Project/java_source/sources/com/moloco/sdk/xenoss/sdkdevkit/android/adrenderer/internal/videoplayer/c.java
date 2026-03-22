package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer;

import a7.h;
import android.content.Context;
import android.os.Looper;
import android.view.InflateException;
import androidx.annotation.MainThread;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.Lifecycle;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.ui.StyledPlayerView;
import com.google.android.exoplayer2.y0;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i;
import gt.g0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@MainThread
@SourceDebugExtension({"SMAP\nSimplifiedExoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimplifiedExoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/SimplifiedExoPlayer\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,350:1\n351#2,11:351\n*S KotlinDebug\n*F\n+ 1 SimplifiedExoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/SimplifiedExoPlayer\n*L\n334#1:351,11\n*E\n"})
/* loaded from: classes6.dex */
public final class c implements h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f36385a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f36386b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final n f36387c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f36388d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final g0 f36389e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> f36390f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> f36391g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a> f36392h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a> f36393i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final kt.e<l> f36394j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final kt.i<l> f36395k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final StyledPlayerView f36396l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public String f36397m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f36398n;

    /* renamed from: o  reason: collision with root package name */
    public final Looper f36399o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    public k f36400p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.b f36401q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f36402r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public final d f36403s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.g f36404t;

    /* renamed from: u  reason: collision with root package name */
    public long f36405u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    public r f36406v;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.SimplifiedExoPlayer$1", f = "SimplifiedExoPlayer.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36407h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36408i;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(cVar);
            aVar.f36408i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a aVar, rs.c<? super Unit> cVar) {
            return ((a) create(aVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36407h == 0) {
                kotlin.f.b(obj);
                if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a) this.f36408i).b()) {
                    c.this.p();
                } else {
                    r rVar = c.this.f36406v;
                    if (rVar != null) {
                        r.a.b(rVar, null, 1, null);
                    }
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* loaded from: classes6.dex */
    public static final class b implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ k f36410a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ C0588c f36411b;

        public b(k kVar, C0588c c0588c) {
            this.f36410a = kVar;
            this.f36411b = c0588c;
        }

        public final void a(Throwable th2) {
            this.f36410a.C(this.f36411b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
            a(th2);
            return Unit.f60915a;
        }
    }

    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0588c implements l1.d {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ int f36412a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ k f36413b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ gt.i<Unit> f36414c;

        /* JADX WARN: Multi-variable type inference failed */
        public C0588c(int i10, k kVar, gt.i<? super Unit> iVar) {
            this.f36412a = i10;
            this.f36413b = kVar;
            this.f36414c = iVar;
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void A(int i10) {
            if (i10 == this.f36412a) {
                this.f36413b.C(this);
                gt.i<Unit> iVar = this.f36414c;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(Unit.f60915a));
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class d implements l1.d {
        public d() {
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void A(int i10) {
            long j10;
            super.A(i10);
            if (i10 == 4) {
                c cVar = c.this;
                k c02 = c.this.c0();
                if (c02 != null) {
                    j10 = c02.getDuration();
                } else {
                    j10 = 1;
                }
                cVar.L(new i.a(j10));
                c.this.m();
            }
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void L(PlaybackException error) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.b bVar;
            Intrinsics.checkNotNullParameter(error, "error");
            super.L(error);
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str = c.this.f36388d;
            MolocoLogger.error$default(molocoLogger, str, "Exoplayer error (streaming enabled = " + c.this.f36386b + ')', error, false, 8, null);
            if (c.this.f36386b && (bVar = c.this.f36401q) != null && bVar.j()) {
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i) c.this.f36390f.getValue();
                if (!(iVar instanceof i.a) && !(iVar instanceof i.c)) {
                    if (!(iVar instanceof i.d) && !Intrinsics.areEqual(iVar, i.b.f36226a)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    MolocoLogger.info$default(molocoLogger, c.this.f36388d, "Exoplayer streaming failed before any playback started, so report that as error", null, false, 12, null);
                } else {
                    MolocoLogger.info$default(molocoLogger, c.this.f36388d, "Ignoring exoplayer streaming error as the user has viewed some of the ad already", null, false, 12, null);
                    return;
                }
            }
            c.this.f36394j.setValue(l.f34049a);
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void y(boolean z10) {
            long j10;
            long j11;
            boolean z11;
            super.y(z10);
            k c02 = c.this.c0();
            if (c02 != null) {
                j10 = c02.getDuration();
            } else {
                j10 = 0;
            }
            k c03 = c.this.c0();
            if (c03 != null) {
                j11 = c03.getCurrentPosition();
            } else {
                j11 = 0;
            }
            if (j10 - j11 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            c.this.f36392h.setValue(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a(z10, true, z11));
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class e extends FunctionReferenceImpl implements Function0<Unit> {
        public e(Object obj) {
            super(0, obj, c.class, "initOrResumeExoPlayer", "initOrResumeExoPlayer()V", 0);
        }

        public final void b() {
            ((c) this.receiver).k();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class f extends FunctionReferenceImpl implements Function0<Unit> {
        public f(Object obj) {
            super(0, obj, c.class, "disposeExoPlayer", "disposeExoPlayer()V", 0);
        }

        public final void b() {
            ((c) this.receiver).a0();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.SimplifiedExoPlayer$startPlaybackProgressJob$1", f = "SimplifiedExoPlayer.kt", l = {328}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36416h;

        public g(rs.c<? super g> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new g(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36416h;
            if (i10 != 0 && i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            do {
                k c02 = c.this.c0();
                if (c02 != null) {
                    c.this.L(new i.c(c02.getCurrentPosition(), c02.getDuration()));
                }
                this.f36416h = 1;
            } while (DelayKt.b(500L, this) != f10);
            return f10;
        }
    }

    public c(@NotNull Context context, boolean z10, @NotNull n mediaCacheRepository, @NotNull Lifecycle lifecycle) {
        StyledPlayerView styledPlayerView;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mediaCacheRepository, "mediaCacheRepository");
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        this.f36385a = context;
        this.f36386b = z10;
        this.f36387c = mediaCacheRepository;
        this.f36388d = "SimplifiedExoPlayer";
        this.f36389e = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> a10 = o.a(i.b.f36226a);
        this.f36390f = a10;
        this.f36391g = a10;
        kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a> a11 = o.a(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a(false, false, false, 6, null));
        this.f36392h = a11;
        this.f36393i = a11;
        kt.e<l> a12 = o.a(null);
        this.f36394j = a12;
        this.f36395k = a12;
        try {
            styledPlayerView = new StyledPlayerView(context);
            styledPlayerView.setUseController(false);
        } catch (InflateException e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f36388d, "ExoPlayerView could not be instantiated.", e10, false, 8, null);
            this.f36394j.setValue(l.f34050b);
            styledPlayerView = null;
        }
        this.f36396l = styledPlayerView;
        this.f36399o = Looper.getMainLooper();
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(isPlaying(), new a(null)), this.f36389e);
        this.f36403s = new d();
        this.f36404t = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.g(lifecycle, new e(this), new f(this));
    }

    public static final a7.h q(String str, c cVar) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.b bVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.b(str, cVar.f36387c);
        cVar.f36401q = bVar;
        return bVar;
    }

    public final void K(k kVar) {
        x(kVar, o());
        w(kVar, d0());
        kVar.seekTo(this.f36405u);
        if (this.f36402r) {
            kVar.play();
        } else {
            kVar.pause();
        }
    }

    public final void L(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar) {
        this.f36390f.setValue(iVar);
    }

    public final void S(k kVar) {
        this.f36405u = kVar.getCurrentPosition();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void a(@Nullable String str) {
        this.f36397m = str;
        k kVar = this.f36400p;
        if (kVar != null) {
            w(kVar, str);
        }
        m();
    }

    public final void a0() {
        long j10;
        long j11;
        boolean z10;
        MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36388d, "Disposing exo player", null, false, 12, null);
        StyledPlayerView u10 = u();
        if (u10 != null) {
            u10.B();
            u10.setPlayer(null);
        }
        k kVar = this.f36400p;
        if (kVar != null) {
            j10 = kVar.getDuration();
        } else {
            j10 = 0;
        }
        k kVar2 = this.f36400p;
        if (kVar2 != null) {
            j11 = kVar2.getCurrentPosition();
        } else {
            j11 = 0;
        }
        if (j10 - j11 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k kVar3 = this.f36400p;
        if (kVar3 != null) {
            S(kVar3);
            kVar3.C(this.f36403s);
            kVar3.release();
        }
        this.f36400p = null;
        this.f36392h.setValue(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a(false, false, z10));
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void b(boolean z10) {
        this.f36398n = z10;
        k kVar = this.f36400p;
        if (kVar != null) {
            x(kVar, z10);
        }
    }

    @MainThread
    @Nullable
    public final k c0() {
        return this.f36400p;
    }

    @Nullable
    public String d0() {
        return this.f36397m;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f36389e, null, 1, null);
        this.f36404t.destroy();
        a0();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @MainThread
    @Nullable
    /* renamed from: e0 */
    public StyledPlayerView u() {
        return this.f36396l;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @NotNull
    public kt.i<l> f() {
        return this.f36395k;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @NotNull
    public kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a> isPlaying() {
        return this.f36393i;
    }

    public final void k() {
        MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36388d, "Init exo player", null, false, 12, null);
        StyledPlayerView u10 = u();
        if (u10 == null) {
            return;
        }
        if (this.f36400p == null) {
            k e10 = new k.b(this.f36385a).j(this.f36399o).k(true).e();
            Intrinsics.checkNotNullExpressionValue(e10, "build(...)");
            u10.setPlayer(e10);
            this.f36400p = e10;
            e10.setPlayWhenReady(false);
            e10.F(this.f36403s);
            K(e10);
            if (Intrinsics.areEqual(t().getValue(), i.b.f36226a)) {
                L(new i.d(e10.getDuration()));
            }
        }
        u10.C();
    }

    public final void m() {
        this.f36402r = false;
        this.f36405u = 0L;
    }

    public boolean o() {
        return this.f36398n;
    }

    public final void p() {
        r d10;
        r rVar = this.f36406v;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        d10 = gt.g.d(this.f36389e, null, null, new g(null), 3, null);
        this.f36406v = d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void pause() {
        this.f36402r = false;
        k kVar = this.f36400p;
        if (kVar != null) {
            kVar.pause();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void play() {
        this.f36402r = true;
        k kVar = this.f36400p;
        if (kVar != null) {
            kVar.play();
        }
    }

    public final Object r(k kVar, int i10, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        C0588c c0588c = new C0588c(i10, kVar, eVar);
        kVar.F(c0588c);
        eVar.u(new b(kVar, c0588c));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void seekTo(long j10) {
        this.f36405u = j10;
        k kVar = this.f36400p;
        if (kVar != null) {
            kVar.seekTo(j10);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @NotNull
    public kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> t() {
        return this.f36391g;
    }

    public final void w(k kVar, final String str) {
        if (str == null) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36388d, "URI Source is empty", null, false, 12, null);
            return;
        }
        try {
            if (this.f36386b) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36388d, "Streaming is enabled", null, false, 12, null);
                com.google.android.exoplayer2.source.i iVar = new com.google.android.exoplayer2.source.i(new h.a() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.d
                    @Override // a7.h.a
                    public final a7.h createDataSource() {
                        return c.q(str, this);
                    }
                });
                y0 d10 = y0.d(str);
                Intrinsics.checkNotNullExpressionValue(d10, "fromUri(...)");
                kVar.B(iVar.c(d10));
            } else {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36388d, "Streaming is disabled", null, false, 12, null);
                kVar.E(y0.d(str));
            }
            kVar.prepare();
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f36388d, "ExoPlayer setMediaItem exception", e10, false, 8, null);
            this.f36394j.setValue(l.f34051c);
        }
    }

    public final void x(k kVar, boolean z10) {
        float f10;
        if (z10) {
            f10 = 0.0f;
        } else {
            f10 = 1.0f;
        }
        kVar.setVolume(f10);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @Nullable
    public Object a(@NotNull rs.c<? super Unit> cVar) {
        Object r10;
        k kVar = this.f36400p;
        return (kVar == null || (r10 = r(kVar, 3, cVar)) != kotlin.coroutines.intrinsics.a.f()) ? Unit.f60915a : r10;
    }
}
