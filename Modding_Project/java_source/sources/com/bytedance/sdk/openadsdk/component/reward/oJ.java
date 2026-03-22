package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.XAo;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
/* loaded from: classes3.dex */
public class oJ {
    public static void oJ(final cY cYVar, final boolean z10, final boolean z11) {
        com.bytedance.sdk.openadsdk.core.WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                cY cYVar2 = cY.this;
                if (cYVar2 != null && !cYVar2.cMS()) {
                    try {
                        Context oJ = si.oJ();
                        AdSlot BHY = cY.this.BHY();
                        if (BHY != null) {
                            int ZYk = Pfn.ZYk();
                            if (ZYk == 0 || ZYk == 2) {
                                if (z11) {
                                    PiB.oJ(oJ).oJ(BHY.getCodeId(), cY.this);
                                } else {
                                    Pfn.oJ(oJ).oJ(BHY.getCodeId(), cY.this);
                                }
                            }
                            if (z10) {
                                if (z11) {
                                    PiB.oJ(oJ).oJ(BHY);
                                    return;
                                }
                                Pfn.oJ(oJ).oJ(BHY);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    public static boolean oJ(final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        com.bytedance.sdk.openadsdk.activity.ZYk zYk;
        int i10 = 0;
        if (oJVar == null) {
            return false;
        }
        com.bytedance.sdk.openadsdk.activity.so soVar = oJVar.oCU;
        if (soVar == null || soVar.wd() == null) {
            zYk = null;
        } else {
            zYk = oJVar.oCU.wd();
            if (zYk != null) {
                i10 = zYk.Xe();
            }
        }
        boolean oJ = XAo.oJ(oJVar.HyG, oJVar.ZYk, oJVar.Pfn, oJVar.ex ? 7 : 5, i10);
        if (oJ) {
            if (oJVar.ZYk != null) {
                IUZ.oJ().oJ(oJVar.ZYk, new IUZ.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.2
                    @Override // com.bytedance.sdk.openadsdk.core.IUZ.oJ
                    public void oJ() {
                        com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk2;
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = com.bytedance.sdk.openadsdk.component.reward.oJ.oJ.this;
                        if (oJVar2 != null && (zYk2 = oJVar2.cdg) != null) {
                            zYk2.ba();
                        }
                    }
                });
            }
            if (zYk != null && zYk.oq()) {
                zYk.jr();
            }
        }
        return oJ;
    }
}
