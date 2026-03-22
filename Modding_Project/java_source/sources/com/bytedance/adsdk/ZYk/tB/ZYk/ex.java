package com.bytedance.adsdk.ZYk.tB.ZYk;

import java.util.Arrays;
/* loaded from: classes3.dex */
public class ex {
    private final int[] ZYk;
    private final float[] oJ;

    public ex(float[] fArr, int[] iArr) {
        this.oJ = fArr;
        this.ZYk = iArr;
    }

    public int[] ZYk() {
        return this.ZYk;
    }

    public float[] oJ() {
        return this.oJ;
    }

    public int tB() {
        return this.ZYk.length;
    }

    public void oJ(ex exVar, ex exVar2, float f10) {
        if (exVar.ZYk.length == exVar2.ZYk.length) {
            for (int i10 = 0; i10 < exVar.ZYk.length; i10++) {
                this.oJ[i10] = com.bytedance.adsdk.ZYk.ba.Pfn.oJ(exVar.oJ[i10], exVar2.oJ[i10], f10);
                this.ZYk[i10] = com.bytedance.adsdk.ZYk.ba.ZYk.oJ(f10, exVar.ZYk[i10], exVar2.ZYk[i10]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + exVar.ZYk.length + " vs " + exVar2.ZYk.length + ")");
    }

    public ex oJ(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = oJ(fArr[i10]);
        }
        return new ex(fArr, iArr);
    }

    private int oJ(float f10) {
        int binarySearch = Arrays.binarySearch(this.oJ, f10);
        if (binarySearch >= 0) {
            return this.ZYk[binarySearch];
        }
        int i10 = -(binarySearch + 1);
        if (i10 == 0) {
            return this.ZYk[0];
        }
        int[] iArr = this.ZYk;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.oJ;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return com.bytedance.adsdk.ZYk.ba.ZYk.oJ((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }
}
