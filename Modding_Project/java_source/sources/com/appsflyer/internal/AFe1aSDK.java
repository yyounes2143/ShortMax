package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes2.dex */
public final class AFe1aSDK extends AFe1fSDK<String> {
    @NotNull
    public AFh1iSDK component2;
    @NotNull
    private final AFc1oSDK copy;
    @NotNull
    private final AFc1hSDK equals;
    @NotNull
    private final AFi1hSDK hashCode;
    @NotNull
    private final AFg1nSDK toString;

    public /* synthetic */ AFe1aSDK(AFi1hSDK aFi1hSDK, AFc1oSDK aFc1oSDK, AFd1zSDK aFd1zSDK, AFg1nSDK aFg1nSDK, AFc1hSDK aFc1hSDK, AFh1iSDK aFh1iSDK, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aFi1hSDK, aFc1oSDK, aFd1zSDK, aFg1nSDK, aFc1hSDK, (i10 & 32) != 0 ? new AFh1iSDK() : aFh1iSDK);
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final long AFAdRevenueData() {
        return TimeUnit.MINUTES.toMillis(1L);
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    protected final AppsFlyerRequestListener component2() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    protected final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    protected final AFd1hSDK<String> AFAdRevenueData(@NotNull String str) {
        AFd1bSDK aFd1bSDK;
        String str2;
        LinkedHashMap linkedHashMap;
        Intrinsics.checkNotNullParameter(str, "");
        AFh1iSDK aFh1iSDK = this.component2;
        Map<String, Object> map = aFh1iSDK.AFAdRevenueData;
        Intrinsics.checkNotNullExpressionValue(map, "");
        map.put("app_id", this.copy.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName());
        map.put("sdk_version", AFc1oSDK.getMonetizationNetwork());
        map.put("app_version_name", this.copy.n_().versionName);
        this.toString.AFAdRevenueData(map);
        try {
            AFi1jSDK mediationNetwork = this.hashCode.getMediationNetwork();
            if (mediationNetwork != null) {
                linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("pia_timestamp", Long.valueOf(mediationNetwork.getMediationNetwork));
                linkedHashMap2.put("ttr_millis", Long.valueOf(mediationNetwork.getCurrencyIso4217Code));
                String str3 = mediationNetwork.getRevenue;
                if (str3 != null) {
                    linkedHashMap2.put("pia_token", str3);
                }
                String str4 = mediationNetwork.AFAdRevenueData;
                if (str4 != null) {
                    linkedHashMap2.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, str4);
                }
                linkedHashMap.put("pia", linkedHashMap2);
            } else {
                linkedHashMap = null;
            }
            if (linkedHashMap != null) {
                aFh1iSDK.AFAdRevenueData(linkedHashMap);
            }
            if (!this.hashCode.AFAdRevenueData()) {
                Map<String, Object> map2 = aFh1iSDK.AFAdRevenueData;
                Intrinsics.checkNotNullExpressionValue(map2, "");
                AFj1aSDK.AFAdRevenueData(map2).put("pia_disabled", Boolean.TRUE);
            }
        } catch (Throwable th2) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.PLAY_INTEGRITY_API, "Error while adding PIA data to payload", th2, true, false, false, false, 96, null);
        }
        AFd1hSDK<String> currencyIso4217Code = ((AFe1fSDK) this).component4.getCurrencyIso4217Code(this.component2, ((AFe1fSDK) this).component1.getMediationNetwork(), this.equals);
        Map<String, Object> map3 = this.component2.AFAdRevenueData;
        Intrinsics.checkNotNullExpressionValue(map3, "");
        if (currencyIso4217Code != null && (aFd1bSDK = currencyIso4217Code.getMonetizationNetwork) != null && (str2 = aFd1bSDK.getMediationNetwork) != null) {
            JSONObject jSONObject = new JSONObject(map3);
            if (jSONObject.has("pia")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("pia");
                if (jSONObject2.has("pia_token")) {
                    jSONObject2.put("pia_token", AFg1aSDK.getCurrencyIso4217Code(jSONObject2.getString("pia_token")));
                }
            }
            String obj = toString();
            AFg1aSDK.getRevenue(obj + ": preparing data: ", jSONObject);
            AFd1oSDK aFd1oSDK = this.component3;
            String jSONObject3 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject3, "");
            aFd1oSDK.getRevenue(str2, jSONObject3);
        }
        return currencyIso4217Code;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private AFe1aSDK(@org.jetbrains.annotations.NotNull com.appsflyer.internal.AFi1hSDK r5, @org.jetbrains.annotations.NotNull com.appsflyer.internal.AFc1oSDK r6, @org.jetbrains.annotations.NotNull com.appsflyer.internal.AFd1zSDK r7, @org.jetbrains.annotations.NotNull com.appsflyer.internal.AFg1nSDK r8, @org.jetbrains.annotations.NotNull com.appsflyer.internal.AFc1hSDK r9, @org.jetbrains.annotations.NotNull com.appsflyer.internal.AFh1iSDK r10) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            com.appsflyer.internal.AFe1pSDK r0 = com.appsflyer.internal.AFe1pSDK.PLAY_INTEGRITY_API
            com.appsflyer.internal.AFe1pSDK r1 = com.appsflyer.internal.AFe1pSDK.CONVERSION
            com.appsflyer.internal.AFe1pSDK[] r2 = new com.appsflyer.internal.AFe1pSDK[]{r1}
            java.lang.String r3 = "PIA"
            r4.<init>(r0, r2, r7, r3)
            r4.hashCode = r5
            r4.copy = r6
            r4.toString = r8
            r4.equals = r9
            r4.component2 = r10
            java.util.Set<com.appsflyer.internal.AFe1pSDK> r5 = r4.AFAdRevenueData
            r5.add(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1aSDK.<init>(com.appsflyer.internal.AFi1hSDK, com.appsflyer.internal.AFc1oSDK, com.appsflyer.internal.AFd1zSDK, com.appsflyer.internal.AFg1nSDK, com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFh1iSDK):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AFe1aSDK(@NotNull AFi1hSDK aFi1hSDK, @NotNull AFc1oSDK aFc1oSDK, @NotNull AFd1zSDK aFd1zSDK, @NotNull AFg1nSDK aFg1nSDK, @NotNull AFc1hSDK aFc1hSDK) {
        this(aFi1hSDK, aFc1oSDK, aFd1zSDK, aFg1nSDK, aFc1hSDK, null, 32, null);
        Intrinsics.checkNotNullParameter(aFi1hSDK, "");
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(aFd1zSDK, "");
        Intrinsics.checkNotNullParameter(aFg1nSDK, "");
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
    }
}
