package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.D;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.h;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.fullscreen.FullscreenWebviewActivity;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l;
import java.util.List;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class D implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.d0 {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f33744q = new a(null);

    /* renamed from: r  reason: collision with root package name */
    public static final int f33745r = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33746a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f33747b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final n0 f33748c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final l f33749d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f33750e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final gt.g0 f33751f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.c f33752g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final h f33753h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.b f33754i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g f33755j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final Set<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> f33756k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a f33757l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public final i f33758m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final kt.e<Boolean> f33759n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public final ms.i f33760o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public final kt.e<Boolean> f33761p;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.TemplateFullscreenAdImpl$isAdDisplaying$2$1", f = "TemplateFullscreenAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements at.n<Boolean, Boolean, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33762h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33763i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ boolean f33764j;

        public b(rs.c<? super b> cVar) {
            super(3, cVar);
        }

        public final Object i(boolean z10, boolean z11, rs.c<? super Boolean> cVar) {
            b bVar = new b(cVar);
            bVar.f33763i = z10;
            bVar.f33764j = z11;
            return bVar.invokeSuspend(Unit.f60915a);
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, rs.c<? super Boolean> cVar) {
            return i(bool.booleanValue(), bool2.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33762h == 0) {
                f.b(obj);
                boolean z11 = this.f33763i;
                boolean z12 = this.f33764j;
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("isAdDisplaying final: ");
                boolean z13 = false;
                if (z11 && z12) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                sb2.append(z10);
                sb2.append(", _isAdDisplaying: ");
                sb2.append(z11);
                sb2.append(", webViewIsDisplaying: ");
                sb2.append(z12);
                MolocoLogger.info$default(molocoLogger, "TemplateFullscreenAd", sb2.toString(), null, false, 12, null);
                if (z11 && z12) {
                    z13 = true;
                }
                return kotlin.coroutines.jvm.internal.a.a(z13);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.TemplateFullscreenAdImpl$show$1", f = "TemplateFullscreenAd.kt", l = {92}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33765h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33766i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ d f33768k;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.TemplateFullscreenAdImpl$show$1$1", f = "TemplateFullscreenAd.kt", l = {}, m = "invokeSuspend")
        @SourceDebugExtension({"SMAP\nTemplateFullscreenAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateFullscreenAd.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/TemplateFullscreenAdImpl$show$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n2642#2:136\n1#3:137\n*S KotlinDebug\n*F\n+ 1 TemplateFullscreenAd.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/TemplateFullscreenAdImpl$show$1$1\n*L\n93#1:136\n93#1:137\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<Unit, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33769h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ List<kotlinx.coroutines.r> f33770i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ D f33771j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends kotlinx.coroutines.r> list, D d10, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f33770i = list;
                this.f33771j = d10;
            }

            public static final void j(D d10) {
                d10.destroy();
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f33770i, this.f33771j, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: i */
            public final Object invoke(Unit unit, rs.c<? super Unit> cVar) {
                return ((a) create(unit, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f33769h == 0) {
                    f.b(obj);
                    for (kotlinx.coroutines.r rVar : this.f33770i) {
                        r.a.b(rVar, null, 1, null);
                    }
                    MolocoLogger.info$default(MolocoLogger.INSTANCE, "TemplateFullscreenAd", "Calling close()", null, false, 12, null);
                    FullscreenWebviewActivity.f34699b.a();
                    Handler handler = new Handler(Looper.getMainLooper());
                    final D d10 = this.f33771j;
                    handler.postDelayed(new Runnable() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            D.c.a.j(D.this);
                        }
                    }, 1000L);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.TemplateFullscreenAdImpl$show$1$eventHandlers$1", f = "TemplateFullscreenAd.kt", l = {86}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33772h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ D f33773i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ d f33774j;

            /* loaded from: classes6.dex */
            public static final class a<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ d f33775a;

                public a(d dVar) {
                    this.f33775a = dVar;
                }

                @Override // kt.c
                /* renamed from: a */
                public final Object emit(Unit unit, rs.c<? super Unit> cVar) {
                    this.f33775a.a();
                    return Unit.f60915a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(D d10, d dVar, rs.c<? super b> cVar) {
                super(2, cVar);
                this.f33773i = d10;
                this.f33774j = dVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new b(this.f33773i, this.f33774j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f33772h;
                if (i10 != 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    f.b(obj);
                } else {
                    f.b(obj);
                    kt.d<Unit> d10 = this.f33773i.f33754i.d();
                    a aVar = new a(this.f33774j);
                    this.f33772h = 1;
                    if (d10.collect(aVar, this) == f10) {
                        return f10;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(d dVar, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f33768k = dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(this.f33768k, cVar);
            cVar2.f33766i = obj;
            return cVar2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.r d10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33765h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                d10 = gt.g.d((gt.g0) this.f33766i, null, null, new b(D.this, this.f33768k, null), 3, null);
                List e10 = CollectionsKt.e(d10);
                kt.d<Unit> c10 = D.this.f33752g.c();
                a aVar = new a(e10, D.this, null);
                this.f33765h = 1;
                if (kotlinx.coroutines.flow.c.m(c10, aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public D(@NotNull Context context, @NotNull String adm, @NotNull com.moloco.sdk.internal.services.f0 clickthroughService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull n0 externalLinkHandler, @NotNull l persistentHttpRequest, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f33746a = context;
        this.f33747b = watermark;
        this.f33748c = externalLinkHandler;
        this.f33749d = persistentHttpRequest;
        this.f33750e = metricsRecorder;
        gt.g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f33751f = a10;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.c cVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.c(a10);
        this.f33752g = cVar;
        h hVar = new h(a10);
        this.f33753h = hVar;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.b bVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.b(clickthroughService, a10);
        this.f33754i = bVar;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g gVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g(a10);
        this.f33755j = gVar;
        Set<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> j10 = y0.j(cVar, bVar, hVar, new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.a(metricsRecorder), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.i(externalLinkHandler), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.e(persistentHttpRequest), gVar);
        this.f33756k = j10;
        this.f33757l = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a(context, adm, j10, bVar, hVar, gVar, metricsRecorder);
        Boolean bool = Boolean.FALSE;
        this.f33759n = kotlinx.coroutines.flow.o.a(bool);
        this.f33760o = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return D.m(D.this);
            }
        });
        this.f33761p = kotlinx.coroutines.flow.o.a(bool);
    }

    public static final kt.i m(D d10) {
        return kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.G(d10.f33759n, d10.f33757l.m(), new b(null)), d10.f33751f, m.f61804a.c(), Boolean.FALSE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        this.f33757l.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @Nullable
    public i getCreativeType() {
        return this.f33758m;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        this.f33757l.h(j10, aVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public kt.i<Boolean> isLoaded() {
        return this.f33757l.isLoaded();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u
    /* renamed from: j */
    public void c(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b0 options, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0 c0Var) {
        Intrinsics.checkNotNullParameter(options, "options");
        d dVar = new d(c0Var, this);
        this.f33747b.a(this.f33757l.q());
        this.f33757l.k(dVar);
        FullscreenWebviewActivity.f34699b.b(this.f33746a, this.f33759n, this.f33757l, this.f33761p);
        gt.g.d(this.f33751f, null, null, new c(dVar, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.v
    @NotNull
    public kt.i<Boolean> k() {
        return this.f33761p;
    }

    /* loaded from: classes6.dex */
    public static final class d implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0 {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0 f33776a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ D f33777b;

        public d(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0 c0Var, D d10) {
            this.f33776a = c0Var;
            this.f33777b = d10;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalShowError) {
            Intrinsics.checkNotNullParameter(internalShowError, "internalShowError");
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0 c0Var = this.f33776a;
            if (c0Var != null) {
                c0Var.a(internalShowError);
            }
            this.f33777b.destroy();
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a() {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0 c0Var = this.f33776a;
            if (c0Var != null) {
                c0Var.a();
            }
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return (kt.i) this.f33760o.getValue();
    }
}
