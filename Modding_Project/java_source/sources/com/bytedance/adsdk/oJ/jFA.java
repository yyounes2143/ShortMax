package com.bytedance.adsdk.oJ;

import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA implements so {
    @Override // com.bytedance.adsdk.oJ.so
    public Object oJ(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length >= 2) {
            Object obj = objArr[0];
            Object obj2 = objArr[1];
            if ((obj instanceof JSONArray) && (obj2 instanceof Integer)) {
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() > 0) {
                    return jSONArray.opt(((Integer) obj2).intValue() % jSONArray.length());
                }
                return null;
            }
            return null;
        }
        return null;
    }
}
