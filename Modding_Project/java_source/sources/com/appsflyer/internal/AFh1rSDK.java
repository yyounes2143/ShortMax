package com.appsflyer.internal;

import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFh1rSDK {
    @Nullable
    public Boolean AFAdRevenueData;
    @NotNull
    public Map<String, Object> component1;
    @Nullable
    public Boolean component2;
    @Nullable
    public String component3;
    @Nullable
    public String getCurrencyIso4217Code;
    @Nullable
    public Boolean getMediationNetwork;
    @Nullable
    public Boolean getMonetizationNetwork;
    @Nullable
    public Boolean getRevenue;

    private AFh1rSDK(@Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable String str2, @Nullable Boolean bool5, @NotNull Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        this.getCurrencyIso4217Code = str;
        this.getRevenue = bool;
        this.AFAdRevenueData = bool2;
        this.getMediationNetwork = bool3;
        this.getMonetizationNetwork = bool4;
        this.component3 = str2;
        this.component2 = bool5;
        this.component1 = map;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFh1rSDK)) {
            return false;
        }
        AFh1rSDK aFh1rSDK = (AFh1rSDK) obj;
        if (Intrinsics.areEqual(this.getCurrencyIso4217Code, aFh1rSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.getRevenue, aFh1rSDK.getRevenue) && Intrinsics.areEqual(this.AFAdRevenueData, aFh1rSDK.AFAdRevenueData) && Intrinsics.areEqual(this.getMediationNetwork, aFh1rSDK.getMediationNetwork) && Intrinsics.areEqual(this.getMonetizationNetwork, aFh1rSDK.getMonetizationNetwork) && Intrinsics.areEqual(this.component3, aFh1rSDK.component3) && Intrinsics.areEqual(this.component2, aFh1rSDK.component2) && Intrinsics.areEqual(this.component1, aFh1rSDK.component1)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        String str = this.getCurrencyIso4217Code;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        Boolean bool = this.getRevenue;
        if (bool == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = bool.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Boolean bool2 = this.AFAdRevenueData;
        if (bool2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Boolean bool3 = this.getMediationNetwork;
        if (bool3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = bool3.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        Boolean bool4 = this.getMonetizationNetwork;
        if (bool4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = bool4.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        String str2 = this.component3;
        if (str2 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str2.hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        Boolean bool5 = this.component2;
        if (bool5 != null) {
            i10 = bool5.hashCode();
        }
        return ((i16 + i10) * 31) + this.component1.hashCode();
    }

    @NotNull
    public final String toString() {
        String str = this.getCurrencyIso4217Code;
        Boolean bool = this.getRevenue;
        Boolean bool2 = this.AFAdRevenueData;
        Boolean bool3 = this.getMediationNetwork;
        Boolean bool4 = this.getMonetizationNetwork;
        String str2 = this.component3;
        Boolean bool5 = this.component2;
        Map<String, Object> map = this.component1;
        return "AdvertisingIdData(advertisingId=" + str + ", isLimited=" + bool + ", isEnabled=" + bool2 + ", isGaidWithGps=" + bool3 + ", isGaidWithSamsungCloudDev=" + bool4 + ", gaidError=" + str2 + ", retry=" + bool5 + ", metadata=" + map + ")";
    }

    public /* synthetic */ AFh1rSDK(String str, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, String str2, Boolean bool5, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : bool, (i10 & 4) != 0 ? null : bool2, (i10 & 8) != 0 ? null : bool3, (i10 & 16) != 0 ? null : bool4, (i10 & 32) != 0 ? null : str2, (i10 & 64) == 0 ? bool5 : null, (i10 & 128) != 0 ? new HashMap() : map);
    }

    public AFh1rSDK() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }
}
