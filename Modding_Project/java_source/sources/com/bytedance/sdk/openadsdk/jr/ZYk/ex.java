package com.bytedance.sdk.openadsdk.jr.ZYk;

import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    public static void oJ(final cY cYVar, final oJ oJVar, final Pfn.oJ oJVar2) {
        cYVar.mCw();
        ofl.tB(new com.bytedance.sdk.component.so.so("mrc_report") { // from class: com.bytedance.sdk.openadsdk.jr.ZYk.ex.1
            @Override // java.lang.Runnable
            public void run() {
                if (cYVar.ai()) {
                    if (cYVar.RQ()) {
                        com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(cYVar.uaj(), new tB.ZYk("show_urls", cYVar));
                    } else {
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar);
                    }
                }
                String oJ = HyG.oJ(cYVar);
                JSONObject jSONObject = new JSONObject();
                oJ oJVar3 = oJVar;
                if (oJVar3 != null) {
                    try {
                        jSONObject.put("root_view", oJ.oJ(oJVar3));
                        Pfn.oJ oJVar4 = oJVar2;
                        if (oJVar4 != null) {
                            int i10 = oJVar4.oJ;
                            if (i10 != -1) {
                                jSONObject.put("dynamic_show_type", i10);
                            }
                            int i11 = oJVar2.ZYk;
                            if (i11 != -1) {
                                com.bytedance.sdk.openadsdk.ex.tB.oJ(i11 + 1, jSONObject);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, oJ, "mrc_show", jSONObject);
            }
        });
    }
}
