package com.appsflyer.internal;

import android.util.Base64;
import com.appsflyer.AFLogger;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFe1vSDK {
    @Nullable
    private static AFe1ySDK component1;
    @NotNull
    public final ms.i AFAdRevenueData;
    @NotNull
    private final ms.i component2;
    @NotNull
    private final AFc1qSDK getMediationNetwork;
    @NotNull
    private final AFc1oSDK getRevenue;
    @NotNull
    public static final AFa1ySDK AFa1ySDK = new AFa1ySDK(null);
    @NotNull
    public static String getMonetizationNetwork = "https://%scdn-%ssettings.%s/android/v1/%s/settings";
    @NotNull
    public static String getCurrencyIso4217Code = "https://%scdn-%stestsettings.%s/android/v1/%s/settings";
    @NotNull
    private static final List<String> component4 = CollectionsKt.q("googleplay", "playstore", "googleplaystore");

    /* loaded from: classes2.dex */
    public /* synthetic */ class AFa1uSDK {
        public static final /* synthetic */ int[] AFAdRevenueData;

        static {
            int[] iArr = new int[AFe1tSDK.values().length];
            try {
                iArr[AFe1tSDK.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFe1tSDK.API.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AFe1tSDK.RC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            AFAdRevenueData = iArr;
        }
    }

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1ySDK {
        private AFa1ySDK() {
        }

        @NotNull
        public static List<String> getMonetizationNetwork() {
            return AFe1vSDK.component4;
        }

        public /* synthetic */ AFa1ySDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getMonetizationNetwork(@Nullable AFe1ySDK aFe1ySDK) {
            AFe1vSDK.component1 = aFe1ySDK;
        }
    }

    public AFe1vSDK(@NotNull AFc1oSDK aFc1oSDK, @NotNull AFc1qSDK aFc1qSDK) {
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(aFc1qSDK, "");
        this.getRevenue = aFc1oSDK;
        this.getMediationNetwork = aFc1qSDK;
        this.component2 = kotlin.c.b(new Function0<String>() { // from class: com.appsflyer.internal.AFe1vSDK.5
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: getMediationNetwork */
            public final String invoke() {
                String AFAdRevenueData = com.appsflyer.internal.AFa1ySDK.AFAdRevenueData(AFe1vSDK.this.getMediationNetwork, AFe1vSDK.this.getRevenue.component3());
                String str = "";
                if (AFAdRevenueData != null && !StringsKt.t0(AFAdRevenueData)) {
                    String obj = StringsKt.v1(AFAdRevenueData).toString();
                    List<String> monetizationNetwork = AFa1ySDK.getMonetizationNetwork();
                    Locale locale = Locale.getDefault();
                    Intrinsics.checkNotNullExpressionValue(locale, "");
                    String lowerCase = obj.toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "");
                    if (!monetizationNetwork.contains(lowerCase)) {
                        AFAdRevenueData = "-" + obj;
                    } else {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format("AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix.", Arrays.copyOf(new Object[]{obj}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "");
                        AFLogger.afWarnLog(format);
                        AFAdRevenueData = "";
                    }
                }
                if (AFAdRevenueData != null) {
                    str = AFAdRevenueData;
                }
                return StringsKt.v1(str).toString();
            }
        });
        this.AFAdRevenueData = kotlin.c.b(new Function0<String>() { // from class: com.appsflyer.internal.AFe1vSDK.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: getRevenue */
            public final String invoke() {
                String packageName = AFe1vSDK.this.getRevenue.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "");
                return AFe1vSDK.getMediationNetwork(packageName, AFe1vSDK.AFAdRevenueData(AFe1vSDK.this));
            }
        });
    }

    @NotNull
    public final String AFAdRevenueData() {
        AFe1tSDK aFe1tSDK;
        if (getMediationNetwork()) {
            aFe1tSDK = AFe1tSDK.DEFAULT;
        } else {
            aFe1tSDK = AFe1tSDK.API;
        }
        int i10 = AFa1uSDK.AFAdRevenueData[aFe1tSDK.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "";
                }
                throw new NoWhenBranchMatchedException();
            }
            AFe1ySDK aFe1ySDK = component1;
            String str = aFe1ySDK != null ? aFe1ySDK.getCurrencyIso4217Code : null;
            return str == null ? "" : str;
        }
        return "appsflyersdk.com";
    }

    @NotNull
    public final String getCurrencyIso4217Code() {
        AFe1tSDK aFe1tSDK;
        String str;
        if (getMediationNetwork()) {
            aFe1tSDK = AFe1tSDK.DEFAULT;
        } else {
            aFe1tSDK = AFe1tSDK.API;
        }
        int i10 = AFa1uSDK.AFAdRevenueData[aFe1tSDK.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "";
                }
                throw new NoWhenBranchMatchedException();
            }
            AFe1ySDK aFe1ySDK = component1;
            if (aFe1ySDK != null) {
                str = aFe1ySDK.getMonetizationNetwork;
            } else {
                str = null;
            }
            if (str == null) {
                return "";
            }
            return str;
        }
        return (String) this.AFAdRevenueData.getValue();
    }

    public static boolean getMediationNetwork() {
        return component1 == null;
    }

    public static final /* synthetic */ String getMediationNetwork(String str, String str2) {
        String str3 = str + str2;
        Intrinsics.checkNotNullParameter(str3, "");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str3.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "");
        byte[] digest = messageDigest.digest(bytes);
        Intrinsics.checkNotNullExpressionValue(digest, "");
        String encodeToString = Base64.encodeToString(digest, 2);
        Intrinsics.checkNotNullExpressionValue(encodeToString, "");
        String lowerCase = encodeToString.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "");
        String substring = new Regex("[^\\w]+").replace(lowerCase, "").substring(0, 6);
        Intrinsics.checkNotNullExpressionValue(substring, "");
        return substring + ".";
    }

    public static final void getMonetizationNetwork(@Nullable AFe1ySDK aFe1ySDK) {
        AFa1ySDK.getMonetizationNetwork(aFe1ySDK);
    }

    public static final /* synthetic */ String AFAdRevenueData(AFe1vSDK aFe1vSDK) {
        return (String) aFe1vSDK.component2.getValue();
    }
}
