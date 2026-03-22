package com.bytedance.bdtracker;

import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class w3 extends b4 {
    public ArrayList<String> A;
    public ArrayList<String> B;
    public int C;
    public int D;
    public int E;
    public int F;

    /* renamed from: v  reason: collision with root package name */
    public String f12497v;

    /* renamed from: w  reason: collision with root package name */
    public String f12498w;

    /* renamed from: x  reason: collision with root package name */
    public String f12499x;

    /* renamed from: y  reason: collision with root package name */
    public String f12500y;

    /* renamed from: z  reason: collision with root package name */
    public String f12501z;

    public w3(String str, String str2, String str3, String str4, String str5, int i10, int i11, int i12, int i13, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        super(null, "bav2b_click", true, null);
        this.f12497v = str;
        this.f12498w = str2;
        this.f12499x = str3;
        this.f12500y = str4;
        this.f12501z = str5;
        this.A = arrayList;
        this.B = arrayList2;
        this.C = i10;
        this.D = i11;
        this.E = i12;
        this.F = i13;
    }

    @Override // com.bytedance.bdtracker.b4
    public void k() {
        if (this.f11878s == null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("element_path", this.f12499x);
            jSONObject.put("page_key", this.f12497v);
            ArrayList<String> arrayList = this.B;
            if (arrayList != null && arrayList.size() > 0) {
                jSONObject.put("positions", new JSONArray((Collection) this.B));
            }
            ArrayList<String> arrayList2 = this.A;
            if (arrayList2 != null && arrayList2.size() > 0) {
                jSONObject.put("texts", new JSONArray((Collection) this.A));
            }
            jSONObject.put("element_width", this.C);
            jSONObject.put("element_height", this.D);
            jSONObject.put("touch_x", this.E);
            jSONObject.put("touch_y", this.F);
            jSONObject.put("page_title", this.f12498w);
            jSONObject.put("element_id", this.f12500y);
            jSONObject.put("element_type", this.f12501z);
            this.f11878s = jSONObject.toString();
        }
    }
}
