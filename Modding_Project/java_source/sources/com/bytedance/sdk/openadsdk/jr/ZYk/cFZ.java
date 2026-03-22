package com.bytedance.sdk.openadsdk.jr.ZYk;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.bytedance.sdk.component.utils.QSm;
/* loaded from: classes3.dex */
public class cFZ {
    private static HandlerThread ZYk;
    private static oJ oJ;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ extends Handler {
        public oJ(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ZYk zYk = (ZYk) message.obj;
            if (zYk == null) {
                return;
            }
            int ZYk = zYk.ZYk();
            if (ZYk == 1) {
                zYk.cFZ();
            } else if (ZYk == 2) {
                zYk.so();
            } else {
                Pfn.ZYk(zYk.dLZ());
                return;
            }
            if (zYk.jFA()) {
                Pfn.ZYk(zYk.dLZ());
            } else if (zYk.BTZ()) {
                oJ(zYk);
            }
        }

        public void oJ(ZYk zYk) {
            if (zYk == null) {
                return;
            }
            int intValue = zYk.dLZ().intValue();
            if (!hasMessages(intValue)) {
                Message obtain = Message.obtain();
                obtain.what = intValue;
                obtain.obj = zYk;
                sendMessageDelayed(obtain, zYk.ba());
            }
        }
    }

    public static void ZYk(ZYk zYk) {
        if (zYk == null || oJ == null) {
            return;
        }
        try {
            int intValue = zYk.dLZ().intValue();
            if (oJ.hasMessages(intValue)) {
                oJ.removeMessages(intValue);
            }
        } catch (Exception unused) {
        }
    }

    public static void oJ() {
    }

    public static void oJ(ZYk zYk) {
        if (zYk == null) {
            return;
        }
        ZYk();
        oJ oJVar = oJ;
        if (oJVar != null) {
            oJVar.oJ(zYk);
        }
    }

    public static void ZYk() {
        if (oJ != null) {
            return;
        }
        try {
            HandlerThread handlerThread = ZYk;
            if (handlerThread != null && handlerThread.isAlive()) {
                return;
            }
            synchronized (cFZ.class) {
                HandlerThread handlerThread2 = ZYk;
                if (handlerThread2 != null) {
                    if (!handlerThread2.isAlive()) {
                    }
                }
                ZYk = com.bytedance.sdk.component.utils.so.oJ("csj_MRC");
                oJ = new oJ(ZYk.getLooper());
            }
        } catch (Throwable th2) {
            QSm.tB("MRC", th2.getMessage());
        }
    }
}
