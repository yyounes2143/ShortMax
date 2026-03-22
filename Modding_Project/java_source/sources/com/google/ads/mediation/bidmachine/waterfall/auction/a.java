package com.google.ads.mediation.bidmachine.waterfall.auction;

import com.google.ads.mediation.bidmachine.common.f;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lp.c;
/* loaded from: classes4.dex */
public final class a implements com.google.ads.mediation.bidmachine.common.auction.a {
    @Override // com.google.ads.mediation.bidmachine.common.auction.a
    public void a(Object mediationAd, c cVar, Function1 onSuccess, Function1 function1) {
        Double d10;
        List split$default;
        String str;
        Intrinsics.checkNotNullParameter(mediationAd, "mediationAd");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        if (cVar == null) {
            if (function1 != null) {
                fr.a h10 = fr.a.h("Auction result is null.");
                Intrinsics.checkNotNullExpressionValue(h10, "incorrectContent(...)");
                function1.invoke(h10);
                return;
            }
            return;
        }
        String deal = cVar.getDeal();
        if (deal != null && (split$default = StringsKt.split$default(deal, new String[]{":"}, false, 0, 6, null)) != null && (str = (String) CollectionsKt.t0(split$default, 1)) != null) {
            d10 = f.a((Object) str);
        } else {
            d10 = null;
        }
        if (d10 == null) {
            if (function1 != null) {
                fr.a h11 = fr.a.h("Deal price is null.");
                Intrinsics.checkNotNullExpressionValue(h11, "incorrectContent(...)");
                function1.invoke(h11);
            }
        } else if (cVar.getPrice() < d10.doubleValue()) {
            if (function1 != null) {
                fr.a i10 = fr.a.i("Ad price is lower than deal price.");
                Intrinsics.checkNotNullExpressionValue(i10, "internal(...)");
                function1.invoke(i10);
            }
        } else {
            onSuccess.invoke(mediationAd);
        }
    }
}
