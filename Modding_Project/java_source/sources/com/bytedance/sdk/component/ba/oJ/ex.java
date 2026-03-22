package com.bytedance.sdk.component.ba.oJ;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.oq;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public class ex {
    public static final ex oJ = new ex();

    private boolean tB() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return true;
        }
        return false;
    }

    private void ZYk(oJ oJVar, Context context) {
        tB.oJ(context, "context == null");
        tB.oJ(oJVar, "AdLogConfig == null");
        tB.oJ(oJVar.ex(), "AdLogDepend ==null");
    }

    public void ZYk() {
        final Pfn eZI = so.cFZ().eZI();
        if (eZI == null || so.cFZ().ba() == null || eZI.ex() == null) {
            return;
        }
        if (so.cFZ().ZYk()) {
            if (oJ(so.cFZ().ba(), eZI)) {
                so.cFZ().dLZ();
                return;
            } else if (tB()) {
                eZI.ex().execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("stop") { // from class: com.bytedance.sdk.component.ba.oJ.ex.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ex.this.ZYk(eZI.ba());
                    }
                });
                return;
            } else {
                ZYk(eZI.ba());
                return;
            }
        }
        so.cFZ().dLZ();
    }

    public void oJ(oJ oJVar, Context context) {
        ZYk(oJVar, context);
        so.cFZ().oJ(context);
        so.cFZ().oJ(oJVar.kkU());
        so.cFZ().ZYk(oJVar.cFZ());
        so.cFZ().tB(oJVar.so());
        so.cFZ().oJ(oJVar.ZYk());
        so.cFZ().ex(oJVar.jFA());
        so.cFZ().Pfn(oJVar.ba());
        so.cFZ().oJ(oJVar.oJ() == null ? com.bytedance.sdk.component.ba.oJ.oJ.oJ.Pfn.oJ : oJVar.oJ());
        so.cFZ().ZYk(oJVar.dLZ());
        so.cFZ().oJ(oJVar.ex());
        so.cFZ().oJ(oJVar.tB());
        so.cFZ().oJ(oJVar.Pfn());
        com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB.oJ(oJVar.PiB());
        com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB.ZYk(oJVar.BTZ());
        oJ(oJVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(int i10) {
        if (i10 == 0) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.oJ.ZYk();
        } else if (i10 == 1) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk.ZYk();
        }
    }

    private void ZYk(final com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        final Pfn eZI = so.cFZ().eZI();
        if (oJVar == null || eZI == null || so.cFZ().ba() == null || eZI.ex() == null) {
            return;
        }
        if (so.cFZ().ZYk()) {
            if (oJ(so.cFZ().ba(), eZI)) {
                so.cFZ().oJ(oJVar);
                return;
            }
            tB();
            if (tB()) {
                eZI.ex().execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("dispatchEvent") { // from class: com.bytedance.sdk.component.ba.oJ.ex.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ex.this.oJ(oJVar, eZI.ba());
                    }
                });
                return;
            } else {
                oJ(oJVar, eZI.ba());
                return;
            }
        }
        so.cFZ().oJ(oJVar);
    }

    private void oJ(oJ oJVar) {
        Executor Pfn;
        if (Looper.myLooper() != Looper.getMainLooper() && com.bytedance.sdk.component.ba.oJ.tB.oJ.ZYk()) {
            com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ();
            return;
        }
        Pfn ex = oJVar.ex();
        if (ex == null || !com.bytedance.sdk.component.ba.oJ.tB.oJ.ZYk() || (Pfn = ex.Pfn()) == null) {
            return;
        }
        Pfn.execute(new Runnable() { // from class: com.bytedance.sdk.component.ba.oJ.ex.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ();
            }
        });
    }

    public void oJ(boolean z10) {
        so.cFZ().oJ(z10);
    }

    private boolean oJ(Context context, Pfn pfn) {
        if (context == null || pfn == null) {
            return false;
        }
        if (pfn.ba() == 2) {
            return true;
        }
        if (pfn.ba() == 1) {
            return pfn.WcQ();
        }
        try {
            return oq.oJ(context);
        } catch (Throwable th2) {
            th2.getMessage();
            return true;
        }
    }

    public void oJ() {
        final Pfn eZI = so.cFZ().eZI();
        if (eZI == null || so.cFZ().ba() == null || eZI.ex() == null) {
            return;
        }
        if (so.cFZ().ZYk()) {
            if (oJ(so.cFZ().ba(), eZI)) {
                so.cFZ().jFA();
                return;
            } else if (tB()) {
                eZI.ex().execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("start") { // from class: com.bytedance.sdk.component.ba.oJ.ex.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ex.this.oJ(eZI.ba());
                    }
                });
                return;
            } else {
                oJ(eZI.ba());
                return;
            }
        }
        so.cFZ().jFA();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10) {
        if (i10 == 0) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.oJ.oJ();
        } else if (i10 == 1) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk.oJ();
        }
    }

    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        ZYk(oJVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, int i10) {
        if (i10 == 0) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.oJ.oJ(oJVar);
        } else if (i10 == 1) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk.oJ(oJVar);
        }
    }

    public void oJ(final String str, final List<String> list, final boolean z10, Map<String, String> map, final int i10, final String str2) {
        final Pfn eZI = so.cFZ().eZI();
        if (eZI == null || so.cFZ().ba() == null || eZI.ex() == null) {
            return;
        }
        if (eZI.so()) {
            if (eZI.ba() == 1) {
                if (list == null || list.isEmpty()) {
                    return;
                }
            } else if (eZI.ba() == 0 && (TextUtils.isEmpty(str) || list == null || list.isEmpty())) {
                return;
            }
            if (so.cFZ().ZYk() && !oJ(so.cFZ().ba(), eZI)) {
                if (tB()) {
                    eZI.ex().execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("trackFailed") { // from class: com.bytedance.sdk.component.ba.oJ.ex.5
                        @Override // java.lang.Runnable
                        public void run() {
                            ex.this.oJ(str, list, z10, eZI.ba(), i10, str2);
                        }
                    });
                    return;
                } else {
                    oJ(str, list, z10, eZI.ba(), i10, str2);
                    return;
                }
            }
            so.cFZ().oJ(str, list, z10, map, i10, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str, List<String> list, boolean z10, int i10, int i11, String str2) {
        if (i10 == 0) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.oJ.oJ(str, list, z10);
        } else if (i10 == 1) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk.oJ(str, list, z10, i11, str2);
        }
    }

    public void oJ(final String str, final boolean z10) {
        final Pfn eZI = so.cFZ().eZI();
        if (eZI == null || so.cFZ().ba() == null || eZI.ex() == null || !eZI.so()) {
            return;
        }
        if (eZI.ba() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        if (so.cFZ().ZYk() && !oJ(so.cFZ().ba(), eZI)) {
            if (tB()) {
                eZI.ex().execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("trackFailed") { // from class: com.bytedance.sdk.component.ba.oJ.ex.6
                    @Override // java.lang.Runnable
                    public void run() {
                        ex.this.oJ(str, eZI.ba(), z10);
                    }
                });
                return;
            } else {
                oJ(str, eZI.ba(), z10);
                return;
            }
        }
        so.cFZ().oJ(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str, int i10, boolean z10) {
        if (i10 == 0) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.oJ.oJ(str);
        } else if (i10 == 1) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk.oJ(str, z10);
        }
    }
}
