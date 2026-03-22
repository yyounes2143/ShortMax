package com.bytedance.adsdk.ZYk;

import android.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class Ry {
    private boolean oJ = false;
    private final Set<Object> ZYk = new oJ();
    private final Map<String, com.bytedance.adsdk.ZYk.ba.ex> tB = new HashMap();
    private final Comparator<Pair<String, Float>> ex = new Comparator<Pair<String, Float>>() { // from class: com.bytedance.adsdk.ZYk.Ry.1
        @Override // java.util.Comparator
        /* renamed from: oJ */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = ((Float) pair.second).floatValue();
            float floatValue2 = ((Float) pair2.second).floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            if (floatValue > floatValue2) {
                return -1;
            }
            return 0;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(boolean z10) {
        this.oJ = z10;
    }

    public void oJ(String str, float f10) {
        if (this.oJ) {
            com.bytedance.adsdk.ZYk.ba.ex exVar = this.tB.get(str);
            if (exVar == null) {
                exVar = new com.bytedance.adsdk.ZYk.ba.ex();
                this.tB.put(str, exVar);
            }
            exVar.oJ(f10);
            if (str.equals("__container")) {
                Iterator<Object> it = this.ZYk.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }
}
