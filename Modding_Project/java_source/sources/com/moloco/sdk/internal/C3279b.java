package com.moloco.sdk.internal;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.publisher.l0;
import com.moloco.sdk.publisher.Banner;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.NativeAd;
import com.moloco.sdk.publisher.RewardedInterstitialAd;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* renamed from: com.moloco.sdk.internal.b  reason: case insensitive filesystem */
/* loaded from: classes6.dex */
public final class C3279b implements e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Init$SDKInitResponse f32013a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f32014b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.f0 f32015c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final ms.i f32016d;

    /* renamed from: com.moloco.sdk.internal.b$a */
    /* loaded from: classes6.dex */
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ n0 f32018b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Context f32019c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(n0 n0Var, Context context) {
            super(1, Intrinsics.Kotlin.class, "createVastController", "createNativeAd$createVastController(Lcom/moloco/sdk/internal/AdFactoryImpl;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ExternalLinkHandler;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/Ad;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/AdController;", 0);
            this.f32018b = n0Var;
            this.f32019c = context;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: b */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            return C3279b.j(C3279b.this, this.f32018b, this.f32019c, p02);
        }
    }

    public C3279b(@NotNull Init$SDKInitResponse initResponse, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull com.moloco.sdk.internal.services.f0 clickthroughService) {
        Intrinsics.checkNotNullParameter(initResponse, "initResponse");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        this.f32013a = initResponse;
        this.f32014b = customUserEventBuilderService;
        this.f32015c = clickthroughService;
        this.f32016d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(C3279b.i(C3279b.this));
            }
        });
    }

    public static final boolean i(C3279b c3279b) {
        return c3279b.f32013a.getVerifyBannerVisible();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a j(C3279b c3279b, n0 n0Var, Context context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar) {
        return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.b(aVar, n0Var, context, c3279b.f32014b, true, Boolean.FALSE, 0, 0, 0, false, false);
    }

    @Override // com.moloco.sdk.internal.e
    @NotNull
    public Banner a(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 viewVisibilityTracker, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.internal.publisher.w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.internal.a viewLifecycleOwnerSingleton, @NotNull m bannerSize, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(viewLifecycleOwnerSingleton, "viewLifecycleOwnerSingleton");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return com.moloco.sdk.internal.publisher.l.b(context, appLifecycleTrackerService, this.f32014b, adUnitId, h(), externalLinkHandler, watermark, adCreateLoadTimeoutManager, viewLifecycleOwnerSingleton, bannerSize, this.f32015c, metricsRecorder);
    }

    @Override // com.moloco.sdk.internal.e
    @NotNull
    public Banner b(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 viewVisibilityTracker, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.internal.publisher.w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.internal.a viewLifecycleOwnerSingleton, @NotNull m bannerSize, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(viewLifecycleOwnerSingleton, "viewLifecycleOwnerSingleton");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return com.moloco.sdk.internal.publisher.l.b(context, appLifecycleTrackerService, this.f32014b, adUnitId, h(), externalLinkHandler, watermark, adCreateLoadTimeoutManager, viewLifecycleOwnerSingleton, bannerSize, this.f32015c, metricsRecorder);
    }

    @Override // com.moloco.sdk.internal.e
    @NotNull
    public InterstitialAd c(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 viewVisibilityTracker, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.internal.publisher.w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return com.moloco.sdk.internal.publisher.h.b(context, appLifecycleTrackerService, this.f32014b, adUnitId, externalLinkHandler, persistentHttpRequest, null, watermark, adCreateLoadTimeoutManager, metricsRecorder, 64, null);
    }

    @Override // com.moloco.sdk.internal.e
    @NotNull
    public Banner d(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 viewVisibilityTracker, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.internal.publisher.w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.internal.a viewLifecycleOwnerSingleton, @NotNull m bannerSize, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(viewLifecycleOwnerSingleton, "viewLifecycleOwnerSingleton");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return com.moloco.sdk.internal.publisher.l.b(context, appLifecycleTrackerService, this.f32014b, adUnitId, h(), externalLinkHandler, watermark, adCreateLoadTimeoutManager, viewLifecycleOwnerSingleton, bannerSize, this.f32015c, metricsRecorder);
    }

    @Override // com.moloco.sdk.internal.e
    @NotNull
    public RewardedInterstitialAd e(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 viewVisibilityTracker, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.internal.publisher.w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return com.moloco.sdk.internal.publisher.r.b(context, appLifecycleTrackerService, this.f32014b, adUnitId, externalLinkHandler, persistentHttpRequest, null, watermark, adCreateLoadTimeoutManager, metricsRecorder, 64, null);
    }

    @Override // com.moloco.sdk.internal.e
    @NotNull
    public NativeAd f(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.internal.services.b0 audioService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 viewVisibilityTracker, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest, @NotNull com.moloco.sdk.internal.a viewLifecycleOwnerSingleton, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.internal.publisher.w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.internal.services.j timeProvider, @NotNull com.moloco.sdk.internal.services.l webViewAvailabilityChecker, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(audioService, "audioService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(viewLifecycleOwnerSingleton, "viewLifecycleOwnerSingleton");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(webViewAvailabilityChecker, "webViewAvailabilityChecker");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return new com.moloco.sdk.internal.publisher.nativead.b(adUnitId, new com.moloco.sdk.internal.publisher.nativead.c(context, adUnitId, new com.moloco.sdk.internal.publisher.o(com.moloco.sdk.internal.ortb.d.a(), l0.a()), new com.moloco.sdk.internal.publisher.nativead.parser.a(), adCreateLoadTimeoutManager, metricsRecorder, timeProvider, webViewAvailabilityChecker), new com.moloco.sdk.internal.publisher.nativead.a(context, viewVisibilityTracker, viewLifecycleOwnerSingleton, watermark, new a(externalLinkHandler, context)), appLifecycleTrackerService, this.f32014b, externalLinkHandler, persistentHttpRequest, adCreateLoadTimeoutManager, metricsRecorder);
    }

    public final boolean h() {
        return ((Boolean) this.f32016d.getValue()).booleanValue();
    }
}
