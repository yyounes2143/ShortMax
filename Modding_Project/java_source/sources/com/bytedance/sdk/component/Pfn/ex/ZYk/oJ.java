package com.bytedance.sdk.component.Pfn.ex.ZYk;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.Pfn.RZ;
/* loaded from: classes3.dex */
public class oJ<T> implements ba {
    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public boolean oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, RZ rz, com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        Bitmap oJ;
        String kkU = tBVar.kkU();
        tBVar.oJ();
        com.bytedance.sdk.component.Pfn.ZYk Ry = tBVar.Ry();
        com.bytedance.sdk.component.Pfn.ex.tB.ba si2 = tBVar.si();
        if (Ry == null || si2 == null || !Ry.Pfn() || !oJ(tBVar) || (oJ = si2.oJ(Ry).oJ(kkU)) == null) {
            return true;
        }
        tBVar.oJ();
        oJVar.oJ(new com.bytedance.sdk.component.Pfn.ex.tB.ex().oJ(tBVar, oJ, null, false));
        return false;
    }

    private boolean oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar) {
        int BTZ = tBVar.BTZ();
        return BTZ == 1 || BTZ == 2;
    }

    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public String oJ() {
        return "bitmap_cache";
    }
}
