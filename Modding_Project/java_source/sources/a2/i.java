package a2;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.OperationalDataEnum;
import com.facebook.appevents.h0;
import com.facebook.appevents.i0;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.v;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Currency;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AutomaticAnalyticsLogger.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nAutomaticAnalyticsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutomaticAnalyticsLogger.kt\ncom/facebook/appevents/internal/AutomaticAnalyticsLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,532:1\n1549#2:533\n1620#2,3:534\n215#3,2:537\n*S KotlinDebug\n*F\n+ 1 AutomaticAnalyticsLogger.kt\ncom/facebook/appevents/internal/AutomaticAnalyticsLogger\n*L\n198#1:533\n198#1:534,3\n480#1:537,2\n*E\n"})
/* loaded from: classes3.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f78a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final String f79b = i.class.getCanonicalName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final h0 f80c = new h0(v.l());

    /* compiled from: AutomaticAnalyticsLogger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private BigDecimal f81a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private Currency f82b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private Bundle f83c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private i0 f84d;

        public a(@NotNull BigDecimal purchaseAmount, @NotNull Currency currency, @NotNull Bundle param, @NotNull i0 operationalData) {
            Intrinsics.checkNotNullParameter(purchaseAmount, "purchaseAmount");
            Intrinsics.checkNotNullParameter(currency, "currency");
            Intrinsics.checkNotNullParameter(param, "param");
            Intrinsics.checkNotNullParameter(operationalData, "operationalData");
            this.f81a = purchaseAmount;
            this.f82b = currency;
            this.f83c = param;
            this.f84d = operationalData;
        }

        @NotNull
        public final Currency a() {
            return this.f82b;
        }

        @NotNull
        public final i0 b() {
            return this.f84d;
        }

        @NotNull
        public final Bundle c() {
            return this.f83c;
        }

        @NotNull
        public final BigDecimal d() {
            return this.f81a;
        }
    }

    private i() {
    }

    @Nullable
    public static final synchronized Bundle a(@NotNull List<a> purchaseLoggingParametersList) {
        Bundle f10;
        synchronized (i.class) {
            Intrinsics.checkNotNullParameter(purchaseLoggingParametersList, "purchaseLoggingParametersList");
            a aVar = purchaseLoggingParametersList.get(0);
            f10 = com.facebook.appevents.iap.g.f(CollectionsKt.e(new y1.a("fb_mobile_purchase", aVar.d().doubleValue(), aVar.a())), System.currentTimeMillis(), true, CollectionsKt.e(new Pair(aVar.c(), aVar.b())));
        }
        return f10;
    }

    private final List<a> b(String str, String str2, InAppPurchaseUtils.BillingClientVersion billingClientVersion) {
        return c(str, str2, new HashMap(), billingClientVersion);
    }

    private final List<a> c(String str, String str2, Map<String, String> map, InAppPurchaseUtils.BillingClientVersion billingClientVersion) {
        List<a> list = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject(str2);
            Bundle bundle = new Bundle(1);
            i0 i0Var = new i0();
            if (billingClientVersion != null) {
                i0.f15019b.a(OperationalDataEnum.IAPParameters, "fb_iap_sdk_supported_library_versions", billingClientVersion.getType(), bundle, i0Var);
            }
            i0.a aVar = i0.f15019b;
            OperationalDataEnum operationalDataEnum = OperationalDataEnum.IAPParameters;
            String string = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
            Intrinsics.checkNotNullExpressionValue(string, "purchaseJSON.getString(C…stants.GP_IAP_PRODUCT_ID)");
            aVar.a(operationalDataEnum, "fb_iap_product_id", string, bundle, i0Var);
            String string2 = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
            Intrinsics.checkNotNullExpressionValue(string2, "purchaseJSON.getString(C…stants.GP_IAP_PRODUCT_ID)");
            aVar.a(operationalDataEnum, "fb_content_id", string2, bundle, i0Var);
            aVar.a(operationalDataEnum, "android_dynamic_ads_content_id", "client_implicit", bundle, i0Var);
            String string3 = jSONObject.getString("purchaseTime");
            Intrinsics.checkNotNullExpressionValue(string3, "purchaseJSON.getString(C…nts.GP_IAP_PURCHASE_TIME)");
            aVar.a(operationalDataEnum, "fb_iap_purchase_time", string3, bundle, i0Var);
            String string4 = jSONObject.getString("purchaseToken");
            Intrinsics.checkNotNullExpressionValue(string4, "purchaseJSON.getString(C…ts.GP_IAP_PURCHASE_TOKEN)");
            aVar.a(operationalDataEnum, "fb_iap_purchase_token", string4, bundle, i0Var);
            String optString = jSONObject.optString("packageName");
            Intrinsics.checkNotNullExpressionValue(optString, "purchaseJSON.optString(C…ants.GP_IAP_PACKAGE_NAME)");
            aVar.a(operationalDataEnum, "fb_iap_package_name", optString, bundle, i0Var);
            String optString2 = jSONObject2.optString("title");
            Intrinsics.checkNotNullExpressionValue(optString2, "skuDetailsJSON.optString(Constants.GP_IAP_TITLE)");
            aVar.a(operationalDataEnum, "fb_iap_product_title", optString2, bundle, i0Var);
            String optString3 = jSONObject2.optString(InMobiNetworkValues.DESCRIPTION);
            Intrinsics.checkNotNullExpressionValue(optString3, "skuDetailsJSON.optString…tants.GP_IAP_DESCRIPTION)");
            aVar.a(operationalDataEnum, "fb_iap_product_description", optString3, bundle, i0Var);
            String type = jSONObject2.optString("type");
            Intrinsics.checkNotNullExpressionValue(type, "type");
            aVar.a(operationalDataEnum, "fb_iap_product_type", type, bundle, i0Var);
            String e10 = com.facebook.appevents.iap.g.e();
            if (e10 != null) {
                aVar.a(operationalDataEnum, "fb_iap_client_library_version", e10, bundle, i0Var);
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                i0.f15019b.a(OperationalDataEnum.IAPParameters, entry.getKey(), entry.getValue(), bundle, i0Var);
            }
            if (jSONObject2.has("price_amount_micros")) {
                list = CollectionsKt.t(d(type, bundle, i0Var, jSONObject, jSONObject2));
            } else if (jSONObject2.has("subscriptionOfferDetails") || jSONObject2.has("oneTimePurchaseOfferDetails")) {
                try {
                    return e(type, bundle, i0Var, jSONObject2);
                } catch (JSONException e11) {
                    e = e11;
                    Log.e(f79b, "Error parsing in-app purchase/subscription data.", e);
                    return null;
                } catch (Exception e12) {
                    e = e12;
                    Log.e(f79b, "Failed to get purchase logging parameters,", e);
                    return null;
                }
            }
            return list;
        } catch (JSONException e13) {
            e = e13;
        } catch (Exception e14) {
            e = e14;
        }
    }

    private final a d(String str, Bundle bundle, i0 i0Var, JSONObject jSONObject, JSONObject jSONObject2) {
        if (Intrinsics.areEqual(str, InAppPurchaseUtils.IAPProductType.SUBS.getType())) {
            i0.a aVar = i0.f15019b;
            OperationalDataEnum operationalDataEnum = OperationalDataEnum.IAPParameters;
            String bool = Boolean.toString(jSONObject.optBoolean("autoRenewing", false));
            Intrinsics.checkNotNullExpressionValue(bool, "toString(\n              …      )\n                )");
            aVar.a(operationalDataEnum, "fb_iap_subs_auto_renewing", bool, bundle, i0Var);
            String optString = jSONObject2.optString("subscriptionPeriod");
            Intrinsics.checkNotNullExpressionValue(optString, "skuDetailsJSON.optString…_IAP_SUBSCRIPTION_PERIOD)");
            aVar.a(operationalDataEnum, "fb_iap_subs_period", optString, bundle, i0Var);
            String optString2 = jSONObject2.optString("freeTrialPeriod");
            Intrinsics.checkNotNullExpressionValue(optString2, "skuDetailsJSON.optString…GP_IAP_FREE_TRIAL_PERIOD)");
            aVar.a(operationalDataEnum, "fb_free_trial_period", optString2, bundle, i0Var);
            String introductoryPriceCycles = jSONObject2.optString("introductoryPriceCycles");
            Intrinsics.checkNotNullExpressionValue(introductoryPriceCycles, "introductoryPriceCycles");
            if (introductoryPriceCycles.length() > 0) {
                aVar.a(operationalDataEnum, "fb_intro_price_cycles", introductoryPriceCycles, bundle, i0Var);
            }
            String introductoryPricePeriod = jSONObject2.optString("introductoryPricePeriod");
            Intrinsics.checkNotNullExpressionValue(introductoryPricePeriod, "introductoryPricePeriod");
            if (introductoryPricePeriod.length() > 0) {
                aVar.a(operationalDataEnum, "fb_intro_period", introductoryPricePeriod, bundle, i0Var);
            }
            String introductoryPriceAmountMicros = jSONObject2.optString("introductoryPriceAmountMicros");
            Intrinsics.checkNotNullExpressionValue(introductoryPriceAmountMicros, "introductoryPriceAmountMicros");
            if (introductoryPriceAmountMicros.length() > 0) {
                aVar.a(operationalDataEnum, "fb_intro_price_amount_micros", introductoryPriceAmountMicros, bundle, i0Var);
            }
        }
        BigDecimal bigDecimal = new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d);
        Currency currency = Currency.getInstance(jSONObject2.getString("price_currency_code"));
        Intrinsics.checkNotNullExpressionValue(currency, "getInstance(skuDetailsJS…RICE_CURRENCY_CODE_V2V4))");
        return new a(bigDecimal, currency, bundle, i0Var);
    }

    private final List<a> e(String str, Bundle bundle, i0 i0Var, JSONObject jSONObject) {
        if (Intrinsics.areEqual(str, InAppPurchaseUtils.IAPProductType.SUBS.getType())) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("subscriptionOfferDetails");
            if (jSONArray == null) {
                return null;
            }
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject2 = jSONObject.getJSONArray("subscriptionOfferDetails").getJSONObject(i10);
                if (jSONObject2 == null) {
                    return null;
                }
                Bundle bundle2 = new Bundle(bundle);
                i0 c10 = i0Var.c();
                String basePlanId = jSONObject2.getString("basePlanId");
                i0.a aVar = i0.f15019b;
                OperationalDataEnum operationalDataEnum = OperationalDataEnum.IAPParameters;
                Intrinsics.checkNotNullExpressionValue(basePlanId, "basePlanId");
                aVar.a(operationalDataEnum, "fb_iap_base_plan", basePlanId, bundle2, c10);
                JSONArray jSONArray2 = jSONObject2.getJSONArray("pricingPhases");
                JSONObject jSONObject3 = jSONArray2.getJSONObject(jSONArray2.length() - 1);
                if (jSONObject3 == null) {
                    return null;
                }
                String optString = jSONObject3.optString("billingPeriod");
                Intrinsics.checkNotNullExpressionValue(optString, "subscriptionJSON.optStri…IOD\n                    )");
                aVar.a(operationalDataEnum, "fb_iap_subs_period", optString, bundle2, c10);
                if (jSONObject3.has("recurrenceMode") && jSONObject3.getInt("recurrenceMode") != 3) {
                    aVar.a(operationalDataEnum, "fb_iap_subs_auto_renewing", "true", bundle2, c10);
                } else {
                    aVar.a(operationalDataEnum, "fb_iap_subs_auto_renewing", "false", bundle2, c10);
                }
                BigDecimal bigDecimal = new BigDecimal(jSONObject3.getLong("priceAmountMicros") / 1000000.0d);
                Currency currency = Currency.getInstance(jSONObject3.getString("priceCurrencyCode"));
                Intrinsics.checkNotNullExpressionValue(currency, "getInstance(subscription…RICE_CURRENCY_CODE_V5V7))");
                arrayList.add(new a(bigDecimal, currency, bundle2, c10));
            }
            return arrayList;
        }
        JSONObject jSONObject4 = jSONObject.getJSONObject("oneTimePurchaseOfferDetails");
        if (jSONObject4 == null) {
            return null;
        }
        BigDecimal bigDecimal2 = new BigDecimal(jSONObject4.getLong("priceAmountMicros") / 1000000.0d);
        Currency currency2 = Currency.getInstance(jSONObject4.getString("priceCurrencyCode"));
        Intrinsics.checkNotNullExpressionValue(currency2, "getInstance(oneTimePurch…RICE_CURRENCY_CODE_V5V7))");
        return CollectionsKt.t(new a(bigDecimal2, currency2, bundle, i0Var));
    }

    @Nullable
    public static final synchronized Bundle f(@NotNull List<a> purchaseLoggingParametersList, @NotNull String eventName) {
        Bundle f10;
        synchronized (i.class) {
            try {
                Intrinsics.checkNotNullParameter(purchaseLoggingParametersList, "purchaseLoggingParametersList");
                Intrinsics.checkNotNullParameter(eventName, "eventName");
                ArrayList arrayList = new ArrayList();
                for (a aVar : purchaseLoggingParametersList) {
                    arrayList.add(new y1.a(eventName, aVar.d().doubleValue(), aVar.a()));
                }
                long currentTimeMillis = System.currentTimeMillis();
                List<a> list = purchaseLoggingParametersList;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list, 10));
                for (a aVar2 : list) {
                    arrayList2.add(new Pair(aVar2.c(), aVar2.b()));
                }
                f10 = com.facebook.appevents.iap.g.f(arrayList, currentTimeMillis, true, arrayList2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f10;
    }

    public static final boolean g() {
        p f10 = FetchedAppSettingsManager.f(v.m());
        if (f10 != null && v.p() && f10.i()) {
            return true;
        }
        return false;
    }

    public static final void h() {
        Context l10 = v.l();
        String m10 = v.m();
        if (v.p()) {
            if (l10 instanceof Application) {
                AppEventsLogger.f14941b.a((Application) l10, m10);
            } else {
                Log.w(f79b, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
            }
        }
    }

    public static final void i(@Nullable String str, long j10) {
        Context l10 = v.l();
        p u10 = FetchedAppSettingsManager.u(v.m(), false);
        if (u10 != null && u10.a() && j10 > 0) {
            h0 h0Var = new h0(l10);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_aa_time_spent_view_name", str);
            h0Var.c("fb_aa_time_spent_on_view", j10, bundle);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void j(@org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull java.lang.String r8, boolean r9, @org.jetbrains.annotations.Nullable com.facebook.appevents.iap.InAppPurchaseUtils.BillingClientVersion r10, boolean r11) {
        /*
            java.lang.String r0 = "purchase"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "skuDetails"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            boolean r0 = g()
            if (r0 != 0) goto L11
            return
        L11:
            a2.i r0 = a2.i.f78a
            java.util.List r7 = r0.b(r7, r8, r10)
            if (r7 != 0) goto L1a
            return
        L1a:
            boolean r10 = r7.isEmpty()
            if (r10 == 0) goto L21
            return
        L21:
            java.lang.String r10 = "fb_mobile_purchase"
            r0 = 0
            if (r9 == 0) goto L46
            java.lang.String r1 = "app_events_if_auto_log_subs"
            java.lang.String r2 = com.facebook.v.m()
            boolean r1 = com.facebook.internal.o.d(r1, r2, r0)
            if (r1 == 0) goto L46
            if (r11 == 0) goto L38
            java.lang.String r8 = "SubscriptionRestore"
        L36:
            r2 = r8
            goto L4c
        L38:
            y1.l r11 = y1.l.f70589a
            boolean r8 = r11.m(r8)
            if (r8 == 0) goto L43
            java.lang.String r8 = "StartTrial"
            goto L36
        L43:
            java.lang.String r8 = "Subscribe"
            goto L36
        L46:
            if (r11 == 0) goto L4b
            java.lang.String r8 = "fb_mobile_purchase_restored"
            goto L36
        L4b:
            r2 = r10
        L4c:
            if (r9 == 0) goto L5b
            com.facebook.internal.FeatureManager$Feature r8 = com.facebook.internal.FeatureManager.Feature.AndroidManualImplicitSubsDedupe
            boolean r8 = com.facebook.internal.FeatureManager.g(r8)
            if (r8 == 0) goto L5b
            android.os.Bundle r8 = f(r7, r2)
            goto L6b
        L5b:
            if (r9 != 0) goto L6a
            com.facebook.internal.FeatureManager$Feature r8 = com.facebook.internal.FeatureManager.Feature.AndroidManualImplicitPurchaseDedupe
            boolean r8 = com.facebook.internal.FeatureManager.g(r8)
            if (r8 == 0) goto L6a
            android.os.Bundle r8 = a(r7)
            goto L6b
        L6a:
            r8 = 0
        L6b:
            y1.k r9 = y1.k.f70584a
            java.lang.Object r11 = r7.get(r0)
            a2.i$a r11 = (a2.i.a) r11
            android.os.Bundle r11 = r11.c()
            java.lang.Object r1 = r7.get(r0)
            a2.i$a r1 = (a2.i.a) r1
            com.facebook.appevents.i0 r1 = r1.b()
            r9.a(r8, r11, r1)
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r10)
            if (r8 != 0) goto Lb8
            com.facebook.appevents.h0 r1 = a2.i.f80c
            java.lang.Object r8 = r7.get(r0)
            a2.i$a r8 = (a2.i.a) r8
            java.math.BigDecimal r3 = r8.d()
            java.lang.Object r8 = r7.get(r0)
            a2.i$a r8 = (a2.i.a) r8
            java.util.Currency r4 = r8.a()
            java.lang.Object r8 = r7.get(r0)
            a2.i$a r8 = (a2.i.a) r8
            android.os.Bundle r5 = r8.c()
            java.lang.Object r7 = r7.get(r0)
            a2.i$a r7 = (a2.i.a) r7
            com.facebook.appevents.i0 r6 = r7.b()
            r1.i(r2, r3, r4, r5, r6)
            goto Le5
        Lb8:
            com.facebook.appevents.h0 r8 = a2.i.f80c
            java.lang.Object r9 = r7.get(r0)
            a2.i$a r9 = (a2.i.a) r9
            java.math.BigDecimal r9 = r9.d()
            java.lang.Object r10 = r7.get(r0)
            a2.i$a r10 = (a2.i.a) r10
            java.util.Currency r10 = r10.a()
            java.lang.Object r11 = r7.get(r0)
            a2.i$a r11 = (a2.i.a) r11
            android.os.Bundle r11 = r11.c()
            java.lang.Object r7 = r7.get(r0)
            a2.i$a r7 = (a2.i.a) r7
            com.facebook.appevents.i0 r7 = r7.b()
            r8.j(r9, r10, r11, r7)
        Le5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.i.j(java.lang.String, java.lang.String, boolean, com.facebook.appevents.iap.InAppPurchaseUtils$BillingClientVersion, boolean):void");
    }

    public static /* synthetic */ void k(String str, String str2, boolean z10, InAppPurchaseUtils.BillingClientVersion billingClientVersion, boolean z11, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            z11 = false;
        }
        j(str, str2, z10, billingClientVersion, z11);
    }
}
