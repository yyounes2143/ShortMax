package com.bytedance.sdk.openadsdk.tool;

import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.FilterWord;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    public static String oJ(List<FilterWord> list) {
        if (list != null) {
            JSONArray jSONArray = new JSONArray();
            for (FilterWord filterWord : list) {
                JSONObject oJ = oJ(filterWord);
                if (oJ != null) {
                    jSONArray.put(oJ);
                }
            }
            return jSONArray.toString();
        }
        return null;
    }

    public static List<FilterWord> oJ(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                FilterWord oJ = oJ(jSONArray.optJSONObject(i10));
                if (oJ != null && oJ.isValid()) {
                    arrayList.add(oJ);
                }
            }
        } catch (JSONException e10) {
            QSm.tB("MaterialMetaTools", e10.getMessage());
        }
        return arrayList;
    }

    private static FilterWord oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            FilterWord filterWord = new FilterWord();
            filterWord.setId(jSONObject.optString("id"));
            filterWord.setName(jSONObject.optString("name"));
            filterWord.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray optJSONArray = jSONObject.optJSONArray("options");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    FilterWord oJ = oJ(optJSONArray.optJSONObject(i10));
                    if (oJ != null && oJ.isValid()) {
                        filterWord.addOption(oJ);
                    }
                }
            }
            return filterWord;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static JSONObject oJ(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (filterWord.isValid()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", filterWord.getId());
                jSONObject.put("name", filterWord.getName());
                jSONObject.put("is_selected", filterWord.getIsSelected());
                if (filterWord.hasSecondOptions()) {
                    JSONArray jSONArray = new JSONArray();
                    for (FilterWord filterWord2 : filterWord.getOptions()) {
                        jSONArray.put(oJ(filterWord2));
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("options", jSONArray);
                    }
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
