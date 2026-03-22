package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class HL {
    private static final Object oJ = new Object();
    private static final Map<oJ, Object> ZYk = new ConcurrentHashMap();
    private static AtomicBoolean tB = new AtomicBoolean(false);
    private static volatile int ex = -1;
    private static volatile long Pfn = 0;

    /* renamed from: ba  reason: collision with root package name */
    private static volatile int f12814ba = 60000;
    private static RZ cFZ = null;

    /* renamed from: so  reason: collision with root package name */
    private static final AtomicBoolean f12815so = new AtomicBoolean(false);

    /* loaded from: classes3.dex */
    private static class ZYk extends BroadcastReceiver {
        private ZYk() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                boolean z10 = false;
                boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
                if (HL.ZYk != null && HL.ZYk.size() > 0) {
                    z10 = true;
                }
                HL.ZYk(context, intent, z10, booleanExtra);
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(Context context, Intent intent, boolean z10, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(final Context context, final Intent intent, final boolean z10, final boolean z11) {
        if (!z10 && z11) {
            ex = 0;
        } else if (f12815so.compareAndSet(false, true)) {
            com.bytedance.sdk.component.so.ba.ZYk(new com.bytedance.sdk.component.so.so("getNetworkType") { // from class: com.bytedance.sdk.component.utils.HL.1
                @Override // java.lang.Runnable
                public void run() {
                    int ZYk2;
                    if (!z11) {
                        ZYk2 = HL.ZYk(context);
                    } else {
                        ZYk2 = 0;
                    }
                    int unused = HL.ex = ZYk2;
                    HL.f12815so.set(false);
                    if (z10) {
                        HL.ZYk(context, intent, HL.ex, z11);
                    }
                }
            });
        }
    }

    private static int tB(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        RZ rz = cFZ;
                        return (rz == null || !rz.oJ(context, telephonyManager)) ? 5 : 6;
                    case 20:
                        return 6;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        return (TextUtils.isEmpty(subtypeName) || !(subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000"))) ? 1 : 3;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(Context context, Intent intent, int i10, boolean z10) {
        Map<oJ, Object> map = ZYk;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (oJ oJVar : map.keySet()) {
            if (oJVar != null) {
                try {
                    oJVar.oJ(context, intent, !z10, i10);
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static int oJ(Context context, long j10) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Pfn + j10 <= elapsedRealtime) {
            return ZYk(context);
        }
        if (ex == -1) {
            return ZYk(context);
        }
        if (elapsedRealtime - Pfn >= f12814ba) {
            ZYk(context, (Intent) null, false, false);
        }
        return ex;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int ZYk(Context context) {
        ex = tB(context);
        Pfn = SystemClock.elapsedRealtime();
        return ex;
    }

    public static void oJ(oJ oJVar, Context context) {
        if (oJVar == null) {
            return;
        }
        if (!tB.get()) {
            try {
                context.registerReceiver(new ZYk(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                tB.set(true);
            } catch (Throwable unused) {
            }
        }
        ZYk.put(oJVar, oJ);
    }

    public static void oJ(oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        ZYk.remove(oJVar);
    }
}
