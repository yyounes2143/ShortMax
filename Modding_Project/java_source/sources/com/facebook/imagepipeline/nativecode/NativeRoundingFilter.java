package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import k2.h;
@k2.d
/* loaded from: classes3.dex */
public class NativeRoundingFilter {
    static {
        b.a();
    }

    @k2.d
    private static native void nativeAddRoundedCornersFilter(Bitmap bitmap, int i10, int i11, int i12, int i13);

    @k2.d
    private static native void nativeToCircleFastFilter(Bitmap bitmap, boolean z10);

    @k2.d
    private static native void nativeToCircleFilter(Bitmap bitmap, boolean z10);

    @k2.d
    private static native void nativeToCircleWithBorderFilter(Bitmap bitmap, int i10, int i11, boolean z10);

    @k2.d
    public static void toCircle(Bitmap bitmap, boolean z10) {
        h.g(bitmap);
        if (bitmap.getWidth() >= 3 && bitmap.getHeight() >= 3) {
            nativeToCircleFilter(bitmap, z10);
        }
    }

    @k2.d
    public static void toCircleFast(Bitmap bitmap, boolean z10) {
        h.g(bitmap);
        if (bitmap.getWidth() >= 3 && bitmap.getHeight() >= 3) {
            nativeToCircleFastFilter(bitmap, z10);
        }
    }
}
