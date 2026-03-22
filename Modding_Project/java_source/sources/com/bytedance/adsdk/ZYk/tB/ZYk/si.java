package com.bytedance.adsdk.ZYk.tB.ZYk;
/* loaded from: classes3.dex */
public class si implements tB {
    private final int ZYk;
    private final boolean ex;
    private final String oJ;
    private final com.bytedance.adsdk.ZYk.tB.oJ.so tB;

    public si(String str, int i10, com.bytedance.adsdk.ZYk.tB.oJ.so soVar, boolean z10) {
        this.oJ = str;
        this.ZYk = i10;
        this.tB = soVar;
        this.ex = z10;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.so ZYk() {
        return this.tB;
    }

    public String oJ() {
        return this.oJ;
    }

    public boolean tB() {
        return this.ex;
    }

    public String toString() {
        return "ShapePath{name=" + this.oJ + ", index=" + this.ZYk + '}';
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new com.bytedance.adsdk.ZYk.oJ.oJ.Ry(jfa, oJVar, this);
    }
}
