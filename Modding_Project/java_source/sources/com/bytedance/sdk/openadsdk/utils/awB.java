package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.BTZ;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class awB implements com.bytedance.sdk.openadsdk.oem.oJ {
    private static com.bytedance.sdk.openadsdk.component.reward.oJ.oJ ZYk;
    private static final awB oJ = new awB();
    private static boolean tB;

    public static void ZYk() {
        tB = true;
    }

    public static void oJ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        com.bytedance.sdk.openadsdk.core.model.IUZ hZN = oJVar.ZYk.hZN();
        if (hZN == null || !hZN.cFZ()) {
            return;
        }
        ZYk = oJVar;
        IPMiBroadcastReceiver oJ2 = IPMiBroadcastReceiver.oJ(oJVar.Rl);
        if (oJ2 != null) {
            oJ2.oJ(oJ);
        }
    }

    public static void oJ() {
        if (ZYk == null) {
            return;
        }
        ZYk = null;
        IPMiBroadcastReceiver oJ2 = IPMiBroadcastReceiver.oJ(com.bytedance.sdk.openadsdk.core.si.oJ());
        if (oJ2 != null) {
            oJ2.oJ();
        }
        tB = false;
    }

    @Override // com.bytedance.sdk.openadsdk.oem.oJ
    public void oJ(String str, final int i10) {
        com.bytedance.sdk.openadsdk.core.model.ba Wd;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = ZYk;
        if (oJVar == null || (Wd = oJVar.ZYk.Wd()) == null) {
            return;
        }
        String tB2 = Wd.tB();
        if (TextUtils.isEmpty(tB2) || !tB2.equals(str)) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.awB.1
            @Override // java.lang.Runnable
            public void run() {
                int i11;
                boolean z10;
                if (awB.ZYk != null && (i11 = i10) > 0 && i11 <= 5) {
                    boolean z11 = true;
                    if (i11 == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (awB.tB) {
                        awB.ZYk.cdg.ba();
                        HashMap hashMap = new HashMap();
                        hashMap.put("click_scence", 4);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ("click", awB.ZYk.ZYk, new BTZ.oJ().oJ(), awB.ZYk.Pfn, true, (Map<String, Object>) hashMap, 1);
                    } else {
                        z11 = z10;
                    }
                    if (z11) {
                        awB.oJ();
                    }
                }
            }
        });
    }
}
