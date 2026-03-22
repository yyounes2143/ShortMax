package com.appsflyer.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFe1xSDK {
    @NotNull
    public final AFe1tSDK getCurrencyIso4217Code;
    @NotNull
    public final String getMonetizationNetwork;
    @Nullable
    public final String getRevenue;

    public AFe1xSDK(@NotNull String str, @Nullable String str2, @NotNull AFe1tSDK aFe1tSDK) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(aFe1tSDK, "");
        this.getMonetizationNetwork = str;
        this.getRevenue = str2;
        this.getCurrencyIso4217Code = aFe1tSDK;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFe1xSDK)) {
            return false;
        }
        AFe1xSDK aFe1xSDK = (AFe1xSDK) obj;
        if (Intrinsics.areEqual(this.getMonetizationNetwork, aFe1xSDK.getMonetizationNetwork) && Intrinsics.areEqual(this.getRevenue, aFe1xSDK.getRevenue) && this.getCurrencyIso4217Code == aFe1xSDK.getCurrencyIso4217Code) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.getMonetizationNetwork.hashCode() * 31;
        String str = this.getRevenue;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return ((hashCode2 + hashCode) * 31) + this.getCurrencyIso4217Code.hashCode();
    }

    @NotNull
    public final String toString() {
        String str = this.getMonetizationNetwork;
        String str2 = this.getRevenue;
        AFe1tSDK aFe1tSDK = this.getCurrencyIso4217Code;
        return "HostMeta(name=" + str + ", prefix=" + str2 + ", method=" + aFe1tSDK + ")";
    }
}
