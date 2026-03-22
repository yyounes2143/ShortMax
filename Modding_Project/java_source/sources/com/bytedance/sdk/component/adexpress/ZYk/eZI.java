package com.bytedance.sdk.component.adexpress.ZYk;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.ZYk.kkU;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class eZI implements kkU {
    private ScheduledFuture<?> Pfn;
    private com.bytedance.sdk.component.adexpress.Pfn.oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private AtomicBoolean f12640ba = new AtomicBoolean(false);
    private PiB ex;
    private Context oJ;
    private so tB;

    /* loaded from: classes3.dex */
    private class oJ implements Runnable {
        kkU.oJ oJ;
        private int tB;

        public oJ(int i10, kkU.oJ oJVar) {
            this.tB = i10;
            this.oJ = oJVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.tB == 1) {
                eZI.this.ZYk.oJ(true);
                eZI.this.oJ(this.oJ, 107, null);
            }
        }
    }

    public eZI(Context context, PiB piB, com.bytedance.sdk.component.adexpress.Pfn.oJ oJVar, so soVar) {
        this.oJ = context;
        this.ex = piB;
        this.tB = soVar;
        this.ZYk = oJVar;
        oJVar.oJ(this.tB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        try {
            ScheduledFuture<?> scheduledFuture = this.Pfn;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.Pfn.cancel(false);
                this.Pfn = null;
            }
        } catch (Throwable unused) {
        }
    }

    public com.bytedance.sdk.component.adexpress.Pfn.oJ ZYk() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public boolean oJ(final kkU.oJ oJVar) {
        int ba2 = this.ex.ba();
        if (ba2 < 0) {
            oJ(oJVar, 107, "time is ".concat(String.valueOf(ba2)));
        } else {
            this.Pfn = com.bytedance.sdk.component.adexpress.ex.ex.oJ(new oJ(1, oJVar), ba2, TimeUnit.MILLISECONDS);
            this.ZYk.oJ(new cFZ() { // from class: com.bytedance.sdk.component.adexpress.ZYk.eZI.1
                @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
                public void oJ(View view, WcQ wcQ) {
                    awB ZYk;
                    eZI.this.tB();
                    if (oJVar.tB() || (ZYk = oJVar.ZYk()) == null) {
                        return;
                    }
                    ZYk.oJ(eZI.this.ZYk, wcQ);
                    oJVar.oJ(true);
                }

                @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
                public void oJ(int i10, String str) {
                    eZI.this.oJ(oJVar, i10, str);
                }
            });
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public void oJ() {
        this.ZYk.ex();
        tB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(kkU.oJ oJVar, int i10, String str) {
        awB ZYk;
        if (oJVar.tB() || this.f12640ba.get()) {
            return;
        }
        tB();
        this.ex.Pfn().oJ(i10, str);
        if (oJVar.ZYk(this)) {
            oJVar.oJ(this);
        } else if (oJVar.tB() || (ZYk = oJVar.ZYk()) == null) {
            return;
        } else {
            oJVar.oJ(true);
            ZYk.a_(i10);
        }
        this.f12640ba.getAndSet(true);
    }
}
