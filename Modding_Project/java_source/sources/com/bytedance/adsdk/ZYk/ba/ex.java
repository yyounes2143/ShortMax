package com.bytedance.adsdk.ZYk.ba;
/* loaded from: classes3.dex */
public class ex {
    private int ZYk;
    private float oJ;

    public void oJ(float f10) {
        float f11 = this.oJ + f10;
        this.oJ = f11;
        int i10 = this.ZYk + 1;
        this.ZYk = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.oJ = f11 / 2.0f;
            this.ZYk = i10 / 2;
        }
    }
}
