package com.bytedance.sdk.openadsdk.Ry.oJ;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.ex;
/* loaded from: classes3.dex */
public class ZYk {
    private Bitmap Pfn;
    private Drawable ZYk;
    private Bitmap ex;
    int oJ;
    private byte[] tB;

    public ZYk(Drawable drawable, int i10) {
        this.tB = null;
        this.ex = null;
        this.Pfn = null;
        this.ZYk = drawable;
        this.oJ = i10;
    }

    public boolean Pfn() {
        if (this.ex != null || this.ZYk != null) {
            return true;
        }
        byte[] bArr = this.tB;
        if (bArr != null && bArr.length > 0) {
            return true;
        }
        return false;
    }

    public Bitmap ZYk() {
        return this.Pfn;
    }

    public Drawable ex() {
        return this.ZYk;
    }

    public Bitmap oJ() {
        return this.ex;
    }

    public byte[] tB() {
        try {
            if (this.tB == null) {
                this.tB = ex.oJ(this.ex);
            }
        } catch (OutOfMemoryError e10) {
            QSm.tB("GifRequestResult", e10.getMessage());
        }
        return this.tB;
    }

    public ZYk(byte[] bArr, int i10) {
        this.ZYk = null;
        this.ex = null;
        this.Pfn = null;
        this.tB = bArr;
        this.oJ = i10;
    }

    public ZYk(Bitmap bitmap, Bitmap bitmap2, int i10) {
        this.ZYk = null;
        this.tB = null;
        this.Pfn = bitmap2;
        this.ex = bitmap;
        this.oJ = i10;
    }
}
