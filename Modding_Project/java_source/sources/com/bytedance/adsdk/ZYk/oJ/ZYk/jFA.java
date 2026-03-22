package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.Path;
import android.graphics.PointF;
/* loaded from: classes3.dex */
public class jFA extends com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> {
    private final com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> dLZ;
    private Path kkU;

    public jFA(com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> oJVar) {
        super(cfz, oJVar.oJ, oJVar.ZYk, oJVar.tB, oJVar.ex, oJVar.Pfn, oJVar.f11507ba, oJVar.cFZ);
        this.dLZ = oJVar;
        oJ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Path ZYk() {
        return this.kkU;
    }

    public void oJ() {
        boolean z10;
        T t10;
        T t11;
        T t12 = this.ZYk;
        if (t12 != 0 && (t11 = this.oJ) != 0 && ((PointF) t11).equals(((PointF) t12).x, ((PointF) t12).y)) {
            z10 = true;
        } else {
            z10 = false;
        }
        T t13 = this.oJ;
        if (t13 != 0 && (t10 = this.ZYk) != 0 && !z10) {
            com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> oJVar = this.dLZ;
            this.kkU = com.bytedance.adsdk.ZYk.ba.ba.oJ((PointF) t13, (PointF) t10, oJVar.f11508so, oJVar.jFA);
        }
    }
}
