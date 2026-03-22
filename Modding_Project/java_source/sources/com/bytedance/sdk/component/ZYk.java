package com.bytedance.sdk.component;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import com.bytedance.sdk.component.oJ;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes3.dex */
public class ZYk {
    @GuardedBy("sLock")
    private static volatile Handler ZYk;
    private static final Object oJ = new Object();
    @GuardedBy("sLock")
    private static final LinkedList<Runnable> tB = new LinkedList<>();
    private static Object ex = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ extends Handler {
        oJ(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                try {
                    ZYk.tB();
                } catch (OutOfMemoryError unused) {
                }
            }
        }
    }

    private static Handler ZYk() {
        Handler handler;
        HandlerThread handlerThread;
        if (ZYk == null) {
            synchronized (oJ) {
                try {
                    if (ZYk == null) {
                        oJ.InterfaceC0177oJ interfaceC0177oJ = com.bytedance.sdk.component.oJ.oJ;
                        if (interfaceC0177oJ != null) {
                            handlerThread = interfaceC0177oJ.getSafeHandlerThread("queued-work-looper", -2);
                        } else {
                            handlerThread = null;
                        }
                        if (handlerThread == null) {
                            handlerThread = new HandlerThread("queued-work-looper", -2);
                            handlerThread.start();
                        }
                        ZYk = new oJ(handlerThread.getLooper());
                    }
                    handler = ZYk;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return handler;
        }
        return ZYk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tB() {
        LinkedList linkedList;
        synchronized (ex) {
            try {
                synchronized (oJ) {
                    LinkedList<Runnable> linkedList2 = tB;
                    linkedList = (LinkedList) linkedList2.clone();
                    linkedList2.clear();
                    ZYk().removeMessages(1);
                }
                if (linkedList.size() > 0) {
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void oJ(Runnable runnable, boolean z10) {
        try {
            Handler ZYk2 = ZYk();
            synchronized (oJ) {
                tB.add(runnable);
                if (z10) {
                    ZYk2.sendEmptyMessageDelayed(1, 100L);
                } else {
                    ZYk2.sendEmptyMessage(1);
                }
            }
        } catch (OutOfMemoryError unused) {
        }
    }
}
