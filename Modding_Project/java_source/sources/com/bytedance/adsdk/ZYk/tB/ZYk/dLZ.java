package com.bytedance.adsdk.ZYk.tB.ZYk;

import android.graphics.PointF;
/* loaded from: classes3.dex */
public class dLZ implements tB {
    private final boolean Pfn;
    private final com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> ZYk;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk ex;
    private final String oJ;
    private final com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> tB;

    public dLZ(String str, com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB, com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB2, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk, boolean z10) {
        this.oJ = str;
        this.ZYk = piB;
        this.tB = piB2;
        this.ex = zYk;
        this.Pfn = z10;
    }

    public boolean Pfn() {
        return this.Pfn;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk ZYk() {
        return this.ex;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> ex() {
        return this.ZYk;
    }

    public String oJ() {
        return this.oJ;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> tB() {
        return this.tB;
    }

    public String toString() {
        return "RectangleShape{position=" + this.ZYk + ", size=" + this.tB + '}';
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new com.bytedance.adsdk.ZYk.oJ.oJ.awB(jfa, oJVar, this);
    }
}
