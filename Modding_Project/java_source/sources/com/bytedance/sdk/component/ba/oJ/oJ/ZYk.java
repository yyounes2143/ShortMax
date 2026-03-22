package com.bytedance.sdk.component.ba.oJ.oJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes3.dex */
public class ZYk extends oJ {
    private final tB ZYk;
    private final ex oJ;
    private final Queue<String> tB;

    public ZYk() {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.tB = concurrentLinkedQueue;
        this.oJ = new ba(concurrentLinkedQueue);
        this.ZYk = new tB();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public synchronized void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, int i10) {
        ex exVar;
        if (i10 != 5) {
            try {
                if (so.cFZ().eZI().oJ(so.cFZ().ba()) && (exVar = this.oJ) != null && oJVar != null) {
                    exVar.oJ(oJVar, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        tB tBVar = this.ZYk;
        if (tBVar != null && oJVar != null) {
            tBVar.oJ(oJVar, i10);
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public synchronized void oJ(int i10, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        try {
            for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : list) {
                this.tB.remove(oJVar.tB());
            }
            ex exVar = this.oJ;
            if (exVar != null) {
                exVar.oJ(i10, list);
            }
            tB tBVar = this.ZYk;
            if (tBVar != null) {
                tBVar.oJ(i10, list);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Object] */
    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public synchronized List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ(int i10, int i11, List<String> list) {
        List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ZYk;
        try {
            List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ = this.oJ.oJ(i10, i11, list);
            if (oJ != null && oJ.size() != 0) {
                oJ.size();
                if ((i10 == 1 || i10 == 2) && (ZYk = this.ZYk.ZYk(oJ.get(0), oJ.size())) != null && ZYk.size() != 0) {
                    ZYk.size();
                    HashMap hashMap = new HashMap();
                    for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : ZYk) {
                        hashMap.put(oJVar.tB(), oJVar);
                    }
                    ArrayList arrayList = new ArrayList(this.tB);
                    for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar2 : ZYk) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (TextUtils.equals(oJVar2.tB(), (String) it.next())) {
                                    hashMap.remove(oJVar2.tB());
                                    break;
                                }
                            }
                        }
                    }
                    for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar3 : oJ) {
                        hashMap.put(oJVar3.tB(), oJVar3);
                    }
                    oJ.clear();
                    for (String str : hashMap.keySet()) {
                        oJ.add(hashMap.get(str));
                    }
                    ZYk.clear();
                }
            } else {
                ArrayList<String> arrayList2 = new ArrayList(this.tB);
                if (list != null && !list.isEmpty()) {
                    arrayList2.addAll(list);
                }
                List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ2 = this.ZYk.oJ(i10, i11, arrayList2);
                if (oJ2 != null && oJ2.size() != 0) {
                    HashMap hashMap2 = new HashMap();
                    for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar4 : oJ2) {
                        hashMap2.put(oJVar4.tB(), oJVar4);
                    }
                    arrayList2.size();
                    if (arrayList2.size() != 0) {
                        for (String str2 : arrayList2) {
                            if (hashMap2.get(str2) != null) {
                                hashMap2.remove(str2);
                            }
                        }
                    }
                    oJ2.clear();
                    for (String str3 : hashMap2.keySet()) {
                        oJ2.add(hashMap2.get(str3));
                    }
                }
                oJ = oJ2;
            }
            if (oJ != null && !oJ.isEmpty()) {
                for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar5 : oJ) {
                    this.tB.offer(oJVar5.tB());
                }
                return oJ;
            }
            return new ArrayList();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public synchronized boolean oJ(int i10, boolean z10) {
        if (this.oJ.oJ(i10, z10)) {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.nke(), 1);
            return true;
        } else if ((i10 == 1 || i10 == 2) && this.ZYk.oJ(i10, z10)) {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.Jc(), 1);
            return true;
        } else {
            return false;
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.ex
    public void oJ(int i10, long j10) {
        this.ZYk.oJ(i10, j10);
        this.oJ.oJ(i10, j10);
    }
}
