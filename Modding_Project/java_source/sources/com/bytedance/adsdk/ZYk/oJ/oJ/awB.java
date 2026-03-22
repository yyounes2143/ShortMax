package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.bytedance.adsdk.ZYk.tB.ZYk.RZ;
import java.util.List;
/* loaded from: classes3.dex */
public class awB implements oJ.InterfaceC0139oJ, PiB, dLZ {
    private final com.bytedance.adsdk.ZYk.jFA Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, PointF> f11538ba;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, PointF> cFZ;
    private boolean dLZ;
    private final boolean ex;

    /* renamed from: so  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> f11539so;
    private final String tB;
    private final Path oJ = new Path();
    private final RectF ZYk = new RectF();
    private final ZYk jFA = new ZYk();
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> kkU = null;

    public awB(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.dLZ dlz) {
        this.tB = dlz.oJ();
        this.ex = dlz.Pfn();
        this.Pfn = jfa;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ = dlz.ex().oJ();
        this.f11538ba = oJ;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ2 = dlz.tB().oJ();
        this.cFZ = oJ2;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ3 = dlz.ZYk().oJ();
        this.f11539so = oJ3;
        oJVar.oJ(oJ);
        oJVar.oJ(oJ2);
        oJVar.oJ(oJ3);
        oJ.oJ(this);
        oJ2.oJ(this);
        oJ3.oJ(this);
    }

    private void ZYk() {
        this.dLZ = false;
        this.Pfn.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.PiB
    public Path ex() {
        float jFA;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJVar;
        if (this.dLZ) {
            return this.oJ;
        }
        this.oJ.reset();
        if (this.ex) {
            this.dLZ = true;
            return this.oJ;
        }
        PointF cFZ = this.cFZ.cFZ();
        float f10 = cFZ.x / 2.0f;
        float f11 = cFZ.y / 2.0f;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar2 = this.f11539so;
        if (oJVar2 == null) {
            jFA = 0.0f;
        } else {
            jFA = ((com.bytedance.adsdk.ZYk.oJ.ZYk.ex) oJVar2).jFA();
        }
        if (jFA == 0.0f && (oJVar = this.kkU) != null) {
            jFA = Math.min(oJVar.cFZ().floatValue(), Math.min(f10, f11));
        }
        float min = Math.min(f10, f11);
        if (jFA > min) {
            jFA = min;
        }
        PointF cFZ2 = this.f11538ba.cFZ();
        this.oJ.moveTo(cFZ2.x + f10, (cFZ2.y - f11) + jFA);
        this.oJ.lineTo(cFZ2.x + f10, (cFZ2.y + f11) - jFA);
        int i10 = (jFA > 0.0f ? 1 : (jFA == 0.0f ? 0 : -1));
        if (i10 > 0) {
            RectF rectF = this.ZYk;
            float f12 = cFZ2.x;
            float f13 = jFA * 2.0f;
            float f14 = cFZ2.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.oJ.arcTo(this.ZYk, 0.0f, 90.0f, false);
        }
        this.oJ.lineTo((cFZ2.x - f10) + jFA, cFZ2.y + f11);
        if (i10 > 0) {
            RectF rectF2 = this.ZYk;
            float f15 = cFZ2.x;
            float f16 = cFZ2.y;
            float f17 = jFA * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.oJ.arcTo(this.ZYk, 90.0f, 90.0f, false);
        }
        this.oJ.lineTo(cFZ2.x - f10, (cFZ2.y - f11) + jFA);
        if (i10 > 0) {
            RectF rectF3 = this.ZYk;
            float f18 = cFZ2.x;
            float f19 = cFZ2.y;
            float f20 = jFA * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.oJ.arcTo(this.ZYk, 180.0f, 90.0f, false);
        }
        this.oJ.lineTo((cFZ2.x + f10) - jFA, cFZ2.y - f11);
        if (i10 > 0) {
            RectF rectF4 = this.ZYk;
            float f21 = cFZ2.x;
            float f22 = jFA * 2.0f;
            float f23 = cFZ2.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.oJ.arcTo(this.ZYk, 270.0f, 90.0f, false);
        }
        this.oJ.close();
        this.jFA.oJ(this.oJ);
        this.dLZ = true;
        return this.oJ;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        ZYk();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            tB tBVar = list.get(i10);
            if (tBVar instanceof oq) {
                oq oqVar = (oq) tBVar;
                if (oqVar.ZYk() == RZ.oJ.SIMULTANEOUSLY) {
                    this.jFA.oJ(oqVar);
                    oqVar.oJ(this);
                }
            }
            if (tBVar instanceof si) {
                this.kkU = ((si) tBVar).ZYk();
            }
        }
    }
}
