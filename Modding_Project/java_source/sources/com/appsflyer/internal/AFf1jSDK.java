package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public final class AFf1jSDK {
    @NotNull
    public static final AFa1vSDK AFa1vSDK = new AFa1vSDK(null);
    private static final long getMonetizationNetwork = TimeUnit.HOURS.toSeconds(24);
    @NotNull
    private final AFc1oSDK AFAdRevenueData;
    @NotNull
    private final ms.i getCurrencyIso4217Code;
    @NotNull
    private final ms.i getMediationNetwork;
    @NotNull
    private final AFf1hSDK getRevenue;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1vSDK {
        private AFa1vSDK() {
        }

        public /* synthetic */ AFa1vSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AFf1jSDK(@NotNull AFc1oSDK aFc1oSDK, @NotNull AFf1hSDK aFf1hSDK) {
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(aFf1hSDK, "");
        this.AFAdRevenueData = aFc1oSDK;
        this.getRevenue = aFf1hSDK;
        this.getMediationNetwork = kotlin.c.b(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFf1jSDK.4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: getCurrencyIso4217Code */
            public final Boolean invoke() {
                return Boolean.valueOf(Boolean.parseBoolean(AFf1jSDK.this.AFAdRevenueData.getCurrencyIso4217Code("com.appsflyer.rc.sandbox")));
            }
        });
        this.getCurrencyIso4217Code = kotlin.c.b(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFf1jSDK.5
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: getRevenue */
            public final Boolean invoke() {
                return Boolean.valueOf(Boolean.parseBoolean(AFf1jSDK.this.AFAdRevenueData.getCurrencyIso4217Code("com.appsflyer.rc.staging")));
            }
        });
    }

    public final boolean AFAdRevenueData() {
        boolean z10;
        AFi1xSDK aFi1xSDK;
        AFi1vSDK aFi1vSDK = this.getRevenue.getCurrencyIso4217Code;
        if (aFi1vSDK == null) {
            AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.REMOTE_CONTROL, "active config is missing - fetching from CDN", false, 4, null);
            return true;
        }
        AFi1zSDK aFi1zSDK = aFi1vSDK.getMonetizationNetwork;
        if (aFi1zSDK != null && (aFi1xSDK = aFi1zSDK.getMediationNetwork) != null) {
            z10 = aFi1xSDK.AFAdRevenueData();
        } else {
            z10 = false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        AFf1hSDK aFf1hSDK = this.getRevenue;
        long j10 = currentTimeMillis - aFf1hSDK.getRevenue;
        long millis = TimeUnit.SECONDS.toMillis(aFf1hSDK.getMonetizationNetwork);
        if (z10 || j10 > millis) {
            return true;
        }
        return false;
    }

    public final long getCurrencyIso4217Code() {
        Object d10;
        String currencyIso4217Code = this.AFAdRevenueData.getCurrencyIso4217Code("com.appsflyer.rc.cache.max-age-fallback");
        if (currencyIso4217Code != null) {
            try {
                Result.a aVar = Result.f60901b;
                d10 = Result.d(Long.valueOf(Long.parseLong(currencyIso4217Code)));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            Throwable g10 = Result.g(d10);
            if (g10 != null) {
                String message = g10.getMessage();
                AFLogger.afErrorLog("Can't read maxAgeFallback from Manifest: " + message, g10);
                d10 = Long.valueOf(getMonetizationNetwork);
            }
            return ((Number) d10).longValue();
        }
        return getMonetizationNetwork;
    }

    public final boolean getMediationNetwork() {
        return ((Boolean) this.getCurrencyIso4217Code.getValue()).booleanValue();
    }

    public final boolean getMonetizationNetwork() {
        return ((Boolean) this.getMediationNetwork.getValue()).booleanValue();
    }
}
