package com.bytedance.adsdk.oJ.ZYk.tB.oJ;

import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.awB;
import java.util.Deque;
/* loaded from: classes3.dex */
public class cFZ extends ba {
    private boolean oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque) {
        if ('-' == oJ(i10, str)) {
            if (deque.peek() == null || com.bytedance.adsdk.oJ.ZYk.ex.tB.oJ(deque.peek().oJ())) {
                if (com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.tB(oJ(i10 + 1, str))) {
                    return true;
                }
                throw new IllegalArgumentException("Unrecognized - symbol, not a negative number or operator, problem range:" + str.substring(0, i10));
            }
            return false;
        }
        return com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.tB(oJ(i10, str));
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ.ba
    public int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar) {
        char oJ;
        if (!oJ(str, i10, deque)) {
            return oJVar.oJ(str, i10, deque);
        }
        int i11 = oJ(i10, str) == '-' ? i10 + 1 : i10;
        boolean z10 = false;
        while (true) {
            oJ = oJ(i11, str);
            if (com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.tB(oJ) || (!z10 && oJ == '.')) {
                i11++;
                if (oJ == '.') {
                    z10 = true;
                }
            }
        }
        if (oJ != '.') {
            deque.push(new awB(str.substring(i10, i11)));
            return i11;
        }
        throw new IllegalArgumentException("Illegal negative number format, problem interval:" + str.substring(i10, i11));
    }
}
