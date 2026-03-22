package com.bytedance.sdk.component.Pfn.Pfn;

import android.graphics.Bitmap;
/* loaded from: classes3.dex */
public class Pfn extends oJ {
    private com.bytedance.sdk.component.Pfn.ba ZYk;
    private byte[] oJ;

    public Pfn(byte[] bArr, com.bytedance.sdk.component.Pfn.ba baVar) {
        this.oJ = bArr;
        this.ZYk = baVar;
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        com.bytedance.sdk.component.Pfn.tB.ba Ry = tBVar.Ry();
        com.bytedance.sdk.component.Pfn.tB.ZYk.oJ oJ = Ry.oJ(tBVar);
        try {
            tBVar.oq();
            Bitmap oJ2 = oJ.oJ(this.oJ);
            if (oJ2 != null) {
                tBVar.oJ(new PiB(oJ2, this.ZYk, false));
                Ry.oJ(tBVar.RZ()).oJ(tBVar.kkU(), oJ2);
                return;
            }
            oJ(1002, "decode failed bitmap null", null, tBVar);
        } catch (Throwable th2) {
            oJ(1002, "decode failed:" + th2.getMessage(), th2, tBVar);
        }
    }

    private void oJ(int i10, String str, Throwable th2, com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        if (this.ZYk == null) {
            tBVar.oJ(new dLZ());
        } else {
            tBVar.oJ(new so(i10, str, th2));
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "decode";
    }
}
