package com.bytedance.sdk.openadsdk.jr.oJ;

import android.os.Handler;
import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.so;
/* loaded from: classes3.dex */
public class oJ {
    private static HandlerThread ZYk;
    private static Handler oJ;

    public static Handler oJ() {
        HandlerThread handlerThread;
        try {
            handlerThread = ZYk;
        } catch (Throwable unused) {
        }
        if (handlerThread != null && handlerThread.isAlive()) {
            if (oJ == null) {
                synchronized (oJ.class) {
                    if (oJ == null) {
                        oJ = new Handler(ZYk.getLooper());
                    }
                }
            }
            return oJ;
        }
        synchronized (oJ.class) {
            HandlerThread handlerThread2 = ZYk;
            if (handlerThread2 != null) {
                if (!handlerThread2.isAlive()) {
                }
            }
            ZYk = so.oJ("csj_ev");
            oJ = new Handler(ZYk.getLooper());
        }
        return oJ;
    }
}
