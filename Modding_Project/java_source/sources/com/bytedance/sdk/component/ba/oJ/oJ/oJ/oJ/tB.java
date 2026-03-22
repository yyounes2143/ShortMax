package com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.so;
import com.bytedance.sdk.component.utils.QSm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class tB {
    private static int tB = 20;
    private boolean Pfn;
    private final Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f12765so;
    protected final List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ZYk = new ArrayList();
    private final List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ex = new ArrayList();

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12764ba = false;
    private volatile boolean cFZ = false;
    private final Runnable jFA = new Runnable() { // from class: com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.tB.1
        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            synchronized (tB.this) {
                try {
                    tB.this.cFZ = false;
                    if (tB.this.ZYk.isEmpty()) {
                        tB.this.f12764ba = false;
                        return;
                    }
                    if (tB.this.Pfn) {
                        for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : tB.this.ZYk) {
                            tB.this.ex.add(oJVar);
                        }
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(tB.this.ZYk);
                    }
                    tB.this.ZYk.clear();
                    tB.this.f12764ba = false;
                    if (arrayList != null) {
                        tB.this.ex(arrayList);
                        return;
                    }
                    tB tBVar = tB.this;
                    tBVar.ex(tBVar.ex);
                    tB.this.ex.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    };

    public tB(Context context) {
        this.f12765so = true;
        this.oJ = context;
        try {
            com.bytedance.sdk.component.ba.oJ.Pfn eZI = so.cFZ().eZI();
            if (eZI != null) {
                this.f12765so = eZI.eZI();
                this.Pfn = eZI.si();
                tB = eZI.Ry();
            }
            QSm.oJ("DBInsertMemRepo", "enableOpt:" + this.f12765so + ",BATCH_SIZE:" + tB, Boolean.valueOf(this.Pfn));
        } catch (Throwable unused) {
        }
    }

    public Context Pfn() {
        return this.oJ;
    }

    public abstract String ZYk();

    protected long ba() {
        return 10000L;
    }

    public void ex(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), ZYk(), list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void tB(List<String> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                Iterator<com.bytedance.sdk.component.ba.oJ.ex.oJ> it = this.ZYk.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.ba.oJ.ex.oJ next = it.next();
                    if (next != null) {
                        String tB2 = next.tB();
                        if (!TextUtils.isEmpty(tB2) && list.contains(tB2)) {
                            it.remove();
                        }
                    }
                }
            }
        }
    }

    private void oJ() {
        if (!this.f12764ba) {
            com.bytedance.sdk.component.ba.oJ.cFZ.oJ.oJ().postDelayed(this.jFA, this.Pfn ? ba() : com.bytedance.sdk.component.ba.oJ.cFZ.oJ.ZYk());
            this.f12764ba = true;
        }
        if (this.f12765so && this.ZYk.size() >= tB && !this.cFZ) {
            com.bytedance.sdk.component.ba.oJ.cFZ.oJ.oJ().removeCallbacks(this.jFA);
            com.bytedance.sdk.component.ba.oJ.cFZ.oJ.oJ().post(this.jFA);
            this.f12764ba = true;
            this.cFZ = true;
        }
    }

    public synchronized void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar.cFZ() != null && !TextUtils.isEmpty(oJVar.tB())) {
            this.ZYk.add(oJVar);
            oJ();
        }
    }
}
