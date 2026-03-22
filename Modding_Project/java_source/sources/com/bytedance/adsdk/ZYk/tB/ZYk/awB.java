package com.bytedance.adsdk.ZYk.tB.ZYk;

import android.graphics.Path;
/* loaded from: classes3.dex */
public class awB implements tB {
    private final com.bytedance.adsdk.ZYk.tB.oJ.ex Pfn;
    private final Path.FillType ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final boolean f11565ba;
    private final com.bytedance.adsdk.ZYk.tB.oJ.oJ ex;
    private final boolean oJ;
    private final String tB;

    public awB(String str, boolean z10, Path.FillType fillType, com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar, com.bytedance.adsdk.ZYk.tB.oJ.ex exVar, boolean z11) {
        this.tB = str;
        this.oJ = z10;
        this.ZYk = fillType;
        this.ex = oJVar;
        this.Pfn = exVar;
        this.f11565ba = z11;
    }

    public boolean Pfn() {
        return this.f11565ba;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.oJ ZYk() {
        return this.ex;
    }

    public Path.FillType ex() {
        return this.ZYk;
    }

    public String oJ() {
        return this.tB;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ex tB() {
        return this.Pfn;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.oJ + '}';
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new com.bytedance.adsdk.ZYk.oJ.oJ.cFZ(jfa, oJVar, this);
    }
}
