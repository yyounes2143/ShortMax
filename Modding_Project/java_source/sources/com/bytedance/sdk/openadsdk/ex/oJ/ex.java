package com.bytedance.sdk.openadsdk.ex.oJ;

import android.content.Context;
import com.bytedance.sdk.component.ba.oJ.oJ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.si;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class ex {
    public static AtomicInteger oJ = new AtomicInteger(0);
    public static final AtomicBoolean ZYk = new AtomicBoolean(false);

    public static void ZYk() {
        com.bytedance.sdk.component.ba.oJ.ZYk.tB();
    }

    public static void oJ(Context context, boolean z10) {
        if (ZYk.compareAndSet(false, true)) {
            com.bytedance.sdk.component.ba.oJ.ZYk.oJ(new oJ.C0172oJ().oJ(new kkU()).ZYk(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ.tB()).tB(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ.Pfn()).oJ(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ.ex()).oJ(z10).oJ(new dLZ()).oJ(so.oJ).ZYk(si.ex().BTZ()).oJ(si.ex().PiB()).oJ(si.ex().MoK()).oJ(), context);
            ZYk();
        }
    }

    public static void tB() {
        try {
            com.bytedance.sdk.component.ba.oJ.ZYk.ex();
            com.bytedance.sdk.component.ba.oJ.ZYk.Pfn();
        } catch (Throwable th2) {
            QSm.tB("AdLogSwitchUtils", th2.getMessage());
        }
    }

    public static void oJ(com.bytedance.sdk.openadsdk.ex.oJ oJVar) {
        com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ oJVar2 = new com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ(oJVar.ex(), oJVar);
        oJVar2.ZYk(oJVar.Pfn() ? (byte) 1 : (byte) 2);
        oJVar2.oJ((byte) 0);
        if (com.bytedance.sdk.component.ba.oJ.ZYk.ZYk()) {
            oJ(si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB());
        }
        com.bytedance.sdk.component.ba.oJ.ZYk.oJ(oJVar2);
    }

    public static com.bytedance.sdk.openadsdk.awB.tB.ZYk oJ() {
        return BTZ.oJ;
    }

    public static void oJ(final List<String> list, final int i10, final String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(new com.bytedance.sdk.component.so.so("track") { // from class: com.bytedance.sdk.openadsdk.ex.oJ.ex.1
            @Override // java.lang.Runnable
            public void run() {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.ZYk()) {
                    ex.oJ(si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB());
                }
                com.bytedance.sdk.component.ba.oJ.ZYk.oJ(com.bytedance.sdk.openadsdk.core.BTZ.oJ(si.oJ()), list, true, i10, str);
            }
        });
    }

    public static void oJ(String str) {
        oJ(str, false);
    }

    public static void oJ(String str, boolean z10) {
        if (com.bytedance.sdk.component.ba.oJ.ZYk.ZYk()) {
            oJ(si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB());
        }
        com.bytedance.sdk.component.ba.oJ.ZYk.oJ(str, z10);
    }
}
