package com.ss.mediakit.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
/* loaded from: classes6.dex */
public class NetUtils {
    public static final int NETTYPE_UNKNOWN = -1;

    public static long getNetId(Network network) {
        if (network == null) {
            return 0L;
        }
        return network.getNetworkHandle();
    }

    public static int getNetType(Context context) {
        try {
            NetworkInfo networkInfo = getNetworkInfo(context);
            if (networkInfo != null && networkInfo.isAvailable()) {
                return networkInfo.getType();
            }
        } catch (Throwable unused) {
        }
        return -1;
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable unused) {
            return null;
        }
    }
}
