package com.moloco.sdk.internal.publisher;

import android.content.Context;
import com.moloco.sdk.publisher.Banner;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C;
import gt.r1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class l {

    /* loaded from: classes6.dex */
    public /* synthetic */ class a extends FunctionReferenceImpl implements at.s<Context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a, com.moloco.sdk.internal.ortb.model.c, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, com.moloco.sdk.internal.a, com.moloco.sdk.internal.services.f0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r, C<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.q>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f32657a = new a();

        public a() {
            super(8, l.class, "createXenossAggregatedBanner", "createXenossAggregatedBanner(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/CustomUserEventBuilderService;Lcom/moloco/sdk/internal/ortb/model/Bid;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ExternalLinkHandler;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/Watermark;Lcom/moloco/sdk/internal/ViewLifecycleOwner;Lcom/moloco/sdk/internal/services/ClickthroughService;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/ButtonTracker;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/XenossBannerView;", 1);
        }

        @Override // at.s
        /* renamed from: b */
        public final C<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.q> invoke(Context p02, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a p12, com.moloco.sdk.internal.ortb.model.c p22, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 p32, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 p42, com.moloco.sdk.internal.a p52, com.moloco.sdk.internal.services.f0 p62, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r p72) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            Intrinsics.checkNotNullParameter(p12, "p1");
            Intrinsics.checkNotNullParameter(p22, "p2");
            Intrinsics.checkNotNullParameter(p32, "p3");
            Intrinsics.checkNotNullParameter(p42, "p4");
            Intrinsics.checkNotNullParameter(p52, "p5");
            Intrinsics.checkNotNullParameter(p62, "p6");
            Intrinsics.checkNotNullParameter(p72, "p7");
            return l.f(p02, p12, p22, p32, p42, p52, p62, p72);
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, c> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f32658a = new b();

        public b() {
            super(1, l.class, "createXenossAggregatedAdShowListener", "createXenossAggregatedAdShowListener(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/VastAdShowListener;)Lcom/moloco/sdk/internal/publisher/BannerKt$createXenossAggregatedAdShowListener$1;", 1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: b */
        public final c invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            return l.e(p02);
        }
    }

    /* loaded from: classes6.dex */
    public static final class c implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.q, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 f32659a;

        public c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var) {
            this.f32659a = e0Var;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a() {
            this.f32659a.a();
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalShowError) {
            Intrinsics.checkNotNullParameter(internalShowError, "internalShowError");
            this.f32659a.a(internalShowError);
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0
        public void a(boolean z10) {
            this.f32659a.a(z10);
        }
    }

    @NotNull
    public static final Banner b(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull String adUnitId, boolean z10, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.internal.a viewLifecycleOwnerSingleton, @NotNull com.moloco.sdk.internal.m bannerSize, @NotNull com.moloco.sdk.internal.services.f0 clickthroughService, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(viewLifecycleOwnerSingleton, "viewLifecycleOwnerSingleton");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return new m(context, appLifecycleTrackerService, customUserEventBuilderService, adUnitId, z10, externalLinkHandler, a.f32657a, b.f32658a, watermark, adCreateLoadTimeoutManager, viewLifecycleOwnerSingleton, bannerSize, clickthroughService, metricsRecorder);
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r d(com.moloco.sdk.internal.ortb.model.p pVar) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r d10;
        if (pVar == null || (d10 = com.moloco.sdk.internal.h.d(pVar)) == null) {
            return com.moloco.sdk.internal.h.c();
        }
        return d10;
    }

    public static final c e(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var) {
        return new c(e0Var);
    }

    public static final C<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.q> f(Context context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, com.moloco.sdk.internal.ortb.model.c cVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 n0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, com.moloco.sdk.internal.a aVar2, com.moloco.sdk.internal.services.f0 f0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r rVar) {
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.b(context, aVar, null, cVar, d(cVar.d().e()), n0Var, g0Var, aVar2, kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain().plus(r1.b(null, 1, null))), f0Var, rVar);
    }
}
