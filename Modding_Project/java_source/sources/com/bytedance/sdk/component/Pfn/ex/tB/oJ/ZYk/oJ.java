package com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.Pfn.si;
/* loaded from: classes3.dex */
public class oJ implements si {
    private int ZYk;
    private com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<String, Bitmap> ex;
    private long oJ = 4194304;
    private int tB;

    public oJ(int i10, int i11) {
        this.ZYk = i11;
        this.tB = i10;
        this.ex = new com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<>(i11);
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean ZYk(String str) {
        return this.ex.oJ((com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<String, Bitmap>) str) != null;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean oJ(String str, Bitmap bitmap) {
        if (str != null && bitmap != null) {
            try {
                int oJ = oJ(bitmap);
                if (oJ <= this.oJ && oJ != 0) {
                    this.ex.oJ(str, bitmap);
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public Bitmap oJ(String str) {
        try {
            return this.ex.oJ((com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<String, Bitmap>) str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int oJ(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }
}
