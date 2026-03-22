package com.bytedance.adsdk.ZYk.tB.ZYk;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
public class eZI implements tB {
    private final List<tB> ZYk;
    private final String oJ;
    private final boolean tB;

    public eZI(String str, List<tB> list, boolean z10) {
        this.oJ = str;
        this.ZYk = list;
        this.tB = z10;
    }

    public List<tB> ZYk() {
        return this.ZYk;
    }

    public String oJ() {
        return this.oJ;
    }

    public boolean tB() {
        return this.tB;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.oJ + "' Shapes: " + Arrays.toString(this.ZYk.toArray()) + '}';
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new com.bytedance.adsdk.ZYk.oJ.oJ.ex(jfa, oJVar, this, cfz);
    }
}
