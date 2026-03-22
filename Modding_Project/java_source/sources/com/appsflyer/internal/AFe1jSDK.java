package com.appsflyer.internal;

import android.os.Build;
import androidx.annotation.CallSuper;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class AFe1jSDK extends AFe1fSDK<String> {
    @NotNull
    private final AFe1pSDK component2;
    @NotNull
    private final AFc1qSDK copy;
    @NotNull
    private final Map<String, Object> copydefault;
    @NotNull
    private final AFc1oSDK equals;
    @NotNull
    private final AFg1nSDK hashCode;
    @NotNull
    private final AFf1fSDK toString;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1jSDK(@NotNull AFe1pSDK aFe1pSDK, @NotNull AFe1pSDK[] aFe1pSDKArr, @NotNull AFd1zSDK aFd1zSDK, @Nullable String str, @NotNull Map<String, ? extends Object> map) {
        super(aFe1pSDK, aFe1pSDKArr, aFd1zSDK, null);
        Intrinsics.checkNotNullParameter(aFe1pSDK, "");
        Intrinsics.checkNotNullParameter(aFe1pSDKArr, "");
        Intrinsics.checkNotNullParameter(aFd1zSDK, "");
        Intrinsics.checkNotNullParameter(map, "");
        this.component2 = aFe1pSDK;
        this.copydefault = map;
        AFc1oSDK AFAdRevenueData = aFd1zSDK.AFAdRevenueData();
        Intrinsics.checkNotNullExpressionValue(AFAdRevenueData, "");
        this.equals = AFAdRevenueData;
        AFc1qSDK component4 = aFd1zSDK.component4();
        Intrinsics.checkNotNullExpressionValue(component4, "");
        this.copy = component4;
        AFg1nSDK component3 = aFd1zSDK.component3();
        Intrinsics.checkNotNullExpressionValue(component3, "");
        this.hashCode = component3;
        AFf1fSDK afDebugLog = aFd1zSDK.afDebugLog();
        Intrinsics.checkNotNullExpressionValue(afDebugLog, "");
        this.toString = afDebugLog;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    protected final AFd1hSDK<String> AFAdRevenueData(@NotNull String str) {
        String str2;
        String str3;
        AFd1bSDK aFd1bSDK;
        Intrinsics.checkNotNullParameter(str, "");
        Map<String, Object> A = p0.A(this.copydefault);
        String currencyIso4217Code = getCurrencyIso4217Code(A);
        String monetizationNetwork = getMonetizationNetwork(A);
        Map<String, Object> A2 = p0.A(A);
        getMonetizationNetwork(A2, currencyIso4217Code);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String areAllFieldsValid = this.equals.areAllFieldsValid();
        if (areAllFieldsValid != null && !StringsKt.t0(areAllFieldsValid)) {
            linkedHashMap.put("advertising_id", areAllFieldsValid);
        }
        AFb1jSDK mediationNetwork = AFb1lSDK.getMediationNetwork(this.equals.getCurrencyIso4217Code.getMonetizationNetwork);
        String str4 = null;
        if (mediationNetwork != null) {
            str2 = mediationNetwork.getRevenue;
        } else {
            str2 = null;
        }
        if (str2 != null && !StringsKt.t0(str2)) {
            linkedHashMap.put("oaid", str2);
        }
        AFb1jSDK l_ = AFb1lSDK.l_(this.equals.getCurrencyIso4217Code.getMonetizationNetwork.getContentResolver());
        if (l_ != null) {
            str3 = l_.getRevenue;
        } else {
            str3 = null;
        }
        if (str3 != null && !StringsKt.t0(str3)) {
            linkedHashMap.put("amazon_aid", str3);
        }
        if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            String monetizationNetwork2 = ((AFe1fSDK) this).component1.getMonetizationNetwork(this.copy);
            if (monetizationNetwork2 != null && !StringsKt.t0(monetizationNetwork2)) {
                linkedHashMap.put("imei", monetizationNetwork2);
            }
        } else {
            A2.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
        }
        String currencyIso4217Code2 = AFb1kSDK.getCurrencyIso4217Code(this.equals.getMediationNetwork);
        if (currencyIso4217Code2 == null) {
            currencyIso4217Code2 = "";
        }
        linkedHashMap.put("appsflyer_id", currencyIso4217Code2);
        linkedHashMap.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, String.valueOf(Build.VERSION.SDK_INT));
        linkedHashMap.put("sdk_version", "6.17.5");
        if (monetizationNetwork != null && !StringsKt.t0(monetizationNetwork)) {
            linkedHashMap.put("sdk_connector_version", monetizationNetwork);
        }
        this.hashCode.getMediationNetwork(linkedHashMap, this.component2);
        A2.put("device_data", linkedHashMap);
        this.toString.getCurrencyIso4217Code(A2, this.component2);
        AFd1hSDK<String> revenue = getRevenue(A2, str, currencyIso4217Code);
        if (revenue != null && (aFd1bSDK = revenue.getMonetizationNetwork) != null) {
            str4 = aFd1bSDK.getMediationNetwork;
        }
        if (str4 != null) {
            JSONObject jSONObject = new JSONObject(A2);
            AFg1aSDK.getRevenue(toString() + ": preparing data: ", jSONObject);
            AFd1oSDK aFd1oSDK = this.component3;
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "");
            aFd1oSDK.getRevenue(str4, jSONObject2);
        }
        return revenue;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    protected final AppsFlyerRequestListener component2() {
        return null;
    }

    protected boolean component3() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    protected final boolean copydefault() {
        return true;
    }

    @Nullable
    protected String getCurrencyIso4217Code(@NotNull Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        return null;
    }

    @Nullable
    protected String getMonetizationNetwork(@NotNull Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        return null;
    }

    @Nullable
    public abstract AFd1hSDK<String> getRevenue(@NotNull Map<String, Object> map, @NotNull String str, @Nullable String str2);

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void getMonetizationNetwork(@NotNull Map<String, Object> map, @Nullable String str) {
        Intrinsics.checkNotNullParameter(map, "");
        map.put("app_id", this.equals.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName());
        String revenue = AFc1oSDK.getRevenue();
        if (revenue != null) {
            map.put("cuid", revenue);
        }
        map.put("app_version_name", this.equals.n_().versionName);
        if (component3()) {
            map.put("event_timestamp", Long.valueOf(this.hashCode.getCurrencyIso4217Code()));
        }
        if (str != null) {
            map.put("billing_lib_version", str);
        }
    }
}
