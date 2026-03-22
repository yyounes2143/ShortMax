package com.pandora.ttlicense2.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
/* loaded from: classes6.dex */
public class NetWorkUtils {
    public static int NETWORK_INFO_EXPIRED_TIME_MS = 1000;
    private static final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.pandora.ttlicense2.utils.NetWorkUtils.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfoListener networkInfoListener;
            if (!isInitialStickyBroadcast() && intent != null && TextUtils.equals(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                NetWorkUtils.updateNetworkInfoCache(networkInfo);
                if (networkInfo == null) {
                    networkInfo = NetWorkUtils.getActiveNetworkInfo(context);
                }
                synchronized (NetWorkUtils.class) {
                    networkInfoListener = NetWorkUtils.sListener;
                }
                if (networkInfoListener != null && networkInfo != null) {
                    networkInfoListener.onNetworkConnectionChanged(networkInfo);
                }
            }
        }
    };
    private static volatile boolean sEnable;
    private static NetworkInfoListener sListener;
    private static NetworkInfo sNetworkInfo;
    private static long sNetworkInfoUpdateTimeMS;
    private static boolean sRegistered;

    /* loaded from: classes6.dex */
    public interface NetworkInfoListener {
        @MainThread
        void onNetworkConnectionChanged(@NonNull NetworkInfo networkInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NetworkInfo getActiveNetworkInfo(Context context) {
        ConnectivityManager connectivityManager;
        if (!sEnable || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return null;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        updateNetworkInfoCache(activeNetworkInfo);
        return activeNetworkInfo;
    }

    private static NetworkInfo getNetworkInfoOptANR(Context context) {
        NetworkInfo networkInfo;
        synchronized (NetWorkUtils.class) {
            networkInfo = sNetworkInfo;
        }
        if (networkInfo != null && !isNetworkInfoCacheExpired()) {
            return networkInfo;
        }
        return getActiveNetworkInfo(context);
    }

    public static boolean isNetAvailable(Context context) {
        resister(context);
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    public static boolean isNetAvailableOptANR(Context context) {
        resister(context);
        NetworkInfo networkInfoOptANR = getNetworkInfoOptANR(context);
        if (networkInfoOptANR != null && networkInfoOptANR.isConnected()) {
            return true;
        }
        return false;
    }

    private static boolean isNetworkInfoCacheExpired() {
        boolean z10;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (NetWorkUtils.class) {
            if (uptimeMillis - sNetworkInfoUpdateTimeMS > NETWORK_INFO_EXPIRED_TIME_MS) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    private static synchronized void resister(Context context) {
        synchronized (NetWorkUtils.class) {
            if (!sEnable) {
                return;
            }
            synchronized (NetWorkUtils.class) {
                if (sRegistered) {
                    return;
                }
                sRegistered = true;
                context.registerReceiver(receiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            }
        }
    }

    public static void setEnable(Context context, boolean z10) {
        sEnable = z10;
        if (z10) {
            resister(context);
        } else {
            unregister(context);
        }
    }

    public static void setNetworkInfoListener(Context context, NetworkInfoListener networkInfoListener) {
        synchronized (NetWorkUtils.class) {
            sListener = networkInfoListener;
        }
        resister(context);
    }

    private static synchronized void unregister(Context context) {
        synchronized (NetWorkUtils.class) {
            if (!sRegistered) {
                return;
            }
            sRegistered = false;
            context.unregisterReceiver(receiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateNetworkInfoCache(NetworkInfo networkInfo) {
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (NetWorkUtils.class) {
            sNetworkInfo = networkInfo;
            sNetworkInfoUpdateTimeMS = uptimeMillis;
        }
    }
}
