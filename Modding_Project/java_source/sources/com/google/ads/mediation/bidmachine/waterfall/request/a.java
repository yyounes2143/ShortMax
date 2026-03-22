package com.google.ads.mediation.bidmachine.waterfall.request;

import android.os.Bundle;
import com.google.ads.mediation.bidmachine.BidMachineUtils;
import com.google.ads.mediation.bidmachine.common.f;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import io.bidmachine.BidMachineFetcher;
import io.bidmachine.CustomParams;
import io.bidmachine.PriceFloorParams;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.e f16992a = new com.google.ads.mediation.bidmachine.common.e();

    private final PriceFloorParams b(Bundle bundle) {
        PriceFloorParams priceFloorParams = new PriceFloorParams();
        String string = BidMachineUtils.getString(bundle, BidMachineFetcher.KEY_PRICE);
        if (string != null && !StringsKt.t0(string)) {
            try {
                Double a10 = f.a((Object) string);
                if (a10 != null) {
                    double doubleValue = a10.doubleValue();
                    priceFloorParams.m4923addPriceFloor(this.f16992a.a(doubleValue), doubleValue);
                }
            } catch (Exception unused) {
            }
        }
        return priceFloorParams;
    }

    public final lp.f a(lp.f adRequestBuilder, Bundle extras) {
        Intrinsics.checkNotNullParameter(adRequestBuilder, "adRequestBuilder");
        Intrinsics.checkNotNullParameter(extras, "extras");
        adRequestBuilder.setCustomParams(a());
        adRequestBuilder.setPriceFloorParams(b(extras));
        adRequestBuilder.setPlacementId(a(extras));
        return adRequestBuilder;
    }

    public abstract void a(MediationAdConfiguration mediationAdConfiguration, Bundle bundle, com.google.ads.mediation.bidmachine.common.b bVar);

    private final CustomParams a() {
        CustomParams customParams = new CustomParams();
        customParams.m4919addParam("mediation_mode", "waterfall_admob");
        return customParams;
    }

    public final String a(Bundle extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        return BidMachineUtils.getString(extras, "placement_id");
    }
}
