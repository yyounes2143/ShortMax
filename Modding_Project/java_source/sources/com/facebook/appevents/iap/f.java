package com.facebook.appevents.iap;

import a2.i;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.facebook.v;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: InAppPurchaseLoggerManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f15094a = new f();

    private f() {
    }

    public static final void c() {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);
            SharedPreferences sharedPreferences2 = v.l().getSharedPreferences("com.facebook.internal.PURCHASE", 0);
            sharedPreferences.edit().clear().apply();
            sharedPreferences2.edit().clear().apply();
            v.l().getSharedPreferences("com.facebook.internal.iap.PRODUCT_DETAILS", 0).edit().clear().apply();
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    public static final void d(@NotNull Map<String, JSONObject> purchaseDetailsMap, @NotNull Map<String, ? extends JSONObject> skuDetailsMap, boolean z10, @NotNull String packageName, @NotNull InAppPurchaseUtils.BillingClientVersion billingClientVersion, boolean z11) {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(purchaseDetailsMap, "purchaseDetailsMap");
            Intrinsics.checkNotNullParameter(skuDetailsMap, "skuDetailsMap");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(billingClientVersion, "billingClientVersion");
            f fVar = f15094a;
            fVar.f(fVar.b(fVar.a(purchaseDetailsMap, z10), skuDetailsMap, packageName), z10, billingClientVersion, z11);
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    public static final boolean e() {
        if (o4.a.d(f.class)) {
            return false;
        }
        try {
            return !v.l().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0).contains("APP_HAS_BEEN_LAUNCHED_KEY");
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
            return false;
        }
    }

    private final void f(Map<String, String> map, boolean z10, InAppPurchaseUtils.BillingClientVersion billingClientVersion, boolean z11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                i.j(entry.getKey(), entry.getValue(), z10, billingClientVersion, z11);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final void g() {
        Collection collection;
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0);
            long max = Math.max(Math.max(sharedPreferences.getLong("TIME_OF_LAST_LOGGED_PURCHASE", 0L), sharedPreferences.getLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", 0L)), 1736528400000L);
            CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet();
            SharedPreferences sharedPreferences2 = v.l().getSharedPreferences("com.facebook.internal.iap.PRODUCT_DETAILS", 0);
            if (sharedPreferences2.contains("PURCHASE_DETAILS_SET")) {
                Collection stringSet = sharedPreferences2.getStringSet("PURCHASE_DETAILS_SET", new HashSet());
                if (stringSet == null) {
                    collection = new HashSet();
                } else {
                    collection = stringSet;
                }
                copyOnWriteArraySet.addAll(collection);
                for (String str : copyOnWriteArraySet) {
                    try {
                        long parseLong = Long.parseLong((String) StringsKt.split$default(str, new String[]{";"}, false, 2, 2, null).get(1)) * 1000;
                        if (Math.abs(String.valueOf(parseLong).length() - 13) < Math.log10(1000.0d)) {
                            max = Math.max(max, parseLong);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", max).apply();
            sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_PURCHASE", max).apply();
            c();
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    public static final void h() {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            try {
                v.l().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0).edit().putBoolean("APP_HAS_BEEN_LAUNCHED_KEY", true).apply();
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    public static final void i() {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            h();
            try {
                SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0);
                long currentTimeMillis = System.currentTimeMillis();
                sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", currentTimeMillis).apply();
                sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_PURCHASE", currentTimeMillis).apply();
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final Map<String, JSONObject> a(@NotNull Map<String, JSONObject> purchaseDetailsMap, boolean z10) {
        long j10;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(purchaseDetailsMap, "purchaseDetailsMap");
            SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0);
            if (z10) {
                j10 = sharedPreferences.getLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", 1736528400000L);
            } else {
                j10 = sharedPreferences.getLong("TIME_OF_LAST_LOGGED_PURCHASE", 1736528400000L);
            }
            long j11 = 0;
            for (Map.Entry entry : p0.x(purchaseDetailsMap).entrySet()) {
                String str = (String) entry.getKey();
                JSONObject jSONObject = (JSONObject) entry.getValue();
                try {
                    if (jSONObject.has("purchaseToken") && jSONObject.has("purchaseTime")) {
                        long j12 = jSONObject.getLong("purchaseTime");
                        if (j12 <= j10) {
                            purchaseDetailsMap.remove(str);
                        }
                        j11 = Math.max(j11, j12);
                    }
                } catch (Exception unused) {
                }
            }
            if (j11 >= j10) {
                if (z10) {
                    sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", j11).apply();
                } else {
                    sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_PURCHASE", j11).apply();
                }
            }
            return new HashMap(purchaseDetailsMap);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final Map<String, String> b(@NotNull Map<String, ? extends JSONObject> purchaseDetailsMap, @NotNull Map<String, ? extends JSONObject> skuDetailsMap, @NotNull String packageName) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(purchaseDetailsMap, "purchaseDetailsMap");
            Intrinsics.checkNotNullParameter(skuDetailsMap, "skuDetailsMap");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends JSONObject> entry : purchaseDetailsMap.entrySet()) {
                JSONObject value = entry.getValue();
                JSONObject jSONObject = skuDetailsMap.get(entry.getKey());
                try {
                    value.put("packageName", packageName);
                    if (jSONObject != null) {
                        String jSONObject2 = value.toString();
                        Intrinsics.checkNotNullExpressionValue(jSONObject2, "purchaseDetail.toString()");
                        String jSONObject3 = jSONObject.toString();
                        Intrinsics.checkNotNullExpressionValue(jSONObject3, "skuDetail.toString()");
                        linkedHashMap.put(jSONObject2, jSONObject3);
                    }
                } catch (Exception unused) {
                }
            }
            return linkedHashMap;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }
}
