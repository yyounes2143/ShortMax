package com.bytedance.sdk.component.ba.oJ.cFZ;

import android.os.Handler;
import android.os.HandlerThread;
import com.bytedance.sdk.component.ba.oJ.Pfn;
import com.bytedance.sdk.component.ba.oJ.so;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile Handler ZYk = null;
    private static volatile HandlerThread oJ = null;
    private static int tB = 3000;

    static {
        tB();
    }

    public static int ZYk() {
        if (tB <= 0) {
            tB = 3000;
        }
        return tB;
    }

    public static Handler oJ() {
        if (oJ != null && oJ.isAlive()) {
            if (ZYk == null) {
                synchronized (oJ.class) {
                    try {
                        if (ZYk == null) {
                            ZYk = new Handler(oJ.getLooper());
                        }
                    } finally {
                    }
                }
            }
        } else {
            synchronized (oJ.class) {
                try {
                    if (oJ != null) {
                        if (!oJ.isAlive()) {
                        }
                    }
                    tB();
                    ZYk = new Handler(oJ.getLooper());
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    private static void tB() {
        HandlerThread oJ2;
        Pfn eZI = so.cFZ().eZI();
        if (eZI != null && (oJ2 = eZI.oJ("csj_ad_log", 10)) != null) {
            oJ = oJ2;
            return;
        }
        HandlerThread handlerThread = new HandlerThread("csj_ad_log", 10);
        oJ = handlerThread;
        handlerThread.start();
    }
}
