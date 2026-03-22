package com.moloco.sdk.internal.publisher;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.h0;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdShowListener;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import java.util.Locale;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class z implements t0 {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f33050j = new a(null);

    /* renamed from: k  reason: collision with root package name */
    public static final int f33051k = 8;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final AdShowListener f33052a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.r f33053b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f33054c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Function0<com.moloco.sdk.internal.ortb.model.r> f33055d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final Function0<e0> f33056e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final com.moloco.sdk.internal.h0 f33057f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.internal.i f33058g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final AdFormatType f33059h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f33060i;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.InternalAdShowListenerImpl$onAdShowSuccess$2$1", f = "InternalAdShowListener.kt", l = {101}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33061h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f33063j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ e0 f33064k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10, e0 e0Var, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f33063j = j10;
            this.f33064k = e0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f33063j, this.f33064k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33061h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar = z.this.f33054c;
                long j10 = this.f33063j;
                a.AbstractC0597a.e eVar = a.AbstractC0597a.e.f36616a;
                String a10 = this.f33064k.a();
                this.f33061h = 1;
                obj = aVar.a(j10, eVar, a10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            z.this.f33058g.a((String) obj);
            return Unit.f60915a;
        }
    }

    public z(@Nullable AdShowListener adShowListener, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull Function0<com.moloco.sdk.internal.ortb.model.r> provideSdkEvents, @NotNull Function0<e0> provideBUrlData, @NotNull com.moloco.sdk.internal.h0 sdkEventUrlTracker, @NotNull com.moloco.sdk.internal.i bUrlTracker, @NotNull AdFormatType adType, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(provideSdkEvents, "provideSdkEvents");
        Intrinsics.checkNotNullParameter(provideBUrlData, "provideBUrlData");
        Intrinsics.checkNotNullParameter(sdkEventUrlTracker, "sdkEventUrlTracker");
        Intrinsics.checkNotNullParameter(bUrlTracker, "bUrlTracker");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f33052a = adShowListener;
        this.f33053b = appLifecycleTrackerService;
        this.f33054c = customUserEventBuilderService;
        this.f33055d = provideSdkEvents;
        this.f33056e = provideBUrlData;
        this.f33057f = sdkEventUrlTracker;
        this.f33058g = bUrlTracker;
        this.f33059h = adType;
        this.f33060i = metricsRecorder;
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void a(@NotNull com.moloco.sdk.internal.c0 internalError) {
        String g10;
        Intrinsics.checkNotNullParameter(internalError, "internalError");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "InternalAdShowListenerImpl", "onAdShowFailed: " + internalError, false, 4, null);
        com.moloco.sdk.internal.ortb.model.r invoke = this.f33055d.invoke();
        if (invoke != null && (g10 = invoke.g()) != null) {
            this.f33057f.a(g10, System.currentTimeMillis(), internalError);
        }
        com.moloco.sdk.acm.recorder.a aVar = this.f33060i;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.B.c());
        String c10 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase = this.f33059h.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        aVar.b(bVar.e(c10, lowerCase).e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), String.valueOf(internalError.a().getErrorType())));
        AdShowListener adShowListener = this.f33052a;
        if (adShowListener != null) {
            adShowListener.onAdShowFailed(internalError.a());
        }
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdClicked(@NotNull MolocoAd molocoAd) {
        String a10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "InternalAdShowListenerImpl", "onAdClicked: " + molocoAd, false, 4, null);
        this.f33053b.b();
        com.moloco.sdk.internal.ortb.model.r invoke = this.f33055d.invoke();
        if (invoke != null && (a10 = invoke.a()) != null) {
            h0.a.a(this.f33057f, a10, System.currentTimeMillis(), null, 4, null);
        }
        com.moloco.sdk.acm.recorder.a aVar = this.f33060i;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.C.c());
        String c10 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase = this.f33059h.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        aVar.b(bVar.e(c10, lowerCase));
        AdShowListener adShowListener = this.f33052a;
        if (adShowListener != null) {
            adShowListener.onAdClicked(molocoAd);
        }
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdHidden(@NotNull MolocoAd molocoAd) {
        String c10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "InternalAdShowListenerImpl", "onAdHidden: " + molocoAd, false, 4, null);
        com.moloco.sdk.internal.ortb.model.r invoke = this.f33055d.invoke();
        if (invoke != null && (c10 = invoke.c()) != null) {
            h0.a.a(this.f33057f, c10, System.currentTimeMillis(), null, 4, null);
        }
        AdShowListener adShowListener = this.f33052a;
        if (adShowListener != null) {
            adShowListener.onAdHidden(molocoAd);
        }
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdShowSuccess(@NotNull MolocoAd molocoAd) {
        String h10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "InternalAdShowListenerImpl", "onAdShowSuccess: " + molocoAd, false, 4, null);
        com.moloco.sdk.internal.ortb.model.r invoke = this.f33055d.invoke();
        if (invoke != null && (h10 = invoke.h()) != null) {
            h0.a.a(this.f33057f, h10, System.currentTimeMillis(), null, 4, null);
        }
        e0 invoke2 = this.f33056e.invoke();
        if (invoke2 != null) {
            gt.g.d(com.moloco.sdk.internal.scheduling.e.f33070a.a(), null, null, new b(System.currentTimeMillis(), invoke2, null), 3, null);
        }
        com.moloco.sdk.acm.recorder.a aVar = this.f33060i;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.A.c());
        String c10 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase = this.f33059h.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        aVar.b(bVar.e(c10, lowerCase));
        AdShowListener adShowListener = this.f33052a;
        if (adShowListener != null) {
            adShowListener.onAdShowSuccess(molocoAd);
        }
    }
}
