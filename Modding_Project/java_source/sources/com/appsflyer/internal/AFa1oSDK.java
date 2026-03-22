package com.appsflyer.internal;

import com.appsflyer.deeplink.DeepLink;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFa1oSDK {
    private final boolean getCurrencyIso4217Code;
    @Nullable
    public final DeepLink getMonetizationNetwork;

    public AFa1oSDK(boolean z10, @Nullable DeepLink deepLink) {
        this.getCurrencyIso4217Code = z10;
        this.getMonetizationNetwork = deepLink;
    }

    public final boolean AFAdRevenueData() {
        return this.getCurrencyIso4217Code;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFa1oSDK)) {
            return false;
        }
        AFa1oSDK aFa1oSDK = (AFa1oSDK) obj;
        if (this.getCurrencyIso4217Code == aFa1oSDK.getCurrencyIso4217Code && Intrinsics.areEqual(this.getMonetizationNetwork, aFa1oSDK.getMonetizationNetwork)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public final int hashCode() {
        int hashCode;
        boolean z10 = this.getCurrencyIso4217Code;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i10 = r02 * 31;
        DeepLink deepLink = this.getMonetizationNetwork;
        if (deepLink == null) {
            hashCode = 0;
        } else {
            hashCode = deepLink.hashCode();
        }
        return i10 + hashCode;
    }

    @NotNull
    public final String toString() {
        boolean z10 = this.getCurrencyIso4217Code;
        DeepLink deepLink = this.getMonetizationNetwork;
        return "DdlResponse(secondPing=" + z10 + ", deepLink=" + deepLink + ")";
    }

    public /* synthetic */ AFa1oSDK(boolean z10, DeepLink deepLink, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10, (i10 & 2) != 0 ? null : deepLink);
    }

    public AFa1oSDK() {
        this(false, null, 3, null);
    }
}
