package com.google.ads.mediation.inmobi;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MobileAds;
import com.inmobi.compliance.InMobiPrivacyCompliance;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class InMobiExtrasBuilder {
    public static final String COPPA = "coppa";
    public static final String THIRD_PARTY_KEY = "tp";
    public static final String THIRD_PARTY_VERSION = "tp-ver";

    @NonNull
    public static InMobiExtras build(@NonNull Context context, @Nullable Bundle bundle, @NonNull String str) {
        HashMap hashMap = new HashMap();
        if (bundle != null && bundle.keySet() != null) {
            for (String str2 : bundle.keySet()) {
                if (!str2.contains(InMobiNetworkKeys.IAB_US_PRIVACY_STRING)) {
                    hashMap.put(str2, bundle.getString(str2));
                }
            }
        }
        String string = context.getSharedPreferences("NonNullPackage", 0).getString(InMobiNetworkKeys.IAB_US_PRIVACY_STRING, null);
        if (string != null) {
            InMobiPrivacyCompliance.setUSPrivacyString(string);
        }
        hashMap.put("tp", str);
        hashMap.put("tp-ver", MobileAds.getVersion().toString());
        if (MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment() == 1) {
            hashMap.put("coppa", "1");
        } else {
            hashMap.put("coppa", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        return new InMobiExtras(hashMap, "");
    }
}
