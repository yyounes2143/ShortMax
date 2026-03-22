package com.ss.ttvideoengine.net;

import android.os.SystemClock;
import androidx.work.PeriodicWorkRequest;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
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
        if (SystemClock.elapsedRealtime() - mServerIPTime < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            return;
        }
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.net.DNSServerIP.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InetAddress byName = InetAddress.getByName("whoami.akamai.net");
                    if (byName != null) {
                        String unused = DNSServerIP.mServerIP = byName.getHostAddress();
                        long unused2 = DNSServerIP.mServerIPTime = SystemClock.elapsedRealtime();
                        TTVideoEngineLog.i(DNSServerIP.TAG, "update dns server ip:" + DNSServerIP.mServerIP);
                    }
                } catch (UnknownHostException unused3) {
                }
            }
        });
    }
}
