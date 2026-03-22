package com.bytedance.sdk.openadsdk.core.kkU.ba;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ {
    public void oJ(String str, cY cYVar, String str2, Map<String, String> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    String str3 = map.get("label");
                    if (TextUtils.isEmpty(str3)) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    String pe2 = cYVar.pe();
                    if ("sendLogExtra".equals(str) && !TextUtils.isEmpty(pe2)) {
                        JSONObject jSONObject2 = new JSONObject(pe2);
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            if (!"label".equals(entry.getKey())) {
                                jSONObject2.put(entry.getKey(), entry.getValue());
                            }
                        }
                        jSONObject.put("log_extra", jSONObject2.toString());
                    } else {
                        jSONObject.put("log_extra", pe2);
                    }
                    JSONObject jSONObject3 = new JSONObject();
                    if ("sendAdExtra".equals(str)) {
                        for (Map.Entry<String, String> entry2 : map.entrySet()) {
                            if (!"label".equals(entry2.getKey())) {
                                jSONObject3.put(entry2.getKey(), entry2.getValue());
                            }
                        }
                    }
                    jSONObject.put("ad_extra_data", jSONObject3.toString());
                    jSONObject.putOpt("ua_policy", Integer.valueOf(cYVar.oG()));
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, "app_union", str2, str3, Long.parseLong(cYVar.edj()), 0L, jSONObject, QSm.Pfn(cYVar));
                }
            } catch (Throwable unused) {
            }
        }
    }
}
