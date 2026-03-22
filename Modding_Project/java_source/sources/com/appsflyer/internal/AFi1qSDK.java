package com.appsflyer.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import com.appsflyer.AFLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public abstract class AFi1qSDK {
    @NotNull
    public static final AFa1vSDK AFa1vSDK = new AFa1vSDK(null);
    @Nullable
    ConnectivityManager getCurrencyIso4217Code;
    @Nullable
    private final TelephonyManager getRevenue;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1vSDK {
        private AFa1vSDK() {
        }

        public /* synthetic */ AFa1vSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AFi1qSDK(@NotNull Context context) {
        ConnectivityManager connectivityManager;
        Intrinsics.checkNotNullParameter(context, "");
        Object systemService = context.getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            connectivityManager = (ConnectivityManager) systemService;
        } else {
            connectivityManager = null;
        }
        this.getCurrencyIso4217Code = connectivityManager;
        Object systemService2 = context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        this.getRevenue = systemService2 instanceof TelephonyManager ? (TelephonyManager) systemService2 : null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean v_(@Nullable NetworkInfo networkInfo) {
        if (networkInfo != null) {
            return networkInfo.isConnectedOrConnecting();
        }
        return false;
    }

    @NotNull
    protected abstract String AFAdRevenueData();

    public abstract boolean getMediationNetwork();

    @NotNull
    public final AFi1rSDK getMonetizationNetwork() {
        Throwable th2;
        String str;
        String str2;
        String str3 = null;
        try {
            TelephonyManager telephonyManager = this.getRevenue;
            if (telephonyManager != null) {
                str2 = telephonyManager.getSimOperatorName();
                try {
                    str3 = telephonyManager.getNetworkOperatorName();
                    if (str3 != null) {
                        if (str3.length() == 0) {
                        }
                    }
                    if (telephonyManager.getPhoneType() == 2) {
                        str3 = "CDMA";
                    }
                } catch (Throwable th3) {
                    str = str3;
                    str3 = str2;
                    th2 = th3;
                    AFLogger.afErrorLog("Exception while collecting network info. ", th2);
                    str2 = str3;
                    str3 = str;
                    return new AFi1rSDK(AFAdRevenueData(), str3, str2, getMediationNetwork());
                }
            } else {
                str2 = null;
            }
        } catch (Throwable th4) {
            th2 = th4;
            str = null;
        }
        return new AFi1rSDK(AFAdRevenueData(), str3, str2, getMediationNetwork());
    }
}
