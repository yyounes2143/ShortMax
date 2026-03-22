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
final class InterstitialAdActivitySample extends Activity {
    private InterstitialAd interstitialAd;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(InterstitialAdActivitySample interstitialAdActivitySample, InterstitialAd interstitialAd, MolocoAdError.AdCreateError adCreateError) {
        if (interstitialAd == null) {
            interstitialAdActivitySample.finish();
            return Unit.f60915a;
        }
        interstitialAdActivitySample.interstitialAd = interstitialAd;
        interstitialAd.load("bid response", new AdLoad.Listener() { // from class: com.moloco.sdk.publisher.InterstitialAdActivitySample$onCreate$1$1
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
        interstitialAd.isLoaded();
        interstitialAd.show(new InterstitialAdShowListener() { // from class: com.moloco.sdk.publisher.InterstitialAdActivitySample$onCreate$1$2
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
        });
        interstitialAd.load("an_another_bid_response", null);
        return Unit.f60915a;
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle, @Nullable PersistableBundle persistableBundle) {
        super.onCreate(bundle, persistableBundle);
        Moloco.createInterstitial$default(new MediationInfo("MY_MEDIATION"), "MOLOCO_ADUNIT_ID", null, new Function2() { // from class: com.moloco.sdk.publisher.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit onCreate$lambda$0;
                onCreate$lambda$0 = InterstitialAdActivitySample.onCreate$lambda$0(InterstitialAdActivitySample.this, (InterstitialAd) obj, (MolocoAdError.AdCreateError) obj2);
                return onCreate$lambda$0;
            }
        }, 4, null);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd == null) {
            Intrinsics.throwUninitializedPropertyAccessException("interstitialAd");
            interstitialAd = null;
        }
        interstitialAd.destroy();
    }
}
