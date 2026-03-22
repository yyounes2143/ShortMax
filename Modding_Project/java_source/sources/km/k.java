package km;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import hm.q;
import hm.r;
import hm.s;
import hm.u;
import io.bidmachine.AdsFormat;
import io.bidmachine.protobuf.Waterfall;
import km.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class k extends r {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private RewardedAd f60785k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class b extends RewardedAdLoadCallback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final k f60786a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final q f60787b;

        public b(@NonNull k kVar, @NonNull q qVar) {
            this.f60786a = kVar;
            this.f60787b = qVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(LoadAdError loadAdError) {
            this.f60787b.b(this.f60786a, o.b(fr.a.f51921q, loadAdError));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(RewardedAd rewardedAd) {
            hm.l e10 = o.e(rewardedAd);
            this.f60786a.C(e10);
            this.f60787b.a(this.f60786a, e10);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull final LoadAdError loadAdError) {
            this.f60786a.E(new Runnable() { // from class: km.m
                @Override // java.lang.Runnable
                public final void run() {
                    k.b.this.c(loadAdError);
                }
            });
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull final RewardedAd rewardedAd) {
            rewardedAd.setOnPaidEventListener(new c());
            this.f60786a.f60785k = rewardedAd;
            this.f60786a.E(new Runnable() { // from class: km.l
                @Override // java.lang.Runnable
                public final void run() {
                    k.b.this.d(rewardedAd);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c implements OnPaidEventListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final k f60788a;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(AdValue adValue) {
            this.f60788a.F(o.f(adValue));
        }

        @Override // com.google.android.gms.ads.OnPaidEventListener
        public void onPaidEvent(@NonNull final AdValue adValue) {
            this.f60788a.E(new Runnable() { // from class: km.n
                @Override // java.lang.Runnable
                public final void run() {
                    k.c.this.b(adValue);
                }
            });
        }

        private c(@NonNull k kVar) {
            this.f60788a = kVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(@NonNull s sVar, @NonNull u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar) {
        super(sVar, uVar, adsFormat, adUnit, kVar);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @UiThread
    protected void B(@NonNull Context context, @NonNull q qVar) {
        RewardedAd.load(context, getAdUnitId(), o.a(m()), (RewardedAdLoadCallback) new b(this, qVar));
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.x
    @UiThread
    protected void N(@NonNull Activity activity, @NonNull hm.o oVar) {
        RewardedAd rewardedAd = this.f60785k;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback(new f(oVar));
            this.f60785k.show(activity, new d());
            return;
        }
        oVar.onAdShowFailed(fr.a.i("Internal GAM rewarded object is null or not loaded"));
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @UiThread
    protected void k() {
        RewardedAd rewardedAd = this.f60785k;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback(null);
            this.f60785k.setOnPaidEventListener(null);
            this.f60785k = null;
        }
    }

    /* loaded from: classes7.dex */
    private static final class d implements OnUserEarnedRewardListener {
        private d() {
        }

        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
        }
    }
}
