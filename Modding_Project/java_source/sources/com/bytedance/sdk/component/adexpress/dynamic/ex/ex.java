package com.bytedance.sdk.component.adexpress.dynamic.ex;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    public String ZYk;
    public String ex;
    public List<oJ> oJ;
    public String tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public JSONObject ZYk;
        public int oJ;
    }

    public static ex oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ex exVar = new ex();
        String optString = jSONObject.optString("custom_components");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(optString);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    oJ oJVar = new oJ();
                    oJVar.oJ = optJSONObject.optInt("id");
                    oJVar.ZYk = new JSONObject(optJSONObject.optString("componentLayout"));
                    arrayList.add(oJVar);
                }
            }
        } catch (JSONException unused) {
        }
        exVar.oJ = arrayList;
        exVar.ZYk = jSONObject.optString("diff_data");
        exVar.tB = jSONObject.optString("style_diff");
        exVar.ex = jSONObject.optString("tag_diff");
        return exVar;
    }
}
