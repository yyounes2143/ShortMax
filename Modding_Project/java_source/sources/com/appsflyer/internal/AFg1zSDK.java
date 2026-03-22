package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.appsflyer.AFLogger;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes2.dex */
public final class AFg1zSDK {
    @NotNull
    private final String AFAdRevenueData;
    @NotNull
    private final Map<String, Object> getCurrencyIso4217Code;
    @Nullable
    private final PackageManager getMediationNetwork;

    public AFg1zSDK(@NotNull AFc1hSDK aFc1hSDK, @NotNull AFc1oSDK aFc1oSDK) {
        PackageManager packageManager;
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        this.getCurrencyIso4217Code = new LinkedHashMap();
        Context context = aFc1hSDK.getMonetizationNetwork;
        if (context != null) {
            packageManager = context.getPackageManager();
        } else {
            packageManager = null;
        }
        this.getMediationNetwork = packageManager;
        String packageName = aFc1oSDK.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "");
        this.AFAdRevenueData = packageName;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        r1 = r2.getInstallSourceInfo(r1);
     */
    @androidx.annotation.RequiresApi(30)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.Map<java.lang.String, java.lang.Object> getRevenue() {
        /*
            r12 = this;
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.lang.String r1 = r12.AFAdRevenueData     // Catch: java.lang.Throwable -> L27
            android.content.pm.PackageManager r2 = r12.getMediationNetwork     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L52
            android.content.pm.InstallSourceInfo r1 = com.adjust.sdk.k1.a(r2, r1)     // Catch: java.lang.Throwable -> L27
            if (r1 == 0) goto L52
            java.lang.String r2 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)     // Catch: java.lang.Throwable -> L27
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L27
            r2.<init>()     // Catch: java.lang.Throwable -> L27
            java.lang.String r3 = "initiating_package"
            java.lang.String r4 = com.adjust.sdk.n1.a(r1)     // Catch: java.lang.Throwable -> L27
            if (r4 == 0) goto L2a
            r2.put(r3, r4)     // Catch: java.lang.Throwable -> L27
            goto L2a
        L27:
            r1 = move-exception
            r5 = r1
            goto L42
        L2a:
            java.lang.String r3 = "installing_package"
            java.lang.String r4 = com.adjust.sdk.m1.a(r1)     // Catch: java.lang.Throwable -> L27
            if (r4 == 0) goto L35
            r2.put(r3, r4)     // Catch: java.lang.Throwable -> L27
        L35:
            java.lang.String r3 = "originating_package"
            java.lang.String r1 = com.adjust.sdk.l1.a(r1)     // Catch: java.lang.Throwable -> L27
            if (r1 == 0) goto L40
            r2.put(r3, r1)     // Catch: java.lang.Throwable -> L27
        L40:
            r0 = r2
            goto L52
        L42:
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r3 = com.appsflyer.internal.AFg1cSDK.DEVICE_DATA
            r10 = 16
            r11 = 0
            java.lang.String r4 = "Failed to get the app install source info"
            r6 = 1
            r7 = 0
            r8 = 1
            r9 = 1
            com.appsflyer.internal.AFh1ySDK.e$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
        L52:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1zSDK.getRevenue():java.util.Map");
    }

    @NotNull
    public final Map<String, Object> AFAdRevenueData() {
        String installerPackageName;
        if (this.getCurrencyIso4217Code.isEmpty()) {
            try {
                PackageManager packageManager = this.getMediationNetwork;
                if (packageManager != null && (installerPackageName = packageManager.getInstallerPackageName(this.AFAdRevenueData)) != null) {
                    this.getCurrencyIso4217Code.put("installer_package", installerPackageName);
                }
            } catch (Exception e10) {
                AFLogger.afErrorLog("Exception while getting the app's installer package. ", e10);
            }
            if (Build.VERSION.SDK_INT >= 30) {
                this.getCurrencyIso4217Code.put("install_source_info", getRevenue());
            }
        }
        return this.getCurrencyIso4217Code;
    }
}
