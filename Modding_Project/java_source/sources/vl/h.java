package vl;

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
public class h extends vl.b {

    /* renamed from: b  reason: collision with root package name */
    private final g f69015b;

    /* renamed from: c  reason: collision with root package name */
    private final com.unity3d.scar.adapter.common.h f69016c;

    /* renamed from: d  reason: collision with root package name */
    private final RewardedAdLoadCallback f69017d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final OnUserEarnedRewardListener f69018e = new b();

    /* renamed from: f  reason: collision with root package name */
    private final FullScreenContentCallback f69019f = new c();

    /* compiled from: ScarRewardedAdListener.java */
    /* loaded from: classes7.dex */
    class a extends RewardedAdLoadCallback {
        a() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            h.this.f69016c.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
            super.onAdLoaded((a) rewardedAd);
            h.this.f69016c.onAdLoaded();
            rewardedAd.setFullScreenContentCallback(h.this.f69019f);
            h.this.f69015b.d(rewardedAd);
            nl.b bVar = h.this.f69000a;
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
            h.this.f69016c.onUserEarnedReward();
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
            h.this.f69016c.onAdClicked();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            h.this.f69016c.onAdClosed();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            h.this.f69016c.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdImpression() {
            super.onAdImpression();
            h.this.f69016c.onAdImpression();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            h.this.f69016c.onAdOpened();
        }
    }

    public h(com.unity3d.scar.adapter.common.h hVar, g gVar) {
        this.f69016c = hVar;
        this.f69015b = gVar;
    }

    public RewardedAdLoadCallback e() {
        return this.f69017d;
    }

    public OnUserEarnedRewardListener f() {
        return this.f69018e;
    }
}
