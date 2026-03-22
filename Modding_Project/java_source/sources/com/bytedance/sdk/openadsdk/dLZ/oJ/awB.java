package com.bytedance.sdk.openadsdk.dLZ.oJ;

import android.view.ViewGroup;
import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.mu;
import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class awB extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private String ZYk;
    private cY ex;
    private com.bytedance.sdk.component.jFA.ba oJ;
    private UN tB;

    public awB(com.bytedance.sdk.component.jFA.ba baVar, String str, UN un2, cY cYVar) {
        this.oJ = baVar;
        this.ZYk = str;
        this.tB = un2;
        this.ex = cYVar;
    }

    public static void oJ(si siVar, com.bytedance.sdk.component.jFA.ba baVar, UN un2, cY cYVar) {
        siVar.oJ("closeWebview", new awB(baVar, "closeWebview", un2, cYVar));
        siVar.oJ("makeVisible", new awB(baVar, "makeVisible", un2, cYVar));
        siVar.oJ("getCurrentVisibleState", new awB(baVar, "getCurrentVisibleState", un2, cYVar));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        String str = this.ZYk;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1516905438:
                if (str.equals("getCurrentVisibleState")) {
                    c10 = 0;
                    break;
                }
                break;
            case -120664351:
                if (str.equals("closeWebview")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1756338852:
                if (str.equals("makeVisible")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                cY cYVar = this.ex;
                if (cYVar != null) {
                    jSONObject2.put("visibleState", !mu.oJ(this.oJ, 20, cYVar.TxP(), false) ? 1 : 0);
                    break;
                }
                break;
            case 1:
                ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.awB.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (awB.this.oJ != null) {
                            awB.this.oJ.setVisibility(8);
                            ViewGroup viewGroup = (ViewGroup) awB.this.oJ.getParent();
                            if (viewGroup != null) {
                                viewGroup.removeView(awB.this.oJ);
                            }
                        }
                    }
                });
                jSONObject2.put("success", true);
                break;
            case 2:
                if (this.oJ != null) {
                    jSONObject2.put("success", true);
                    ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.awB.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (awB.this.oJ != null) {
                                awB.this.oJ.setVisibility(0);
                            }
                        }
                    });
                    break;
                } else {
                    jSONObject2.put("success", false);
                    break;
                }
        }
        return jSONObject2;
    }
}
