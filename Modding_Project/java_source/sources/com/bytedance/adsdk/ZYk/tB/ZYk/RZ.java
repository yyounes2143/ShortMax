package com.bytedance.adsdk.ZYk.tB.ZYk;

import com.bytedance.adsdk.ZYk.oJ.oJ.oq;
/* loaded from: classes3.dex */
public class RZ implements tB {
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk Pfn;
    private final oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final boolean f11562ba;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk ex;
    private final String oJ;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk tB;

    /* loaded from: classes3.dex */
    public enum oJ {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static oJ oJ(int i10) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return INDIVIDUALLY;
                }
                throw new IllegalArgumentException("Unknown trim path type ".concat(String.valueOf(i10)));
            }
            return SIMULTANEOUSLY;
        }
    }

    public RZ(String str, oJ oJVar, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk3, boolean z10) {
        this.oJ = str;
        this.ZYk = oJVar;
        this.tB = zYk;
        this.ex = zYk2;
        this.Pfn = zYk3;
        this.f11562ba = z10;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk Pfn() {
        return this.Pfn;
    }

    public oJ ZYk() {
        return this.ZYk;
    }

    public boolean ba() {
        return this.f11562ba;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk ex() {
        return this.tB;
    }

    public String oJ() {
        return this.oJ;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk tB() {
        return this.ex;
    }

    public String toString() {
        return "Trim Path: {start: " + this.tB + ", end: " + this.ex + ", offset: " + this.Pfn + "}";
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new oq(oJVar, this);
    }
}
