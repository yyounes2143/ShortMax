package com.google.ads.mediation.bidmachine.prebid;

import android.content.Context;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import io.bidmachine.AdsType;
/* loaded from: classes4.dex */
final class e extends a implements MediationRewardedAd {

    /* renamed from: e  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.delegate.f f16974e;

    public e(MediationAdLoadCallback mediationAdLoadCallback) {
        super("AdMobBMRewardedPrebidAd", AdsType.Rewarded, mediationAdLoadCallback);
        this.f16974e = new com.google.ads.mediation.bidmachine.common.delegate.f("AdMobBMRewardedPrebidAd", a(), new com.google.ads.mediation.bidmachine.prebid.auction.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.a
    public void a(Context context, vq.c cVar) {
        this.f16974e.a(context, cVar);
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        this.f16974e.showAd(context);
    }
}
