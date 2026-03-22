package com.bytedance.sdk.component.Pfn.Pfn;
/* loaded from: classes3.dex */
public class ZYk implements jFA {
    private com.bytedance.sdk.component.Pfn.ba ZYk;
    private byte[] oJ;

    public ZYk(byte[] bArr, com.bytedance.sdk.component.Pfn.ba baVar) {
        this.oJ = bArr;
        this.ZYk = baVar;
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        jFA soVar;
        int BTZ = tBVar.BTZ();
        tBVar.oJ(this.oJ.length);
        if (BTZ != 2) {
            if (BTZ != 3) {
                boolean ZYk = com.bytedance.sdk.component.utils.ba.ZYk(this.oJ);
                if (ZYk) {
                    soVar = new PiB(this.oJ, this.ZYk, ZYk);
                } else if (com.bytedance.sdk.component.utils.ba.oJ(this.oJ)) {
                    soVar = new Pfn(this.oJ, this.ZYk);
                } else {
                    soVar = new PiB(this.oJ, this.ZYk, ZYk);
                }
            } else {
                byte[] bArr = this.oJ;
                soVar = new PiB(bArr, this.ZYk, com.bytedance.sdk.component.utils.ba.ZYk(bArr));
            }
        } else if (com.bytedance.sdk.component.utils.ba.oJ(this.oJ)) {
            soVar = new Pfn(this.oJ, this.ZYk);
        } else if (this.ZYk == null) {
            soVar = new dLZ();
        } else {
            soVar = new so(1001, "not image format", null);
        }
        tBVar.oJ(soVar);
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "image_type";
    }
}
