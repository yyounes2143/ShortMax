package com.bytedance.sdk.openadsdk.core.model;

import com.bytedance.sdk.openadsdk.AdSlot;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    public AdSlot Pfn;
    public int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    public String f13239ba;
    public int cFZ;
    public ArrayList<Integer> ex;
    public String oJ;
    public int tB = 1;

    public ArrayList<Integer> Pfn() {
        return this.ex;
    }

    public int ZYk() {
        return this.ZYk;
    }

    public AdSlot ex() {
        return this.Pfn;
    }

    public String oJ() {
        return this.oJ;
    }

    public int tB() {
        return this.tB;
    }

    public void ZYk(int i10) {
        this.tB = i10;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void tB(int i10) {
        this.cFZ = i10;
    }

    public void ZYk(String str) {
        this.f13239ba = str;
    }

    public void oJ(int i10) {
        this.ZYk = i10;
    }

    public void oJ(AdSlot adSlot) {
        this.Pfn = adSlot;
    }

    public void oJ(ArrayList<Integer> arrayList) {
        this.ex = arrayList;
    }

    public static void oJ(tB tBVar) {
        int ZYk;
        if (tBVar == null || tBVar.ex() == null || (ZYk = tBVar.ZYk()) >= 0 || ZYk == -8) {
            return;
        }
        com.bytedance.sdk.openadsdk.awB.tB.oJ();
        com.bytedance.sdk.openadsdk.awB.tB.oJ("rd_client_custom_error", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.model.tB.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("from", tB.this.tB());
                jSONObject.put("err_code", tB.this.ZYk());
                jSONObject.put("err_msg", tB.this.f13239ba);
                jSONObject.put("ext_from", tB.this.cFZ);
                jSONObject.put("server_res_str", tB.this.oJ());
                if (tB.this.Pfn() != null && tB.this.Pfn().size() > 0) {
                    jSONObject.put("mate_unavailable_code_list", new JSONArray((Collection) tB.this.Pfn()).toString());
                }
                return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("rd_client_custom_error").oJ(tB.this.ex().getDurationSlotType()).ZYk(jSONObject.toString());
            }
        });
    }
}
