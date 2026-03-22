package com.ss.mediakit.net;

import androidx.work.PeriodicWorkRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes6.dex */
public class DNSServerIP {
    private static final String TAG = "DNSServerIP";
    private static final int UPDATE_PEROID = 300000;
    private static volatile String mServerIP;
    private static volatile long mServerIPTime;

    public static String getDNSServerIP() {
        updateDNSServerIP();
        return mServerIP;
    }

    public static void updateDNSServerIP() {
        if (System.currentTimeMillis() - mServerIPTime < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            return;
        }
        AVMDLThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.mediakit.net.DNSServerIP.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InetAddress byName = InetAddress.getByName("whoami.akamai.net");
                    if (byName != null) {
                        String unused = DNSServerIP.mServerIP = byName.getHostAddress();
                        long unused2 = DNSServerIP.mServerIPTime = System.currentTimeMillis();
                    }
                } catch (UnknownHostException unused3) {
                }
            }
        });
    }
}
