package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ implements com.bytedance.adsdk.oJ.ZYk.ZYk.oJ {
    private final Object oJ;

    public cFZ(String str) {
        if (str.equalsIgnoreCase("true")) {
            this.oJ = Boolean.TRUE;
        } else if (str.equalsIgnoreCase("false")) {
            this.oJ = Boolean.FALSE;
        } else if (str.equalsIgnoreCase("null")) {
            this.oJ = null;
        } else {
            throw new IllegalArgumentException();
        }
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public String ZYk() {
        Object obj = this.oJ;
        if (obj != null) {
            return obj.toString();
        }
        return "NULL";
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        return this.oJ;
    }

    public String toString() {
        return "KeywordNode [keywordValue=" + this.oJ + "]";
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public com.bytedance.adsdk.oJ.ZYk.ex.Pfn oJ() {
        return com.bytedance.adsdk.oJ.ZYk.ex.ba.CONSTANT;
    }
}
