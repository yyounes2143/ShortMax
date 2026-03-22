package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class cFZ implements oJ.InterfaceC0139oJ, Pfn, dLZ {
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> BTZ;
    private final String Pfn;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.tB PiB;
    private final Path ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final boolean f11542ba;
    private final List<PiB> cFZ;
    private final com.bytedance.adsdk.ZYk.jFA dLZ;
    private final com.bytedance.adsdk.ZYk.tB.tB.oJ ex;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> jFA;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> kkU;
    float oJ;

    /* renamed from: so  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> f11543so;
    private final Paint tB;

    public cFZ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.awB awb) {
        Path path = new Path();
        this.ZYk = path;
        this.tB = new com.bytedance.adsdk.ZYk.oJ.oJ(1);
        this.cFZ = new ArrayList();
        this.ex = oJVar;
        this.Pfn = awb.oJ();
        this.f11542ba = awb.Pfn();
        this.dLZ = jfa;
        if (oJVar.kkU() != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ = oJVar.kkU().oJ().oJ();
            this.BTZ = oJ;
            oJ.oJ(this);
            oJVar.oJ(this.BTZ);
        }
        if (oJVar.dLZ() != null) {
            this.PiB = new com.bytedance.adsdk.ZYk.oJ.ZYk.tB(this, oJVar, oJVar.dLZ());
        }
        if (awb.ZYk() != null && awb.tB() != null) {
            path.setFillType(awb.ex());
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJ2 = awb.ZYk().oJ();
            this.f11543so = oJ2;
            oJ2.oJ(this);
            oJVar.oJ(oJ2);
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJ3 = awb.tB().oJ();
            this.jFA = oJ3;
            oJ3.oJ(this);
            oJVar.oJ(oJ3);
            return;
        }
        this.f11543so = null;
        this.jFA = null;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        this.dLZ.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            tB tBVar = list2.get(i10);
            if (tBVar instanceof PiB) {
                this.cFZ.add((PiB) tBVar);
            }
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        if (this.f11542ba) {
            return;
        }
        com.bytedance.adsdk.ZYk.Pfn.oJ("FillContent#draw");
        this.tB.setColor((com.bytedance.adsdk.ZYk.ba.Pfn.oJ((int) ((((i10 / 255.0f) * this.jFA.cFZ().intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((com.bytedance.adsdk.ZYk.oJ.ZYk.ZYk) this.f11543so).jFA() & ViewCompat.MEASURED_SIZE_MASK));
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> oJVar = this.kkU;
        if (oJVar != null) {
            this.tB.setColorFilter(oJVar.cFZ());
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJVar2 = this.BTZ;
        if (oJVar2 != null) {
            float floatValue = oJVar2.cFZ().floatValue();
            if (floatValue == 0.0f) {
                this.tB.setMaskFilter(null);
            } else if (floatValue != this.oJ) {
                this.tB.setMaskFilter(this.ex.ZYk(floatValue));
            }
            this.oJ = floatValue;
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.tB tBVar = this.PiB;
        if (tBVar != null) {
            tBVar.oJ(this.tB);
        }
        this.ZYk.reset();
        for (int i11 = 0; i11 < this.cFZ.size(); i11++) {
            this.ZYk.addPath(this.cFZ.get(i11).ex(), matrix);
        }
        canvas.drawPath(this.ZYk, this.tB);
        com.bytedance.adsdk.ZYk.Pfn.ZYk("FillContent#draw");
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        this.ZYk.reset();
        for (int i10 = 0; i10 < this.cFZ.size(); i10++) {
            this.ZYk.addPath(this.cFZ.get(i10).ex(), matrix);
        }
        this.ZYk.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }
}
