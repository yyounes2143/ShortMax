package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.PointF;
import java.util.List;
/* loaded from: classes3.dex */
public class dLZ extends cFZ<PointF> {
    private final PointF ex;

    public dLZ(List<com.bytedance.adsdk.ZYk.cFZ.oJ<PointF>> list) {
        super(list);
        this.ex = new PointF();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public PointF oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> oJVar, float f10) {
        return oJ(oJVar, f10, f10, f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public PointF oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> oJVar, float f10, float f11, float f12) {
        PointF pointF;
        PointF pointF2 = oJVar.oJ;
        if (pointF2 != null && (pointF = oJVar.ZYk) != null) {
            PointF pointF3 = pointF2;
            PointF pointF4 = pointF;
            if (this.tB == null) {
                PointF pointF5 = this.ex;
                float f13 = pointF3.x;
                float f14 = pointF3.y;
                pointF5.set(f13 + (f11 * (pointF4.x - f13)), f14 + (f12 * (pointF4.y - f14)));
                return this.ex;
            }
            oJVar.cFZ.floatValue();
            ex();
            so();
            throw null;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
