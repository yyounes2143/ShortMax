package com.moloco.sdk.internal.publisher.nativead;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.publisher.b0;
import com.moloco.sdk.internal.publisher.m0;
import com.moloco.sdk.internal.publisher.nativead.c;
import com.moloco.sdk.internal.publisher.s0;
import com.moloco.sdk.internal.publisher.w;
import com.moloco.sdk.internal.services.r;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.MolocoAdKt;
import com.moloco.sdk.publisher.NativeAd;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l;
import gt.g;
import gt.g0;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements NativeAd, m0 {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f32725p = new a(null);

    /* renamed from: q  reason: collision with root package name */
    public static final int f32726q = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32727a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final c f32728b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.publisher.nativead.a f32729c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final r f32730d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f32731e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final n0 f32732f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final l f32733g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final w f32734h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32735i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public NativeAd.InteractionListener f32736j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final AdFormatType f32737k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final g0 f32738l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final com.moloco.sdk.acm.e f32739m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public f f32740n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public kotlinx.coroutines.r f32741o;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdImpl$load$1", f = "NativeAdImpl.kt", l = {104}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.internal.publisher.nativead.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0480b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32742h;

        /* renamed from: i  reason: collision with root package name */
        public int f32743i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ AdLoad.Listener f32745k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ String f32746l;

        /* renamed from: com.moloco.sdk.internal.publisher.nativead.b$b$a */
        /* loaded from: classes6.dex */
        public /* synthetic */ class a extends FunctionReferenceImpl implements Function0<Unit> {
            public a(Object obj) {
                super(0, obj, b.class, "handleGeneralAdClick", "handleGeneralAdClick()V", 0);
            }

            public final void b() {
                ((b) this.receiver).handleGeneralAdClick();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                b();
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0480b(AdLoad.Listener listener, String str, rs.c<? super C0480b> cVar) {
            super(2, cVar);
            this.f32745k = listener;
            this.f32746l = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C0480b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0480b(this.f32745k, this.f32746l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            s0 s0Var;
            Object obj2;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32743i;
            if (i10 != 0) {
                if (i10 == 1) {
                    s0Var = (s0) this.f32742h;
                    kotlin.f.b(obj);
                    obj2 = ((Result) obj).n();
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                b bVar = b.this;
                s0 b10 = bVar.b(bVar.f32739m, this.f32745k);
                c cVar = b.this.f32728b;
                String str = this.f32746l;
                com.moloco.sdk.acm.e eVar = b.this.f32739m;
                this.f32742h = b10;
                this.f32743i = 1;
                Object l10 = cVar.l(str, eVar, b10, this);
                if (l10 == f10) {
                    return f10;
                }
                s0Var = b10;
                obj2 = l10;
            }
            Throwable g10 = Result.g(obj2);
            if (g10 == null) {
                c.b bVar2 = (c.b) obj2;
                b bVar3 = b.this;
                bVar3.d(new f(bVar3.f32727a, bVar2.a(), bVar2.b(), bVar3.f32730d, bVar3.f32731e, bVar3.f32737k, bVar3.f32733g, bVar3.f32732f, bVar3.f32735i));
                bVar3.getAssets().e(bVar2.c());
                bVar3.getAssets().f(new a(bVar3));
                s0Var.b(MolocoAdKt.createAdInfo(bVar3.f32727a, kotlin.coroutines.jvm.internal.a.c(bVar2.a().e())), bVar2.a().d().f());
                return Unit.f60915a;
            }
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "NativeAdImpl", "Failed to load native ad.", g10, false, 8, null);
            return Unit.f60915a;
        }
    }

    public b(@NotNull String adUnitId, @NotNull c nativeAdLoader, @NotNull com.moloco.sdk.internal.publisher.nativead.a assets, @NotNull r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull n0 externalLinkHandler, @NotNull l persistentHttpRequest, @NotNull w createLoadTimeoutManager, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(nativeAdLoader, "nativeAdLoader");
        Intrinsics.checkNotNullParameter(assets, "assets");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(createLoadTimeoutManager, "createLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32727a = adUnitId;
        this.f32728b = nativeAdLoader;
        this.f32729c = assets;
        this.f32730d = appLifecycleTrackerService;
        this.f32731e = customUserEventBuilderService;
        this.f32732f = externalLinkHandler;
        this.f32733g = persistentHttpRequest;
        this.f32734h = createLoadTimeoutManager;
        this.f32735i = metricsRecorder;
        this.f32737k = AdFormatType.NATIVE;
        this.f32738l = i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f32739m = metricsRecorder.c(com.moloco.sdk.internal.client_metrics_data.d.f32072j.c());
    }

    public final s0 b(com.moloco.sdk.acm.e eVar, AdLoad.Listener listener) {
        return b0.a(listener, eVar, this.f32737k, this.f32735i);
    }

    public final void d(@Nullable f fVar) {
        this.f32740n = fVar;
    }

    @Override // com.moloco.sdk.publisher.Destroyable
    public void destroy() {
        i.e(this.f32738l, null, 1, null);
        getAssets().c();
        setInteractionListener(null);
    }

    @Override // com.moloco.sdk.publisher.NativeAd
    @Nullable
    public NativeAd.InteractionListener getInteractionListener() {
        return this.f32736j;
    }

    @Override // com.moloco.sdk.publisher.NativeAd
    public void handleGeneralAdClick() {
        NativeAd.InteractionListener interactionListener = getInteractionListener();
        if (interactionListener != null) {
            interactionListener.onGeneralClickHandled();
        }
        f fVar = this.f32740n;
        if (fVar != null) {
            fVar.e();
        }
    }

    @Override // com.moloco.sdk.publisher.NativeAd
    public void handleImpression() {
        NativeAd.InteractionListener interactionListener = getInteractionListener();
        if (interactionListener != null) {
            interactionListener.onImpressionHandled();
        }
        f fVar = this.f32740n;
        if (fVar != null) {
            fVar.f();
        }
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public boolean isLoaded() {
        if (getAssets().g() != null) {
            return true;
        }
        return false;
    }

    @Override // com.moloco.sdk.publisher.NativeAd
    @NotNull
    /* renamed from: k */
    public com.moloco.sdk.internal.publisher.nativead.a getAssets() {
        return this.f32729c;
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public synchronized void load(@NotNull String bidResponseJson, @Nullable AdLoad.Listener listener) {
        kotlinx.coroutines.r d10;
        Intrinsics.checkNotNullParameter(bidResponseJson, "bidResponseJson");
        kotlinx.coroutines.r rVar = this.f32741o;
        if (rVar != null && rVar.isActive()) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "NativeAdImpl", "load() called while another load operation is in progress. Ignoring this call.", null, false, 12, null);
        } else if (!isLoaded()) {
            d10 = g.d(this.f32738l, null, null, new C0480b(listener, bidResponseJson, null), 3, null);
            this.f32741o = d10;
        } else {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "NativeAdImpl", "load() called but ad is already loaded. Ignoring this call.", null, false, 12, null);
        }
    }

    @Override // com.moloco.sdk.internal.publisher.m0
    public void setCreateAdObjectStartTime(long j10) {
        this.f32734h.setCreateAdObjectStartTime(j10);
    }

    @Override // com.moloco.sdk.publisher.NativeAd
    public void setInteractionListener(@Nullable NativeAd.InteractionListener interactionListener) {
        this.f32736j = interactionListener;
    }
}
