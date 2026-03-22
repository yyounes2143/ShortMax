package com.ss.texturerender.effect;
/* loaded from: classes6.dex */
public class PicoTextureObj {
    public static final int PICO_VR_TEX_USE_FOR_CROP_SR_SCREEN = 2;
    public static final int PICO_VR_TEX_USE_FOR_FOV_SCREEN = 1;
    public static final int PICO_VR_TEX_USE_FOR_PLANE_ONLINE_SCREEN = 3;
    public static final int PICO_VR_TEX_USE_FOR_PLANE_SCREEN = 0;
    private int mHeight;
    private int mUnityTexId;
    private int mUseFor;
    private int mWidth;

    public PicoTextureObj(int i10, int i11, int i12, int i13) {
        this.mUnityTexId = i10;
        this.mWidth = i11;
        this.mHeight = i12;
        this.mUseFor = i13;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getUnityTexId() {
        return this.mUnityTexId;
    }

    public int getUseFor() {
        return this.mUseFor;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setHeight(int i10) {
        this.mHeight = i10;
    }

    public void setUnityTexId(int i10) {
        this.mUnityTexId = i10;
    }

    public void setUseFor(int i10) {
        this.mUseFor = i10;
    }

    public void setWidth(int i10) {
        this.mWidth = i10;
    }
}
