package com.bytedance.adsdk.ZYk.tB.ZYk;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class WcQ {
    private PointF ZYk;
    private final List<com.bytedance.adsdk.ZYk.tB.oJ> oJ;
    private boolean tB;

    public WcQ(PointF pointF, boolean z10, List<com.bytedance.adsdk.ZYk.tB.oJ> list) {
        this.ZYk = pointF;
        this.tB = z10;
        this.oJ = new ArrayList(list);
    }

    public boolean ZYk() {
        return this.tB;
    }

    public void oJ(float f10, float f11) {
        if (this.ZYk == null) {
            this.ZYk = new PointF();
        }
        this.ZYk.set(f10, f11);
    }

    public List<com.bytedance.adsdk.ZYk.tB.oJ> tB() {
        return this.oJ;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.oJ.size() + "closed=" + this.tB + '}';
    }

    public PointF oJ() {
        return this.ZYk;
    }

    public WcQ() {
        this.oJ = new ArrayList();
    }

    public void oJ(boolean z10) {
        this.tB = z10;
    }

    public void oJ(WcQ wcQ, WcQ wcQ2, float f10) {
        if (this.ZYk == null) {
            this.ZYk = new PointF();
        }
        this.tB = wcQ.ZYk() || wcQ2.ZYk();
        if (wcQ.tB().size() != wcQ2.tB().size()) {
            wcQ.tB().size();
            wcQ2.tB().size();
        }
        int min = Math.min(wcQ.tB().size(), wcQ2.tB().size());
        if (this.oJ.size() < min) {
            for (int size = this.oJ.size(); size < min; size++) {
                this.oJ.add(new com.bytedance.adsdk.ZYk.tB.oJ());
            }
        } else if (this.oJ.size() > min) {
            for (int size2 = this.oJ.size() - 1; size2 >= min; size2--) {
                List<com.bytedance.adsdk.ZYk.tB.oJ> list = this.oJ;
                list.remove(list.size() - 1);
            }
        }
        PointF oJ = wcQ.oJ();
        PointF oJ2 = wcQ2.oJ();
        oJ(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(oJ.x, oJ2.x, f10), com.bytedance.adsdk.ZYk.ba.Pfn.oJ(oJ.y, oJ2.y, f10));
        for (int size3 = this.oJ.size() - 1; size3 >= 0; size3--) {
            com.bytedance.adsdk.ZYk.tB.oJ oJVar = wcQ.tB().get(size3);
            com.bytedance.adsdk.ZYk.tB.oJ oJVar2 = wcQ2.tB().get(size3);
            PointF oJ3 = oJVar.oJ();
            PointF ZYk = oJVar.ZYk();
            PointF tB = oJVar.tB();
            PointF oJ4 = oJVar2.oJ();
            PointF ZYk2 = oJVar2.ZYk();
            PointF tB2 = oJVar2.tB();
            this.oJ.get(size3).oJ(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(oJ3.x, oJ4.x, f10), com.bytedance.adsdk.ZYk.ba.Pfn.oJ(oJ3.y, oJ4.y, f10));
            this.oJ.get(size3).ZYk(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(ZYk.x, ZYk2.x, f10), com.bytedance.adsdk.ZYk.ba.Pfn.oJ(ZYk.y, ZYk2.y, f10));
            this.oJ.get(size3).tB(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(tB.x, tB2.x, f10), com.bytedance.adsdk.ZYk.ba.Pfn.oJ(tB.y, tB2.y, f10));
        }
    }
}
