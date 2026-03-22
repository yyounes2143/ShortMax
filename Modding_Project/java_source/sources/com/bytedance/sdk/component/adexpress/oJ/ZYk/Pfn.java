package com.bytedance.sdk.component.adexpress.oJ.ZYk;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.oJ.tB.oJ;
import com.bytedance.sdk.component.utils.oq;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3.dex */
public class Pfn extends tB {
    private static volatile Pfn ZYk;
    private static File oJ;
    private AtomicBoolean tB = new AtomicBoolean(true);
    private AtomicBoolean ex = new AtomicBoolean(false);
    private boolean Pfn = false;

    /* renamed from: ba  reason: collision with root package name */
    private AtomicBoolean f12731ba = new AtomicBoolean(false);
    private AtomicInteger cFZ = new AtomicInteger(0);

    /* renamed from: so  reason: collision with root package name */
    private AtomicLong f12732so = new AtomicLong();

    private Pfn() {
        kkU();
    }

    public static Pfn ZYk() {
        if (ZYk == null) {
            synchronized (Pfn.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new Pfn();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    private void dLZ() {
        if (this.cFZ.getAndSet(0) > 0 && System.currentTimeMillis() - this.f12732so.get() > TTAdConstant.AD_MAX_EVENT_TIME) {
            cFZ();
        }
    }

    private void kkU() {
        com.bytedance.sdk.component.adexpress.ex.ex.ZYk(new com.bytedance.sdk.component.so.so("init") { // from class: com.bytedance.sdk.component.adexpress.oJ.ZYk.Pfn.1
            @Override // java.lang.Runnable
            public void run() {
                so.oJ();
                Pfn.this.tB.set(false);
                Pfn.this.ex();
                Pfn.this.cFZ();
                if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB() != null && oq.oJ(com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ZYk()) && com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB() != null) {
                    com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ex();
                }
            }
        }, 10);
    }

    public static File so() {
        if (oJ == null) {
            try {
                File file = new File(new File(ex.oJ(), "tt_tmpl_pkg"), "template");
                file.mkdirs();
                oJ = file;
            } catch (Throwable unused) {
            }
        }
        return oJ;
    }

    public boolean Pfn() {
        return this.Pfn;
    }

    public com.bytedance.sdk.component.adexpress.oJ.tB.oJ ba() {
        return so.ZYk();
    }

    public void cFZ() {
        oJ(false);
    }

    public void ex() {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ZYk2 = so.ZYk();
        if (ZYk2 != null && ZYk2.so()) {
            boolean oJ2 = oJ(ZYk2);
            if (!oJ2) {
                so.ex();
            }
            this.Pfn = oJ2;
        }
    }

    public void jFA() {
        this.f12731ba.set(true);
        this.Pfn = false;
        this.ex.set(false);
    }

    public void tB() {
        kkU();
    }

    public boolean oJ(com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar) {
        if (oJVar == null) {
            return false;
        }
        return oJ(oJVar.oJ()) || oJ(oJVar.Pfn()) || oJ(oJVar.ba());
    }

    @Override // com.bytedance.sdk.component.adexpress.oJ.ZYk.tB
    public File oJ() {
        return so();
    }

    public void oJ(boolean z10) {
        List<oJ.C0170oJ> list;
        boolean z11;
        if (this.tB.get()) {
            return;
        }
        try {
            if (this.ex.get()) {
                if (z10) {
                    this.cFZ.getAndIncrement();
                    return;
                }
                return;
            }
            boolean z12 = true;
            this.ex.set(true);
            com.bytedance.sdk.component.adexpress.oJ.tB.oJ Pfn = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().Pfn();
            com.bytedance.sdk.component.adexpress.oJ.tB.oJ ZYk2 = so.ZYk();
            if (Pfn != null && Pfn.so()) {
                if (!so.ZYk(Pfn)) {
                    this.ex.set(false);
                    this.f12732so.set(System.currentTimeMillis());
                    return;
                }
                if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB() != null) {
                    com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().tB().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.oJ.ZYk.Pfn.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ZYk();
                        }
                    });
                }
                so.oJ(Pfn);
                boolean oJ2 = (Pfn.Pfn() == null || TextUtils.isEmpty(Pfn.Pfn().oJ())) ? false : oJ(Pfn.Pfn().oJ());
                if (Pfn.oJ().size() != 0) {
                    list = oJ(Pfn, ZYk2);
                    z11 = list != null;
                } else {
                    list = null;
                    z11 = oJ2;
                }
                if (!oJ2) {
                    List<oJ.C0170oJ> ZYk3 = ZYk(Pfn, ZYk2);
                    if (list == null || ZYk3 == null) {
                        list = ZYk3;
                    } else {
                        list.addAll(ZYk3);
                    }
                    if (ZYk3 == null) {
                        z12 = false;
                    }
                    if (ZYk3 == null) {
                        this.ex.set(false);
                    }
                    z11 = z12;
                }
                if (z11 && oJ(Pfn)) {
                    so.oJ(Pfn);
                    so.tB();
                    ZYk(list);
                }
                ex();
                this.ex.set(false);
                this.f12732so.set(System.currentTimeMillis());
                dLZ();
                return;
            }
            this.ex.set(false);
            oJ(109);
        } catch (Throwable unused) {
        }
    }

    public void ZYk(boolean z10) {
        this.f12731ba.set(z10);
    }
}
