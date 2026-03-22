package com.appsflyer.internal;

import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFi1xSDK {
    @NotNull
    public List<String> AFAdRevenueData;
    @NotNull
    public final String component4;
    @NotNull
    public final String getCurrencyIso4217Code;
    public final float getMediationNetwork;
    public final int getMonetizationNetwork;
    public long getRevenue;

    public AFi1xSDK(long j10, float f10, @NotNull List<String> list, int i10, @NotNull String str, @NotNull String str2) {
        Intrinsics.checkNotNullParameter(list, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        this.getRevenue = j10;
        this.getMediationNetwork = f10;
        this.AFAdRevenueData = list;
        this.getMonetizationNetwork = i10;
        this.getCurrencyIso4217Code = str;
        this.component4 = str2;
    }

    public final boolean AFAdRevenueData() {
        if (TimeUnit.SECONDS.toMillis(this.getRevenue) > AFa1ySDK.getRevenue().getMonetizationNetwork().component3().getCurrencyIso4217Code()) {
            return true;
        }
        return false;
    }

    public final boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(AFi1xSDK.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "");
        AFi1xSDK aFi1xSDK = (AFi1xSDK) obj;
        if (this.getRevenue == aFi1xSDK.getRevenue && this.getMediationNetwork == aFi1xSDK.getMediationNetwork && Intrinsics.areEqual(this.AFAdRevenueData, aFi1xSDK.AFAdRevenueData) && this.getMonetizationNetwork == aFi1xSDK.getMonetizationNetwork && Intrinsics.areEqual(this.getCurrencyIso4217Code, aFi1xSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.component4, aFi1xSDK.component4)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((Long.hashCode(this.getRevenue) * 31) + Float.hashCode(this.getMediationNetwork)) * 31) + this.AFAdRevenueData.hashCode()) * 31) + this.getMonetizationNetwork) * 31) + this.getCurrencyIso4217Code.hashCode()) * 31) + this.component4.hashCode();
    }
}
