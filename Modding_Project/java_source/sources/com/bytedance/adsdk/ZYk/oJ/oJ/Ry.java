package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Path;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.bytedance.adsdk.ZYk.tB.ZYk.RZ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Ry implements oJ.InterfaceC0139oJ, PiB {
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.PiB Pfn;
    private final String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f11535ba;
    private final com.bytedance.adsdk.ZYk.jFA ex;
    private final boolean tB;
    private final Path oJ = new Path();
    private final ZYk cFZ = new ZYk();

    public Ry(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.si siVar) {
        this.ZYk = siVar.oJ();
        this.tB = siVar.tB();
        this.ex = jfa;
        com.bytedance.adsdk.ZYk.oJ.ZYk.PiB oJ = siVar.ZYk().oJ();
        this.Pfn = oJ;
        oJVar.oJ(oJ);
        oJ.oJ(this);
    }

    private void ZYk() {
        this.f11535ba = false;
        this.ex.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.PiB
    public Path ex() {
        if (this.f11535ba) {
            return this.oJ;
        }
        this.oJ.reset();
        if (this.tB) {
            this.f11535ba = true;
            return this.oJ;
        }
        Path cFZ = this.Pfn.cFZ();
        if (cFZ == null) {
            return this.oJ;
        }
        this.oJ.set(cFZ);
        this.oJ.setFillType(Path.FillType.EVEN_ODD);
        this.cFZ.oJ(this.oJ);
        this.f11535ba = true;
        return this.oJ;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        ZYk();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            tB tBVar = list.get(i10);
            if (tBVar instanceof oq) {
                oq oqVar = (oq) tBVar;
                if (oqVar.ZYk() == RZ.oJ.SIMULTANEOUSLY) {
                    this.cFZ.oJ(oqVar);
                    oqVar.oJ(this);
                }
            }
            if (tBVar instanceof RZ) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((RZ) tBVar);
            }
        }
        this.Pfn.oJ((List<RZ>) arrayList);
    }
}
