package com.moloco.sdk.publisher;

import android.app.Activity;
import android.os.Bundle;
import android.os.PersistableBundle;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.MolocoAdError;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes6.dex */
final class RewardedInterstitialAdSample extends Activity {
    private RewardedInterstitialAd rewardedInterstitialAd;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(RewardedInterstitialAdSample rewardedInterstitialAdSample, RewardedInterstitialAd rewardedInterstitialAd, MolocoAdError.AdCreateError adCreateError) {
        if (rewardedInterstitialAd == null) {
            rewardedInterstitialAdSample.finish();
            return Unit.f60915a;
        }
        rewardedInterstitialAdSample.rewardedInterstitialAd = rewardedInterstitialAd;
        rewardedInterstitialAd.load("bid response", new AdLoad.Listener() { // from class: com.moloco.sdk.publisher.RewardedInterstitialAdSample$onCreate$1$1
            @Override // com.moloco.sdk.publisher.AdLoad.Listener
            public void onAdLoadFailed(MolocoAdError molocoAdError) {
                Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }

            @Override // com.moloco.sdk.publisher.AdLoad.Listener
            public void onAdLoadSuccess(MolocoAd molocoAd) {
                Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }
        });
        rewardedInterstitialAd.isLoaded();
        rewardedInterstitialAd.show(new RewardedInterstitialAdShowListener() { // from class: com.moloco.sdk.publisher.RewardedInterstitialAdSample$onCreate$1$2
            @Override // com.moloco.sdk.publisher.AdShowListener
            public void onAdClicked(MolocoAd molocoAd) {
                Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }

            @Override // com.moloco.sdk.publisher.AdShowListener
            public void onAdHidden(MolocoAd molocoAd) {
                Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }

            @Override // com.moloco.sdk.publisher.AdShowListener
            public void onAdShowFailed(MolocoAdError molocoAdError) {
                Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }

            @Override // com.moloco.sdk.publisher.AdShowListener
            public void onAdShowSuccess(MolocoAd molocoAd) {
                Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }

            @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
            public void onRewardedVideoCompleted(MolocoAd molocoAd) {
                Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }

            @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
            public void onRewardedVideoStarted(MolocoAd molocoAd) {
                Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }

            @Override // com.moloco.sdk.publisher.RewardedInterstitialAdShowListener
            public void onUserRewarded(MolocoAd molocoAd) {
                Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
                throw new NotImplementedError("An operation is not implemented: Not yet implemented");
            }
        });
        rewardedInterstitialAd.load("an_another_bid_response", null);
        return Unit.f60915a;
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle, @Nullable PersistableBundle persistableBundle) {
        super.onCreate(bundle, persistableBundle);
        Moloco.createRewardedInterstitial(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.n
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit onCreate$lambda$0;
                onCreate$lambda$0 = RewardedInterstitialAdSample.onCreate$lambda$0(RewardedInterstitialAdSample.this, (RewardedInterstitialAd) obj, (MolocoAdError.AdCreateError) obj2);
                return onCreate$lambda$0;
            }
        });
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        RewardedInterstitialAd rewardedInterstitialAd = this.rewardedInterstitialAd;
        if (rewardedInterstitialAd == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rewardedInterstitialAd");
            rewardedInterstitialAd = null;
        }
        rewardedInterstitialAd.destroy();
    }
}
