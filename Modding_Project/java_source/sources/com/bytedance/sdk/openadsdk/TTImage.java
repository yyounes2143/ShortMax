package com.bytedance.sdk.openadsdk;
/* loaded from: classes3.dex */
public class TTImage {
    private final int ZYk;
    private double ex;
    private final int oJ;
    private final String tB;

    public TTImage(int i10, int i11, String str, double d10) {
        this.oJ = i10;
        this.ZYk = i11;
        this.tB = str;
        this.ex = d10;
    }

    public double getDuration() {
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

    public boolean isValid() {
        String str;
        if (this.oJ > 0 && this.ZYk > 0 && (str = this.tB) != null && str.length() > 0) {
            return true;
        }
        return false;
    }

    public TTImage(int i10, int i11, String str) {
        this(i10, i11, str, 0.0d);
    }
}
