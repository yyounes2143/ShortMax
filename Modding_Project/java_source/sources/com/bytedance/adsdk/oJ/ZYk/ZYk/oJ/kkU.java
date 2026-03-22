package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU implements com.bytedance.adsdk.oJ.ZYk.ZYk.oJ {
    private String ZYk;
    private com.bytedance.adsdk.oJ.ZYk.ZYk.oJ[] oJ;
    private com.bytedance.adsdk.oJ.ZYk.oJ.oJ tB;

    public kkU(String str) {
        this.ZYk = str;
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public String ZYk() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.ZYk);
        sb2.append("(");
        com.bytedance.adsdk.oJ.ZYk.ZYk.oJ[] oJVarArr = this.oJ;
        if (oJVarArr != null && oJVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                com.bytedance.adsdk.oJ.ZYk.ZYk.oJ[] oJVarArr2 = this.oJ;
                if (i10 >= oJVarArr2.length) {
                    break;
                }
                sb2.append(oJVarArr2[i10].ZYk());
                sb2.append(",");
                i10++;
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public void oJ(com.bytedance.adsdk.oJ.ZYk.ZYk.oJ[] oJVarArr) {
        this.oJ = oJVarArr;
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public Object oJ(Map<String, JSONObject> map) {
        com.bytedance.adsdk.oJ.ZYk.oJ.oJ oJVar = new com.bytedance.adsdk.oJ.ZYk.oJ.oJ();
        this.tB = oJVar;
        oJVar.oJ(this.ZYk);
        Object[] objArr = new Object[this.oJ.length];
        int i10 = 0;
        while (true) {
            com.bytedance.adsdk.oJ.ZYk.ZYk.oJ[] oJVarArr = this.oJ;
            if (i10 < oJVarArr.length) {
                com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar2 = oJVarArr[i10];
                if (oJVar2 != null) {
                    objArr[i10] = oJVar2.oJ(map);
                }
                i10++;
            } else {
                this.tB.oJ(objArr);
                return com.bytedance.adsdk.oJ.dLZ.oJ(this.ZYk).oJ(map.get("default_key"), objArr);
            }
        }
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public com.bytedance.adsdk.oJ.ZYk.ex.Pfn oJ() {
        return com.bytedance.adsdk.oJ.ZYk.ex.ZYk.METHOD;
    }
}
