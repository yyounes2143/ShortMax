package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.bytedance.adsdk.ZYk.tB.ZYk.RZ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class oJ implements oJ.InterfaceC0139oJ, Pfn, dLZ {
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Integer> BTZ;
    private final List<com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float>> PiB;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> WcQ;
    final Paint ZYk;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> awB;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> dLZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> eZI;
    private final float[] kkU;
    protected final com.bytedance.adsdk.ZYk.tB.tB.oJ oJ;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.tB f11551si;

    /* renamed from: so  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.jFA f11552so;
    float tB;
    private final PathMeasure ex = new PathMeasure();
    private final Path Pfn = new Path();

    /* renamed from: ba  reason: collision with root package name */
    private final Path f11550ba = new Path();
    private final RectF cFZ = new RectF();
    private final List<C0140oJ> jFA = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bytedance.adsdk.ZYk.oJ.oJ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0140oJ {
        private final oq ZYk;
        private final List<PiB> oJ;

        private C0140oJ(oq oqVar) {
            this.oJ = new ArrayList();
            this.ZYk = oqVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, Paint.Cap cap, Paint.Join join, float f10, com.bytedance.adsdk.ZYk.tB.oJ.ex exVar, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk, List<com.bytedance.adsdk.ZYk.tB.oJ.ZYk> list, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2) {
        com.bytedance.adsdk.ZYk.oJ.oJ oJVar2 = new com.bytedance.adsdk.ZYk.oJ.oJ(1);
        this.ZYk = oJVar2;
        this.tB = 0.0f;
        this.f11552so = jfa;
        this.oJ = oJVar;
        oJVar2.setStyle(Paint.Style.STROKE);
        oJVar2.setStrokeCap(cap);
        oJVar2.setStrokeJoin(join);
        oJVar2.setStrokeMiter(f10);
        this.BTZ = exVar.oJ();
        this.dLZ = zYk.oJ();
        if (zYk2 == null) {
            this.WcQ = null;
        } else {
            this.WcQ = zYk2.oJ();
        }
        this.PiB = new ArrayList(list.size());
        this.kkU = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.PiB.add(list.get(i10).oJ());
        }
        oJVar.oJ(this.BTZ);
        oJVar.oJ(this.dLZ);
        for (int i11 = 0; i11 < this.PiB.size(); i11++) {
            oJVar.oJ(this.PiB.get(i11));
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar3 = this.WcQ;
        if (oJVar3 != null) {
            oJVar.oJ(oJVar3);
        }
        this.BTZ.oJ(this);
        this.dLZ.oJ(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.PiB.get(i12).oJ(this);
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar4 = this.WcQ;
        if (oJVar4 != null) {
            oJVar4.oJ(this);
        }
        if (oJVar.kkU() != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ = oJVar.kkU().oJ().oJ();
            this.eZI = oJ;
            oJ.oJ(this);
            oJVar.oJ(this.eZI);
        }
        if (oJVar.dLZ() != null) {
            this.f11551si = new com.bytedance.adsdk.ZYk.oJ.ZYk.tB(this, oJVar, oJVar.dLZ());
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        this.f11552so.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        oq oqVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            tB tBVar = list.get(size);
            if (tBVar instanceof oq) {
                oq oqVar2 = (oq) tBVar;
                if (oqVar2.ZYk() == RZ.oJ.INDIVIDUALLY) {
                    oqVar = oqVar2;
                }
            }
        }
        if (oqVar != null) {
            oqVar.oJ(this);
        }
        C0140oJ c0140oJ = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            tB tBVar2 = list2.get(size2);
            if (tBVar2 instanceof oq) {
                oq oqVar3 = (oq) tBVar2;
                if (oqVar3.ZYk() == RZ.oJ.INDIVIDUALLY) {
                    if (c0140oJ != null) {
                        this.jFA.add(c0140oJ);
                    }
                    c0140oJ = new C0140oJ(oqVar3);
                    oqVar3.oJ(this);
                }
            }
            if (tBVar2 instanceof PiB) {
                if (c0140oJ == null) {
                    c0140oJ = new C0140oJ(oqVar);
                }
                c0140oJ.oJ.add((PiB) tBVar2);
            }
        }
        if (c0140oJ != null) {
            this.jFA.add(c0140oJ);
        }
    }

    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        com.bytedance.adsdk.ZYk.Pfn.oJ("StrokeContent#draw");
        if (com.bytedance.adsdk.ZYk.ba.ba.ZYk(matrix)) {
            com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#draw");
            return;
        }
        this.ZYk.setAlpha(com.bytedance.adsdk.ZYk.ba.Pfn.oJ((int) ((((i10 / 255.0f) * ((com.bytedance.adsdk.ZYk.oJ.ZYk.ba) this.BTZ).jFA()) / 100.0f) * 255.0f), 0, 255));
        this.ZYk.setStrokeWidth(((com.bytedance.adsdk.ZYk.oJ.ZYk.ex) this.dLZ).jFA() * com.bytedance.adsdk.ZYk.ba.ba.oJ(matrix));
        if (this.ZYk.getStrokeWidth() <= 0.0f) {
            com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#draw");
            return;
        }
        oJ(matrix);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> oJVar = this.awB;
        if (oJVar != null) {
            this.ZYk.setColorFilter(oJVar.cFZ());
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJVar2 = this.eZI;
        if (oJVar2 != null) {
            float floatValue = oJVar2.cFZ().floatValue();
            if (floatValue == 0.0f) {
                this.ZYk.setMaskFilter(null);
            } else if (floatValue != this.tB) {
                this.ZYk.setMaskFilter(this.oJ.ZYk(floatValue));
            }
            this.tB = floatValue;
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.tB tBVar = this.f11551si;
        if (tBVar != null) {
            tBVar.oJ(this.ZYk);
        }
        for (int i11 = 0; i11 < this.jFA.size(); i11++) {
            C0140oJ c0140oJ = this.jFA.get(i11);
            if (c0140oJ.ZYk != null) {
                oJ(canvas, c0140oJ, matrix);
            } else {
                com.bytedance.adsdk.ZYk.Pfn.oJ("StrokeContent#buildPath");
                this.Pfn.reset();
                for (int size = c0140oJ.oJ.size() - 1; size >= 0; size--) {
                    this.Pfn.addPath(((PiB) c0140oJ.oJ.get(size)).ex(), matrix);
                }
                com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#buildPath");
                com.bytedance.adsdk.ZYk.Pfn.oJ("StrokeContent#drawPath");
                canvas.drawPath(this.Pfn, this.ZYk);
                com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#drawPath");
            }
        }
        com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#draw");
    }

    private void oJ(Canvas canvas, C0140oJ c0140oJ, Matrix matrix) {
        float f10;
        float f11;
        com.bytedance.adsdk.ZYk.Pfn.oJ("StrokeContent#applyTrimPath");
        if (c0140oJ.ZYk == null) {
            com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#applyTrimPath");
            return;
        }
        this.Pfn.reset();
        for (int size = c0140oJ.oJ.size() - 1; size >= 0; size--) {
            this.Pfn.addPath(((PiB) c0140oJ.oJ.get(size)).ex(), matrix);
        }
        float floatValue = c0140oJ.ZYk.tB().cFZ().floatValue() / 100.0f;
        float floatValue2 = c0140oJ.ZYk.ex().cFZ().floatValue() / 100.0f;
        float floatValue3 = c0140oJ.ZYk.Pfn().cFZ().floatValue() / 360.0f;
        if (floatValue < 0.01f && floatValue2 > 0.99f) {
            canvas.drawPath(this.Pfn, this.ZYk);
            com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#applyTrimPath");
            return;
        }
        this.ex.setPath(this.Pfn, false);
        float length = this.ex.getLength();
        while (this.ex.nextContour()) {
            length += this.ex.getLength();
        }
        float f12 = floatValue3 * length;
        float f13 = (floatValue * length) + f12;
        float min = Math.min((floatValue2 * length) + f12, (f13 + length) - 1.0f);
        float f14 = 0.0f;
        for (int size2 = c0140oJ.oJ.size() - 1; size2 >= 0; size2--) {
            this.f11550ba.set(((PiB) c0140oJ.oJ.get(size2)).ex());
            this.f11550ba.transform(matrix);
            this.ex.setPath(this.f11550ba, false);
            float length2 = this.ex.getLength();
            if (min > length) {
                float f15 = min - length;
                if (f15 < f14 + length2 && f14 < f15) {
                    f10 = f13 > length ? (f13 - length) / length2 : 0.0f;
                    f11 = Math.min(f15 / length2, 1.0f);
                    com.bytedance.adsdk.ZYk.ba.ba.oJ(this.f11550ba, f10, f11, 0.0f);
                    canvas.drawPath(this.f11550ba, this.ZYk);
                    f14 += length2;
                }
            }
            float f16 = f14 + length2;
            if (f16 >= f13 && f14 <= min) {
                if (f16 <= min && f13 < f14) {
                    canvas.drawPath(this.f11550ba, this.ZYk);
                } else {
                    f10 = f13 < f14 ? 0.0f : (f13 - f14) / length2;
                    f11 = min > f16 ? 1.0f : (min - f14) / length2;
                    com.bytedance.adsdk.ZYk.ba.ba.oJ(this.f11550ba, f10, f11, 0.0f);
                    canvas.drawPath(this.f11550ba, this.ZYk);
                }
            }
            f14 += length2;
        }
        com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#applyTrimPath");
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        com.bytedance.adsdk.ZYk.Pfn.oJ("StrokeContent#getBounds");
        this.Pfn.reset();
        for (int i10 = 0; i10 < this.jFA.size(); i10++) {
            C0140oJ c0140oJ = this.jFA.get(i10);
            for (int i11 = 0; i11 < c0140oJ.oJ.size(); i11++) {
                this.Pfn.addPath(((PiB) c0140oJ.oJ.get(i11)).ex(), matrix);
            }
        }
        this.Pfn.computeBounds(this.cFZ, false);
        float jFA = ((com.bytedance.adsdk.ZYk.oJ.ZYk.ex) this.dLZ).jFA();
        RectF rectF2 = this.cFZ;
        float f10 = jFA / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.cFZ);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#getBounds");
    }

    private void oJ(Matrix matrix) {
        com.bytedance.adsdk.ZYk.Pfn.oJ("StrokeContent#applyDashPattern");
        if (this.PiB.isEmpty()) {
            com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#applyDashPattern");
            return;
        }
        float oJ = com.bytedance.adsdk.ZYk.ba.ba.oJ(matrix);
        for (int i10 = 0; i10 < this.PiB.size(); i10++) {
            this.kkU[i10] = this.PiB.get(i10).cFZ().floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.kkU;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.kkU;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.kkU;
            fArr3[i10] = fArr3[i10] * oJ;
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar = this.WcQ;
        this.ZYk.setPathEffect(new DashPathEffect(this.kkU, oJVar == null ? 0.0f : oJ * oJVar.cFZ().floatValue()));
        com.bytedance.adsdk.ZYk.Pfn.ZYk("StrokeContent#applyDashPattern");
    }
}
