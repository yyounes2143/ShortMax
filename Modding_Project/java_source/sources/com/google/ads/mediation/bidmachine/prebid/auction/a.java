package com.google.ads.mediation.bidmachine.prebid.auction;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import lp.c;
/* loaded from: classes4.dex */
public final class a implements com.google.ads.mediation.bidmachine.common.auction.a {
    @Override // com.google.ads.mediation.bidmachine.common.auction.a
    public void a(Object mediationAd, c cVar, Function1 onSuccess, Function1 function1) {
        Intrinsics.checkNotNullParameter(mediationAd, "mediationAd");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        onSuccess.invoke(mediationAd);
    }
}
