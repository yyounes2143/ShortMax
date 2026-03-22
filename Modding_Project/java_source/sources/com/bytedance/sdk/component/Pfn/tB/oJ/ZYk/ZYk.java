package com.bytedance.sdk.component.Pfn.tB.oJ.ZYk;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.Pfn.si;
/* loaded from: classes3.dex */
public class ZYk implements si {
    private int ZYk;
    private int oJ;
    private com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, Bitmap> tB;

    public ZYk(int i10, int i11) {
        this.ZYk = i10;
        this.oJ = i11;
        this.tB = new com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, Bitmap>(i10) { // from class: com.bytedance.sdk.component.Pfn.tB.oJ.ZYk.ZYk.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.Pfn.tB.oJ.tB
            /* renamed from: oJ */
            public int ZYk(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return ZYk.oJ(bitmap);
            }
        };
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean ZYk(String str) {
        return this.tB.oJ((com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, Bitmap>) str) != null;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean oJ(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.tB.oJ(str, bitmap);
        return true;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public Bitmap oJ(String str) {
        return this.tB.oJ((com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, Bitmap>) str);
    }

    public static int oJ(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }
}
