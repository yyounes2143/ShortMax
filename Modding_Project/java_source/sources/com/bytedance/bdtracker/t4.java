package com.bytedance.bdtracker;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
/* loaded from: classes3.dex */
public class t4 {

    /* renamed from: a  reason: collision with root package name */
    public static long f12408a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static a f12409b = a.UNKNOWN;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f12410c = false;

    /* loaded from: classes3.dex */
    public enum a {
        UNKNOWN(-1),
        NONE(0),
        MOBILE(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        WIFI(4),
        MOBILE_4G(5),
        MOBILE_5G(6),
        WIFI_24GHZ(7),
        WIFI_5GHZ(8),
        MOBILE_3G_H(9),
        MOBILE_3G_HP(10);
        

        /* renamed from: a  reason: collision with root package name */
        public final int f12424a;

        a(int i10) {
            this.f12424a = i10;
        }

        public boolean a() {
            if (this != UNKNOWN && this != NONE) {
                return true;
            }
            return false;
        }
    }

    public static a a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (1 == type) {
                    return a.WIFI;
                }
                if (type == 0) {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
                    if (telephonyManager == null) {
                        return a.NONE;
                    }
                    int networkType = telephonyManager.getNetworkType();
                    if (networkType != 3) {
                        if (networkType == 20) {
                            return a.MOBILE_5G;
                        }
                        if (networkType != 5 && networkType != 6) {
                            switch (networkType) {
                                case 8:
                                case 9:
                                case 10:
                                    break;
                                default:
                                    switch (networkType) {
                                        case 12:
                                        case 14:
                                        case 15:
                                            break;
                                        case 13:
                                            return a.MOBILE_4G;
                                        default:
                                            return a.MOBILE;
                                    }
                            }
                        }
                    }
                    return a.MOBILE_3G;
                }
                return a.MOBILE;
            }
            return a.NONE;
        } catch (Throwable unused) {
            return a.MOBILE;
        }
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String a(Context context, boolean z10) {
        a b10 = b(context, z10);
        return b10 == a.WIFI ? "wifi" : b10 == a.WIFI_24GHZ ? "wifi24ghz" : b10 == a.WIFI_5GHZ ? "wifi5ghz" : b10 == a.MOBILE_2G ? "2g" : b10 == a.MOBILE_3G ? "3g" : b10 == a.MOBILE_3G_H ? "3gh" : b10 == a.MOBILE_3G_HP ? "3ghp" : b10 == a.MOBILE_4G ? "4g" : b10 == a.MOBILE_5G ? "5g" : b10 == a.MOBILE ? "mobile" : "";
    }

    public static a b(Context context, boolean z10) {
        if (!f12410c && context != null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            context.getApplicationContext().registerReceiver(new c3(), intentFilter);
            f12410c = true;
        }
        if (f12409b == a.UNKNOWN) {
            f12409b = a(context);
        }
        if (z10 && System.currentTimeMillis() - f12408a > 2000) {
            f12409b = a(context);
            f12408a = System.currentTimeMillis();
        }
        return f12409b;
    }
}
