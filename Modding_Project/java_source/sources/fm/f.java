package fm;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.i0;
import io.bidmachine.ads.networks.gam.j;
import io.bidmachine.ads.networks.gam.l0;
import io.bidmachine.ads.networks.gam.n0;
import io.bidmachine.ads.networks.gam.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class f extends l0 {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private RewardedAd f51825h;

    /* loaded from: classes7.dex */
    private static final class b extends RewardedAdLoadCallback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final f f51826a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final n0 f51827b;

        public b(@NonNull f fVar, @NonNull n0 n0Var) {
            this.f51826a = fVar;
            this.f51827b = n0Var;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            this.f51827b.b(this.f51826a, new fr.a(fr.a.f51921q, loadAdError.getCode(), loadAdError.getMessage()));
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
            this.f51826a.f51825h = rewardedAd;
            this.f51826a.C();
            this.f51827b.a(this.f51826a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull j jVar, @NonNull AdsFormat adsFormat, @NonNull t tVar) {
        super(jVar, adsFormat, tVar);
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    @UiThread
    protected void B(@NonNull Context context, @NonNull n0 n0Var) {
        RewardedAd.load(context, l(), fm.b.a(n(), o()), (RewardedAdLoadCallback) new b(this, n0Var));
    }

    @Override // io.bidmachine.ads.networks.gam.h0
    @UiThread
    protected void K(@NonNull Activity activity, @NonNull i0 i0Var) {
        RewardedAd rewardedAd = this.f51825h;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback(new fm.c(i0Var));
            this.f51825h.show(activity, new c());
            return;
        }
        i0Var.onAdShowFailed(fr.a.i("InternalGAM rewarded object is null or not loaded"));
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    @UiThread
    protected void j() {
        RewardedAd rewardedAd = this.f51825h;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback(null);
            this.f51825h = null;
        }
    }

    /* loaded from: classes7.dex */
    private static final class c implements OnUserEarnedRewardListener {
        private c() {
        }

        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
        }
    }
}
