package com.bytedance.sdk.component.Pfn.Pfn;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.Pfn.si;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class kkU extends oJ {
    private Bitmap ZYk(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        Collection<si> oJ = tBVar.Ry().oJ();
        Bitmap bitmap = null;
        if (oJ == null) {
            return null;
        }
        Iterator<si> it = oJ.iterator();
        while (it.hasNext() && (bitmap = it.next().oJ(tBVar.kkU())) == null) {
        }
        return bitmap;
    }

    private Bitmap tB(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        return tBVar.Ry().oJ(tBVar.RZ()).oJ(tBVar.kkU());
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        Bitmap ZYk;
        int BTZ = tBVar.BTZ();
        if (BTZ != 2 && BTZ != 1) {
            ZYk = null;
        } else if (!tBVar.QSm() && !tBVar.RZ().jFA()) {
            ZYk = tB(tBVar);
        } else {
            ZYk = ZYk(tBVar);
        }
        if (ZYk == null) {
            tBVar.oJ(new BTZ());
        } else {
            tBVar.oJ(new PiB(ZYk, null, false));
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "memory_cache";
    }
}
