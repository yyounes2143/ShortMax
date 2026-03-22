package com.bytedance.sdk.openadsdk.jr.ZYk;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private final int ZYk;
    private final int oJ;
    private final float tB;

    public oJ(int i10, int i11, float f10) {
        this.oJ = i10;
        this.ZYk = i11;
        this.tB = f10;
    }

    public static JSONObject oJ(oJ oJVar) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", oJVar.oJ);
        jSONObject.put("height", oJVar.ZYk);
        jSONObject.put("alpha", oJVar.tB);
        return jSONObject;
    }
}
