package com.bytedance.adsdk.oJ.ZYk.tB.oJ;

import com.bytedance.adsdk.oJ.ZYk.ZYk.oJ.QSm;
import java.util.Deque;
/* loaded from: classes3.dex */
public class ZYk extends ba {
    @Override // com.bytedance.adsdk.oJ.ZYk.tB.oJ.ba
    public int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar) {
        if ('\'' != oJ(i10, str)) {
            return oJVar.oJ(str, i10, deque);
        }
        int i11 = i10 + 1;
        int length = str.length();
        int i12 = i11;
        while (i12 < length && oJ(i12, str) != '\'') {
            i12++;
        }
        if (oJ(i12, str) == '\'') {
            deque.push(new QSm(str.substring(i11, i12)));
            return i12 + 1;
        }
        throw new com.bytedance.adsdk.oJ.oJ.oJ("String expression not surrounded by '", str.substring(i10));
    }
}
