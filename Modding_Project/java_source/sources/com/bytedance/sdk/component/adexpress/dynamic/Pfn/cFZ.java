package com.bytedance.sdk.component.adexpress.dynamic.Pfn;

import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ implements so {
    private com.bytedance.sdk.component.adexpress.dynamic.ba.ZYk oJ;

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(PiB piB) {
        try {
            JSONObject tB = piB.tB();
            JSONObject jSONObject = new JSONObject(tB.optString("template_Plugin"));
            JSONObject optJSONObject = tB.optJSONObject("creative");
            com.bytedance.sdk.component.adexpress.dynamic.ex.so oJ = new ba(jSONObject, optJSONObject, tB.optJSONObject("AdSize"), new JSONObject(tB.optString("diff_template_Plugin"))).oJ(piB.ZYk(), piB.kkU(), optJSONObject.optDouble("score_exact_i18n"), optJSONObject.optString("comment_num_i18n"), piB);
            try {
                JSONObject jSONObject2 = new JSONObject(optJSONObject.optString("dynamic_creative"));
                oJ.oJ(jSONObject2.optString("color"));
                oJ.oJ(jSONObject2.optJSONArray("material_center"));
            } catch (Throwable unused) {
            }
            this.oJ.oJ(oJ);
        } catch (Exception unused2) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Pfn.so
    public void oJ(com.bytedance.sdk.component.adexpress.dynamic.ba.ZYk zYk) {
        this.oJ = zYk;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Pfn.so
    public void oJ(final PiB piB) {
        if (piB.BTZ() == 1) {
            ZYk(piB);
        } else {
            com.bytedance.sdk.component.adexpress.ex.ex.oJ(new com.bytedance.sdk.component.so.so("dynamicparse") { // from class: com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ.1
                @Override // java.lang.Runnable
                public void run() {
                    cFZ.this.ZYk(piB);
                }
            }, 5);
        }
    }
}
