package com.google.ads.mediation.bidmachine.prebid;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import io.bidmachine.AdsType;
/* loaded from: classes4.dex */
final class b extends a implements MediationBannerAd {

    /* renamed from: e  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.delegate.b f16971e;

    public b(MediationAdLoadCallback mediationAdLoadCallback) {
        super("AdMobBMBannerPrebidAd", AdsType.Banner, mediationAdLoadCallback);
        this.f16971e = new com.google.ads.mediation.bidmachine.common.delegate.b("AdMobBMBannerPrebidAd", a(), new com.google.ads.mediation.bidmachine.prebid.auction.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.a
    public void a(Context context, nm.b bVar) {
        this.f16971e.a(context, bVar);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.f16971e.getView();
    }
}
