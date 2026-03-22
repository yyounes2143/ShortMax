package com.moloco.sdk.publisher;

import android.content.Context;
import android.widget.FrameLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.init.MolocoInitParams;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
@Metadata
/* loaded from: classes6.dex */
public final class MolocoSamplesKt {
    private static final void MolocoCreateBanner(final FrameLayout frameLayout) {
        Moloco.createBanner$default(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.j
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit MolocoCreateBanner$lambda$2;
                MolocoCreateBanner$lambda$2 = MolocoSamplesKt.MolocoCreateBanner$lambda$2(frameLayout, (Banner) obj, (MolocoAdError.AdCreateError) obj2);
                return MolocoCreateBanner$lambda$2;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MolocoCreateBanner$lambda$2(FrameLayout frameLayout, Banner banner, MolocoAdError.AdCreateError adCreateError) {
        if (banner != null) {
            banner.load("bid_response", null);
            frameLayout.addView(banner);
            banner.destroy();
            frameLayout.removeView(banner);
        }
        return Unit.f60915a;
    }

    private static final void MolocoCreateBannerTablet(final FrameLayout frameLayout) {
        Moloco.createBannerTablet$default(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.k
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit MolocoCreateBannerTablet$lambda$3;
                MolocoCreateBannerTablet$lambda$3 = MolocoSamplesKt.MolocoCreateBannerTablet$lambda$3(frameLayout, (Banner) obj, (MolocoAdError.AdCreateError) obj2);
                return MolocoCreateBannerTablet$lambda$3;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MolocoCreateBannerTablet$lambda$3(FrameLayout frameLayout, Banner banner, MolocoAdError.AdCreateError adCreateError) {
        if (banner != null) {
            banner.load("bid_response", null);
            frameLayout.addView(banner);
            banner.destroy();
            frameLayout.removeView(banner);
        }
        return Unit.f60915a;
    }

    private static final void MolocoCreateInterstitialAd() {
        Moloco.createInterstitial$default(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.h
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit MolocoCreateInterstitialAd$lambda$6;
                MolocoCreateInterstitialAd$lambda$6 = MolocoSamplesKt.MolocoCreateInterstitialAd$lambda$6((InterstitialAd) obj, (MolocoAdError.AdCreateError) obj2);
                return MolocoCreateInterstitialAd$lambda$6;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MolocoCreateInterstitialAd$lambda$6(InterstitialAd interstitialAd, MolocoAdError.AdCreateError adCreateError) {
        if (interstitialAd != null) {
            interstitialAd.load("bid_response", null);
            interstitialAd.show(null);
            interstitialAd.destroy();
        }
        return Unit.f60915a;
    }

    private static final void MolocoCreateMREC(final FrameLayout frameLayout) {
        Moloco.createMREC$default(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.i
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit MolocoCreateMREC$lambda$4;
                MolocoCreateMREC$lambda$4 = MolocoSamplesKt.MolocoCreateMREC$lambda$4(frameLayout, (Banner) obj, (MolocoAdError.AdCreateError) obj2);
                return MolocoCreateMREC$lambda$4;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MolocoCreateMREC$lambda$4(FrameLayout frameLayout, Banner banner, MolocoAdError.AdCreateError adCreateError) {
        if (banner != null) {
            banner.load("bid_response", null);
            frameLayout.addView(banner);
            banner.destroy();
            frameLayout.removeView(banner);
        }
        return Unit.f60915a;
    }

    private static final void MolocoCreateNativeAd(String str) {
        Moloco.createNativeAd$default(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.g
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit MolocoCreateNativeAd$lambda$5;
                MolocoCreateNativeAd$lambda$5 = MolocoSamplesKt.MolocoCreateNativeAd$lambda$5((NativeAd) obj, (MolocoAdError.AdCreateError) obj2);
                return MolocoCreateNativeAd$lambda$5;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MolocoCreateNativeAd$lambda$5(NativeAd nativeAd, MolocoAdError.AdCreateError adCreateError) {
        if (nativeAd != null) {
            nativeAd.load("bid_response", null);
        }
        return Unit.f60915a;
    }

    private static final void MolocoCreateRewardedInterstitialAd() {
        Moloco.createRewardedInterstitial$default(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.f
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit MolocoCreateRewardedInterstitialAd$lambda$7;
                MolocoCreateRewardedInterstitialAd$lambda$7 = MolocoSamplesKt.MolocoCreateRewardedInterstitialAd$lambda$7((RewardedInterstitialAd) obj, (MolocoAdError.AdCreateError) obj2);
                return MolocoCreateRewardedInterstitialAd$lambda$7;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MolocoCreateRewardedInterstitialAd$lambda$7(RewardedInterstitialAd rewardedInterstitialAd, MolocoAdError.AdCreateError adCreateError) {
        if (rewardedInterstitialAd != null) {
            rewardedInterstitialAd.load("bid_response", null);
            rewardedInterstitialAd.show(null);
            rewardedInterstitialAd.destroy();
        }
        return Unit.f60915a;
    }

    private static final void MolocoInitializeSample(final Context context) {
        Moloco.initialize(new MolocoInitParams(context, "YOUR_APP_KEY", new MediationInfo("<YourMediationName>")), new MolocoInitializationListener() { // from class: com.moloco.sdk.publisher.m
            @Override // com.moloco.sdk.publisher.MolocoInitializationListener
            public final void onMolocoInitializationStatus(MolocoInitStatus molocoInitStatus) {
                MolocoSamplesKt.MolocoInitializeSample$lambda$1(context, molocoInitStatus);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void MolocoInitializeSample$lambda$1(Context context, MolocoInitStatus molocoInitStatus) {
        Intrinsics.checkNotNullParameter(molocoInitStatus, "molocoInitStatus");
        if (molocoInitStatus.getInitialization() == Initialization.SUCCESS) {
            Moloco.getBidToken(new MediationInfo("MY_MEDIATION"), context, new MolocoBidTokenListener() { // from class: com.moloco.sdk.publisher.l
                @Override // com.moloco.sdk.publisher.MolocoBidTokenListener
                public final void onBidTokenResult(String str, MolocoAdError.ErrorType errorType) {
                    Intrinsics.checkNotNullParameter(str, "bidToken");
                }
            });
        } else {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, MBridgeConstans.DYNAMIC_VIEW_WX_APP, molocoInitStatus.getDescription(), null, false, 12, null);
        }
    }

    private static final void MolocoIsInitializedSample() {
        Moloco.isInitialized();
    }
}
