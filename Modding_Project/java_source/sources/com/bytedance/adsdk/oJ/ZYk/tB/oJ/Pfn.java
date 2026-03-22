package com.bytedance.adsdk.oJ.ZYk.tB.oJ;

import java.util.Deque;
/* loaded from: classes3.dex */
public class Pfn extends ba {
    @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ.ba
    public int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar) {
        char oJ;
        int i11 = i10;
        while (true) {
            oJ = oJ(i11, str);
            if (!com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.ZYk(oJ) && !com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.tB(oJ)) {
                break;
            }
            i11++;
        }
        if (oJ != '(') {
            return oJVar.oJ(str, i10, deque);
        }
        deque.push(new com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.kkU(str.substring(i10, i11)));
        return i11 + 1;
    }
}
