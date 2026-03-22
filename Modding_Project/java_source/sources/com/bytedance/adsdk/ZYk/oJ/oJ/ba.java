package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.bytedance.adsdk.ZYk.tB.ZYk.RZ;
import java.util.List;
/* loaded from: classes3.dex */
public class ba implements oJ.InterfaceC0139oJ, PiB, dLZ {
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, PointF> Pfn;
    private final String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.tB.ZYk.ZYk f11540ba;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, PointF> ex;

    /* renamed from: so  reason: collision with root package name */
    private boolean f11541so;
    private final com.bytedance.adsdk.ZYk.jFA tB;
    private final Path oJ = new Path();
    private final ZYk cFZ = new ZYk();

    public ba(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.ZYk zYk) {
        this.ZYk = zYk.oJ();
        this.tB = jfa;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ = zYk.tB().oJ();
        this.ex = oJ;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ2 = zYk.ZYk().oJ();
        this.Pfn = oJ2;
        this.f11540ba = zYk;
        oJVar.oJ(oJ);
        oJVar.oJ(oJ2);
        oJ.oJ(this);
        oJ2.oJ(this);
    }

    private void ZYk() {
        this.f11541so = false;
        this.tB.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.PiB
    public Path ex() {
        if (this.f11541so) {
            return this.oJ;
        }
        this.oJ.reset();
        if (this.f11540ba.Pfn()) {
            this.f11541so = true;
            return this.oJ;
        }
        PointF cFZ = this.ex.cFZ();
        float f10 = cFZ.x / 2.0f;
        float f11 = cFZ.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.oJ.reset();
        if (this.f11540ba.ex()) {
            float f14 = -f11;
            this.oJ.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.oJ.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.oJ.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.oJ.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.oJ.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.oJ.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.oJ.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.oJ.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.oJ.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.oJ.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF cFZ2 = this.Pfn.cFZ();
        this.oJ.offset(cFZ2.x, cFZ2.y);
        this.oJ.close();
        this.cFZ.oJ(this.oJ);
        this.f11541so = true;
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
                    this.cFZ.oJ(oqVar);
                    oqVar.oJ(this);
                }
            }
        }
    }
}
