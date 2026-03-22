package com.bytedance.sdk.component.ba.oJ.oJ;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.cFZ;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class tB implements ex {
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ BTZ;
    private com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ba Pfn;
    private com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.Pfn f12766ba;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ cFZ;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ dLZ;
    private cFZ ex;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ jFA;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ kkU;
    private com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ex oJ;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ f12767so;
    private com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ZYk tB;

    public tB() {
        Context ba2 = so.cFZ().ba();
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
            this.cFZ = so.cFZ().BTZ();
            this.oJ = new com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ex(ba2, this.cFZ);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
            if (so.cFZ().kkU() != null) {
                this.jFA = so.cFZ().kkU();
            } else {
                this.jFA = so.cFZ().PiB();
            }
            this.tB = new com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ZYk(ba2, this.jFA);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
            this.f12767so = so.cFZ().PiB();
            this.ZYk = new com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ(ba2, this.f12767so);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
            this.kkU = so.cFZ().PiB();
            this.ex = new cFZ(ba2, this.kkU);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
            this.dLZ = so.cFZ().WcQ();
            this.Pfn = new com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ba(ba2, this.dLZ);
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba()) {
            this.BTZ = so.cFZ().awB();
            this.f12766ba = new com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.Pfn(ba2, this.BTZ);
        }
    }

    public List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ZYk(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, int i10) {
        if (oJVar.ex() == 0 && oJVar.Pfn() == 1 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
            if (this.cFZ.ZYk() <= i10) {
                return null;
            }
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ = this.oJ.oJ(this.cFZ.ZYk() - i10, "_id");
            if (oJ != null && oJ.size() != 0) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.HL(), 1);
            }
            return oJ;
        }
        if (oJVar.ex() == 3 && oJVar.Pfn() == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
            if (this.jFA.ZYk() > i10) {
                return this.tB.oJ(this.jFA.ZYk() - i10, "_id");
            }
        } else if (oJVar.ex() == 0 && oJVar.Pfn() == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
            if (this.f12767so.ZYk() > i10) {
                List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ2 = this.ZYk.oJ(this.f12767so.ZYk() - i10, "_id");
                if (oJ2 != null && oJ2.size() != 0) {
                    com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.IUZ(), 1);
                }
                return oJ2;
            }
        } else if (oJVar.ex() == 1 && oJVar.Pfn() == 2 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
            if (this.kkU.ZYk() > i10) {
                List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ3 = this.ex.oJ(this.kkU.ZYk() - i10, "_id");
                if (oJ3 != null && oJ3.size() != 0) {
                    com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.Ln(), 1);
                }
                return oJ3;
            }
        } else if (oJVar.ex() == 1 && oJVar.Pfn() == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
            if (this.dLZ.ZYk() > i10) {
                List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ4 = this.Pfn.oJ(this.dLZ.ZYk() - i10, "_id");
                if (oJ4 != null && oJ4.size() != 0) {
                    com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.LpP(), 1);
                }
                return oJ4;
            }
        } else if (oJVar.ex() == 2 && oJVar.Pfn() == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba() && this.BTZ.ZYk() > i10) {
            return this.f12766ba.oJ(this.BTZ.ZYk() - i10, "_id");
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, int i10) {
        if (oJVar == null) {
            return;
        }
        try {
            oJVar.ZYk(System.currentTimeMillis());
            if (oJVar.ex() == 0 && oJVar.Pfn() == 1) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
                    this.oJ.oJ(oJVar);
                }
            } else if (oJVar.ex() == 3 && oJVar.Pfn() == 2) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
                    this.tB.oJ(oJVar);
                }
            } else if (oJVar.ex() == 0 && oJVar.Pfn() == 2) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
                    this.ZYk.oJ(oJVar);
                }
            } else if (oJVar.ex() == 1 && oJVar.Pfn() == 2) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
                    this.ex.oJ(oJVar);
                }
            } else if (oJVar.ex() == 1 && oJVar.Pfn() == 3) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
                    this.Pfn.oJ(oJVar);
                }
            } else if (oJVar.ex() == 2 && oJVar.Pfn() == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba()) {
                this.f12766ba.oJ(oJVar);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.UN(), 1);
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public void oJ(int i10, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        if (list == null || list.size() == 0 || list.get(0) == null) {
            return;
        }
        com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar = list.get(0);
        if (i10 == 200 || i10 == -1) {
            com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar2 = com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex;
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar2.NO(), list.size());
            if (i10 != 200) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar2.yz(), list.size());
            }
            if (oJVar.ex() == 0 && oJVar.Pfn() == 1) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
                    this.oJ.ZYk(list);
                }
            } else if (oJVar.ex() == 3 && oJVar.Pfn() == 2) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
                    this.tB.ZYk(list);
                }
            } else if (oJVar.ex() == 0 && oJVar.Pfn() == 2) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
                    this.ZYk.ZYk(list);
                }
            } else if (oJVar.ex() == 1 && oJVar.Pfn() == 2) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
                    this.ex.ZYk(list);
                }
            } else if (oJVar.ex() == 1 && oJVar.Pfn() == 3) {
                if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
                    this.Pfn.ZYk(list);
                }
            } else if (oJVar.ex() == 2 && oJVar.Pfn() == 3 && com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba()) {
                this.f12766ba.ZYk(list);
            }
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ(int i10, int i11, List<String> list) {
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ()) {
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ = this.oJ.oJ("_id");
            if (oJ(oJ, list)) {
                oJ.size();
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.cY(), 1);
                return oJ;
            }
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn()) {
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ2 = this.tB.oJ("_id");
            if (oJ(oJ2, list)) {
                oJ2.size();
                return oJ2;
            }
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk()) {
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ3 = this.ZYk.oJ("_id");
            if (oJ(oJ3, list)) {
                oJ3.size();
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.jr(), 1);
                return oJ3;
            }
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB()) {
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ZYk = this.ex.ZYk("_id");
            if (oJ(ZYk, list)) {
                ZYk.size();
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.Xe(), 1);
                return ZYk;
            }
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex()) {
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ZYk2 = this.Pfn.ZYk("_id");
            if (oJ(ZYk2, list)) {
                ZYk2.size();
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.tb(), 1);
                return ZYk2;
            }
        }
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba()) {
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ZYk3 = this.f12766ba.ZYk("_id");
            if (oJ(ZYk3, list)) {
                ZYk3.size();
                return ZYk3;
            }
            return null;
        }
        return null;
    }

    private boolean oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, List<String> list2) {
        if (list != null && !list.isEmpty() && list2 != null && !list2.isEmpty()) {
            try {
                Iterator<com.bytedance.sdk.component.ba.oJ.ex.oJ> it = list.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.ba.oJ.ex.oJ next = it.next();
                    if (next != null) {
                        String tB = next.tB();
                        if (!TextUtils.isEmpty(tB) && list2.contains(tB)) {
                            it.remove();
                        }
                    }
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public boolean oJ(int i10, boolean z10) {
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.Pfn pfn;
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ba baVar;
        cFZ cfz;
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ oJVar;
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ZYk zYk;
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ex exVar;
        if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ() && (exVar = this.oJ) != null && exVar.oJ(i10)) {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.WcQ(), 1);
            return true;
        } else if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.Pfn() && (zYk = this.tB) != null && zYk.oJ(i10)) {
            return true;
        } else {
            if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ZYk() && (oJVar = this.ZYk) != null && oJVar.oJ(i10)) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.awB(), 1);
                return true;
            } else if (com.bytedance.sdk.component.ba.oJ.ZYk.oJ.tB() && (cfz = this.ex) != null && cfz.oJ(i10)) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.eZI(), 1);
                return true;
            } else if (!com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ex() || (baVar = this.Pfn) == null || !baVar.oJ(i10)) {
                return com.bytedance.sdk.component.ba.oJ.ZYk.oJ.ba() && (pfn = this.f12766ba) != null && pfn.oJ(i10);
            } else {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.si(), 1);
                return true;
            }
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public void oJ(int i10, long j10) {
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ex exVar = this.oJ;
        if (exVar != null) {
            exVar.oJ(i10, j10);
        }
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ZYk zYk = this.tB;
        if (zYk != null) {
            zYk.oJ(i10, j10);
        }
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null) {
            oJVar.oJ(i10, j10);
        }
        cFZ cfz = this.ex;
        if (cfz != null) {
            cfz.oJ(i10, j10);
        }
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ba baVar = this.Pfn;
        if (baVar != null) {
            baVar.oJ(i10, j10);
        }
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.Pfn pfn = this.f12766ba;
        if (pfn != null) {
            pfn.oJ(i10, j10);
        }
    }
}
