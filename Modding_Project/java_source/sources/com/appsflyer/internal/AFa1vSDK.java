package com.appsflyer.internal;

import android.os.Build;
import com.appsflyer.AFKeystoreWrapper;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import java.security.KeyStoreException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFa1vSDK {
    @NotNull
    public static final AFa1vSDK INSTANCE = new AFa1vSDK();

    private AFa1vSDK() {
    }

    @Nullable
    public static String getCurrencyIso4217Code() {
        return AppsFlyerProperties.getInstance().getString("KSAppsFlyerRICounter");
    }

    public static final void getMonetizationNetwork(@NotNull AFc1hSDK aFc1hSDK, @NotNull AFc1oSDK aFc1oSDK) {
        int i10;
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
        if (AFj1kSDK.getRevenue()) {
            AFLogger.afRDLog("OPPO device found");
            i10 = 23;
        } else {
            i10 = 18;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= i10 && !appsFlyerProperties.getBoolean(AppsFlyerProperties.DISABLE_KEYSTORE, true)) {
            AFLogger.afRDLog("OS SDK is=" + i11 + "; use KeyStore");
            AFKeystoreWrapper aFKeystoreWrapper = new AFKeystoreWrapper(aFc1hSDK.getMonetizationNetwork);
            if (!aFKeystoreWrapper.AFAdRevenueData()) {
                aFKeystoreWrapper.getCurrencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(aFc1oSDK.getMediationNetwork);
                aFKeystoreWrapper.AFAdRevenueData = 0;
                aFKeystoreWrapper.getRevenue(aFKeystoreWrapper.getMonetizationNetwork());
            } else {
                String monetizationNetwork = aFKeystoreWrapper.getMonetizationNetwork();
                synchronized (aFKeystoreWrapper.getMediationNetwork) {
                    aFKeystoreWrapper.AFAdRevenueData++;
                    AFLogger.afInfoLog("Deleting key with alias: ".concat(String.valueOf(monetizationNetwork)));
                    try {
                        synchronized (aFKeystoreWrapper.getMediationNetwork) {
                            aFKeystoreWrapper.getMonetizationNetwork.deleteEntry(monetizationNetwork);
                        }
                    } catch (KeyStoreException e10) {
                        StringBuilder sb2 = new StringBuilder("Exception ");
                        sb2.append(e10.getMessage());
                        sb2.append(" occurred");
                        AFLogger.afErrorLog(sb2.toString(), e10);
                    }
                }
                aFKeystoreWrapper.getRevenue(aFKeystoreWrapper.getMonetizationNetwork());
            }
            appsFlyerProperties.set("KSAppsFlyerId", aFKeystoreWrapper.getCurrencyIso4217Code());
            appsFlyerProperties.set("KSAppsFlyerRICounter", String.valueOf(aFKeystoreWrapper.getRevenue()));
            return;
        }
        AFLogger.afRDLog("OS SDK is=" + i11 + "; no KeyStore usage");
    }

    @Nullable
    public static String getMonetizationNetwork() {
        return AppsFlyerProperties.getInstance().getString("KSAppsFlyerId");
    }
}
