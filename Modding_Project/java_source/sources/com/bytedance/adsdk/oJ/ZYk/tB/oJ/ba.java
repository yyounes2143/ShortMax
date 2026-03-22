package com.bytedance.adsdk.oJ.ZYk.tB.oJ;

import java.util.Deque;
/* loaded from: classes3.dex */
public abstract class ba {
    /* JADX INFO: Access modifiers changed from: protected */
    public int ZYk(int i10, String str) {
        while (com.bytedance.adsdk.oJ.ZYk.Pfn.oJ.oJ(oJ(i10, str))) {
            i10++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public char oJ(int i10, String str) {
        if (i10 >= str.length()) {
            return (char) 26;
        }
        return str.charAt(i10);
    }

    public abstract int oJ(String str, int i10, Deque<com.bytedance.adsdk.oJ.ZYk.ZYk.oJ> deque, com.bytedance.adsdk.oJ.ZYk.tB.oJ oJVar);
}
