package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class RZ {
    public static int ZYk = 2;
    public static int oJ = 1;
    private int tB = 5;
    private int ex = 30;
    private int Pfn = 70;

    /* renamed from: ba  reason: collision with root package name */
    private int f13201ba = 1;
    private int cFZ = oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f13202so = 0;
    private int jFA = 0;
    private int kkU = 3;

    public int Pfn() {
        return this.ex;
    }

    public int ZYk() {
        return this.jFA;
    }

    public int ba() {
        return this.Pfn;
    }

    public int cFZ() {
        return this.f13201ba;
    }

    public int ex() {
        return this.tB;
    }

    public int oJ() {
        return this.kkU;
    }

    public int so() {
        return this.cFZ;
    }

    public int tB() {
        return this.f13202so;
    }

    public void Pfn(int i10) {
        this.ex = i10;
    }

    public void ZYk(int i10) {
        this.jFA = i10;
    }

    public void ba(int i10) {
        this.Pfn = i10;
    }

    public void cFZ(int i10) {
        this.f13201ba = i10;
    }

    public void ex(int i10) {
        this.tB = i10;
    }

    public void oJ(int i10) {
        this.kkU = i10;
    }

    public void so(int i10) {
        this.cFZ = i10;
    }

    public void tB(int i10) {
        this.f13202so = i10;
    }

    public boolean oJ(boolean z10) {
        if (z10) {
            int i10 = this.f13202so;
            return i10 == 1 || i10 == 3;
        }
        int i11 = this.f13202so;
        return i11 == 3 || i11 == 2;
    }

    public JSONObject oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("ceiling_time", this.tB);
            jSONObject.put("ceiling_ratio", this.ex);
            jSONObject.put("expand_ratio", this.Pfn);
            jSONObject.put("back_type", this.f13201ba);
            jSONObject.put("boc_return_type", this.cFZ);
            jSONObject.put("pre_render_status", this.f13202so);
            jSONObject.put("pre_render_use_gecko", this.jFA);
            jSONObject.put("pre_render_add_type", this.kkU);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("InteractionParams", th2.getMessage());
        }
        return jSONObject;
    }
}
