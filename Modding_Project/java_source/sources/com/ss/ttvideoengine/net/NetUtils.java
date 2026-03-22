package com.ss.ttvideoengine.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* loaded from: classes6.dex */
public class NetUtils {
    public static final int NETTYPE_UNKNOWN = -1;
    public static long netUpdateTimeMs = -1;
    private static final BroadcastReceiver networkReceiver = new BroadcastReceiver() { // from class: com.ss.ttvideoengine.net.NetUtils.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast() || !"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                return;
            }
            NetUtils.netUpdateTimeMs = System.currentTimeMillis();
        }
    };
    public static boolean registerNetworkReceiver = false;

    public static String getNetExtraInfo(Context context) {
        try {
            NetworkInfo networkInfo = getNetworkInfo(context);
            if (networkInfo != null && networkInfo.isAvailable()) {
                return networkInfo.getExtraInfo();
            }
        } catch (Throwable unused) {
        }
        return null;
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
        if (context == null) {
            return null;
        }
        try {
            if (!registerNetworkReceiver) {
                BroadcastReceiver broadcastReceiver = networkReceiver;
                synchronized (broadcastReceiver) {
                    if (!registerNetworkReceiver) {
                        registerNetworkReceiver = true;
                        context.getApplicationContext().registerReceiver(broadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    }
                }
            }
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean isNetAvailable(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    public static void release(Context context) {
        try {
            BroadcastReceiver broadcastReceiver = networkReceiver;
            synchronized (broadcastReceiver) {
                if (registerNetworkReceiver && context != null) {
                    registerNetworkReceiver = false;
                    context.getApplicationContext().unregisterReceiver(broadcastReceiver);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
