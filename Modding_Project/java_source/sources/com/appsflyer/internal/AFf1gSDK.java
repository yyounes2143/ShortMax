package com.appsflyer.internal;

import com.appsflyer.AppsFlyerConsent;
import com.appsflyer.AppsFlyerProperties;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes2.dex */
public final class AFf1gSDK implements AFf1fSDK {
    @NotNull
    private final AFc1eSDK getMediationNetwork;
    @NotNull
    private final AppsFlyerProperties getMonetizationNetwork;
    @NotNull
    private final AFg1xSDK getRevenue;

    public AFf1gSDK(@NotNull AFg1xSDK aFg1xSDK, @NotNull AFc1eSDK aFc1eSDK, @NotNull AppsFlyerProperties appsFlyerProperties) {
        Intrinsics.checkNotNullParameter(aFg1xSDK, "");
        Intrinsics.checkNotNullParameter(aFc1eSDK, "");
        Intrinsics.checkNotNullParameter(appsFlyerProperties, "");
        this.getRevenue = aFg1xSDK;
        this.getMediationNetwork = aFc1eSDK;
        this.getMonetizationNetwork = appsFlyerProperties;
    }

    @Override // com.appsflyer.internal.AFf1fSDK
    public final void getCurrencyIso4217Code(@NotNull Map<String, Object> map, @NotNull AFe1pSDK aFe1pSDK) {
        boolean z10;
        Intrinsics.checkNotNullParameter(map, "");
        Intrinsics.checkNotNullParameter(aFe1pSDK, "");
        AFf1bSDK mediationNetwork = this.getRevenue.getMediationNetwork();
        AppsFlyerConsent appsFlyerConsent = this.getMediationNetwork.component1;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (appsFlyerConsent != null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Boolean isUserSubjectToGDPR = appsFlyerConsent.isUserSubjectToGDPR();
            if (isUserSubjectToGDPR != null) {
                linkedHashMap2.put("gdpr_applies", isUserSubjectToGDPR);
            }
            Boolean hasConsentForDataUsage = appsFlyerConsent.getHasConsentForDataUsage();
            if (hasConsentForDataUsage != null) {
                linkedHashMap2.put("ad_user_data_enabled", hasConsentForDataUsage);
            }
            Boolean hasConsentForAdsPersonalization = appsFlyerConsent.getHasConsentForAdsPersonalization();
            if (hasConsentForAdsPersonalization != null) {
                linkedHashMap2.put("ad_personalization_enabled", hasConsentForAdsPersonalization);
            }
            Boolean hasConsentForAdStorage = appsFlyerConsent.getHasConsentForAdStorage();
            if (hasConsentForAdStorage != null) {
                linkedHashMap2.put("ad_storage_enabled", hasConsentForAdStorage);
            }
            linkedHashMap.put("manual", linkedHashMap2);
        }
        if (mediationNetwork != null) {
            if (appsFlyerConsent != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put("policy_version", Integer.valueOf(mediationNetwork.getCurrencyIso4217Code));
            linkedHashMap3.put("cmp_sdk_id", Integer.valueOf(mediationNetwork.AFAdRevenueData));
            linkedHashMap3.put("cmp_sdk_version", Integer.valueOf(mediationNetwork.getRevenue));
            if (z10) {
                linkedHashMap3.put("gdpr_applies", -1);
                linkedHashMap3.put("tcstring", "");
            } else {
                linkedHashMap3.put("gdpr_applies", Integer.valueOf(mediationNetwork.getMediationNetwork));
                linkedHashMap3.put("tcstring", mediationNetwork.getMonetizationNetwork);
            }
            linkedHashMap.put("tcf", linkedHashMap3);
        }
        if (!linkedHashMap.isEmpty()) {
            map.put("consent_data", linkedHashMap);
        }
        if (aFe1pSDK == AFe1pSDK.CONVERSION && this.getMonetizationNetwork.getString(AppsFlyerProperties.ENABLE_TCF_DATA_COLLECTION) != null) {
            Map<String, Object> mediationNetwork2 = AFa1ySDK.getMediationNetwork(map);
            Intrinsics.checkNotNullExpressionValue(mediationNetwork2, "");
            mediationNetwork2.put("api", p0.f(ms.k.a(AppsFlyerProperties.ENABLE_TCF_DATA_COLLECTION, this.getMonetizationNetwork.getString(AppsFlyerProperties.ENABLE_TCF_DATA_COLLECTION))));
        }
    }
}
