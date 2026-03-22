package com.bytedance.sdk.openadsdk.ex;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class PiB {
    private static volatile PiB oJ;
    private HandlerThread ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private Map<String, Object> f13339ba;
    private final Handler tB;
    private final Executor ex = Executors.newCachedThreadPool();
    private ZYk Pfn = ZYk.oJ();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk {
        public int oJ = 300;
        public int ZYk = 6000;

        private ZYk() {
        }

        public static ZYk oJ() {
            return new ZYk();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements Serializable, Runnable {
        public Map<String, Object> Pfn;
        public String ex;
        public cY tB;
        public final AtomicInteger oJ = new AtomicInteger(0);
        public final AtomicBoolean ZYk = new AtomicBoolean(false);

        /* renamed from: ba  reason: collision with root package name */
        private final long f13340ba = SystemClock.elapsedRealtime();

        public oJ(cY cYVar, String str, Map<String, Object> map) {
            this.tB = cYVar;
            this.ex = str;
            this.Pfn = map;
        }

        public static oJ oJ(cY cYVar, String str, Map<String, Object> map) {
            return new oJ(cYVar, str, map);
        }

        public void ZYk() {
            this.oJ.incrementAndGet();
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            boolean z10;
            if (this.tB != null && !TextUtils.isEmpty(this.ex)) {
                if (this.ZYk.get()) {
                    str = "dpl_success";
                } else {
                    str = "dpl_failed";
                }
                if (this.Pfn == null) {
                    this.Pfn = new HashMap();
                }
                cY cYVar = this.tB;
                if (cYVar != null && cYVar.GSK() == 0) {
                    Map<String, Object> map = this.Pfn;
                    cY cYVar2 = this.tB;
                    if (cYVar2 != null && !cYVar2.WcQ()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    map.put("auto_click", Boolean.valueOf(z10));
                }
                this.Pfn.put("lifeCycleInit", Boolean.valueOf(com.bytedance.sdk.openadsdk.core.awB.oJ().tB()));
                this.Pfn.put("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.f13340ba));
                tB.oJ(this.tB, this.ex, str, this.Pfn);
            }
        }

        public oJ oJ(boolean z10) {
            this.ZYk.set(z10);
            return this;
        }

        public int oJ() {
            return this.oJ.get();
        }
    }

    private PiB() {
        if (this.ZYk == null) {
            this.ZYk = com.bytedance.sdk.component.utils.so.oJ("OpenAppSuccEvent_HandlerThread", 10);
        }
        this.tB = new Handler(this.ZYk.getLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.ex.PiB.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                oJ oJVar;
                if (message.what == 100) {
                    Object obj = message.obj;
                    if (obj != null && (obj instanceof oJ)) {
                        oJVar = (oJ) obj;
                    } else {
                        oJVar = null;
                    }
                    if (oJVar != null) {
                        PiB.this.ZYk(oJVar);
                        return true;
                    }
                    return true;
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        boolean ex = com.bytedance.sdk.openadsdk.core.awB.oJ().ex();
        boolean oJ2 = com.bytedance.sdk.openadsdk.core.awB.oJ().oJ(true);
        if (!ex && oJ2) {
            oJ(oJVar);
            return;
        }
        if (oJVar.Pfn == null) {
            oJVar.Pfn = new HashMap();
        }
        oJVar.Pfn.put("is_background", Boolean.valueOf(ex));
        oJVar.Pfn.put("has_focus", Boolean.valueOf(oJ2));
        tB(oJVar.oJ(true));
    }

    private void tB(oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        this.ex.execute(oJVar);
    }

    public static PiB oJ() {
        if (oJ == null) {
            synchronized (PiB.class) {
                try {
                    if (oJ == null) {
                        oJ = new PiB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public PiB oJ(Map<String, Object> map) {
        this.f13339ba = map;
        return oJ();
    }

    public void oJ(cY cYVar, String str) {
        Message obtainMessage = this.tB.obtainMessage();
        obtainMessage.what = 100;
        obtainMessage.obj = oJ.oJ(cYVar, str, this.f13339ba);
        obtainMessage.sendToTarget();
    }

    private void oJ(oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        oJVar.ZYk();
        int oJ2 = oJVar.oJ();
        ZYk zYk = this.Pfn;
        if (oJ2 * zYk.oJ > zYk.ZYk) {
            tB(oJVar.oJ(false));
            return;
        }
        Message obtainMessage = this.tB.obtainMessage();
        obtainMessage.what = 100;
        obtainMessage.obj = oJVar;
        this.tB.sendMessageDelayed(obtainMessage, this.Pfn.oJ);
    }
}
