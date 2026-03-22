package com.bytedance.sdk.component.ba.oJ.oJ;

import com.bytedance.sdk.component.ba.oJ.oJ.ZYk.cFZ;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.List;
import java.util.Queue;
/* loaded from: classes3.dex */
public class ba implements ex {
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ BTZ;
    private cFZ Pfn;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ PiB;
    private Queue<String> WcQ;
    private com.bytedance.sdk.component.ba.oJ.oJ.ZYk.Pfn ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.ba.oJ.oJ.ZYk.tB f12760ba;
    private com.bytedance.sdk.component.ba.oJ.oJ.ZYk.ba cFZ;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ dLZ;
    private com.bytedance.sdk.component.ba.oJ.oJ.ZYk.ZYk ex;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ jFA;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ kkU;
    Pfn oJ = so.cFZ().ex();

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ f12761so;
    private com.bytedance.sdk.component.ba.oJ.oJ.ZYk.oJ tB;

    public ba(Queue<String> queue) {
        this.WcQ = queue;
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
            com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ BTZ = so.cFZ().BTZ();
            this.f12761so = BTZ;
            this.ZYk = new com.bytedance.sdk.component.ba.oJ.oJ.ZYk.Pfn(BTZ, queue);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
            if (so.cFZ().kkU() != null) {
                this.kkU = so.cFZ().kkU();
            } else {
                this.kkU = so.cFZ().PiB();
            }
            this.ex = new com.bytedance.sdk.component.ba.oJ.oJ.ZYk.ZYk(this.kkU, queue);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
            com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ PiB = so.cFZ().PiB();
            this.jFA = PiB;
            this.tB = new com.bytedance.sdk.component.ba.oJ.oJ.ZYk.oJ(PiB, queue);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
            com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ PiB2 = so.cFZ().PiB();
            this.dLZ = PiB2;
            this.Pfn = new cFZ(PiB2, queue);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
            com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ WcQ = so.cFZ().WcQ();
            this.BTZ = WcQ;
            this.f12760ba = new com.bytedance.sdk.component.ba.oJ.oJ.ZYk.tB(WcQ, queue);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba()) {
            com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ awB = so.cFZ().awB();
            this.PiB = awB;
            this.cFZ = new com.bytedance.sdk.component.ba.oJ.oJ.ZYk.ba(awB, queue);
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public void oJ(int i10, long j10) {
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, int i10) {
        try {
            byte ex = oJVar.ex();
            byte Pfn = oJVar.Pfn();
            if (ex == 0 && Pfn == 1 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
                this.ZYk.oJ(oJVar);
            } else if (ex == 3 && Pfn == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
                this.ex.oJ(oJVar);
            } else if (ex == 0 && Pfn == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
                this.tB.oJ(oJVar);
            } else if (ex == 1 && Pfn == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
                this.Pfn.oJ(oJVar);
            } else if (ex == 1 && Pfn == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
                this.f12760ba.oJ(oJVar);
            } else if (ex == 2 && Pfn == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba()) {
                this.cFZ.oJ(oJVar);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public void oJ(int i10, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        if (list == null || list.size() == 0 || list.get(0) == null) {
            return;
        }
        com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar = list.get(0);
        byte Pfn = oJVar.Pfn();
        byte ex = oJVar.ex();
        if (ex == 0 && Pfn == 1 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
            this.ZYk.oJ(i10, list);
        } else if (ex == 3 && Pfn == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
            this.ex.oJ(i10, list);
        } else if (ex == 0 && Pfn == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
            this.tB.oJ(i10, list);
        } else if (ex == 1 && Pfn == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
            this.Pfn.oJ(i10, list);
        } else if (ex == 1 && Pfn == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
            this.f12760ba.oJ(i10, list);
        } else if (ex == 2 && Pfn == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba()) {
            this.cFZ.oJ(i10, list);
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ(int i10, int i11, List<String> list) {
        List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ;
        List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ2;
        List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ3;
        List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ4;
        List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ5;
        List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ6;
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ() && this.ZYk.ZYk(i10, i11) && (oJ6 = this.ZYk.oJ(i10, i11)) != null && oJ6.size() != 0) {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.Ry(), 1);
            return oJ6;
        } else if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn() || !this.ex.ZYk(i10, i11) || (oJ5 = this.ex.oJ(i10, i11)) == null || oJ5.size() == 0) {
            if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk() && this.tB.ZYk(i10, i11) && (oJ4 = this.tB.oJ(i10, i11)) != null && oJ4.size() != 0) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.RZ(), 1);
                return oJ4;
            } else if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB() && this.Pfn.ZYk(i10, i11) && (oJ3 = this.Pfn.oJ(i10, i11)) != null && oJ3.size() != 0) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.QSm(), 1);
                return oJ3;
            } else if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex() && this.f12760ba.ZYk(i10, i11) && (oJ2 = this.f12760ba.oJ(i10, i11)) != null && oJ2.size() != 0) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.oq(), 1);
                return oJ2;
            } else if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba() || !this.cFZ.ZYk(i10, i11) || (oJ = this.cFZ.oJ(i10, i11)) == null || oJ.size() == 0) {
                return null;
            } else {
                return oJ;
            }
        } else {
            return oJ5;
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public boolean oJ(int i10, boolean z10) {
        com.bytedance.sdk.component.ba.oJ.oJ.ZYk.ba baVar;
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar;
        com.bytedance.sdk.component.ba.oJ.oJ.ZYk.tB tBVar;
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar2;
        cFZ cfz;
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar3;
        com.bytedance.sdk.component.ba.oJ.oJ.ZYk.oJ oJVar4;
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar5;
        com.bytedance.sdk.component.ba.oJ.oJ.ZYk.ZYk zYk;
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar6;
        com.bytedance.sdk.component.ba.oJ.oJ.ZYk.Pfn pfn;
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar7;
        if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ() || (pfn = this.ZYk) == null || (oJVar7 = this.f12761so) == null || !pfn.ZYk(i10, oJVar7.oJ())) {
            if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn() || (zYk = this.ex) == null || (oJVar6 = this.kkU) == null || !zYk.ZYk(i10, oJVar6.oJ())) {
                if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk() || (oJVar4 = this.tB) == null || (oJVar5 = this.jFA) == null || !oJVar4.ZYk(i10, oJVar5.oJ())) {
                    if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB() || (cfz = this.Pfn) == null || (oJVar3 = this.dLZ) == null || !cfz.ZYk(i10, oJVar3.oJ())) {
                        if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex() || (tBVar = this.f12760ba) == null || (oJVar2 = this.BTZ) == null || !tBVar.ZYk(i10, oJVar2.oJ())) {
                            return com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba() && (baVar = this.cFZ) != null && (oJVar = this.PiB) != null && baVar.ZYk(i10, oJVar.oJ());
                        }
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }
}
