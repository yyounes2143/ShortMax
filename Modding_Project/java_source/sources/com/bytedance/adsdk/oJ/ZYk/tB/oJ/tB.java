package com.bytedance.adsdk.oJ.ZYk.tB.oJ;

import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.Id;
import java.util.Deque;
/* loaded from: classes3.dex */
public class tB extends ba {
    @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ.ba
    public int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar) {
        char oJ = oJ(i10, str);
        if (!com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.ZYk(oJ) && oJ != '$') {
            return oJVar.oJ(str, i10, deque);
        }
        return oJ(str, i10, deque);
    }

    private int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque) {
        int i11;
        int i12 = 0;
        while (true) {
            i11 = i12 + i10;
            char oJ = oJ(i11, str);
            if (!com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.ZYk(oJ) && !com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.tB(oJ) && '.' != oJ && '[' != oJ && ']' != oJ && '_' != oJ && '-' != oJ && '$' != oJ) {
                break;
            }
            i12++;
        }
        String substring = str.substring(i10, i11);
        if (com.bytedance.adsdk.oJ.ZYk.ex.oJ.oJ(substring) != null) {
            deque.push(new com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.cFZ(substring));
        } else {
            deque.push(new Id(substring));
        }
        return i11;
    }
}
