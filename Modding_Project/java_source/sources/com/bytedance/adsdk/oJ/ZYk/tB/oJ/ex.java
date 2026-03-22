package com.bytedance.adsdk.oJ.ZYk.tB.oJ;

import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.oq;
import java.util.Deque;
/* loaded from: classes3.dex */
public class ex extends ba {
    @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ.ba
    public int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar) {
        if ('(' != oJ(i10, str)) {
            return oJVar.oJ(str, i10, deque);
        }
        deque.push(new oq(com.bytedance.adsdk.oJ.ZYk.ex.ex.LEFT_PAREN));
        return i10 + 1;
    }
}
