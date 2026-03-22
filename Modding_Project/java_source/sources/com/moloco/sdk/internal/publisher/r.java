package com.moloco.sdk.internal.publisher;

import android.content.Context;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.RewardedInterstitialAd;
import com.moloco.sdk.publisher.RewardedInterstitialAdShowListener;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class r {

    /* loaded from: classes6.dex */
    public static final class a implements RewardedInterstitialAdShowListener {

        /* renamed from: a */
        public final String f32949a = "RewardedInterstitialAdShowListenerImpl";

        /* renamed from: b */
        public boolean f32950b;

        /* renamed from: c */
        public final /* synthetic */ Function0<Boolean> f32951c;

        /* renamed from: d */
        public final /* synthetic */ RewardedInterstitialAdShowListener f32952d;

        /* renamed from: e */
        public final /* synthetic */ boolean f32953e;

        public a(Function0<Boolean> function0, RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener, boolean z10) {
            this.f32951c = function0;
            this.f32952d = rewardedInterstitialAdShowListener;
            this.f32953e = z10;
        }

        public final void a(MolocoAd molocoAd) {
            if (this.f32950b) {
                MolocoLogger.debug$default(MolocoLogger.INSTANCE, this.f32949a, "issuing of reward is already handled", false, 4, null);
                return;
            }
            this.f32950b = true;
            if (Intrinsics.areEqual(this.f32951c.invoke(), Boolean.FALSE)) {
                MolocoLogger.debug$default(MolocoLogger.INSTANCE, this.f32949a, "issuing of reward...", false, 4, null);
                onUserRewarded(molocoAd);
                return;
            }
            MolocoLogger.debug$default(MolocoLogger.INSTANCE, this.f32949a, "reward can't be issued: ad was forcibly closed or ad was missing", false, 4, null);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdClicked(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            this.f32952d.onAdClicked(molocoAd);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdHidden(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            a(molocoAd);
            this.f32952d.onAdHidden(molocoAd);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdShowFailed(MolocoAdError molocoAdError) {
            Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
            this.f32952d.onAdShowFailed(molocoAdError);
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdShowSuccess(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            this.f32952d.onAdShowSuccess(molocoAd);
            if (this.f32953e) {
                onRewardedVideoStarted(molocoAd);
            }
        }

        @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
        public void onRewardedVideoCompleted(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            a(molocoAd);
            this.f32952d.onRewardedVideoCompleted(molocoAd);
        }

        @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
        public void onRewardedVideoStarted(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            this.f32952d.onRewardedVideoStarted(molocoAd);
        }

        @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
        public void onUserRewarded(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            this.f32952d.onUserRewarded(molocoAd);
        }
    }

    @NotNull
    public static final RewardedInterstitialAd a(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest, @NotNull n0<RewardedInterstitialAdShowListener> adDataHolder, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
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
        return new p(new u(context, appLifecycleTrackerService, customUserEventBuilderService, adUnitId, persistentHttpRequest, externalLinkHandler, new Function1() { // from class: com.moloco.sdk.internal.publisher.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r.e((com.moloco.sdk.internal.ortb.model.p) obj);
            }
        }, adDataHolder, AdFormatType.REWARDED, watermark, adCreateLoadTimeoutManager, metricsRecorder), adUnitId);
    }

    public static /* synthetic */ RewardedInterstitialAd b(Context context, com.moloco.sdk.internal.services.r rVar, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, String str, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 n0Var, com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l lVar, n0 n0Var2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, w wVar, com.moloco.sdk.acm.recorder.a aVar2, int i10, Object obj) {
        n0 n0Var3;
        if ((i10 & 64) != 0) {
            n0Var3 = new n0(null, null, null, null, null, 31, null);
        } else {
            n0Var3 = n0Var2;
        }
        return a(context, rVar, aVar, str, n0Var, lVar, n0Var3, g0Var, wVar, aVar2);
    }

    @NotNull
    public static final RewardedInterstitialAdShowListener c(@Nullable RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener, @NotNull Function0<com.moloco.sdk.internal.ortb.model.r> provideSdkEvents) {
        Intrinsics.checkNotNullParameter(provideSdkEvents, "provideSdkEvents");
        return new t(rewardedInterstitialAdShowListener, provideSdkEvents, com.moloco.sdk.internal.k0.b());
    }

    @NotNull
    public static final RewardedInterstitialAdShowListener d(@NotNull RewardedInterstitialAdShowListener listenerTracker, boolean z10, @NotNull Function0<Boolean> isAdForciblyClosed) {
        Intrinsics.checkNotNullParameter(listenerTracker, "listenerTracker");
        Intrinsics.checkNotNullParameter(isAdForciblyClosed, "isAdForciblyClosed");
        return new a(isAdForciblyClosed, listenerTracker, z10);
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r e(com.moloco.sdk.internal.ortb.model.p pVar) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r j10;
        if (pVar == null || (j10 = com.moloco.sdk.internal.h.j(pVar)) == null) {
            return com.moloco.sdk.internal.h.i();
        }
        return j10;
    }
}
