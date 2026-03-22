package com.moloco.sdk.internal.publisher;

import android.content.Context;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdShowListener;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.InterstitialAdShowListener;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class h {

    /* loaded from: classes6.dex */
    public static final class a implements InterstitialAdShowListener, AdShowListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdShowListener f32647a;

        public a(InterstitialAdShowListener interstitialAdShowListener) {
            this.f32647a = d0.a(interstitialAdShowListener);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdClicked(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            this.f32647a.onAdClicked(molocoAd);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdHidden(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            this.f32647a.onAdHidden(molocoAd);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdShowFailed(MolocoAdError molocoAdError) {
            Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
            this.f32647a.onAdShowFailed(molocoAdError);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdShowSuccess(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            this.f32647a.onAdShowSuccess(molocoAd);
        }
    }

    @NotNull
    public static final InterstitialAd a(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest, @NotNull n0<InterstitialAdShowListener> adDataHolder, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(adDataHolder, "adDataHolder");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return new f(new u(context, appLifecycleTrackerService, customUserEventBuilderService, adUnitId, persistentHttpRequest, externalLinkHandler, new Function1() { // from class: com.moloco.sdk.internal.publisher.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.d((com.moloco.sdk.internal.ortb.model.p) obj);
            }
        }, adDataHolder, AdFormatType.INTERSTITIAL, watermark, adCreateLoadTimeoutManager, metricsRecorder));
    }

    public static /* synthetic */ InterstitialAd b(Context context, com.moloco.sdk.internal.services.r rVar, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, String str, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 n0Var, com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l lVar, n0 n0Var2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, w wVar, com.moloco.sdk.acm.recorder.a aVar2, int i10, Object obj) {
        n0 n0Var3;
        if ((i10 & 64) != 0) {
            n0Var3 = new n0(null, null, null, null, null, 31, null);
        } else {
            n0Var3 = n0Var2;
        }
        return a(context, rVar, aVar, str, n0Var, lVar, n0Var3, g0Var, wVar, aVar2);
    }

    @NotNull
    public static final InterstitialAdShowListener c(@Nullable InterstitialAdShowListener interstitialAdShowListener) {
        return new a(interstitialAdShowListener);
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r d(com.moloco.sdk.internal.ortb.model.p pVar) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r j10;
        if (pVar == null || (j10 = com.moloco.sdk.internal.h.j(pVar)) == null) {
            return com.moloco.sdk.internal.h.i();
        }
        return j10;
    }
}
