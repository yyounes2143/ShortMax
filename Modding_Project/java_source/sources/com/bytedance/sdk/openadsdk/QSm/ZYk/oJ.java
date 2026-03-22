package com.bytedance.sdk.openadsdk.QSm.ZYk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private List<C0185oJ> ZYk;
    private String oJ;
    private List<C0185oJ> tB;

    /* renamed from: com.bytedance.sdk.openadsdk.QSm.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0185oJ {
        private String ZYk;
        private String oJ;
        private int tB;

        public boolean equals(Object obj) {
            String str;
            if (obj instanceof C0185oJ) {
                String str2 = this.oJ;
                if (str2 != null) {
                    C0185oJ c0185oJ = (C0185oJ) obj;
                    if (str2.equals(c0185oJ.oJ) && (str = this.ZYk) != null && str.equals(c0185oJ.ZYk)) {
                        return true;
                    }
                }
                return false;
            }
            return super.equals(obj);
        }

        public static C0185oJ oJ(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            C0185oJ c0185oJ = new C0185oJ();
            c0185oJ.oJ = jSONObject.optString("url");
            c0185oJ.ZYk = jSONObject.optString("md5");
            c0185oJ.tB = jSONObject.optInt("type");
            return c0185oJ;
        }

        public String oJ() {
            return this.oJ;
        }
    }

    public void ZYk(List<C0185oJ> list) {
        this.tB = list;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public List<C0185oJ> tB() {
        return this.tB;
    }

    public List<C0185oJ> ZYk() {
        return this.ZYk;
    }

    public void oJ(List<C0185oJ> list) {
        this.ZYk = list;
    }

    public static oJ ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            oJ oJVar = new oJ();
            oJVar.oJ(jSONObject.optString("version"));
            JSONArray optJSONArray = jSONObject.optJSONArray("resources");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    C0185oJ oJ = C0185oJ.oJ(optJSONArray.optJSONObject(i10));
                    if (oJ != null) {
                        if (oJ.tB != 1) {
                            if (oJ.tB == 2 && arrayList2.size() < 10) {
                                arrayList2.add(oJ);
                            }
                        } else {
                            arrayList.add(oJ);
                        }
                    }
                }
            }
            oJVar.oJ(arrayList);
            oJVar.ZYk(arrayList2);
            return oJVar;
        } catch (JSONException unused) {
            return null;
        }
    }

    public String oJ() {
        return this.oJ;
    }
}
