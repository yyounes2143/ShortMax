package com.bytedance.adsdk.oJ.ZYk.tB.oJ;

import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.eZI;
import java.util.Deque;
/* loaded from: classes3.dex */
public class so extends ba {
    @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ.ba
    public int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar) {
        if (!com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.ex(oJ(i10, str))) {
            return oJVar.oJ(str, i10, deque);
        }
        int i11 = i10 + 1;
        String str2 = new String(new char[]{oJ(i10, str), oJ(i11, str)});
        if (com.bytedance.adsdk.oJ.ZYk.ex.tB.oJ(str2) != null) {
            deque.push(new eZI(com.bytedance.adsdk.oJ.ZYk.ex.tB.oJ(str2)));
            return i10 + 2;
        }
        String valueOf = String.valueOf(oJ(i10, str));
        if (com.bytedance.adsdk.oJ.ZYk.ex.tB.oJ(valueOf) != null) {
            deque.push(new eZI(com.bytedance.adsdk.oJ.ZYk.ex.tB.oJ(valueOf)));
            return i11;
        }
        throw new IllegalArgumentException("Unrecognized:" + valueOf + "examine:" + str.substring(0, i10));
    }
}
