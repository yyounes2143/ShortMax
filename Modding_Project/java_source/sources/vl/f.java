package vl;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
/* compiled from: ScarInterstitialAdListener.java */
/* loaded from: classes7.dex */
public class f extends vl.b {

    /* renamed from: b  reason: collision with root package name */
    private final e f69009b;

    /* renamed from: c  reason: collision with root package name */
    private final com.unity3d.scar.adapter.common.g f69010c;

    /* renamed from: d  reason: collision with root package name */
    private final InterstitialAdLoadCallback f69011d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final FullScreenContentCallback f69012e = new b();

    /* compiled from: ScarInterstitialAdListener.java */
    /* loaded from: classes7.dex */
    class a extends InterstitialAdLoadCallback {
        a() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            f.this.f69010c.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull InterstitialAd interstitialAd) {
            super.onAdLoaded((a) interstitialAd);
            f.this.f69010c.onAdLoaded();
            interstitialAd.setFullScreenContentCallback(f.this.f69012e);
            f.this.f69009b.d(interstitialAd);
            nl.b bVar = f.this.f69000a;
            if (bVar != null) {
                bVar.onAdLoaded();
            }
        }
    }

    /* compiled from: ScarInterstitialAdListener.java */
    /* loaded from: classes7.dex */
    class b extends FullScreenContentCallback {
        b() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdClicked() {
            super.onAdClicked();
            f.this.f69010c.onAdClicked();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            f.this.f69010c.onAdClosed();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            f.this.f69010c.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdImpression() {
            super.onAdImpression();
            f.this.f69010c.onAdImpression();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            f.this.f69010c.onAdOpened();
        }
    }

    public f(com.unity3d.scar.adapter.common.g gVar, e eVar) {
        this.f69010c = gVar;
        this.f69009b = eVar;
    }

    public InterstitialAdLoadCallback e() {
        return this.f69011d;
    }
}
