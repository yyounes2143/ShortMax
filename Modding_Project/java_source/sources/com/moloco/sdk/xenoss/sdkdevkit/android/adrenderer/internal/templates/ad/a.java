package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import at.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.f;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.h;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t;
import gt.g0;
import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kt.e;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a implements m, l, t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Set<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> f34492a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.b f34493b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final h f34494c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final g f34495d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f34496e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final g0 f34497f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final f f34498g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a f34499h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b f34500i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.bridge.a f34501j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final i f34502k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final e<Boolean> f34503l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final i f34504m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader.a f34505n;

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.WebviewAd$isAdDisplaying$2$1", f = "WebviewAd.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0525a extends SuspendLambda implements n<Boolean, Boolean, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34506h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f34507i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ boolean f34508j;

        public C0525a(rs.c<? super C0525a> cVar) {
            super(3, cVar);
        }

        public final Object i(boolean z10, boolean z11, rs.c<? super Boolean> cVar) {
            C0525a c0525a = new C0525a(cVar);
            c0525a.f34507i = z10;
            c0525a.f34508j = z11;
            return c0525a.invokeSuspend(Unit.f60915a);
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, rs.c<? super Boolean> cVar) {
            return i(bool.booleanValue(), bool2.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34506h == 0) {
                kotlin.f.b(obj);
                boolean z11 = this.f34507i;
                boolean z12 = this.f34508j;
                if (z11 && z12) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.WebviewAd$show$1", f = "WebviewAd.kt", l = {78}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34511h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ c0 f34513j;

        @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.WebviewAd$show$1$error$1", f = "WebviewAd.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0526a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a, rs.c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34514h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ Object f34515i;

            public C0526a(rs.c<? super C0526a> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                C0526a c0526a = new C0526a(cVar);
                c0526a.f34515i = obj;
                return c0526a;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: i */
            public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a aVar, rs.c<? super Boolean> cVar) {
                return ((C0526a) create(aVar, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                boolean z10;
                kotlin.coroutines.intrinsics.a.f();
                if (this.f34514h == 0) {
                    kotlin.f.b(obj);
                    if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a) this.f34515i) != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    return kotlin.coroutines.jvm.internal.a.a(z10);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(c0 c0Var, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f34513j = c0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f34513j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34511h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                a.this.f34503l.setValue(kotlin.coroutines.jvm.internal.a.a(true));
                kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> unrecoverableError = a.this.q().getUnrecoverableError();
                C0526a c0526a = new C0526a(null);
                this.f34511h = 1;
                obj = kotlinx.coroutines.flow.c.x(unrecoverableError, c0526a, this);
                if (obj == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a aVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a) obj;
            if (aVar != null) {
                this.f34513j.a(aVar);
            }
            return Unit.f60915a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@NotNull Context context, @NotNull final String adm, @NotNull Set<? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> eventHandlers, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.b clickthroughEventHandler, @NotNull h contentLoadedHandler, @NotNull g playListItemDisplayingEventHandler, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(eventHandlers, "eventHandlers");
        Intrinsics.checkNotNullParameter(clickthroughEventHandler, "clickthroughEventHandler");
        Intrinsics.checkNotNullParameter(contentLoadedHandler, "contentLoadedHandler");
        Intrinsics.checkNotNullParameter(playListItemDisplayingEventHandler, "playListItemDisplayingEventHandler");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f34492a = eventHandlers;
        this.f34493b = clickthroughEventHandler;
        this.f34494c = contentLoadedHandler;
        this.f34495d = playListItemDisplayingEventHandler;
        this.f34496e = metricsRecorder;
        this.f34497f = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        f fVar = new f(eventHandlers, metricsRecorder);
        this.f34498g = fVar;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b bVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b(context, contentLoadedHandler, playListItemDisplayingEventHandler, metricsRecorder, null, 16, null);
        bVar.addJavascriptInterface(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.a(fVar), "AndroidTemplateBridge");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.b bVar2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.b(context, bVar, clickthroughEventHandler);
        this.f34499h = bVar2;
        bVar2.b();
        this.f34500i = bVar;
        this.f34501j = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.bridge.b(bVar);
        this.f34502k = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.i(adm, this);
            }
        });
        this.f34503l = o.a(Boolean.FALSE);
        this.f34504m = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.l(a.this);
            }
        });
        this.f34505n = o();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader.a i(String str, a aVar) {
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader.a(str, aVar.f34497f, aVar.f34500i);
    }

    public static final kt.i l(a aVar) {
        return kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.G(aVar.f34503l, aVar.f34500i.c(), new C0525a(null)), aVar.f34497f, kotlinx.coroutines.flow.m.f61804a.c(), Boolean.FALSE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        this.f34503l.setValue(Boolean.FALSE);
        this.f34499h.remove();
        this.f34500i.destroy();
        kotlinx.coroutines.i.e(this.f34497f, null, 1, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        o().h(j10, new b(aVar));
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public kt.i<Boolean> isLoaded() {
        return this.f34505n.isLoaded();
    }

    public void k(@NotNull c0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        gt.g.d(this.f34497f, null, null, new c(listener, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return (kt.i) this.f34504m.getValue();
    }

    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader.a o() {
        return (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader.a) this.f34502k.getValue();
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a p() {
        return this.f34499h;
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b q() {
        return this.f34500i;
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.bridge.a r() {
        return this.f34501j;
    }

    @NotNull
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b> x() {
        return this.f34500i.getOrientation$moloco_sdk_release();
    }

    /* loaded from: classes6.dex */
    public static final class b implements m.a {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ m.a f34510b;

        public b(m.a aVar) {
            this.f34510b = aVar;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
        public void a() {
            a.this.q().d(a.this.p());
            m.a aVar = this.f34510b;
            if (aVar != null) {
                aVar.a();
            }
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
        public void b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a timeoutError) {
            Intrinsics.checkNotNullParameter(timeoutError, "timeoutError");
            m.a aVar = this.f34510b;
            if (aVar != null) {
                aVar.b(timeoutError);
            }
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
        public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalError) {
            Intrinsics.checkNotNullParameter(internalError, "internalError");
            m.a aVar = this.f34510b;
            if (aVar != null) {
                aVar.a(internalError);
            }
        }
    }
}
