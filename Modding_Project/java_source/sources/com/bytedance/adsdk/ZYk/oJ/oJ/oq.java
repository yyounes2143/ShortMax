package com.bytedance.adsdk.ZYk.oJ.oJ;

import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.bytedance.adsdk.ZYk.tB.ZYk.RZ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class oq implements oJ.InterfaceC0139oJ, tB {
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> Pfn;
    private final boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> f11553ba;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> cFZ;
    private final RZ.oJ ex;
    private final String oJ;
    private final List<oJ.InterfaceC0139oJ> tB = new ArrayList();

    public oq(com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.RZ rz) {
        this.oJ = rz.oJ();
        this.ZYk = rz.ba();
        this.ex = rz.ZYk();
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ = rz.ex().oJ();
        this.Pfn = oJ;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ2 = rz.tB().oJ();
        this.f11553ba = oJ2;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ3 = rz.Pfn().oJ();
        this.cFZ = oJ3;
        oJVar.oJ(oJ);
        oJVar.oJ(oJ2);
        oJVar.oJ(oJ3);
        oJ.oJ(this);
        oJ2.oJ(this);
        oJ3.oJ(this);
    }

    public com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> Pfn() {
        return this.cFZ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RZ.oJ ZYk() {
        return this.ex;
    }

    public boolean ba() {
        return this.ZYk;
    }

    public com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> ex() {
        return this.f11553ba;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
    }

    public com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> tB() {
        return this.Pfn;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        for (int i10 = 0; i10 < this.tB.size(); i10++) {
            this.tB.get(i10).oJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(oJ.InterfaceC0139oJ interfaceC0139oJ) {
        this.tB.add(interfaceC0139oJ);
    }
}
