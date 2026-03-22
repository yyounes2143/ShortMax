package com.bytedance.sdk.component.utils;

import android.os.HandlerThread;
/* loaded from: classes3.dex */
public class so {
    private static HandlerThread oJ;

    public static void oJ(HandlerThread handlerThread) {
        oJ = handlerThread;
    }

    public static HandlerThread oJ(String str) {
        return oJ(str, 0);
    }

    public static HandlerThread oJ(String str, int i10) {
        if (com.bytedance.sdk.component.so.jFA.sCrashHappened) {
            return oJ;
        }
        try {
            HandlerThread handlerThread = new HandlerThread(str, i10) { // from class: com.bytedance.sdk.component.utils.so.1
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
            handlerThread.start();
            return handlerThread;
        } catch (Throwable th2) {
            QSm.oJ("HandlerThreadUtils", "new handlerThread error", th2);
            return oJ;
        }
    }
}
