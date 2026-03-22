package com.bytedance.sdk.openadsdk.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class WcQ {
    public static long Pfn = 0;
    private static volatile HandlerThread cFZ = null;
    public static volatile boolean oJ = false;
    public static AtomicBoolean ZYk = new AtomicBoolean(false);
    public static long tB = 0;

    /* renamed from: ba  reason: collision with root package name */
    private static volatile int f13102ba = 0;
    public static float ex = 1.0f;

    /* renamed from: so  reason: collision with root package name */
    private static volatile Handler f13103so = null;

    static {
        HandlerThread handlerThread = new HandlerThread("csj_init_handle", 10) { // from class: com.bytedance.sdk.openadsdk.core.WcQ.1
            boolean oJ = false;

            @Override // java.lang.Thread
            public synchronized void start() {
                if (this.oJ) {
                    return;
                }
                this.oJ = true;
                super.start();
            }
        };
        cFZ = handlerThread;
        handlerThread.start();
        com.bytedance.sdk.component.utils.so.oJ(cFZ);
        Pfn = System.currentTimeMillis();
    }

    public static boolean Pfn() {
        if (ex() == 1) {
            return true;
        }
        return false;
    }

    public static Handler ZYk() {
        if (cFZ != null && cFZ.isAlive()) {
            if (f13103so == null) {
                synchronized (WcQ.class) {
                    try {
                        if (f13103so == null) {
                            f13103so = new Handler(cFZ.getLooper());
                        }
                    } finally {
                    }
                }
            }
        } else {
            synchronized (WcQ.class) {
                try {
                    if (cFZ != null) {
                        if (!cFZ.isAlive()) {
                        }
                    }
                    cFZ = com.bytedance.sdk.component.utils.so.oJ("csj_init_handle", -1);
                    f13103so = new Handler(cFZ.getLooper());
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f13103so;
    }

    public static void ba() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - tB <= 10000) {
            return;
        }
        tB = elapsedRealtime;
        com.bytedance.sdk.openadsdk.utils.ofl.oJ(new com.bytedance.sdk.component.so.so("onSharedPreferenceChanged") { // from class: com.bytedance.sdk.openadsdk.core.WcQ.2
            @Override // java.lang.Runnable
            public void run() {
                String tB2 = com.bytedance.sdk.openadsdk.core.settings.PiB.tB(si.oJ());
                if (!TextUtils.equals(tB2, com.bytedance.sdk.openadsdk.core.settings.PiB.ex)) {
                    com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oJ(6, true);
                    com.bytedance.sdk.openadsdk.core.settings.PiB.ex = tB2;
                }
            }
        });
    }

    public static void cFZ() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - tB <= 10000) {
            return;
        }
        synchronized (WcQ.class) {
            try {
                if (elapsedRealtime - tB <= 10000) {
                    return;
                }
                tB = elapsedRealtime;
                com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.WcQ.3
                    @Override // java.lang.Runnable
                    public void run() {
                        String tB2 = com.bytedance.sdk.openadsdk.core.settings.PiB.tB(si.oJ());
                        if (!TextUtils.equals(tB2, com.bytedance.sdk.openadsdk.core.settings.PiB.ex)) {
                            com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oJ(6, true);
                            com.bytedance.sdk.openadsdk.core.settings.PiB.ex = tB2;
                        }
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static int ex() {
        return f13102ba;
    }

    public static void oJ(long j10) {
        Pfn = j10;
    }

    public static void so() {
        ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.WcQ.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.WcQ.4.1
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk("init");
                            return oJVar;
                        }
                    });
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.tB("InitHelper", th2.getMessage());
                }
            }
        });
    }

    public static Handler tB() {
        return new Handler(Looper.getMainLooper());
    }

    public static long oJ() {
        return Pfn;
    }

    public static void oJ(int i10) {
        f13102ba = i10;
    }

    public static void oJ(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                if ("mediation".equals(jSONObject.optString("name", ""))) {
                    jFA.ZYk().ZYk(jSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE, ""));
                    return;
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("InitHelper", th2.getMessage());
        }
    }
}
