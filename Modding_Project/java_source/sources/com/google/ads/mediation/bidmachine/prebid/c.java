package com.google.ads.mediation.bidmachine.prebid;

import android.content.Context;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import io.bidmachine.AdsType;
/* loaded from: classes4.dex */
final class c extends a implements MediationInterstitialAd {

    /* renamed from: e  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.delegate.d f16972e;

    public c(MediationAdLoadCallback mediationAdLoadCallback) {
        super("AdMobBMInterstitialPrebidAd", AdsType.Interstitial, mediationAdLoadCallback);
        this.f16972e = new com.google.ads.mediation.bidmachine.common.delegate.d("AdMobBMInterstitialPrebidAd", a(), new com.google.ads.mediation.bidmachine.prebid.auction.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.a
    public void a(Context context, xm.c cVar) {
        this.f16972e.a(context, cVar);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        this.f16972e.showAd(context);
    }
}
