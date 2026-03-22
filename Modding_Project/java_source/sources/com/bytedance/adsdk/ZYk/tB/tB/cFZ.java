package com.bytedance.adsdk.ZYk.tB.tB;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.bytedance.adsdk.ZYk.tB.ZYk.eZI;
import java.util.Collections;
/* loaded from: classes3.dex */
public class cFZ extends oJ {
    private final com.bytedance.adsdk.ZYk.oJ.oJ.ex cFZ;

    /* renamed from: so  reason: collision with root package name */
    private final ZYk f11583so;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cFZ(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn, ZYk zYk, com.bytedance.adsdk.ZYk.cFZ cfz) {
        super(jfa, pfn);
        this.f11583so = zYk;
        com.bytedance.adsdk.ZYk.oJ.oJ.ex exVar = new com.bytedance.adsdk.ZYk.oJ.oJ.ex(jfa, this, new eZI("__container", pfn.WcQ(), false), cfz);
        this.cFZ = exVar;
        exVar.oJ(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        super.ZYk(canvas, matrix, i10);
        this.cFZ.oJ(canvas, matrix, i10);
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public com.bytedance.adsdk.ZYk.Pfn.kkU dLZ() {
        com.bytedance.adsdk.ZYk.Pfn.kkU dLZ = super.dLZ();
        if (dLZ != null) {
            return dLZ;
        }
        return this.f11583so.dLZ();
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public com.bytedance.adsdk.ZYk.tB.ZYk.oJ kkU() {
        com.bytedance.adsdk.ZYk.tB.ZYk.oJ kkU = super.kkU();
        if (kkU != null) {
            return kkU;
        }
        return this.f11583so.kkU();
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        super.oJ(rectF, matrix, z10);
        this.cFZ.oJ(rectF, this.oJ, z10);
    }
}
