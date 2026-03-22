package com.bytedance.adsdk.ugeno.yoga;
/* loaded from: classes3.dex */
public class jFA {
    public static long oJ(float f10, float f11) {
        int floatToRawIntBits = Float.floatToRawIntBits(f10);
        return Float.floatToRawIntBits(f11) | (floatToRawIntBits << 32);
    }

    public static long oJ(int i10, int i11) {
        return oJ(i10, i11);
    }
}
