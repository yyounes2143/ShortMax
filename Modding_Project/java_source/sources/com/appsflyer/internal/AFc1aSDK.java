package com.appsflyer.internal;

import android.util.Base64;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes2.dex */
public final class AFc1aSDK {
    @NotNull
    public static final AFa1zSDK AFa1zSDK = new AFa1zSDK(null);
    @NotNull
    final String AFAdRevenueData;
    @NotNull
    public String getCurrencyIso4217Code;
    int getMediationNetwork;
    @NotNull
    public String getRevenue;

    @Metadata
    @SourceDebugExtension({"SMAP\nExceptionInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionInfo.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionInfo$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,94:1\n13579#2,2:95\n*S KotlinDebug\n*F\n+ 1 ExceptionInfo.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionInfo$Companion\n*L\n65#1:95,2\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class AFa1zSDK {
        private AFa1zSDK() {
        }

        private static boolean AFAdRevenueData(Integer num, String... strArr) {
            boolean z10;
            if (num == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            int length = strArr.length;
            for (int i10 = 0; i10 < 3; i10++) {
                String str = strArr[i10];
                if (!z10 && str != null && str.length() != 0) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            }
            return z10;
        }

        @Nullable
        public static AFc1aSDK getMediationNetwork(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "");
            List<String> split$default = StringsKt.split$default(str, new String[]{"\n"}, false, 0, 6, null);
            if (split$default.size() != 4) {
                return null;
            }
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Integer num = null;
            for (String str5 : split$default) {
                if (StringsKt.V(str5, "label=", false, 2, null)) {
                    str2 = getRevenue(str5, "label=");
                } else if (StringsKt.V(str5, "hashName=", false, 2, null)) {
                    str3 = getRevenue(str5, "hashName=");
                } else if (StringsKt.V(str5, "stackTrace=", false, 2, null)) {
                    str4 = getRevenue(str5, "stackTrace=");
                } else if (!StringsKt.V(str5, "c=", false, 2, null)) {
                    break;
                } else {
                    String substring = str5.substring(2);
                    Intrinsics.checkNotNullExpressionValue(substring, "");
                    num = Integer.valueOf(Integer.parseInt(StringsKt.v1(substring).toString()));
                }
            }
            if (AFAdRevenueData(num, str2, str3, str4)) {
                return null;
            }
            Intrinsics.checkNotNull(str2);
            Intrinsics.checkNotNull(str3);
            Intrinsics.checkNotNull(str4);
            Intrinsics.checkNotNull(num);
            return new AFc1aSDK(str2, str3, str4, num.intValue());
        }

        private static String getRevenue(String str, String str2) {
            String substring = str.substring(str2.length());
            Intrinsics.checkNotNullExpressionValue(substring, "");
            String obj = StringsKt.v1(substring).toString();
            Intrinsics.checkNotNullParameter(obj, "");
            Charset charset = Charsets.UTF_8;
            byte[] bytes = obj.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "");
            Intrinsics.checkNotNullParameter(bytes, "");
            byte[] decode = Base64.decode(bytes, 2);
            Intrinsics.checkNotNullExpressionValue(decode, "");
            return new String(decode, charset);
        }

        public /* synthetic */ AFa1zSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AFc1aSDK(@NotNull String str, @NotNull String str2, @NotNull String str3, int i10) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        Intrinsics.checkNotNullParameter(str3, "");
        this.getCurrencyIso4217Code = str;
        this.AFAdRevenueData = str2;
        this.getRevenue = str3;
        this.getMediationNetwork = i10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFc1aSDK)) {
            return false;
        }
        AFc1aSDK aFc1aSDK = (AFc1aSDK) obj;
        if (Intrinsics.areEqual(this.getCurrencyIso4217Code, aFc1aSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.AFAdRevenueData, aFc1aSDK.AFAdRevenueData) && Intrinsics.areEqual(this.getRevenue, aFc1aSDK.getRevenue) && this.getMediationNetwork == aFc1aSDK.getMediationNetwork) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getMonetizationNetwork() {
        String str = this.getCurrencyIso4217Code;
        Intrinsics.checkNotNullParameter(str, "");
        Charset charset = Charsets.UTF_8;
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "");
        String encodeToString = Base64.encodeToString(bytes, 2);
        String str2 = this.AFAdRevenueData;
        Intrinsics.checkNotNullParameter(str2, "");
        byte[] bytes2 = str2.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes2, "");
        String encodeToString2 = Base64.encodeToString(bytes2, 2);
        String str3 = this.getRevenue;
        Intrinsics.checkNotNullParameter(str3, "");
        byte[] bytes3 = str3.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes3, "");
        String encodeToString3 = Base64.encodeToString(bytes3, 2);
        int i10 = this.getMediationNetwork;
        return "label=" + encodeToString + "\nhashName=" + encodeToString2 + "\nstackTrace=" + encodeToString3 + "\nc=" + i10;
    }

    @NotNull
    public final JSONObject getRevenue() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("label", this.getCurrencyIso4217Code);
        jSONObject.put("hash_name", this.AFAdRevenueData);
        jSONObject.put("st", this.getRevenue);
        jSONObject.put("c", String.valueOf(this.getMediationNetwork));
        return jSONObject;
    }

    public final int hashCode() {
        return (((((this.getCurrencyIso4217Code.hashCode() * 31) + this.AFAdRevenueData.hashCode()) * 31) + this.getRevenue.hashCode()) * 31) + Integer.hashCode(this.getMediationNetwork);
    }

    @NotNull
    public final String toString() {
        String str = this.getCurrencyIso4217Code;
        String str2 = this.AFAdRevenueData;
        String str3 = this.getRevenue;
        int i10 = this.getMediationNetwork;
        return "ExceptionInfo(label=" + str + ", hashName=" + str2 + ", stackTrace=" + str3 + ", counter=" + i10 + ")";
    }

    public /* synthetic */ AFc1aSDK(String str, String str2, String str3, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i11 & 8) != 0 ? 1 : i10);
    }
}
