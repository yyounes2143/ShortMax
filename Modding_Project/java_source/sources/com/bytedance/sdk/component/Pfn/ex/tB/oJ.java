package com.bytedance.sdk.component.Pfn.ex.tB;

import com.bytedance.sdk.component.Pfn.RZ;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ<T> {
    private RZ ZYk;
    private tB oJ;

    public oJ(tB tBVar, RZ rz) {
        this.oJ = tBVar;
        this.ZYk = rz;
    }

    public void oJ(dLZ<T> dlz) {
        try {
            RZ rz = this.ZYk;
            if (rz != null) {
                rz.oJ("success", this.oJ);
            }
            String QSm = this.oJ.QSm();
            Map<String, List<tB>> jFA = this.oJ.si().jFA();
            List<tB> list = jFA.get(QSm);
            if (list == null) {
                eZI so2 = this.oJ.so();
                if (so2 != null) {
                    so2.toString();
                    this.oJ.kkU();
                    so2.oJ(dlz);
                }
            } else {
                synchronized (list) {
                    list.size();
                    for (tB tBVar : list) {
                        eZI so3 = tBVar.so();
                        if (so3 != null) {
                            so3.toString();
                            tBVar.kkU();
                            so3.oJ(dlz);
                        }
                    }
                    list.clear();
                    jFA.remove(QSm);
                }
            }
            RZ rz2 = this.ZYk;
            if (rz2 != null) {
                rz2.ZYk("success", this.oJ);
            }
        } catch (Throwable unused) {
        }
    }

    public void oJ(int i10, String str, Throwable th2) {
        try {
            RZ rz = this.ZYk;
            if (rz != null) {
                rz.oJ("failed", this.oJ);
            }
            String QSm = this.oJ.QSm();
            Map<String, List<tB>> jFA = this.oJ.si().jFA();
            List<tB> list = jFA.get(QSm);
            if (list == null) {
                eZI so2 = this.oJ.so();
                if (so2 != null) {
                    so2.oJ(i10, str, th2);
                }
            } else {
                synchronized (list) {
                    for (tB tBVar : list) {
                        eZI so3 = tBVar.so();
                        if (so3 != null) {
                            so3.toString();
                            so3.oJ(i10, str, th2);
                        }
                    }
                    list.clear();
                    jFA.remove(QSm);
                }
            }
            RZ rz2 = this.ZYk;
            if (rz2 != null) {
                rz2.ZYk("failed", this.oJ);
            }
        } catch (Throwable unused) {
        }
    }
}
