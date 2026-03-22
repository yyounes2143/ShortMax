package com.bytedance.sdk.openadsdk.core.kkU.ZYk;

import android.content.Context;
import android.view.View;
import com.bytedance.adsdk.ugeno.core.si;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.ZYk.WcQ;
import com.bytedance.sdk.component.adexpress.ZYk.kkU;
import com.bytedance.sdk.component.adexpress.ZYk.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.so.awB;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class cFZ implements kkU {
    private AtomicBoolean Pfn = new AtomicBoolean(false);
    private com.bytedance.sdk.openadsdk.core.kkU.ba.tB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private awB f13152ba;
    private ScheduledFuture<?> ex;
    private Context oJ;
    private PiB tB;

    /* loaded from: classes3.dex */
    private class oJ implements Runnable {
        kkU.oJ oJ;
        private int tB;

        oJ(int i10, kkU.oJ oJVar) {
            this.tB = i10;
            this.oJ = oJVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.tB == 1) {
                cFZ.this.ZYk.oJ(true);
                cFZ cfz = cFZ.this;
                kkU.oJ oJVar = this.oJ;
                cfz.oJ(oJVar, 137, "real time out" + cFZ.this.tB.ba());
            }
        }
    }

    public cFZ(Context context, com.bytedance.sdk.openadsdk.core.kkU.ba.tB tBVar, so soVar, PiB piB) {
        this.oJ = context;
        this.ZYk = tBVar;
        this.tB = piB;
        this.ZYk.oJ(soVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public void oJ() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk() {
        try {
            ScheduledFuture<?> scheduledFuture = this.ex;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.ex.cancel(false);
            this.ex = null;
        } catch (Throwable th2) {
            QSm.tB("RenderInterceptor", "remove ugen time out task fail", th2.getMessage());
        }
    }

    public void oJ(awB awb) {
        this.f13152ba = awb;
        this.ZYk.oJ(awb);
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public boolean oJ(final kkU.oJ oJVar) {
        int ba2 = this.tB.ba();
        if (ba2 < 0) {
            oJ(oJVar, 137, "time is ".concat(String.valueOf(ba2)));
        } else {
            this.ex = ofl.oJ().schedule(new oJ(1, oJVar), ba2, TimeUnit.MILLISECONDS);
            this.ZYk.oJ(new com.bytedance.sdk.component.adexpress.ZYk.cFZ() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ZYk.cFZ.1
                @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
                public void oJ(View view, WcQ wcQ) {
                    cFZ.this.ZYk();
                    if (oJVar.tB()) {
                        return;
                    }
                    si siVar = new si();
                    siVar.oJ(0);
                    ((com.bytedance.sdk.openadsdk.core.kkU.ba.oJ) cFZ.this.tB).Jc().oJ(siVar);
                    cFZ.this.tB.Pfn().kkU();
                    com.bytedance.sdk.component.adexpress.ZYk.awB ZYk = oJVar.ZYk();
                    if (ZYk == null) {
                        return;
                    }
                    ZYk.oJ(cFZ.this.ZYk, wcQ);
                    oJVar.oJ(true);
                }

                @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
                public void oJ(int i10, String str) {
                    cFZ.this.oJ(oJVar, i10, str);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(kkU.oJ oJVar, int i10, String str) {
        com.bytedance.sdk.component.adexpress.ZYk.awB ZYk;
        if (oJVar.tB() || this.Pfn.get()) {
            return;
        }
        ZYk();
        si siVar = new si();
        siVar.oJ(i10);
        siVar.oJ(str);
        ((com.bytedance.sdk.openadsdk.core.kkU.ba.oJ) this.tB).Jc().oJ(siVar);
        if (oJVar.ZYk(this)) {
            oJVar.oJ(this);
        } else if (oJVar.tB() || (ZYk = oJVar.ZYk()) == null) {
            return;
        } else {
            oJVar.oJ(true);
            ZYk.a_(i10);
        }
        this.Pfn.getAndSet(true);
    }
}
