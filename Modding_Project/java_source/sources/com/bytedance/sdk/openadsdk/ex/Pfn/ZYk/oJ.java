package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.tB;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ<T extends tB> {
    private boolean Pfn = false;
    private String ZYk;
    private T ex;
    private cY oJ;
    private JSONObject tB;

    public oJ(cY cYVar, String str, JSONObject jSONObject, T t10) {
        this.oJ = cYVar;
        this.ZYk = str;
        this.tB = jSONObject;
        this.ex = t10;
    }

    public boolean Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public T ex() {
        return this.ex;
    }

    public cY oJ() {
        return this.oJ;
    }

    public JSONObject tB() {
        if (this.tB == null) {
            this.tB = new JSONObject();
        }
        return this.tB;
    }

    public void oJ(boolean z10) {
        this.Pfn = z10;
    }
}
