package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes2.dex */
public final class AFf1bSDK {
    final int AFAdRevenueData;
    final int getCurrencyIso4217Code;
    final int getMediationNetwork;
    @NotNull
    final String getMonetizationNetwork;
    final int getRevenue;

    public AFf1bSDK(int i10, int i11, int i12, int i13, @NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        this.getCurrencyIso4217Code = i10;
        this.getMediationNetwork = i11;
        this.AFAdRevenueData = i12;
        this.getRevenue = i13;
        this.getMonetizationNetwork = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFf1bSDK)) {
            return false;
        }
        AFf1bSDK aFf1bSDK = (AFf1bSDK) obj;
        if (this.getCurrencyIso4217Code == aFf1bSDK.getCurrencyIso4217Code && this.getMediationNetwork == aFf1bSDK.getMediationNetwork && this.AFAdRevenueData == aFf1bSDK.AFAdRevenueData && this.getRevenue == aFf1bSDK.getRevenue && Intrinsics.areEqual(this.getMonetizationNetwork, aFf1bSDK.getMonetizationNetwork)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((((Integer.hashCode(this.getCurrencyIso4217Code) * 31) + Integer.hashCode(this.getMediationNetwork)) * 31) + Integer.hashCode(this.AFAdRevenueData)) * 31) + Integer.hashCode(this.getRevenue)) * 31) + this.getMonetizationNetwork.hashCode();
    }

    @NotNull
    public final String toString() {
        int i10 = this.getCurrencyIso4217Code;
        int i11 = this.getMediationNetwork;
        int i12 = this.AFAdRevenueData;
        int i13 = this.getRevenue;
        String str = this.getMonetizationNetwork;
        return "CmpTcfData(policyVersion=" + i10 + ", gdprApplies=" + i11 + ", cmpSdkId=" + i12 + ", cmpSdkVersion=" + i13 + ", tcString=" + str + ")";
    }
}
