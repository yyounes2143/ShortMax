package com.bytedance.sdk.component.ba.oJ.ZYk.tB;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bytedance.sdk.component.ba.oJ.Pfn;
import com.bytedance.sdk.component.ba.oJ.oJ.ex;
import com.bytedance.sdk.component.ba.oJ.so;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB extends HandlerThread implements Handler.Callback {
    private static int RZ = 200;

    /* renamed from: si  reason: collision with root package name */
    private static int f12749si = 10;
    private final AtomicInteger BTZ;
    private final int Id;
    private final PriorityBlockingQueue<com.bytedance.sdk.component.ba.oJ.ex.oJ> Pfn;
    private volatile Handler PiB;
    private final int QSm;
    private long Ry;
    private final List<com.bytedance.sdk.component.ba.oJ.ex.oJ> WcQ;
    private volatile boolean ZYk;
    private final AtomicInteger awB;

    /* renamed from: ba  reason: collision with root package name */
    private volatile int f12750ba;
    private volatile long cFZ;
    private final long dLZ;
    private final AtomicInteger eZI;
    private com.bytedance.sdk.component.ba.oJ.ZYk.tB ex;
    private final AtomicInteger jFA;
    private final long kkU;
    protected ex oJ;

    /* renamed from: oq  reason: collision with root package name */
    private final int f12751oq;

    /* renamed from: so  reason: collision with root package name */
    private volatile long f12752so;
    private final Object tB;

    public tB(PriorityBlockingQueue<com.bytedance.sdk.component.ba.oJ.ex.oJ> priorityBlockingQueue) {
        super("csj_log");
        this.ZYk = true;
        this.tB = new Object();
        this.cFZ = 0L;
        this.f12752so = 0L;
        this.jFA = new AtomicInteger(0);
        this.kkU = 5000L;
        this.dLZ = 5000000000L;
        this.BTZ = new AtomicInteger(0);
        this.WcQ = new ArrayList();
        this.awB = new AtomicInteger(0);
        this.eZI = new AtomicInteger(0);
        this.Ry = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        this.QSm = 1;
        this.f12751oq = 2;
        this.Id = 3;
        this.Pfn = priorityBlockingQueue;
        this.oJ = new com.bytedance.sdk.component.ba.oJ.oJ.ZYk();
        if (!com.bytedance.sdk.component.ba.oJ.ZYk.ZYk()) {
            long awB = so.cFZ().eZI().awB();
            if (awB > 0) {
                this.Ry = awB;
            }
        }
    }

    private void Pfn() {
        while (oJ()) {
            try {
                com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar = com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex;
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.so(), 1);
                com.bytedance.sdk.component.ba.oJ.ex.oJ poll = this.Pfn.poll(this.Ry, TimeUnit.MILLISECONDS);
                int size = this.Pfn.size();
                if (poll instanceof com.bytedance.sdk.component.ba.oJ.ex.ZYk) {
                    oJ(poll, size);
                } else if (poll == null) {
                    int incrementAndGet = this.jFA.incrementAndGet();
                    com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.Jm(), 1);
                    if (ex(incrementAndGet)) {
                        ba();
                        return;
                    } else if (incrementAndGet < 4) {
                        this.f12750ba = 1;
                        ZYk((com.bytedance.sdk.component.ba.oJ.ex.oJ) null);
                    }
                } else {
                    oJ(poll);
                    ZYk(poll);
                }
            } catch (Throwable th2) {
                th2.getMessage();
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.wd(), 1);
            }
        }
    }

    private void ba() {
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.Id(), 1);
        oJ(false);
        com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.tB();
    }

    private void cFZ() {
        if (this.Pfn.size() >= 100) {
            for (int i10 = 0; i10 < 100; i10++) {
                com.bytedance.sdk.component.ba.oJ.ex.oJ poll = this.Pfn.poll();
                if (!(poll instanceof com.bytedance.sdk.component.ba.oJ.ex.ZYk) && poll != null) {
                    oJ(poll);
                }
            }
        }
    }

    private void ex() {
        if (!isAlive()) {
            com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.ex();
        } else if (oJ()) {
        } else {
            tB(6);
        }
    }

    private void jFA() {
        try {
            if (this.Pfn.size() == 0 && this.PiB.hasMessages(11) && oJ()) {
                oJ(false);
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    private void kkU() {
        long nanoTime;
        com.bytedance.sdk.component.ba.oJ.ZYk.ex exVar;
        if (this.PiB.hasMessages(11)) {
            jFA();
        } else {
            Pfn(1);
        }
        com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar = com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex;
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.ZYk(), 1);
        if (this.f12750ba == 2) {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.cFZ(), 1);
            synchronized (this.tB) {
                try {
                    try {
                        long nanoTime2 = System.nanoTime();
                        this.tB.wait(5000L);
                        nanoTime = System.nanoTime() - nanoTime2;
                        exVar = com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ;
                        if (!exVar.ZYk) {
                            boolean z10 = exVar.tB;
                        }
                    } catch (InterruptedException e10) {
                        e10.getMessage();
                    }
                    if (nanoTime < 5000000000L && 5000000000L - nanoTime >= 50000000) {
                        if (!exVar.ZYk && !exVar.tB) {
                            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.ofl(), 1);
                            tB(2);
                            return;
                        }
                        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.dLZ(), 1);
                        return;
                    }
                    com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.kkU(), 1);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private boolean so() {
        if (com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.ZYk) {
            if (this.f12750ba == 4 || this.f12750ba == 7 || this.f12750ba == 6 || this.f12750ba == 5 || this.f12750ba == 2) {
                return true;
            }
            return false;
        }
        return false;
    }

    private void tB() {
        ex();
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.XAo(), 1);
        tB(1);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i10 = message.what;
        try {
        } catch (Throwable th2) {
            th2.getMessage();
        }
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 == 11) {
                    ArrayList arrayList = new ArrayList(this.WcQ);
                    this.WcQ.clear();
                    oJ((List<com.bytedance.sdk.component.ba.oJ.ex.oJ>) arrayList, false, "timeout_dispatch");
                    kkU();
                }
                return true;
            }
            tB();
        } else {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.jFA(), 1);
            ZYk();
            oJ(true);
            Pfn();
        }
        return true;
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        this.PiB = new Handler(getLooper(), this);
        com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.oJ(this.PiB);
        this.PiB.sendEmptyMessage(1);
    }

    public static void ZYk(int i10) {
        RZ = i10;
    }

    private void ZYk() {
        long si2 = so.cFZ().si();
        if (si2 <= 0) {
            return;
        }
        this.oJ.oJ(Integer.MAX_VALUE, si2);
    }

    public static void oJ(int i10) {
        f12749si = i10;
    }

    public void tB(int i10) {
        try {
            boolean oJ = oJ(i10, com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.ZYk);
            if (i10 == 6 || oJ) {
                com.bytedance.sdk.component.ba.oJ.ex.ZYk zYk = new com.bytedance.sdk.component.ba.oJ.ex.ZYk();
                zYk.ZYk(i10);
                this.Pfn.add(zYk);
                Pfn(3);
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    private void ZYk(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (com.bytedance.sdk.component.ba.oJ.tB.oJ.ZYk() && so.cFZ().oJ()) {
            return;
        }
        int i10 = 0;
        if (so()) {
            com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ(this.f12750ba);
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.BTZ(), 1);
            if (this.Pfn.size() != 0) {
                return;
            }
            if (!this.PiB.hasMessages(2)) {
                com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.ZYk = false;
                this.f12752so = 0L;
                this.cFZ = 0L;
                this.awB.set(0);
                this.eZI.set(0);
            } else {
                oJ(false);
                return;
            }
        }
        do {
            boolean oJ = oJ(this.f12750ba, com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.ZYk);
            com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ(oJ, this.f12750ba, oJVar);
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.PiB(), 1);
            if (oJ) {
                List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ2 = this.oJ.oJ(this.f12750ba, -1, null);
                if (oJ2 != null) {
                    oJ2.size();
                    oJ(oJ2);
                } else {
                    jFA();
                }
            } else {
                jFA();
            }
            i10++;
            if (!oJ) {
                return;
            }
        } while (i10 <= 6);
    }

    private boolean ex(int i10) {
        if (i10 < 4 || this.BTZ.get() != 0) {
            return false;
        }
        com.bytedance.sdk.component.ba.oJ.ZYk.ex exVar = com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ;
        return (exVar.ZYk || exVar.tB) ? false : true;
    }

    public void oJ(boolean z10) {
        this.ZYk = z10;
    }

    public boolean oJ() {
        return this.ZYk;
    }

    public boolean oJ(int i10, boolean z10) {
        Pfn eZI = so.cFZ().eZI();
        if (eZI == null || !eZI.oJ(so.cFZ().ba())) {
            return false;
        }
        return this.oJ.oJ(i10, z10);
    }

    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, boolean z10) {
        if (oJVar == null) {
            return;
        }
        oJVar.ex();
        if (z10) {
            if (this.PiB != null) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(oJVar);
                oJ((List<com.bytedance.sdk.component.ba.oJ.ex.oJ>) arrayList, true, "ignore_result_dispatch");
                return;
            }
            return;
        }
        this.Pfn.add(oJVar);
        Pfn(2);
    }

    private void Pfn(int i10) {
        if (!oJ()) {
            if (this.PiB == null) {
                return;
            }
            com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar = com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex;
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.tB(), 1);
            if (this.PiB.hasMessages(1)) {
                return;
            }
            if (i10 == 1) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.ba(), 1);
            } else if (i10 == 2) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.ex(), 1);
            } else if (i10 == 3) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(oJVar.Pfn(), 1);
            }
            this.PiB.sendEmptyMessage(1);
            return;
        }
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.oJ(), 1);
    }

    private void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, int i10) {
        this.jFA.set(0);
        if (i10 == 0) {
            this.f12750ba = ((com.bytedance.sdk.component.ba.oJ.ex.ZYk) oJVar).dLZ();
            if (this.f12750ba != 6) {
                com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.Rl(), 1);
                ZYk(oJVar);
                return;
            }
            return;
        }
        com.bytedance.sdk.component.ba.oJ.ex.ZYk zYk = (com.bytedance.sdk.component.ba.oJ.ex.ZYk) oJVar;
        if (zYk.dLZ() == 1) {
            this.f12750ba = 1;
            ZYk(oJVar);
        } else if (zYk.dLZ() == 2) {
            cFZ();
            this.f12750ba = 2;
            ZYk(oJVar);
        }
    }

    private void ZYk(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        this.WcQ.addAll(list);
        this.WcQ.size();
        Pfn eZI = so.cFZ().eZI();
        if (eZI != null && eZI.BTZ() != null) {
            f12749si = eZI.BTZ().ZYk();
        }
        if (this.WcQ.size() >= f12749si) {
            if (this.PiB.hasMessages(11)) {
                this.PiB.removeMessages(11);
            }
            ArrayList arrayList = new ArrayList(this.WcQ);
            this.WcQ.clear();
            oJ((List<com.bytedance.sdk.component.ba.oJ.ex.oJ>) arrayList, false, "max_size_dispatch");
            kkU();
        } else if (this.Pfn.size() == 0) {
            oJ(false);
            if (this.PiB.hasMessages(11)) {
                this.PiB.removeMessages(11);
            }
            if (this.PiB.hasMessages(1)) {
                this.PiB.removeMessages(1);
            }
            long j10 = RZ;
            if (eZI != null && eZI.BTZ() != null) {
                j10 = eZI.BTZ().oJ();
            }
            this.PiB.sendEmptyMessageDelayed(11, j10);
        } else {
            this.WcQ.size();
        }
    }

    private void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        this.jFA.set(0);
        com.bytedance.sdk.component.ba.oJ.ZYk.ex exVar = com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ;
        if (exVar.ZYk) {
            this.f12750ba = 5;
        } else if (exVar.tB) {
            this.f12750ba = 7;
        } else {
            this.f12750ba = 4;
        }
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.mwH(), 1);
        this.oJ.oJ(oJVar, this.f12750ba);
        com.bytedance.sdk.component.ba.oJ.tB.oJ.cFZ(oJVar);
    }

    private void oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, String str) {
        oJ(str);
        oJ(list, false, str);
        kkU();
    }

    private void oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        if (list.size() != 0) {
            com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ(list, this.Pfn.size());
            if (list.size() <= 1 && !com.bytedance.sdk.component.ba.oJ.tB.oJ.tB()) {
                com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar = list.get(0);
                if (oJVar != null) {
                    if (oJVar.Pfn() == 1) {
                        oJ(list, "highPriority");
                        return;
                    } else if (oJVar.ex() == 0 && oJVar.Pfn() == 2) {
                        if (oJVar.ZYk() == 3) {
                            oJ(list, "version_v3");
                            return;
                        } else {
                            ZYk(list);
                            return;
                        }
                    } else if (oJVar.ex() == 1) {
                        oJ(list, "stats");
                        return;
                    } else if (oJVar.ex() == 3) {
                        oJ(list, "adType_v3");
                        return;
                    } else if (oJVar.ex() == 2) {
                        oJ(list, "other");
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            oJ(list, "batchRead");
            return;
        }
        jFA();
    }

    private void ZYk(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, final boolean z10, final long j10) {
        this.BTZ.incrementAndGet();
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.MoK(), 1);
        try {
            HashMap hashMap = new HashMap();
            Iterator<com.bytedance.sdk.component.ba.oJ.ex.oJ> it = list.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.component.ba.oJ.ex.oJ next = it.next();
                int kkU = next == null ? 0 : next.kkU();
                if (hashMap.get(Integer.valueOf(kkU)) == null) {
                    hashMap.put(Integer.valueOf(kkU), new ArrayList());
                }
                ((List) hashMap.get(Integer.valueOf(kkU))).add(next);
            }
            for (Integer num : hashMap.keySet()) {
                if (num.intValue() != 0 && so.cFZ().tB() != null && so.cFZ().tB().get(num) != null) {
                    so.cFZ().tB().get(num).oJ(list, new com.bytedance.sdk.component.ba.oJ.ZYk.ZYk() { // from class: com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB.3
                        @Override // com.bytedance.sdk.component.ba.oJ.ZYk.ZYk
                        public void oJ(List<oJ> list2) {
                            try {
                                tB.this.BTZ.decrementAndGet();
                                if (list2 != null && list2.size() != 0) {
                                    int size = list2.size();
                                    for (int i10 = 0; i10 < size; i10++) {
                                        oJ oJVar = list2.get(i10);
                                        if (oJVar != null) {
                                            tB.this.oJ(z10, oJVar.oJ(), oJVar.ZYk(), j10);
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                }
                this.ex.oJ(list, new com.bytedance.sdk.component.ba.oJ.ZYk.ZYk() { // from class: com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB.2
                    @Override // com.bytedance.sdk.component.ba.oJ.ZYk.ZYk
                    public void oJ(List<oJ> list2) {
                        try {
                            tB.this.BTZ.decrementAndGet();
                            if (list2 != null && list2.size() != 0) {
                                int size = list2.size();
                                for (int i10 = 0; i10 < size; i10++) {
                                    oJ oJVar = list2.get(i10);
                                    if (oJVar != null) {
                                        tB.this.oJ(z10, oJVar.oJ(), oJVar.ZYk(), j10);
                                    }
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        } catch (Exception e10) {
            e10.getMessage();
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.wd(), 1);
            this.BTZ.decrementAndGet();
        }
    }

    private void oJ(String str) {
        if (this.PiB.hasMessages(11)) {
            this.PiB.removeMessages(11);
        }
        if (this.WcQ.size() != 0) {
            ArrayList arrayList = new ArrayList(this.WcQ);
            this.WcQ.clear();
            oJ((List<com.bytedance.sdk.component.ba.oJ.ex.oJ>) arrayList, false, "before_".concat(String.valueOf(str)));
            kkU();
            arrayList.size();
        }
    }

    private void oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, boolean z10, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ(list, this.f12750ba, str);
        com.bytedance.sdk.component.ba.oJ.ZYk.tB so2 = so.cFZ().so();
        this.ex = so2;
        if (so2 != null) {
            ZYk(list, z10, currentTimeMillis);
        } else {
            oJ(list, z10, currentTimeMillis);
        }
    }

    private void oJ(final List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, final boolean z10, final long j10) {
        Pfn eZI = so.cFZ().eZI();
        if (eZI != null) {
            Executor Pfn = eZI.Pfn();
            if (list.get(0).Pfn() == 1) {
                Pfn = eZI.ex();
            }
            if (Pfn == null) {
                return;
            }
            this.BTZ.incrementAndGet();
            Pfn.execute(new com.bytedance.sdk.component.ba.oJ.Pfn.Pfn("csj_log_upload") { // from class: com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB.1
                @Override // java.lang.Runnable
                public void run() {
                    tB tBVar = tB.this;
                    tBVar.oJ(list, z10, j10, tBVar.f12750ba);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, boolean z10, long j10, int i10) {
        ZYk oJ;
        try {
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.MoK(), 1);
            if (list.get(0).ex() == 0) {
                oJ = so.Pfn().oJ(list);
                oJ(oJ, list);
                if (oJ != null) {
                    com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ(list, oJ.ex);
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : list) {
                        jSONArray.put(oJVar.cFZ());
                    }
                    jSONObject.put("stats_list", jSONArray);
                } catch (Exception e10) {
                    e10.getMessage();
                }
                oJ = so.Pfn().oJ(jSONObject);
            }
            ZYk zYk = oJ;
            this.BTZ.decrementAndGet();
            oJ(z10, zYk, list, j10);
        } catch (Throwable th2) {
            th2.getMessage();
            com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.wd(), 1);
            this.BTZ.decrementAndGet();
        }
    }

    private void oJ(ZYk zYk, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        if (zYk == null || !zYk.oJ) {
            return;
        }
        List<Object> oJ = com.bytedance.sdk.component.ba.oJ.ZYk.oJ();
        if (list == null || oJ == null || oJ.size() == 0) {
            return;
        }
        for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : list) {
            if (oJVar.Pfn() == 1) {
                com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ(oJVar);
                com.bytedance.sdk.component.ba.oJ.tB.oJ.Pfn(oJVar);
                Iterator<Object> it = oJ.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(boolean z10, ZYk zYk, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, long j10) {
        if (z10 || zYk == null) {
            return;
        }
        int i10 = zYk.ZYk;
        int i11 = -2;
        if (zYk.Pfn) {
            i10 = -1;
        } else if (i10 < 0) {
            i10 = -2;
        }
        if (i10 == 510 || i10 == 511) {
            i10 = -2;
        }
        if (zYk.oJ || ((i10 < 500 || i10 >= 509) && i10 <= 513)) {
            i11 = i10;
        }
        if (list != null) {
            list.size();
            this.BTZ.get();
        }
        oJ(i11, list, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00e8 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(int r6, java.util.List<com.bytedance.sdk.component.ba.oJ.ex.oJ> r7, long r8) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ba.oJ.ZYk.tB.tB.oJ(int, java.util.List, long):void");
    }

    public void oJ(int i10, long j10) {
        if (this.PiB == null) {
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = i10;
        if (i10 == 2) {
            this.PiB.sendMessageDelayed(obtain, (((this.awB.incrementAndGet() - 1) % 4) + 1) * j10);
        } else if (i10 == 3) {
            this.PiB.sendMessageDelayed(obtain, (((this.eZI.incrementAndGet() - 1) % 4) + 1) * j10);
        }
    }
}
