package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes2.dex */
public final class AFi1jSDK {
    @Nullable
    public final String AFAdRevenueData;
    public final long getCurrencyIso4217Code;
    public final long getMediationNetwork;
    @Nullable
    public final String getRevenue;

    public AFi1jSDK(long j10, long j11, @Nullable String str, @Nullable String str2) {
        this.getMediationNetwork = j10;
        this.getCurrencyIso4217Code = j11;
        this.getRevenue = str;
        this.AFAdRevenueData = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFi1jSDK)) {
            return false;
        }
        AFi1jSDK aFi1jSDK = (AFi1jSDK) obj;
        if (this.getMediationNetwork == aFi1jSDK.getMediationNetwork && this.getCurrencyIso4217Code == aFi1jSDK.getCurrencyIso4217Code && Intrinsics.areEqual(this.getRevenue, aFi1jSDK.getRevenue) && Intrinsics.areEqual(this.AFAdRevenueData, aFi1jSDK.AFAdRevenueData)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = ((Long.hashCode(this.getMediationNetwork) * 31) + Long.hashCode(this.getCurrencyIso4217Code)) * 31;
        String str = this.getRevenue;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        String str2 = this.AFAdRevenueData;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public final String toString() {
        long j10 = this.getMediationNetwork;
        long j11 = this.getCurrencyIso4217Code;
        String str = this.getRevenue;
        String str2 = this.AFAdRevenueData;
        return "PlayIntegrityApiData(piaTimestamp=" + j10 + ", ttrMillis=" + j11 + ", piaToken=" + str + ", errorCode=" + str2 + ")";
    }
}
