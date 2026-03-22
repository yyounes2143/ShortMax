package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;
/* loaded from: classes3.dex */
public class kkU extends cFZ<PointF> {
    private final float[] Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final PathMeasure f11528ba;
    private jFA cFZ;
    private final PointF ex;

    public kkU(List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<PointF>> list) {
        super(list);
        this.ex = new PointF();
        this.Pfn = new float[2];
        this.f11528ba = new PathMeasure();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public PointF oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> oJVar, float f10) {
        jFA jfa = (jFA) oJVar;
        Path ZYk = jfa.ZYk();
        if (ZYk == null) {
            return oJVar.oJ;
        }
        if (this.tB == null) {
            if (this.cFZ != jfa) {
                this.f11528ba.setPath(ZYk, false);
                this.cFZ = jfa;
            }
            PathMeasure pathMeasure = this.f11528ba;
            pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.Pfn, null);
            PointF pointF = this.ex;
            float[] fArr = this.Pfn;
            pointF.set(fArr[0], fArr[1]);
            return this.ex;
        }
        jfa.cFZ.floatValue();
        ex();
        so();
        throw null;
    }
}
