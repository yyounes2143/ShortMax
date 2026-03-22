package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
/* loaded from: classes3.dex */
public class QSm extends oJ {
    private final String Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final boolean f11533ba;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> cFZ;
    private final com.bytedance.adsdk.ZYk.tB.tB.oJ ex;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> f11534so;

    public QSm(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.Ry ry) {
        super(jfa, oJVar, ry.cFZ().oJ(), ry.so().oJ(), ry.jFA(), ry.tB(), ry.ex(), ry.Pfn(), ry.ba());
        this.ex = oJVar;
        this.Pfn = ry.oJ();
        this.f11533ba = ry.kkU();
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJ = ry.ZYk().oJ();
        this.cFZ = oJ;
        oJ.oJ(this);
        oJVar.oJ(oJ);
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        if (this.f11533ba) {
            return;
        }
        this.ZYk.setColor(((com.bytedance.adsdk.ZYk.oJ.ZYk.ZYk) this.cFZ).jFA());
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> oJVar = this.f11534so;
        if (oJVar != null) {
            this.ZYk.setColorFilter(oJVar.cFZ());
        }
        super.oJ(canvas, matrix, i10);
    }
}
