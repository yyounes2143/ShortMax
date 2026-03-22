package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import k2.h;
@k2.d
/* loaded from: classes3.dex */
public class NativeBlurFilter {
    static {
        b.a();
    }

    public static void a(Bitmap bitmap, int i10, int i11) {
        boolean z10;
        h.g(bitmap);
        boolean z11 = false;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        if (i11 > 0) {
            z11 = true;
        }
        h.b(Boolean.valueOf(z11));
        nativeIterativeBoxBlur(bitmap, i10, i11);
    }

    @k2.d
    private static native void nativeIterativeBoxBlur(Bitmap bitmap, int i10, int i11);
}
