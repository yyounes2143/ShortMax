package com.bytedance.adsdk.ZYk.cFZ;

import com.ss.texturerender.TextureRenderKeys;
/* loaded from: classes3.dex */
public class tB {
    private float ZYk;
    private float oJ;

    public tB(float f10, float f11) {
        this.oJ = f10;
        this.ZYk = f11;
    }

    public float ZYk() {
        return this.ZYk;
    }

    public float oJ() {
        return this.oJ;
    }

    public String toString() {
        return oJ() + TextureRenderKeys.KEY_IS_X + ZYk();
    }

    public boolean ZYk(float f10, float f11) {
        return this.oJ == f10 && this.ZYk == f11;
    }

    public void oJ(float f10, float f11) {
        this.oJ = f10;
        this.ZYk = f11;
    }

    public tB() {
        this(1.0f, 1.0f);
    }
}
