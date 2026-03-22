package com.ss.ttm.net;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.ss.ttm.player.CalledByNative;
import com.ss.ttm.player.Keep;
import com.ss.ttm.utils.AVLogger;
@Keep
/* loaded from: classes6.dex */
public final class AVNetwork {
    public static final int IS_MOBILE_NETWORK = 2;
    public static final int IS_UNKOWN_NETWORK = 0;
    public static final int IS_WIFF_NETWORK = 1;

    @CalledByNative
    @SuppressLint({"MissingPermission"})
    public static int getNetworkType(Context context) {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } else {
                networkInfo = null;
            }
        } catch (Throwable unused) {
        }
        if (networkInfo == null) {
            AVLogger.d(AVNetwork.class.getSimpleName(), "NetworkInfo is null");
            return 0;
        }
        int type = networkInfo.getType();
        if (type == 1) {
            AVLogger.d(AVNetwork.class.getSimpleName(), "NetworkInfo is wifi");
            return 1;
        }
        if (type == 0) {
            AVLogger.d(AVNetwork.class.getSimpleName(), "NetworkInfo is mobile");
            return 2;
        }
        return 0;
    }
}
