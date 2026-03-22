package com.appsflyer.internal;

import java.security.SecureRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFb1kSDK {
    @NotNull
    public static final AFb1kSDK INSTANCE = new AFb1kSDK();
    @Nullable
    private static String getMonetizationNetwork;

    private AFb1kSDK() {
    }

    public static final synchronized void getCurrencyIso4217Code(@NotNull String str, @NotNull AFc1qSDK aFc1qSDK) {
        synchronized (AFb1kSDK.class) {
            Intrinsics.checkNotNullParameter(str, "");
            Intrinsics.checkNotNullParameter(aFc1qSDK, "");
            getMonetizationNetwork = str;
            aFc1qSDK.AFAdRevenueData("CUSTOM_INSTALL_ID_APPLIED", true);
            aFc1qSDK.getRevenue("AF_INSTALLATION", str);
        }
    }

    @NotNull
    public static final synchronized String getCurrencyIso4217Code(@NotNull AFc1qSDK aFc1qSDK) {
        String str;
        synchronized (AFb1kSDK.class) {
            try {
                Intrinsics.checkNotNullParameter(aFc1qSDK, "");
                if (getMonetizationNetwork == null) {
                    String monetizationNetwork = aFc1qSDK.getMonetizationNetwork("AF_INSTALLATION", (String) null);
                    if (monetizationNetwork == null) {
                        monetizationNetwork = System.currentTimeMillis() + "-" + Math.abs(new SecureRandom().nextLong());
                        aFc1qSDK.getRevenue("AF_INSTALLATION", monetizationNetwork);
                    }
                    getMonetizationNetwork = monetizationNetwork;
                }
                str = getMonetizationNetwork;
                Intrinsics.checkNotNull(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }
}
