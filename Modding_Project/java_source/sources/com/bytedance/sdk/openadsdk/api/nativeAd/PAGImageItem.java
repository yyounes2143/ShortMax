package com.bytedance.sdk.openadsdk.api.nativeAd;
/* loaded from: classes3.dex */
public class PAGImageItem {
    private final int ZYk;
    private float ex;
    private final int oJ;
    private final String tB;

    public PAGImageItem(int i10, int i11, String str, float f10) {
        this.oJ = i10;
        this.ZYk = i11;
        this.tB = str;
        this.ex = f10;
    }

    public float getDuration() {
        return this.ex;
    }

    public int getHeight() {
        return this.oJ;
    }

    public String getImageUrl() {
        return this.tB;
    }

    public int getWidth() {
        return this.ZYk;
    }

    public PAGImageItem(int i10, int i11, String str) {
        this(i10, i11, str, 0.0f);
    }
}
