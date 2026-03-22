package com.bytedance.sdk.component.Pfn.ex.ZYk;

import com.bytedance.sdk.component.Pfn.RZ;
import com.bytedance.sdk.component.Pfn.Ry;
import java.util.Collection;
/* loaded from: classes3.dex */
public class tB implements ba {
    private void ZYk(final com.bytedance.sdk.component.Pfn.ZYk zYk, final com.bytedance.sdk.component.Pfn.ex.tB.ba baVar, final String str, final byte[] bArr) {
        if (zYk != null && zYk.cFZ()) {
            baVar.so().submit(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.ex.ZYk.tB.1
                @Override // java.lang.Runnable
                public void run() {
                    baVar.tB(zYk).oJ(str, bArr);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public boolean oJ(com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, RZ rz, com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        com.bytedance.sdk.component.Pfn.ZYk Ry = tBVar.Ry();
        com.bytedance.sdk.component.Pfn.ex.tB.ba si2 = tBVar.si();
        if (Ry != null && si2 != null) {
            if (Ry.ba()) {
                if (rz != null) {
                    rz.oJ("data_cache", tBVar);
                }
                Ry ZYk = si2.ZYk(Ry);
                r2 = ZYk != null ? ZYk.oJ(tBVar.jFA()) : null;
                if (rz != null) {
                    rz.ZYk("data_cache", tBVar);
                }
                tBVar.jFA();
                tBVar.oJ();
            }
            if (Ry.cFZ() && r2 == null) {
                if (rz != null) {
                    rz.oJ("disk_cache", tBVar);
                }
                byte[] oJ = oJ(Ry, si2, tBVar.jFA());
                if (oJ != null) {
                    oJ(tBVar.Ry(), si2, tBVar.jFA(), oJ);
                }
                if (rz != null) {
                    rz.ZYk("disk_cache", tBVar);
                }
                tBVar.jFA();
                tBVar.oJ();
                r2 = oJ;
            }
        }
        if (si2 != null && r2 == null) {
            if (rz != null) {
                rz.oJ("net_request", tBVar);
            }
            r2 = oJ(si2, tBVar, oJVar);
            tBVar.jFA();
            tBVar.oJ();
            if (rz != null) {
                rz.ZYk("net_request", tBVar);
            }
        }
        if (r2 == null) {
            tBVar.jFA();
            tBVar.oJ();
            return false;
        }
        tBVar.oJ(r2);
        return true;
    }

    @Override // com.bytedance.sdk.component.Pfn.ex.ZYk.ba
    public String oJ() {
        return "data_intercept";
    }

    private byte[] oJ(com.bytedance.sdk.component.Pfn.ex.tB.ba baVar, com.bytedance.sdk.component.Pfn.ex.tB.tB tBVar, com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar) {
        com.bytedance.sdk.component.Pfn.ex ex = baVar.ex();
        tBVar.oJ(false);
        try {
            com.bytedance.sdk.component.Pfn.ba oJ = ex.oJ(new com.bytedance.sdk.component.Pfn.ZYk.ZYk(tBVar.oJ(), false, false, tBVar.RZ()));
            if (oJ == null) {
                oJVar.oJ(1004, "call is empty", new Exception("call is empty"));
                return null;
            }
            int ZYk = oJ.ZYk();
            if (ZYk == 200) {
                byte[] bArr = (byte[]) oJ.tB();
                if (bArr == null) {
                    oJVar.oJ(ZYk, oJ.ex(), new Exception("net data is empty"));
                    return null;
                }
                oJ(tBVar.Ry(), baVar, tBVar.jFA(), bArr);
                ZYk(tBVar.Ry(), baVar, tBVar.jFA(), bArr);
                return bArr;
            }
            Object tB = oJ.tB();
            oJVar.oJ(ZYk, oJ.ex(), tB instanceof Throwable ? (Throwable) tB : null);
            return null;
        } catch (Throwable th2) {
            oJVar.oJ(1004, "net request failed!", th2);
            return null;
        }
    }

    private byte[] oJ(com.bytedance.sdk.component.Pfn.ZYk zYk, com.bytedance.sdk.component.Pfn.ex.tB.ba baVar, String str) {
        baVar.tB(zYk);
        Collection<com.bytedance.sdk.component.Pfn.tB> tB = baVar.tB();
        if (tB == null) {
            return null;
        }
        for (com.bytedance.sdk.component.Pfn.tB tBVar : tB) {
            byte[] oJ = tBVar.oJ((com.bytedance.sdk.component.Pfn.tB) str);
            if (oJ != null) {
                return oJ;
            }
        }
        return null;
    }

    private void oJ(com.bytedance.sdk.component.Pfn.ZYk zYk, com.bytedance.sdk.component.Pfn.ex.tB.ba baVar, String str, byte[] bArr) {
        if (zYk == null || !zYk.ba()) {
            return;
        }
        baVar.ZYk(zYk).oJ(str, bArr);
    }
}
