package com.bytedance.sdk.component.adexpress.dynamic.Pfn;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA {
    public static String ZYk(String str, String str2) {
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            if (str.indexOf(46) < 0) {
                str = str + ".png";
            }
            return str2 + "static/images/" + str;
        }
        return oJ.oJ(str);
    }

    public static void oJ(String str, JSONObject jSONObject) {
        JSONObject UF = com.bytedance.sdk.component.adexpress.ZYk.UF(str);
        if (UF == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject optJSONObject = UF.optJSONObject("values");
        if (optJSONObject == null) {
            return;
        }
        oJ(optJSONObject, jSONObject);
    }

    public static JSONObject oJ(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject UF = com.bytedance.sdk.component.adexpress.ZYk.UF(str);
        if (UF == null) {
            return null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return oJ(jSONObject2, UF.optJSONObject("themeValues"), jSONObject);
    }

    private static void oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        if (jSONObject == null) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!jSONObject2.has(next)) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException unused) {
                }
            }
        }
    }

    public static JSONObject oJ(JSONObject... jSONObjectArr) {
        JSONObject jSONObject = new JSONObject();
        for (JSONObject jSONObject2 : jSONObjectArr) {
            if (jSONObject2 != null) {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    try {
                        jSONObject.put(next, jSONObject2.opt(next));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return jSONObject;
    }

    public static String oJ(String str) {
        JSONObject optJSONObject;
        JSONObject UF = com.bytedance.sdk.component.adexpress.ZYk.UF(str);
        if (UF == null || (optJSONObject = UF.optJSONObject("values")) == null) {
            return null;
        }
        return optJSONObject.optString("data");
    }

    public static String oJ(String str, String str2) {
        JSONObject optJSONObject;
        JSONObject UF = com.bytedance.sdk.component.adexpress.ZYk.UF(str);
        if (UF == null || (optJSONObject = UF.optJSONObject("values")) == null) {
            return null;
        }
        return optJSONObject.optString(str2);
    }

    public static JSONObject oJ(JSONArray jSONArray) {
        JSONObject optJSONObject;
        if (jSONArray == null || jSONArray.length() <= 0 || (optJSONObject = jSONArray.optJSONObject(0)) == null) {
            return null;
        }
        return optJSONObject.optJSONObject("values");
    }
}
