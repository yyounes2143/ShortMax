package com.bytedance.sdk.component.Pfn.ex.ZYk;

import android.text.TextUtils;
import com.bytedance.sdk.component.Pfn.RZ;
import com.bytedance.sdk.component.utils.eZI;
/* loaded from: classes3.dex */
public class ZYk implements ba {
    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public boolean oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, RZ rz, com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        if (TextUtils.isEmpty(tBVar.kkU())) {
            String oJ = oJ(tBVar);
            tBVar.ZYk(oJ);
            tBVar.oJ(oJ);
        }
        tBVar.oJ();
        return true;
    }

    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public String oJ() {
        return "generate_key";
    }

    private String oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar) {
        return eZI.oJ(tBVar.oJ());
    }
}
