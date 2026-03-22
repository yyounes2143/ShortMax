package com.bytedance.sdk.component.so.ZYk;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    public int ZYk;
    public int ex;
    public int oJ;
    public int tB;

    public oJ(int i10, int i11, int i12, int i13) {
        this.oJ = i10;
        this.ZYk = i11;
        this.tB = i12;
        this.ex = i13;
    }

    public JSONObject oJ() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_thread_num", this.oJ);
            jSONObject.put("sdk_max_thread_num", this.ZYk);
            jSONObject.put("app_thread_num", this.tB);
            jSONObject.put("app_max_thread_num", this.ex);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
