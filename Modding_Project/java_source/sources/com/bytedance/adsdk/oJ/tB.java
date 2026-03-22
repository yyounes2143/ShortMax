package com.bytedance.adsdk.oJ;

import com.bytedance.adsdk.ugeno.tB.oJ;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB implements com.bytedance.adsdk.ugeno.tB.oJ {

    /* loaded from: classes3.dex */
    static class oJ implements oJ.InterfaceC0151oJ {
        private String ZYk;
        private com.bytedance.adsdk.oJ.ZYk.oJ oJ;

        private oJ(String str) {
            this.ZYk = str;
            this.oJ = com.bytedance.adsdk.oJ.ZYk.oJ.oJ(str);
        }

        public static oJ oJ(String str) {
            return new oJ(str);
        }

        @Override // com.bytedance.adsdk.ugeno.tB.oJ.InterfaceC0151oJ
        public Object oJ(JSONObject jSONObject) {
            com.bytedance.adsdk.oJ.ZYk.oJ oJVar = this.oJ;
            if (oJVar == null) {
                return this.ZYk;
            }
            Object oJ = oJVar.oJ(jSONObject);
            if (oJ instanceof String) {
                return oJ;
            }
            if (oJ instanceof com.bytedance.adsdk.oJ.ZYk.oJ.oJ) {
                return String.valueOf(dLZ.oJ((com.bytedance.adsdk.oJ.ZYk.oJ.oJ) oJ));
            }
            return String.valueOf(oJ);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.tB.oJ
    public oJ.InterfaceC0151oJ oJ(String str) {
        return oJ.oJ(str);
    }
}
