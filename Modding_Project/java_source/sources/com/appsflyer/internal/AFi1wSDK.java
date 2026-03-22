package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class AFi1wSDK {
    @Nullable
    public final String AFAdRevenueData;
    @Nullable
    public final AFi1ySDK areAllFieldsValid;
    @Nullable
    public final Throwable component1;
    @Nullable
    public final String component2;
    public final long getCurrencyIso4217Code;
    public final int getMediationNetwork;
    @NonNull
    public final String getMonetizationNetwork;
    public final long getRevenue;

    public AFi1wSDK(@Nullable String str, @NonNull String str2, long j10, long j11, int i10, @Nullable AFi1ySDK aFi1ySDK, @Nullable String str3, Throwable th2) {
        this.AFAdRevenueData = str;
        this.getMonetizationNetwork = str2;
        this.getCurrencyIso4217Code = j10;
        this.getRevenue = j11;
        this.getMediationNetwork = i10;
        this.areAllFieldsValid = aFi1ySDK;
        this.component2 = str3;
        this.component1 = th2;
    }
}
