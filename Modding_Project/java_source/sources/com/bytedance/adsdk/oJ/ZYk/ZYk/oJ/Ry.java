package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Ry extends si {
    private static final ThreadLocal<StringBuilder> ex = new ThreadLocal<StringBuilder>() { // from class: com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.Ry.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: oJ */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    public Ry() {
        super(com.bytedance.adsdk.oJ.ZYk.ex.tB.PLUS);
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        Object oJ;
        Object oJ2 = this.oJ.oJ(map);
        if (oJ2 == null || (oJ = this.ZYk.oJ(map)) == null) {
            return null;
        }
        if (!(oJ2 instanceof String) && !(oJ instanceof String)) {
            return com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.so.oJ((Number) oJ2, (Number) oJ);
        }
        StringBuilder sb2 = ex.get();
        sb2.append(oJ2);
        sb2.append(oJ);
        String sb3 = sb2.toString();
        sb2.setLength(0);
        return sb3;
    }
}
