package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes2.dex */
public final class AFf1aSDK {
    public final boolean getMediationNetwork;
    public final long getMonetizationNetwork;
    @NotNull
    public final String getRevenue;

    public AFf1aSDK(@NotNull String str, long j10, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "");
        this.getRevenue = str;
        this.getMonetizationNetwork = j10;
        this.getMediationNetwork = z10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFf1aSDK)) {
            return false;
        }
        AFf1aSDK aFf1aSDK = (AFf1aSDK) obj;
        if (Intrinsics.areEqual(this.getRevenue, aFf1aSDK.getRevenue) && this.getMonetizationNetwork == aFf1aSDK.getMonetizationNetwork && this.getMediationNetwork == aFf1aSDK.getMediationNetwork) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = ((this.getRevenue.hashCode() * 31) + Long.hashCode(this.getMonetizationNetwork)) * 31;
        boolean z10 = this.getMediationNetwork;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return hashCode + i10;
    }

    @NotNull
    public final String toString() {
        String str = this.getRevenue;
        long j10 = this.getMonetizationNetwork;
        boolean z10 = this.getMediationNetwork;
        return "AFUninstallToken(token=" + str + ", receivedTime=" + j10 + ", isQueued=" + z10 + ")";
    }
}
