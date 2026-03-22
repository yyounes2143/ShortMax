package com.appsflyer.internal;

import android.net.Uri;
import com.appsflyer.AFLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nEventUrlResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventUrlResolver.kt\ncom/appsflyer/internal/util/EventUrlResolver\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n*L\n1#1,349:1\n39#2:350\n*S KotlinDebug\n*F\n+ 1 EventUrlResolver.kt\ncom/appsflyer/internal/util/EventUrlResolver\n*L\n192#1:350\n*E\n"})
/* loaded from: classes2.dex */
public final class AFj1cSDK {
    @NotNull
    public static final String AFAdRevenueData;
    @NotNull
    public static final String areAllFieldsValid;
    @NotNull
    public static final String component1;
    @NotNull
    public static final String component2;
    @NotNull
    public static final String component3;
    @NotNull
    public static final String component4;
    @NotNull
    private static final String copy;
    @NotNull
    public static final AFa1ySDK getCurrencyIso4217Code = new AFa1ySDK(null);
    @NotNull
    public static final String getMediationNetwork;
    @NotNull
    public static final String getMonetizationNetwork;
    @NotNull
    private final AFc1oSDK equals;
    @NotNull
    public final AFk1zSDK getRevenue;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1ySDK {
        private AFa1ySDK() {
        }

        public /* synthetic */ AFa1ySDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        String str = com.appsflyer.internal.AFa1ySDK.getMediationNetwork + "/androidevent?app_id=";
        copy = str;
        getMediationNetwork = "https://%sattr.%s/api/v" + str;
        AFAdRevenueData = "https://%sadrevenue.%s/api/v2/generic/v6.17.5/android?app_id=";
        getMonetizationNetwork = "https://%sconversions.%s/api/v" + str;
        areAllFieldsValid = "https://%slaunches.%s/api/v" + str;
        component4 = "https://%sinapps.%s/api/v" + str;
        component2 = "https://%sregister.%s/api/v" + str;
        component1 = "https://%svalidate.%s/api/v" + str;
        component3 = "https://%smonitorsdk.%s/api/remote-debug/v2.0?app_id=";
    }

    private AFj1cSDK(@NotNull AFc1oSDK aFc1oSDK, @NotNull AFk1zSDK aFk1zSDK) {
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(aFk1zSDK, "");
        this.equals = aFc1oSDK;
        this.getRevenue = aFk1zSDK;
    }

    @NotNull
    public static String getMediationNetwork() {
        return "https://privacy-sandbox.appsflyersdk.com/api/trigger";
    }

    public static String getRevenue(String str, boolean z10) {
        String str2;
        if (!z10) {
            str2 = "&buildnumber=6.17.5";
        } else {
            str2 = "";
        }
        return str + str2;
    }

    @NotNull
    public final String getMonetizationNetwork(@Nullable String str, @Nullable String str2) {
        String str3;
        String packageName = this.equals.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "");
        String component32 = this.equals.component3();
        if (component32 != null && !StringsKt.t0(component32)) {
            component32 = "-" + StringsKt.v1(component32).toString();
        }
        if (component32 == null) {
            component32 = "";
        }
        String obj = StringsKt.v1(component32).toString();
        Uri.Builder appendPath = Uri.parse(this.getRevenue.getMediationNetwork("https://%sdlsdk.%s/v1.0/android/")).buildUpon().appendPath(packageName + obj);
        Intrinsics.checkNotNullExpressionValue(appendPath, "");
        if (str != null && str2 != null) {
            appendPath.appendQueryParameter("af_sig", AFj1dSDK.getMonetizationNetwork(str2 + str, str));
        } else {
            if (str == null) {
                str3 = "devKey";
            } else {
                str3 = "timestamp";
            }
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, str3 + " is null at attempt to generate ddl event url", new IllegalStateException(str3 + " is null"), true, false, false, true);
        }
        String obj2 = appendPath.appendQueryParameter("sdk_version", com.appsflyer.internal.AFa1ySDK.getMediationNetwork).build().toString();
        Intrinsics.checkNotNullExpressionValue(obj2, "");
        return obj2;
    }

    public final String getMediationNetwork(String str) {
        String packageName = this.equals.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName();
        return str + packageName;
    }

    public /* synthetic */ AFj1cSDK(AFc1oSDK aFc1oSDK, AFk1zSDK aFk1zSDK, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aFc1oSDK, (i10 & 2) != 0 ? new AFk1ySDK() : aFk1zSDK);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AFj1cSDK(@NotNull AFc1oSDK aFc1oSDK) {
        this(aFc1oSDK, null, 2, null);
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
    }

    public static /* synthetic */ String getMediationNetwork(AFj1cSDK aFj1cSDK, String str) {
        return aFj1cSDK.getMediationNetwork(str, false);
    }

    public final String getMediationNetwork(String str, boolean z10) {
        String str2;
        if (z10) {
            return str;
        }
        String component32 = this.equals.component3();
        if (component32 != null) {
            str2 = "&channel=" + component32;
        } else {
            str2 = null;
        }
        if (str2 == null) {
            str2 = "";
        }
        return str + str2;
    }
}
