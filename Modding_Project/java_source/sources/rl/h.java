package rl;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
/* compiled from: ScarRewardedAdListener.java */
/* loaded from: classes7.dex */
public class h extends rl.b {

    /* renamed from: b  reason: collision with root package name */
    private final g f65896b;

    /* renamed from: c  reason: collision with root package name */
    private final com.unity3d.scar.adapter.common.h f65897c;

    /* renamed from: d  reason: collision with root package name */
    private final RewardedAdLoadCallback f65898d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final OnUserEarnedRewardListener f65899e = new b();

    /* renamed from: f  reason: collision with root package name */
    private final FullScreenContentCallback f65900f = new c();

    /* compiled from: ScarRewardedAdListener.java */
    /* loaded from: classes7.dex */
    class a extends RewardedAdLoadCallback {
        a() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            h.this.f65897c.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
            super.onAdLoaded((a) rewardedAd);
            h.this.f65897c.onAdLoaded();
            rewardedAd.setFullScreenContentCallback(h.this.f65900f);
            h.this.f65896b.d(rewardedAd);
            nl.b bVar = h.this.f65881a;
            if (bVar != null) {
                bVar.onAdLoaded();
            }
        }
    }

    /* compiled from: ScarRewardedAdListener.java */
    /* loaded from: classes7.dex */
    class b implements OnUserEarnedRewardListener {
        b() {
        }

        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
            h.this.f65897c.onUserEarnedReward();
        }
    }

    /* compiled from: ScarRewardedAdListener.java */
    /* loaded from: classes7.dex */
    class c extends FullScreenContentCallback {
        c() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdClicked() {
            super.onAdClicked();
            h.this.f65897c.onAdClicked();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            h.this.f65897c.onAdClosed();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            h.this.f65897c.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdImpression() {
            super.onAdImpression();
            h.this.f65897c.onAdImpression();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            h.this.f65897c.onAdOpened();
        }
    }

    public h(com.unity3d.scar.adapter.common.h hVar, g gVar) {
        this.f65897c = hVar;
        this.f65896b = gVar;
    }

    public RewardedAdLoadCallback e() {
        return this.f65898d;
    }

    public OnUserEarnedRewardListener f() {
        return this.f65899e;
    }
}
