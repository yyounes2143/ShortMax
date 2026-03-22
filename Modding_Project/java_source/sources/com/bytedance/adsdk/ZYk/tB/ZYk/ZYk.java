package com.bytedance.adsdk.ZYk.tB.ZYk;

import android.graphics.PointF;
/* loaded from: classes3.dex */
public class ZYk implements tB {
    private final boolean Pfn;
    private final com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> ZYk;
    private final boolean ex;
    private final String oJ;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ba tB;

    public ZYk(String str, com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB, com.bytedance.adsdk.ZYk.tB.oJ.ba baVar, boolean z10, boolean z11) {
        this.oJ = str;
        this.ZYk = piB;
        this.tB = baVar;
        this.ex = z10;
        this.Pfn = z11;
    }

    public boolean Pfn() {
        return this.Pfn;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> ZYk() {
        return this.ZYk;
    }

    public boolean ex() {
        return this.ex;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new com.bytedance.adsdk.ZYk.oJ.oJ.ba(jfa, oJVar, this);
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ba tB() {
        return this.tB;
    }

    public String oJ() {
        return this.oJ;
    }
}
