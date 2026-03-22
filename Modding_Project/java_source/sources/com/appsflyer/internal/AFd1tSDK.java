package com.appsflyer.internal;

import com.appsflyer.AppsFlyerLib;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFd1tSDK extends AFc1dSDK {
    @NotNull
    public static final AFa1vSDK AFa1vSDK = new AFa1vSDK(null);
    @NotNull
    public static String getMediationNetwork = "https://%smonitorsdk.%s/remote-debug/exception-manager";
    @NotNull
    private final AFd1jSDK getCurrencyIso4217Code;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1vSDK {
        private AFa1vSDK() {
        }

        public /* synthetic */ AFa1vSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFd1tSDK(@NotNull byte[] bArr, @Nullable Map<String, String> map, int i10) {
        super(bArr, map, i10);
        Intrinsics.checkNotNullParameter(bArr, "");
        this.getCurrencyIso4217Code = AFd1jSDK.JSON;
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @NotNull
    public final String AFAdRevenueData(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        return AFd1rSDK.getCurrencyIso4217Code(str);
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @NotNull
    public final String getCurrencyIso4217Code() {
        String format = String.format(getMediationNetwork, AppsFlyerLib.getInstance().getHostPrefix(), AFa1ySDK.getRevenue().getHostName());
        Intrinsics.checkNotNullExpressionValue(format, "");
        return format;
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @NotNull
    public final AFd1jSDK getMediationNetwork() {
        return this.getCurrencyIso4217Code;
    }
}
