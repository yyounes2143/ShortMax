package com.google.ads.mediation.bidmachine.prebid.request;

import android.os.Bundle;
import com.google.ads.mediation.bidmachine.prebid.BidMachinePrebidAdapter;
import com.google.android.gms.ads.AdRequest;
import io.bidmachine.BidMachineFetcher;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class a {
    public static void a(AdRequest.Builder builder, io.bidmachine.AdRequest adRequest) {
        builder.addNetworkExtrasBundle(BidMachinePrebidAdapter.class, c(adRequest));
    }

    public static AdRequest.Builder b(io.bidmachine.AdRequest adRequest) {
        AdRequest.Builder builder = new AdRequest.Builder();
        a(builder, adRequest);
        return builder;
    }

    private static Bundle c(io.bidmachine.AdRequest adRequest) {
        Bundle bundle = new Bundle();
        Map<String, String> fetch = BidMachineFetcher.fetch(adRequest);
        if (fetch != null) {
            for (Map.Entry<String, String> entry : fetch.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
        }
        return bundle;
    }

    public static AdRequest a(io.bidmachine.AdRequest adRequest) {
        return b(adRequest).build();
    }
}
