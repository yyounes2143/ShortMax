package com.appsflyer.internal;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFd1kSDK extends AFc1dSDK {
    @NotNull
    private final AFd1jSDK component4;
    private final boolean getCurrencyIso4217Code;
    @NotNull
    public AFc1oSDK getMediationNetwork;

    public /* synthetic */ AFd1kSDK(AFc1oSDK aFc1oSDK, byte[] bArr, Map map, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(aFc1oSDK, bArr, (i11 & 4) != 0 ? null : map, (i11 & 8) != 0 ? 2000 : i10);
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @NotNull
    public final String AFAdRevenueData(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        return "[RD]: " + str;
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @NotNull
    public final String getCurrencyIso4217Code() {
        AFj1cSDK aFj1cSDK = new AFj1cSDK(this.getMediationNetwork, null, 2, null);
        return aFj1cSDK.getMediationNetwork(aFj1cSDK.getRevenue.getMediationNetwork(AFj1cSDK.component3));
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @NotNull
    public final AFd1jSDK getMediationNetwork() {
        return this.component4;
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    public final boolean getRevenue() {
        return this.getCurrencyIso4217Code;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private AFd1kSDK(@NotNull AFc1oSDK aFc1oSDK, @NotNull byte[] bArr, @Nullable Map<String, String> map, int i10) {
        super(bArr, map, i10);
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(bArr, "");
        this.getMediationNetwork = aFc1oSDK;
        this.component4 = AFd1jSDK.OCTET_STREAM;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AFd1kSDK(@NotNull AFc1oSDK aFc1oSDK, @NotNull byte[] bArr) {
        this(aFc1oSDK, bArr, null, 0, 12, null);
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(bArr, "");
    }
}
