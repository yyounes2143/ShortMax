package com.bytedance.adsdk.ZYk.tB;
/* loaded from: classes3.dex */
public class ba {
    public final float ZYk;
    public final float oJ;
    private final String tB;

    public ba(String str, float f10, float f11) {
        this.tB = str;
        this.ZYk = f11;
        this.oJ = f10;
    }

    public boolean oJ(String str) {
        if (this.tB.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.tB.endsWith("\r")) {
            String str2 = this.tB;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
