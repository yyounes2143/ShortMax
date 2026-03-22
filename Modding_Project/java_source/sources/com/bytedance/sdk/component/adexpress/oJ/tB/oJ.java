package com.bytedance.sdk.component.adexpress.oJ.tB;

import android.text.TextUtils;
import android.util.Pair;
import com.applovin.sdk.AppLovinEventTypes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private ZYk Pfn;
    private String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f12738ba;
    private Map<String, oJ> cFZ = new ConcurrentHashMap();
    private List<C0170oJ> ex;
    private String oJ;
    private String tB;

    /* loaded from: classes3.dex */
    public static class ZYk {
        private String ZYk;
        private String oJ;
        private List<Pair<String, String>> tB;

        public void ZYk(String str) {
            this.ZYk = str;
        }

        public String oJ() {
            return this.oJ;
        }

        public List<Pair<String, String>> ZYk() {
            return this.tB;
        }

        public void oJ(String str) {
            this.oJ = str;
        }

        public void oJ(List<Pair<String, String>> list) {
            this.tB = list;
        }
    }

    /* renamed from: com.bytedance.sdk.component.adexpress.oJ.tB.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0170oJ {
        private String ZYk;
        private String oJ;
        private int tB;

        public String ZYk() {
            return this.ZYk;
        }

        public boolean equals(Object obj) {
            String str;
            if (obj instanceof C0170oJ) {
                String str2 = this.oJ;
                if (str2 != null) {
                    C0170oJ c0170oJ = (C0170oJ) obj;
                    if (str2.equals(c0170oJ.oJ()) && (str = this.ZYk) != null && str.equals(c0170oJ.ZYk())) {
                        return true;
                    }
                }
                return false;
            }
            return super.equals(obj);
        }

        public String oJ() {
            return this.oJ;
        }

        public int tB() {
            return this.tB;
        }

        public void ZYk(String str) {
            this.ZYk = str;
        }

        public void oJ(String str) {
            this.oJ = str;
        }

        public void oJ(int i10) {
            this.tB = i10;
        }
    }

    public ZYk Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.oJ;
    }

    public List<C0170oJ> ba() {
        if (this.ex == null) {
            this.ex = new ArrayList();
        }
        return this.ex;
    }

    public String cFZ() {
        return this.f12738ba;
    }

    public String ex() {
        return this.tB;
    }

    public JSONObject jFA() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", ZYk());
            jSONObject.putOpt("version", tB());
            jSONObject.putOpt("main", ex());
            if (!TextUtils.isEmpty(this.f12738ba)) {
                jSONObject.put("template_fetch_url", this.f12738ba);
            }
            JSONArray jSONArray = new JSONArray();
            if (ba() != null) {
                for (C0170oJ c0170oJ : ba()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", c0170oJ.oJ());
                    jSONObject2.putOpt("md5", c0170oJ.ZYk());
                    jSONObject2.putOpt(AppLovinEventTypes.USER_COMPLETED_LEVEL, Integer.valueOf(c0170oJ.tB()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            if (!this.cFZ.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                boolean z10 = false;
                for (String str : this.cFZ.keySet()) {
                    oJ oJVar = this.cFZ.get(str);
                    if (oJVar != null) {
                        jSONObject3.put(str, oJVar.jFA());
                        z10 = true;
                    }
                }
                if (z10) {
                    jSONObject.put("engines", jSONObject3);
                }
            }
            ZYk Pfn = Pfn();
            if (Pfn != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("url", Pfn.oJ);
                jSONObject4.put("md5", Pfn.ZYk);
                JSONObject jSONObject5 = new JSONObject();
                List<Pair<String, String>> ZYk2 = Pfn.ZYk();
                if (ZYk2 != null) {
                    for (Pair<String, String> pair : ZYk2) {
                        jSONObject5.put((String) pair.first, pair.second);
                    }
                }
                jSONObject4.put("map", jSONObject5);
                jSONObject.putOpt("resources_archive", jSONObject4);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String kkU() {
        JSONObject jFA;
        if (so() && (jFA = jFA()) != null) {
            return jFA.toString();
        }
        return null;
    }

    public Map<String, oJ> oJ() {
        return this.cFZ;
    }

    public boolean so() {
        if (!TextUtils.isEmpty(ex()) && !TextUtils.isEmpty(tB()) && !TextUtils.isEmpty(ZYk())) {
            return true;
        }
        return false;
    }

    public String tB() {
        return this.ZYk;
    }

    public static oJ Pfn(String str) {
        if (str == null) {
            return null;
        }
        try {
            return oJ(new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public void ZYk(String str) {
        this.ZYk = str;
    }

    public void ex(String str) {
        this.f12738ba = str;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void tB(String str) {
        this.tB = str;
    }

    public void oJ(ZYk zYk) {
        this.Pfn = zYk;
    }

    public void oJ(List<C0170oJ> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.ex = list;
    }

    public static oJ oJ(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null) {
            return null;
        }
        oJ oJVar = new oJ();
        oJVar.oJ(jSONObject.optString("name"));
        oJVar.ZYk(jSONObject.optString("version"));
        oJVar.tB(jSONObject.optString("main"));
        oJVar.ex(jSONObject.optString("template_fetch_url", ""));
        JSONArray optJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null && optJSONArray.length() > 0) {
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i10);
                C0170oJ c0170oJ = new C0170oJ();
                c0170oJ.oJ(optJSONObject2.optString("url"));
                c0170oJ.ZYk(optJSONObject2.optString("md5"));
                c0170oJ.oJ(optJSONObject2.optInt(AppLovinEventTypes.USER_COMPLETED_LEVEL));
                arrayList.add(c0170oJ);
            }
        }
        oJVar.oJ(arrayList);
        try {
            JSONObject optJSONObject3 = jSONObject.optJSONObject("engines");
            if (optJSONObject3 != null) {
                Iterator<String> keys = optJSONObject3.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    oJ oJ = oJ(optJSONObject3.optJSONObject(next));
                    if (oJ != null) {
                        oJVar.oJ().put(next, oJ);
                    }
                }
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
        if (jSONObject.has("resources_archive") && (optJSONObject = jSONObject.optJSONObject("resources_archive")) != null) {
            ZYk zYk = new ZYk();
            zYk.oJ(optJSONObject.optString("url"));
            zYk.ZYk(optJSONObject.optString("md5"));
            JSONObject optJSONObject4 = optJSONObject.optJSONObject("map");
            if (optJSONObject4 != null) {
                Iterator<String> keys2 = optJSONObject4.keys();
                ArrayList arrayList2 = new ArrayList();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    arrayList2.add(new Pair<>(next2, optJSONObject4.optString(next2)));
                }
                zYk.oJ(arrayList2);
            }
            oJVar.oJ(zYk);
        }
        if (oJVar.so()) {
            return oJVar;
        }
        return null;
    }
}
