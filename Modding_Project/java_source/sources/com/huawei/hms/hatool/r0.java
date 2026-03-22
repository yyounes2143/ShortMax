package com.huawei.hms.hatool;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import hb.f1;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class r0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f22191a = {1, 6, 7, 9};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f22192b = {0, 2, 3, 4, 5};

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Integer, String> f22193c = new a();

    /* loaded from: classes5.dex */
    static class a extends HashMap<Integer, String> {
        a() {
            put(1, "2G");
            put(2, "2G");
            put(4, "2G");
            put(7, "2G");
            put(11, "2G");
            put(3, "3G");
            put(8, "3G");
            put(9, "3G");
            put(10, "3G");
            put(15, "3G");
            put(5, "3G");
            put(6, "3G");
            put(12, "3G");
            put(14, "3G");
            put(13, "4G");
            if (Build.VERSION.SDK_INT >= 29) {
                put(20, "5G");
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    private static NetworkInfo a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                return connectivityManager.getActiveNetworkInfo();
            }
            return null;
        } catch (Throwable th2) {
            f1.e("hmsSdk", "cannot get network state, ensure permission android.permission.ACCESS_NETWORK_STATE in the manifest: " + th2.getMessage());
            return null;
        }
    }

    private static String b(int i10) {
        String str;
        Map<Integer, String> map = f22193c;
        if (!map.containsKey(Integer.valueOf(i10))) {
            str = "unknown";
        } else {
            str = map.get(Integer.valueOf(i10));
        }
        if ("unknown".equals(str) && Build.VERSION.SDK_INT >= 25) {
            if (i10 != 16) {
                if (i10 != 17) {
                    return "unknown";
                }
                return "3G";
            }
            return "2G";
        }
        return str;
    }

    private static boolean c(NetworkInfo networkInfo) {
        if (networkInfo == null || Arrays.binarySearch(f22192b, networkInfo.getType()) == -1) {
            return false;
        }
        return true;
    }

    public static String d(Context context) {
        NetworkInfo a10;
        if (context == null) {
            return "unknown";
        }
        try {
            a10 = a(context);
        } catch (Throwable unused) {
        }
        if (!e(a10)) {
            return DevicePublicKeyStringDef.NONE;
        }
        if (f(a10)) {
            return "WIFI";
        }
        if (c(a10)) {
            return b(a10.getSubtype());
        }
        return "unknown";
    }

    private static boolean e(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    private static boolean f(NetworkInfo networkInfo) {
        if (networkInfo == null || Arrays.binarySearch(f22191a, networkInfo.getType()) == -1) {
            return false;
        }
        return true;
    }
}
