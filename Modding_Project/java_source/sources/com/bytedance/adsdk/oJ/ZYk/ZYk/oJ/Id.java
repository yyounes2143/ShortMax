package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Id implements com.bytedance.adsdk.oJ.ZYk.ZYk.oJ {
    private final String oJ;

    public Id(String str) {
        this.oJ = str;
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public String ZYk() {
        return this.oJ;
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        Object oJ;
        if (map == null || map.size() <= 0 || (oJ = oJ(this.oJ, map.get("default_key"))) == JSONObject.NULL) {
            return null;
        }
        return oJ;
    }

    public String toString() {
        return "VariableNode [literals=" + this.oJ + "]";
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public com.bytedance.adsdk.oJ.ZYk.ex.Pfn oJ() {
        return com.bytedance.adsdk.oJ.ZYk.ex.ba.VARIABLE;
    }

    public Object oJ(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return oJ(str.split("\\."), 0, jSONObject);
    }

    private Object oJ(String[] strArr, int i10, JSONObject jSONObject) {
        Object opt;
        if (strArr != null && strArr.length > 0 && i10 < strArr.length && jSONObject != null) {
            String str = strArr[i10];
            int indexOf = str.indexOf("[");
            int indexOf2 = str.indexOf("]");
            if (indexOf >= 0 && indexOf2 >= 0 && indexOf <= indexOf2) {
                String substring = str.substring(0, indexOf);
                try {
                    int parseInt = Integer.parseInt(str.substring(indexOf + 1, indexOf2));
                    Object opt2 = jSONObject.opt(substring);
                    opt = opt2 instanceof JSONArray ? ((JSONArray) opt2).opt(parseInt) : null;
                } catch (NumberFormatException unused) {
                    return null;
                }
            } else {
                opt = jSONObject.opt(str);
            }
            if (i10 == strArr.length - 1) {
                return opt;
            }
            if (opt instanceof String) {
                try {
                    return oJ(strArr, i10 + 1, new JSONObject((String) opt));
                } catch (JSONException unused2) {
                    return opt;
                }
            } else if (opt instanceof JSONObject) {
                return oJ(strArr, i10 + 1, (JSONObject) opt);
            }
        }
        return null;
    }
}
