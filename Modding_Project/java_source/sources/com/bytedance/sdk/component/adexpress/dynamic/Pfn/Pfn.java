package com.bytedance.sdk.component.adexpress.dynamic.Pfn;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk;
import com.mbridge.msdk.MBridgeConstans;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn {
    protected ZYk ZYk;
    private oJ ex;
    public com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk oJ;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.so tB;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class oJ {
        float ZYk;
        float oJ;
        float tB;
    }

    public Pfn(double d10, int i10, double d11, String str, PiB piB) {
        this.ZYk = new ZYk(d10, i10, d11, str, piB);
    }

    public void oJ(oJ oJVar) {
        this.ex = oJVar;
    }

    public void oJ() {
        this.ZYk.oJ();
    }

    public void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, float f10, float f11) {
        if (soVar != null) {
            this.tB = soVar;
        }
        com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 = this.tB;
        float so2 = soVar2.so();
        float jFA = soVar2.jFA();
        float f12 = TextUtils.equals(soVar2.kkU().Pfn().HL(), "fixed") ? jFA : 65536.0f;
        this.ZYk.oJ();
        this.ZYk.tB(soVar2, so2, f12);
        ZYk.tB oJ2 = this.ZYk.oJ(soVar2);
        com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk zYk = new com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk();
        zYk.oJ = f10;
        zYk.ZYk = f11;
        if (oJ2 != null) {
            so2 = oJ2.oJ;
        }
        zYk.tB = so2;
        if (oJ2 != null) {
            jFA = oJ2.ZYk;
        }
        zYk.ex = jFA;
        zYk.Pfn = "root";
        zYk.jFA = 1280.0f;
        zYk.f12686ba = soVar2;
        soVar2.tB(f10);
        zYk.f12686ba.ex(zYk.ZYk);
        zYk.f12686ba.Pfn(zYk.tB);
        zYk.f12686ba.ba(zYk.ex);
        com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk oJ3 = oJ(zYk, 0.0f);
        this.oJ = oJ3;
        oJ(oJ3);
    }

    public void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk zYk) {
        if (zYk == null) {
            return;
        }
        zYk.f12686ba.kkU().ZYk();
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk>> list = zYk.cFZ;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                for (com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk zYk2 : list2) {
                    oJ(zYk2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x020c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk r37, float r38) {
        /*
            Method dump skipped, instructions count: 1013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.Pfn.Pfn.oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk, float):com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk");
    }

    private com.bytedance.sdk.component.adexpress.dynamic.ex.jFA oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.ba baVar, ZYk.tB tBVar, ZYk.tB tBVar2) {
        float bD = baVar.bD();
        float EP = baVar.EP();
        float oCU = baVar.oCU();
        float YQ = baVar.YQ();
        boolean Dex = baVar.Dex();
        boolean oIC = baVar.oIC();
        boolean MoK = baVar.MoK();
        boolean TA = baVar.TA();
        if (!Dex) {
            if (oIC) {
                float f10 = this.ex.oJ;
                bD = ((f10 != 0.0f ? Math.min(f10, tBVar.oJ) : tBVar.oJ) - oCU) - tBVar2.oJ;
            } else {
                bD = 0.0f;
            }
        }
        if (!MoK) {
            if (TA) {
                float f11 = this.ex.ZYk;
                if (f11 == 0.0f) {
                    f11 = tBVar.ZYk;
                }
                EP = (f11 - YQ) - tBVar2.ZYk;
            } else {
                EP = 0.0f;
            }
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.ex.jFA(bD, EP);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.ex.jFA oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.ZYk zYk, com.bytedance.sdk.component.adexpress.dynamic.ex.ba baVar, float f10, float f11) {
        float f12;
        float f13;
        float f14 = zYk.oJ;
        float f15 = zYk.ZYk;
        float bD = baVar.bD();
        float EP = baVar.EP();
        float oCU = baVar.oCU();
        float YQ = baVar.YQ();
        boolean Dex = baVar.Dex();
        boolean oIC = baVar.oIC();
        boolean MoK = baVar.MoK();
        boolean TA = baVar.TA();
        String sH = baVar.sH();
        float f16 = zYk.tB;
        float f17 = zYk.ex;
        if (TextUtils.equals(sH, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
            if (Dex) {
                f14 = zYk.oJ + bD;
            } else if (oIC) {
                f14 = ((zYk.oJ + f16) - oCU) - f10;
            }
            if (MoK) {
                f13 = zYk.ZYk;
                f15 = f13 + EP;
            } else if (TA) {
                f12 = zYk.ZYk;
                f15 = ((f12 + f17) - YQ) - f11;
            }
        } else if (TextUtils.equals(sH, "1")) {
            f14 = zYk.oJ + ((f16 - f10) / 2.0f);
            if (MoK) {
                f13 = zYk.ZYk;
                f15 = f13 + EP;
            } else if (TA) {
                f12 = zYk.ZYk;
                f15 = ((f12 + f17) - YQ) - f11;
            }
        } else if (TextUtils.equals(sH, "2")) {
            f15 = zYk.ZYk + ((f17 - f11) / 2.0f);
            if (Dex) {
                f14 = zYk.oJ + bD;
            } else if (oIC) {
                f14 = ((zYk.oJ + f16) - oCU) - f10;
            }
        } else if (TextUtils.equals(sH, "3")) {
            f14 = zYk.oJ + ((f16 - f10) / 2.0f);
            f15 = zYk.ZYk + ((f17 - f11) / 2.0f);
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.ex.jFA(f14, f15);
    }
}
