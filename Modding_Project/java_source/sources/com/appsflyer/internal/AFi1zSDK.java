package com.appsflyer.internal;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.ArrayList;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class AFi1zSDK {
    @Nullable
    public final AFh1aSDK getCurrencyIso4217Code;
    @Nullable
    public AFi1xSDK getMediationNetwork;
    @Nullable
    public final AFi1uSDK getMonetizationNetwork;

    public AFi1zSDK(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "");
        this.getMediationNetwork = AFAdRevenueData(jSONObject);
        this.getCurrencyIso4217Code = getMediationNetwork(jSONObject);
        this.getMonetizationNetwork = getCurrencyIso4217Code(jSONObject);
    }

    private static AFi1xSDK AFAdRevenueData(JSONObject jSONObject) {
        Object d10;
        AFi1xSDK aFi1xSDK;
        ArrayList n10;
        try {
            Result.a aVar = Result.f60901b;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "r_debugger");
            if (AFAdRevenueData != null) {
                long j10 = AFAdRevenueData.getLong("ttl");
                int i10 = AFAdRevenueData.getInt("counter");
                String optString = AFAdRevenueData.optString("app_ver", "");
                String optString2 = AFAdRevenueData.optString(HiAnalyticsConstant.BI_KEY_SDK_VER, "");
                float optDouble = (float) AFAdRevenueData.optDouble("ratio", 1.0d);
                JSONArray optJSONArray = AFAdRevenueData.optJSONArray("tags");
                if (optJSONArray != null) {
                    Intrinsics.checkNotNullExpressionValue(optJSONArray, "");
                    ArrayList arrayList = new ArrayList();
                    int length = optJSONArray.length();
                    for (int i11 = 0; i11 < length; i11++) {
                        String string = optJSONArray.getString(i11);
                        Intrinsics.checkNotNullExpressionValue(string, "");
                        arrayList.add(string);
                    }
                    n10 = arrayList;
                } else {
                    n10 = CollectionsKt.n();
                }
                Intrinsics.checkNotNullExpressionValue(optString, "");
                Intrinsics.checkNotNullExpressionValue(optString2, "");
                aFi1xSDK = new AFi1xSDK(j10, optDouble, n10, i10, optString, optString2);
            } else {
                aFi1xSDK = null;
            }
            d10 = Result.d(aFi1xSDK);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        return Result.i(d10) ? null : d10;
    }

    private static AFi1uSDK getCurrencyIso4217Code(JSONObject jSONObject) {
        Object d10;
        AFi1uSDK aFi1uSDK;
        AFi1uSDK aFi1uSDK2 = null;
        try {
            Result.a aVar = Result.f60901b;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "meta_data");
            if (AFAdRevenueData != null) {
                aFi1uSDK = new AFi1uSDK(AFAdRevenueData.optDouble("send_rate", 1.0d));
            } else {
                aFi1uSDK = null;
            }
            d10 = Result.d(aFi1uSDK);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (!Result.i(d10)) {
            aFi1uSDK2 = d10;
        }
        return aFi1uSDK2;
    }

    private static AFh1aSDK getMediationNetwork(JSONObject jSONObject) {
        Object d10;
        AFh1aSDK aFh1aSDK;
        AFh1aSDK aFh1aSDK2 = null;
        try {
            Result.a aVar = Result.f60901b;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "exc_mngr");
            if (AFAdRevenueData != null) {
                aFh1aSDK = new AFh1aSDK(AFAdRevenueData.getString(HiAnalyticsConstant.BI_KEY_SDK_VER), AFAdRevenueData.optInt("min", -1), AFAdRevenueData.optInt("expire", -1), AFAdRevenueData.optLong("ttl", -1L));
            } else {
                aFh1aSDK = null;
            }
            d10 = Result.d(aFh1aSDK);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (!Result.i(d10)) {
            aFh1aSDK2 = d10;
        }
        return aFh1aSDK2;
    }

    public final boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(AFi1zSDK.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "");
        AFi1zSDK aFi1zSDK = (AFi1zSDK) obj;
        if (Intrinsics.areEqual(this.getCurrencyIso4217Code, aFi1zSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.getMonetizationNetwork, aFi1zSDK.getMonetizationNetwork) && Intrinsics.areEqual(this.getMediationNetwork, aFi1zSDK.getMediationNetwork)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int i11;
        AFh1aSDK aFh1aSDK = this.getCurrencyIso4217Code;
        int i12 = 0;
        if (aFh1aSDK != null) {
            i10 = aFh1aSDK.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        AFi1uSDK aFi1uSDK = this.getMonetizationNetwork;
        if (aFi1uSDK != null) {
            i11 = aFi1uSDK.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        AFi1xSDK aFi1xSDK = this.getMediationNetwork;
        if (aFi1xSDK != null) {
            i12 = aFi1xSDK.hashCode();
        }
        return i14 + i12;
    }

    private static JSONObject AFAdRevenueData(JSONObject jSONObject, String str) throws JSONException, NullPointerException {
        JSONObject optJSONObject;
        if (!jSONObject.has(str) || (optJSONObject = jSONObject.getJSONArray(str).optJSONObject(0).optJSONObject("data")) == null) {
            return null;
        }
        return optJSONObject.optJSONObject("v1");
    }
}
