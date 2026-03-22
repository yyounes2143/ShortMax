package com.appsflyer.internal;

import com.appsflyer.AFPurchaseDetails;
import com.appsflyer.AFPurchaseType;
import com.appsflyer.AppsFlyerInAppPurchaseValidationCallback;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
@SourceDebugExtension({"SMAP\nManualValidationTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualValidationTask.kt\ncom/appsflyer/internal/components/queue/tasks/ManualValidationTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1747#2,3:157\n*S KotlinDebug\n*F\n+ 1 ManualValidationTask.kt\ncom/appsflyer/internal/components/queue/tasks/ManualValidationTask\n*L\n98#1:157,3\n*E\n"})
/* loaded from: classes2.dex */
public final class AFf1ySDK extends AFe1jSDK {
    @NotNull
    private final AppsFlyerProperties component2;
    @NotNull
    private final AFj1iSDK copydefault;
    @Nullable
    private final AppsFlyerInAppPurchaseValidationCallback equals;
    @Nullable
    private final Map<String, String> hashCode;
    @NotNull
    private final AFPurchaseDetails toString;

    /* loaded from: classes2.dex */
    public static final class AFa1tSDK extends RuntimeException {
    }

    /* loaded from: classes2.dex */
    public /* synthetic */ class AFa1ySDK {
        public static final /* synthetic */ int[] getRevenue;

        static {
            int[] iArr = new int[AFPurchaseType.values().length];
            try {
                iArr[AFPurchaseType.SUBSCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFPurchaseType.ONE_TIME_PURCHASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            getRevenue = iArr;
        }
    }

    public /* synthetic */ AFf1ySDK(AFd1zSDK aFd1zSDK, AppsFlyerProperties appsFlyerProperties, AFPurchaseDetails aFPurchaseDetails, Map map, AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback, AFj1iSDK aFj1iSDK, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aFd1zSDK, appsFlyerProperties, aFPurchaseDetails, map, appsFlyerInAppPurchaseValidationCallback, (i10 & 32) != 0 ? new AFj1hSDK() : aFj1iSDK);
    }

    private final void getMediationNetwork(String str, int i10) {
        AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback = this.equals;
        if (appsFlyerInAppPurchaseValidationCallback != null) {
            appsFlyerInAppPurchaseValidationCallback.onInAppPurchaseValidationError(p0.m(ms.k.a(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, Integer.valueOf(i10)), ms.k.a("error_message", str)));
        }
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        Object d10;
        Unit unit;
        super.getCurrencyIso4217Code();
        Throwable component1 = component1();
        if (component1 != null && !(component1 instanceof AFe1iSDK)) {
            if (component1 instanceof AFe1nSDK) {
                getMediationNetwork("No dev key", -1);
            } else if (component1 instanceof AFa1tSDK) {
                getMediationNetwork("One or more of provided arguments is empty", -1);
            } else {
                getMediationNetwork("Error while sending request to server", -1);
            }
        }
        ResponseNetwork responseNetwork = ((AFe1fSDK) this).areAllFieldsValid;
        if (responseNetwork != null) {
            if (responseNetwork.getStatusCode() == 200) {
                try {
                    Result.a aVar = Result.f60901b;
                    AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback = this.equals;
                    if (appsFlyerInAppPurchaseValidationCallback != null) {
                        appsFlyerInAppPurchaseValidationCallback.onInAppPurchaseValidationFinished(AFj1bSDK.getMonetizationNetwork(new JSONObject((String) responseNetwork.getBody())));
                        unit = Unit.f60915a;
                    } else {
                        unit = null;
                    }
                    d10 = Result.d(unit);
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th2));
                }
                if (Result.g(d10) != null) {
                    getMediationNetwork("Error while trying to parse JSON response", responseNetwork.getStatusCode());
                }
                Result.b(d10);
                return;
            }
            AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback2 = this.equals;
            if (appsFlyerInAppPurchaseValidationCallback2 != null) {
                appsFlyerInAppPurchaseValidationCallback2.onInAppPurchaseValidationError(p0.m(ms.k.a(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, Integer.valueOf(responseNetwork.getStatusCode())), ms.k.a("error_message", responseNetwork.getBody())));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appsflyer.internal.AFe1jSDK
    public final void getMonetizationNetwork(@NotNull Map<String, Object> map, @Nullable String str) {
        Map<String, Object> i10;
        Intrinsics.checkNotNullParameter(map, "");
        super.getMonetizationNetwork(map, str);
        List<String> q10 = CollectionsKt.q(this.toString.getPurchaseToken(), this.toString.getProductId());
        if (!(q10 instanceof Collection) || !q10.isEmpty()) {
            for (String str2 : q10) {
                if (str2.length() == 0) {
                    throw new AFa1tSDK();
                }
            }
        }
        map.put("purchase_token", this.toString.getPurchaseToken());
        map.put("product_id", this.toString.getProductId());
        map.put("purchase_type", this.toString.getPurchaseType().getValue());
        Map<String, String> map2 = this.hashCode;
        if (map2 != null && !map2.isEmpty()) {
            map.put("purchase_additional_details", this.hashCode);
        }
        String string = this.component2.getString(AppsFlyerProperties.ADDITIONAL_CUSTOM_DATA);
        if (string != null && string.length() != 0) {
            i10 = AFj1bSDK.getMonetizationNetwork(new JSONObject(string));
        } else {
            i10 = p0.i();
        }
        map.put("custom_data", i10);
    }

    @Override // com.appsflyer.internal.AFe1jSDK
    @Nullable
    public final AFd1hSDK<String> getRevenue(@NotNull Map<String, Object> map, @NotNull String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(map, "");
        Intrinsics.checkNotNullParameter(str, "");
        int i10 = AFa1ySDK.getRevenue[this.toString.getPurchaseType().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return ((AFe1fSDK) this).component4.getMonetizationNetwork(map, str);
            }
            throw new NoWhenBranchMatchedException();
        }
        return ((AFe1fSDK) this).component4.getCurrencyIso4217Code(map, str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private AFf1ySDK(@NotNull AFd1zSDK aFd1zSDK, @NotNull AppsFlyerProperties appsFlyerProperties, @NotNull AFPurchaseDetails aFPurchaseDetails, @Nullable Map<String, String> map, @Nullable AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback, @NotNull AFj1iSDK aFj1iSDK) {
        super(AFe1pSDK.MANUAL_PURCHASE_VALIDATION, new AFe1pSDK[]{AFe1pSDK.RC_CDN, AFe1pSDK.FETCH_ADVERTISING_ID}, aFd1zSDK, null, p0.i());
        Intrinsics.checkNotNullParameter(aFd1zSDK, "");
        Intrinsics.checkNotNullParameter(appsFlyerProperties, "");
        Intrinsics.checkNotNullParameter(aFPurchaseDetails, "");
        Intrinsics.checkNotNullParameter(aFj1iSDK, "");
        this.component2 = appsFlyerProperties;
        this.toString = aFPurchaseDetails;
        this.hashCode = map;
        this.equals = appsFlyerInAppPurchaseValidationCallback;
        this.copydefault = aFj1iSDK;
        this.getCurrencyIso4217Code.add(AFe1pSDK.CONVERSION);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AFf1ySDK(@NotNull AFd1zSDK aFd1zSDK, @NotNull AppsFlyerProperties appsFlyerProperties, @NotNull AFPurchaseDetails aFPurchaseDetails, @Nullable Map<String, String> map, @Nullable AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback) {
        this(aFd1zSDK, appsFlyerProperties, aFPurchaseDetails, map, appsFlyerInAppPurchaseValidationCallback, null, 32, null);
        Intrinsics.checkNotNullParameter(aFd1zSDK, "");
        Intrinsics.checkNotNullParameter(appsFlyerProperties, "");
        Intrinsics.checkNotNullParameter(aFPurchaseDetails, "");
    }

    @Override // com.appsflyer.internal.AFe1jSDK
    @NotNull
    protected final String getCurrencyIso4217Code(@NotNull Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        return this.copydefault.getMediationNetwork();
    }
}
