package com.google.ads.mediation.bidmachine.prebid;

import android.content.Context;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import io.bidmachine.AdsType;
import io.bidmachine.nativead.NativeRequest;
/* loaded from: classes4.dex */
final class d extends a {

    /* renamed from: e  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.delegate.e f16973e;

    public d(MediationAdLoadCallback mediationAdLoadCallback) {
        super("AdMobBMNativePrebidAd", AdsType.Native, mediationAdLoadCallback);
        this.f16973e = new com.google.ads.mediation.bidmachine.common.delegate.e("AdMobBMNativePrebidAd", a(), new com.google.ads.mediation.bidmachine.prebid.auction.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.a
    public void a(Context context, NativeRequest nativeRequest) {
        this.f16973e.a(context, nativeRequest);
    }
}
