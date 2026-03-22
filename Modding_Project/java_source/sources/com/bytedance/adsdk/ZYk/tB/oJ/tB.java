package com.bytedance.adsdk.ZYk.tB.oJ;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
public class tB extends WcQ<com.bytedance.adsdk.ZYk.tB.ZYk.ex, com.bytedance.adsdk.ZYk.tB.ZYk.ex> {
    public tB(List<com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex>> list) {
        super(oJ(list));
    }

    private static List<com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex>> oJ(List<com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex>> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, oJ(list.get(i10)));
        }
        return list;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.WcQ, com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public /* bridge */ /* synthetic */ boolean ZYk() {
        return super.ZYk();
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.WcQ, com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public /* bridge */ /* synthetic */ List tB() {
        return super.tB();
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.WcQ
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    private static com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex> oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex> oJVar) {
        com.bytedance.adsdk.ZYk.tB.ZYk.ex exVar = oJVar.oJ;
        com.bytedance.adsdk.ZYk.tB.ZYk.ex exVar2 = oJVar.ZYk;
        if (exVar == null || exVar2 == null || exVar.oJ().length == exVar2.oJ().length) {
            return oJVar;
        }
        float[] oJ = oJ(exVar.oJ(), exVar2.oJ());
        return oJVar.oJ(exVar.oJ(oJ), exVar2.oJ(oJ));
    }

    static float[] oJ(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f10 = Float.NaN;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            float f11 = fArr3[i11];
            if (f11 != f10) {
                fArr3[i10] = f11;
                i10++;
                f10 = fArr3[i11];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i10);
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex, com.bytedance.adsdk.ZYk.tB.ZYk.ex> oJ() {
        return new com.bytedance.adsdk.ZYk.oJ.ZYk.Pfn(this.oJ);
    }
}
