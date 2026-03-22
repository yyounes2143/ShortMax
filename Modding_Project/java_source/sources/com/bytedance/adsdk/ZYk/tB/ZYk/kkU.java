package com.bytedance.adsdk.ZYk.tB.ZYk;

import android.graphics.PointF;
/* loaded from: classes3.dex */
public class kkU implements tB {
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk Pfn;
    private final oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk f11569ba;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk cFZ;
    private final boolean dLZ;
    private final com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> ex;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk jFA;
    private final boolean kkU;
    private final String oJ;

    /* renamed from: so  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk f11570so;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk tB;

    /* loaded from: classes3.dex */
    public enum oJ {
        STAR(1),
        POLYGON(2);
        
        private final int tB;

        oJ(int i10) {
            this.tB = i10;
        }

        public static oJ oJ(int i10) {
            oJ[] values;
            for (oJ oJVar : values()) {
                if (oJVar.tB == i10) {
                    return oJVar;
                }
            }
            return null;
        }
    }

    public kkU(String str, oJ oJVar, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk, com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> piB, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk4, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk5, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk6, boolean z10, boolean z11) {
        this.oJ = str;
        this.ZYk = oJVar;
        this.tB = zYk;
        this.ex = piB;
        this.Pfn = zYk2;
        this.f11569ba = zYk3;
        this.cFZ = zYk4;
        this.f11570so = zYk5;
        this.jFA = zYk6;
        this.kkU = z10;
        this.dLZ = z11;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk Pfn() {
        return this.Pfn;
    }

    public oJ ZYk() {
        return this.ZYk;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk ba() {
        return this.f11569ba;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk cFZ() {
        return this.cFZ;
    }

    public boolean dLZ() {
        return this.dLZ;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.PiB<PointF, PointF> ex() {
        return this.ex;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk jFA() {
        return this.jFA;
    }

    public boolean kkU() {
        return this.kkU;
    }

    public String oJ() {
        return this.oJ;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk so() {
        return this.f11570so;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk tB() {
        return this.tB;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new com.bytedance.adsdk.ZYk.oJ.oJ.WcQ(jfa, oJVar, this);
    }
}
