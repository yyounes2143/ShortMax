package com.bytedance.sdk.component.Pfn.tB.oJ.ZYk;

import com.bytedance.sdk.component.Pfn.Ry;
/* loaded from: classes3.dex */
public class tB implements Ry {
    private int ZYk;
    private int oJ;
    private com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, byte[]> tB;

    public tB(int i10, int i11) {
        this.ZYk = i10;
        this.oJ = i11;
        this.tB = new com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, byte[]>(i10) { // from class: com.bytedance.sdk.component.Pfn.tB.oJ.ZYk.tB.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.Pfn.tB.oJ.tB
            /* renamed from: oJ */
            public int ZYk(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean ZYk(String str) {
        return this.tB.oJ((com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, byte[]>) str) != null;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean oJ(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.tB.oJ(str, bArr);
        return true;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public byte[] oJ(String str) {
        return this.tB.oJ((com.bytedance.sdk.component.Pfn.tB.oJ.tB<String, byte[]>) str);
    }
}
