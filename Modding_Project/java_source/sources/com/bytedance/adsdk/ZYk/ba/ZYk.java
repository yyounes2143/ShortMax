package com.bytedance.adsdk.ZYk.ba;
/* loaded from: classes3.dex */
public class ZYk {
    private static float ZYk(float f10) {
        if (f10 <= 0.04045f) {
            return f10 / 12.92f;
        }
        return (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    private static float oJ(float f10) {
        return f10 <= 0.0031308f ? f10 * 12.92f : (float) ((Math.pow(f10, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int oJ(float f10, int i10, int i11) {
        if (i10 == i11) {
            return i10;
        }
        float f11 = ((i10 >> 24) & 255) / 255.0f;
        float ZYk = ZYk(((i10 >> 16) & 255) / 255.0f);
        float ZYk2 = ZYk(((i10 >> 8) & 255) / 255.0f);
        float ZYk3 = ZYk((i10 & 255) / 255.0f);
        float ZYk4 = ZYk(((i11 >> 16) & 255) / 255.0f);
        float ZYk5 = ZYk(((i11 >> 8) & 255) / 255.0f);
        float ZYk6 = ZYk3 + (f10 * (ZYk((i11 & 255) / 255.0f) - ZYk3));
        return (Math.round(oJ(ZYk + ((ZYk4 - ZYk) * f10)) * 255.0f) << 16) | (Math.round((f11 + (((((i11 >> 24) & 255) / 255.0f) - f11) * f10)) * 255.0f) << 24) | (Math.round(oJ(ZYk2 + ((ZYk5 - ZYk2) * f10)) * 255.0f) << 8) | Math.round(oJ(ZYk6) * 255.0f);
    }
}
