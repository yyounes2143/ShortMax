package com.bytedance.sdk.openadsdk.core.model;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so {
    private List<String> Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f13238ba;
    private int cFZ;
    private int ex;
    private int oJ;
    private List<Integer> tB;

    public List<Integer> Pfn() {
        return this.tB;
    }

    public void ZYk(int i10) {
        this.cFZ = i10;
    }

    public int ba() {
        return this.ex;
    }

    public JSONObject cFZ() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interceptor_x", this.oJ);
            jSONObject.put("interceptor_y", this.ZYk);
            if (this.tB != null) {
                JSONArray jSONArray = new JSONArray();
                for (Integer num : this.tB) {
                    jSONArray.put(num.intValue());
                }
                jSONObject.put("interceptor_page", jSONArray);
            }
            jSONObject.put("interceptor_interval_time", this.ex);
            if (this.Pfn != null) {
                JSONArray jSONArray2 = new JSONArray();
                for (String str : this.Pfn) {
                    jSONArray2.put(str);
                }
                jSONObject.put("url_regular", jSONArray2);
            }
            jSONObject.put("is_act", this.f13238ba);
            jSONObject.put("boc_index", this.cFZ);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
        }
        return jSONObject;
    }

    public int ex() {
        return this.ZYk;
    }

    public void oJ(int i10) {
        this.f13238ba = i10;
    }

    public int tB() {
        return this.oJ;
    }

    public void Pfn(int i10) {
        this.ex = i10;
    }

    public List<String> ZYk() {
        return this.Pfn;
    }

    public void ex(int i10) {
        this.ZYk = i10;
    }

    public int oJ() {
        int i10 = this.cFZ;
        if (i10 >= 2) {
            return i10;
        }
        return 0;
    }

    public void tB(int i10) {
        this.oJ = i10;
    }

    public void ZYk(List<Integer> list) {
        this.tB = list;
    }

    public void oJ(List<String> list) {
        this.Pfn = list;
    }
}
