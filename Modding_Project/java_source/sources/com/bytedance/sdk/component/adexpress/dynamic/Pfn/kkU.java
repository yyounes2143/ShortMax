package com.bytedance.sdk.component.adexpress.dynamic.Pfn;

import com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class kkU {
    public static float oJ(float f10) {
        return (float) Math.ceil((f10 * 16.0f) / 16.0f);
    }

    public static List<ZYk.oJ> oJ(float f10, List<ZYk.oJ> list) {
        ArrayList<ZYk.oJ> arrayList = new ArrayList();
        for (ZYk.oJ oJVar : list) {
            arrayList.add((ZYk.oJ) oJVar.clone());
        }
        boolean z10 = true;
        int i10 = 0;
        int i11 = 0;
        for (ZYk.oJ oJVar2 : arrayList) {
            if (oJVar2.ZYk) {
                i10 = (int) (i10 + oJVar2.oJ);
            } else {
                i11 = (int) (i11 + oJVar2.oJ);
                z10 = false;
            }
        }
        if (!z10 || f10 <= i10) {
            float f11 = i10;
            int i12 = (f10 > f11 ? 1 : (f10 == f11 ? 0 : -1));
            float f12 = i12 < 0 ? f10 / f11 : 1.0f;
            int i13 = (f10 > f11 ? 1 : (f10 == f11 ? 0 : -1));
            float f13 = i13 > 0 ? (f10 - f11) / i11 : 0.0f;
            if (f13 > 1.0f) {
                ArrayList arrayList2 = new ArrayList();
                boolean z11 = false;
                for (ZYk.oJ oJVar3 : arrayList) {
                    if (!oJVar3.ZYk) {
                        float f14 = oJVar3.tB;
                        if (f14 != 0.0f && oJVar3.oJ * f13 > f14) {
                            oJVar3.oJ = f14;
                            oJVar3.ZYk = true;
                            z11 = true;
                        }
                    }
                    arrayList2.add(oJVar3);
                }
                if (z11) {
                    return oJ(f10, arrayList2);
                }
            }
            int i14 = 0;
            for (ZYk.oJ oJVar4 : arrayList) {
                if (oJVar4.ZYk) {
                    oJVar4.oJ = oJ(oJVar4.oJ * f12);
                } else {
                    oJVar4.oJ = oJ(oJVar4.oJ * f13);
                }
                i14 = (int) (i14 + oJVar4.oJ);
            }
            float f15 = i14;
            if (f15 < f10) {
                float f16 = f10 - f15;
                for (int i15 = 0; i15 < arrayList.size() && f16 > 0.0f; i15 = (i15 + 1) % arrayList.size()) {
                    ZYk.oJ oJVar5 = (ZYk.oJ) arrayList.get(i15);
                    if ((i12 < 0 && oJVar5.ZYk) || (i13 > 0 && !oJVar5.ZYk)) {
                        oJVar5.oJ += 0.0625f;
                        f16 -= 0.0625f;
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }
}
