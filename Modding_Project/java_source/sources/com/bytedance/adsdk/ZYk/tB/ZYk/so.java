package com.bytedance.adsdk.ZYk.tB.ZYk;
/* loaded from: classes3.dex */
public class so {
    private final com.bytedance.adsdk.ZYk.tB.oJ.so ZYk;
    private final boolean ex;
    private final oJ oJ;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ex tB;

    /* loaded from: classes3.dex */
    public enum oJ {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public so(oJ oJVar, com.bytedance.adsdk.ZYk.tB.oJ.so soVar, com.bytedance.adsdk.ZYk.tB.oJ.ex exVar, boolean z10) {
        this.oJ = oJVar;
        this.ZYk = soVar;
        this.tB = exVar;
        this.ex = z10;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.so ZYk() {
        return this.ZYk;
    }

    public boolean ex() {
        return this.ex;
    }

    public oJ oJ() {
        return this.oJ;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ex tB() {
        return this.tB;
    }
}
