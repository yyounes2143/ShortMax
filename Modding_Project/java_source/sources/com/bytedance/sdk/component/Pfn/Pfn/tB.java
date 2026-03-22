package com.bytedance.sdk.component.Pfn.Pfn;

import android.text.TextUtils;
/* loaded from: classes3.dex */
public class tB extends oJ {
    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        if (TextUtils.isEmpty(tBVar.kkU())) {
            com.bytedance.sdk.component.Pfn.BTZ ba2 = tBVar.Ry().ba();
            tBVar.ZYk(ba2.oJ(tBVar));
            tBVar.oJ(ba2.ZYk(tBVar));
        }
        tBVar.oJ(new cFZ());
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "generate_key";
    }
}
