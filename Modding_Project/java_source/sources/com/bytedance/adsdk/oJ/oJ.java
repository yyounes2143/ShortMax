package com.bytedance.adsdk.oJ;

import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements so {
    @Override // com.bytedance.adsdk.oJ.so
    public Object oJ(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length == 2) {
            String valueOf = String.valueOf(objArr[0]);
            JSONArray jSONArray = new JSONArray();
            try {
                JSONArray jSONArray2 = new JSONArray(valueOf);
                int parseInt = Integer.parseInt(String.valueOf(objArr[1]));
                for (int i10 = 0; i10 < jSONArray2.length(); i10 += parseInt) {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONArray jSONArray3 = new JSONArray();
                    for (int i11 = 0; i11 < parseInt; i11++) {
                        int i12 = i10 + i11;
                        if (i12 >= jSONArray2.length()) {
                            break;
                        }
                        jSONArray3.put(jSONArray2.optJSONObject(i12));
                    }
                    jSONObject2.put("$chunk", jSONArray3);
                    jSONArray.put(jSONObject2);
                }
            } catch (Throwable unused) {
            }
            return jSONArray;
        }
        return null;
    }
}
