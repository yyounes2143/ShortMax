package com.bytedance.sdk.openadsdk.jr.oJ;

import android.os.Handler;
import android.os.SystemClock;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private final cY ZYk;
    private int oJ = tB.ZYk;
    private final AtomicBoolean tB = new AtomicBoolean(false);
    private final AtomicBoolean ex = new AtomicBoolean(true);
    private final AtomicInteger Pfn = new AtomicInteger(0);

    /* renamed from: ba  reason: collision with root package name */
    private long f13370ba = 0;
    private long cFZ = 0;

    /* renamed from: so  reason: collision with root package name */
    private final Runnable f13371so = new Runnable() { // from class: com.bytedance.sdk.openadsdk.jr.oJ.ZYk.3
        @Override // java.lang.Runnable
        public void run() {
            ZYk.this.ex();
        }
    };

    public ZYk(cY cYVar) {
        this.ZYk = cYVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ba() {
        if (this.Pfn.get() == 1 && this.f13370ba != 0) {
            Handler oJ = oJ.oJ();
            if (oJ != null) {
                oJ.removeCallbacks(this.f13371so);
            }
            this.cFZ += SystemClock.elapsedRealtime() - this.f13370ba;
            this.f13370ba = 0L;
            this.Pfn.set(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Pfn() {
        if (this.Pfn.get() == 2) {
            this.f13370ba = SystemClock.elapsedRealtime();
            Handler oJ = oJ.oJ();
            if (oJ != null) {
                oJ.postDelayed(this.f13371so, this.oJ - this.cFZ);
            }
            this.Pfn.set(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        if (this.tB.compareAndSet(false, true)) {
            ZYk();
            final long elapsedRealtime = this.cFZ + (SystemClock.elapsedRealtime() - this.f13370ba);
            this.cFZ = elapsedRealtime;
            ofl.tB(new so("ev_tracker") { // from class: com.bytedance.sdk.openadsdk.jr.oJ.ZYk.1
                @Override // java.lang.Runnable
                public void run() {
                    String oJ = HyG.oJ(ZYk.this.ZYk);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("ev_wait_time_server", ZYk.this.ZYk.YI() * 1000);
                        jSONObject.put("ev_wait_time_client", elapsedRealtime);
                    } catch (JSONException e10) {
                        QSm.tB("EvTracker", e10.getMessage());
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(ZYk.this.ZYk, oJ, ZYk.this.ZYk.bTd(), jSONObject);
                }
            });
        }
    }

    public void ZYk() {
        this.Pfn.set(3);
        Handler oJ = oJ.oJ();
        if (oJ != null) {
            oJ.removeCallbacks(this.f13371so);
        }
    }

    public void oJ() {
        if (this.Pfn.get() != 0) {
            return;
        }
        this.oJ = this.ZYk.YI() * 1000;
        this.Pfn.set(1);
        this.f13370ba = SystemClock.elapsedRealtime();
        Handler oJ = oJ.oJ();
        if (oJ != null) {
            oJ.postDelayed(this.f13371so, this.oJ);
        }
    }

    public boolean tB() {
        return this.Pfn.get() == 3;
    }

    public void oJ(final int i10) {
        Handler oJ;
        if (this.Pfn.get() == 3 || (oJ = oJ.oJ()) == null) {
            return;
        }
        oJ.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.jr.oJ.ZYk.2
            @Override // java.lang.Runnable
            public void run() {
                if (i10 == 4 && ZYk.this.ex.get()) {
                    ZYk.this.Pfn();
                    return;
                }
                int i11 = i10;
                if (i11 == 8) {
                    ZYk.this.ba();
                } else if (i11 == 5) {
                    ZYk.this.ex();
                }
            }
        });
    }

    public void oJ(boolean z10) {
        this.ex.set(z10);
    }
}
