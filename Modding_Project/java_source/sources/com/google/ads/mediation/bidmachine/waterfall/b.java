package com.google.ads.mediation.bidmachine.waterfall;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import io.bidmachine.AdsType;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public abstract class b extends com.google.ads.mediation.bidmachine.common.a {

    /* renamed from: e  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.waterfall.request.a f16982e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String tag, AdsType adsType, MediationAdLoadCallback adLoadCallback, com.google.ads.mediation.bidmachine.waterfall.request.a adRequestFactory) {
        super(tag, adsType, adLoadCallback);
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(adsType, "adsType");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        Intrinsics.checkNotNullParameter(adRequestFactory, "adRequestFactory");
        this.f16982e = adRequestFactory;
    }

    @Override // com.google.ads.mediation.bidmachine.common.a
    protected void a(AdsType adsType, MediationAdConfiguration adConfiguration, com.google.ads.mediation.bidmachine.common.b listener) {
        Intrinsics.checkNotNullParameter(adsType, "adsType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Bundle serverParameters = adConfiguration.getServerParameters();
        Intrinsics.checkNotNullExpressionValue(serverParameters, "getServerParameters(...)");
        this.f16982e.a(adConfiguration, com.google.ads.mediation.bidmachine.common.c.a(com.google.ads.mediation.bidmachine.common.c.a(serverParameters), adConfiguration.getMediationExtras()), listener);
    }
}
