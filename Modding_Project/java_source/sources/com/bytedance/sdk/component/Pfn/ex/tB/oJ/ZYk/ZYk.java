package com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk;

import com.bytedance.sdk.component.Pfn.Ry;
/* loaded from: classes3.dex */
public class ZYk implements Ry {
    private int ZYk;
    private com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<String, byte[]> ex;
    private long oJ = 1048576;
    private int tB;

    public ZYk(int i10, int i11) {
        this.tB = i10;
        this.ZYk = i11;
        this.ex = new com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<>(i11);
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean ZYk(String str) {
        return this.ex.oJ((com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<String, byte[]>) str) != null;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean oJ(String str, byte[] bArr) {
        if (str != null && bArr != null) {
            try {
                if (bArr.length > this.oJ) {
                    return false;
                }
                this.ex.oJ(str, bArr);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public byte[] oJ(String str) {
        try {
            return this.ex.oJ((com.bytedance.sdk.component.Pfn.ex.tB.oJ.tB<String, byte[]>) str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
