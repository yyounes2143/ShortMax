package com.bytedance.sdk.openadsdk.core.cFZ;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.settings.ba;
import com.bytedance.sdk.openadsdk.core.si;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile boolean ZYk;
    private static volatile oJ oJ;
    private static volatile long tB;
    private Handler Pfn;
    private final Queue<C0204oJ> ex = new LinkedList();

    /* renamed from: ba  reason: collision with root package name */
    private final ba f13121ba = si.ex();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.cFZ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0204oJ {
        private final String ZYk;
        private final long oJ;

        private C0204oJ(long j10, String str) {
            this.oJ = j10;
            this.ZYk = str;
        }
    }

    private oJ() {
    }

    private synchronized boolean ZYk(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        int oq2 = this.f13121ba.oq();
        long QSm = this.f13121ba.QSm();
        if (this.ex.size() > 0 && this.ex.size() >= oq2) {
            long abs = Math.abs(currentTimeMillis - this.ex.peek().oJ);
            if (abs <= QSm) {
                ZYk(QSm - abs);
                return true;
            }
            this.ex.poll();
            this.ex.offer(new C0204oJ(currentTimeMillis, str));
        } else {
            this.ex.offer(new C0204oJ(currentTimeMillis, str));
        }
        return false;
    }

    public synchronized String tB() {
        String str;
        try {
            HashMap hashMap = new HashMap();
            for (C0204oJ c0204oJ : this.ex) {
                if (hashMap.containsKey(c0204oJ.ZYk)) {
                    hashMap.put(c0204oJ.ZYk, Integer.valueOf(((Integer) hashMap.get(c0204oJ.ZYk)).intValue() + 1));
                } else {
                    hashMap.put(c0204oJ.ZYk, 1);
                }
            }
            str = "";
            int i10 = Integer.MIN_VALUE;
            for (String str2 : hashMap.keySet()) {
                int intValue = ((Integer) hashMap.get(str2)).intValue();
                if (i10 < intValue) {
                    str = str2;
                    i10 = intValue;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return str;
    }

    public static oJ oJ() {
        if (oJ == null) {
            synchronized (oJ.class) {
                try {
                    if (oJ == null) {
                        oJ = new oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public synchronized boolean oJ(String str) {
        try {
            if (ZYk(str)) {
                oJ(true);
                oJ(tB);
            } else {
                oJ(false);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return ZYk;
    }

    private synchronized void oJ(long j10) {
        try {
            if (this.Pfn == null) {
                this.Pfn = new Handler(Looper.getMainLooper());
            }
            this.Pfn.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.cFZ.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.oJ(false);
                }
            }, j10);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean ZYk() {
        return ZYk;
    }

    private synchronized void ZYk(long j10) {
        tB = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void oJ(boolean z10) {
        ZYk = z10;
    }
}
