package com.bykv.vk.openvk.oJ.oJ.ZYk.tB;

import android.graphics.SurfaceTexture;
import android.media.PlaybackParams;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB;
import com.bykv.vk.openvk.oJ.oJ.oJ.oJ;
import com.bytedance.sdk.component.so.jFA;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.model.BarrageMaskInfo;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex implements tB.Pfn, tB.ZYk, tB.ba, tB.cFZ, tB.ex, tB.oJ, tB.InterfaceC0132tB, com.bykv.vk.openvk.oJ.oJ.oJ.oJ, IUZ.oJ {
    private static final SparseIntArray oJ = new SparseIntArray();
    private boolean BTZ;
    private boolean HL;
    private SurfaceTexture Pfn;
    private boolean PiB;

    /* renamed from: ba  reason: collision with root package name */
    private SurfaceHolder f11004ba;
    private boolean cY;
    private boolean cdg;
    private IUZ eZI;

    /* renamed from: jr  reason: collision with root package name */
    private ArrayList<Runnable> f11005jr;

    /* renamed from: mu  reason: collision with root package name */
    private volatile boolean f11006mu;
    private final boolean ZYk = false;
    private final List<WeakReference<oJ.InterfaceC0135oJ>> tB = new CopyOnWriteArrayList();
    private final oJ ex = new oJ();
    private int cFZ = 0;

    /* renamed from: so  reason: collision with root package name */
    private int f11009so = 3;
    private boolean jFA = false;
    private volatile tB kkU = null;
    private boolean dLZ = false;
    private volatile int WcQ = 201;
    private long awB = -1;

    /* renamed from: si  reason: collision with root package name */
    private boolean f11008si = false;
    private long Ry = 0;
    private long RZ = Long.MIN_VALUE;
    private long QSm = 0;

    /* renamed from: oq  reason: collision with root package name */
    private long f11007oq = 0;
    private long Id = 0;
    private int Xe = 0;

    /* renamed from: tb  reason: collision with root package name */
    private String f11010tb = MBridgeConstans.ENDCARD_URL_TYPE_PL;
    private com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB IUZ = null;
    private boolean Ln = false;
    private CountDownLatch LpP = new CountDownLatch(1);
    private volatile int nke = 200;
    private AtomicBoolean Jc = new AtomicBoolean(false);
    private Surface UN = null;
    private long XAo = 0;
    private long ofl = 0;

    /* renamed from: wd  reason: collision with root package name */
    private boolean f11011wd = false;
    private final Runnable HyG = new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.1
        @Override // java.lang.Runnable
        public void run() {
            if (ex.this.kkU == null) {
                return;
            }
            long Ry = ex.this.Ry();
            if (Ry > 0 && ex.this.ba() && ex.this.RZ != Long.MIN_VALUE) {
                try {
                    if (ex.this.RZ == Ry) {
                        if (!ex.this.f11008si && ex.this.QSm >= 400) {
                            ex.this.ZYk(701, 800);
                            ex.this.f11008si = true;
                        }
                        ex.this.QSm += ex.this.nke;
                    } else {
                        if (ex.this.f11008si) {
                            ex.this.Ry += ex.this.QSm;
                            ex.this.ZYk(702, 800);
                            long unused = ex.this.Ry;
                            int unused2 = ex.this.cFZ;
                        }
                        ex.this.QSm = 0L;
                        ex.this.f11008si = false;
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
            if (ex.this.si() > 0) {
                if (ex.this.RZ != Ry) {
                    if (com.bykv.vk.openvk.oJ.oJ.oJ.tB.Pfn()) {
                        long unused3 = ex.this.RZ;
                    }
                    ex exVar = ex.this;
                    exVar.oJ(Ry, exVar.si());
                }
                ex.this.RZ = Ry;
            }
            if (!ex.this.ZYk()) {
                if (ex.this.eZI != null) {
                    ex.this.eZI.postDelayed(this, ex.this.nke);
                    return;
                }
                return;
            }
            ex exVar2 = ex.this;
            exVar2.oJ(exVar2.si(), ex.this.si());
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class oJ implements Runnable {
        private long ZYk;
        private boolean tB;

        oJ() {
        }

        public void oJ(boolean z10) {
            this.tB = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ex.this.kkU != null) {
                try {
                    if (!this.tB) {
                        long kkU = ex.this.kkU.kkU();
                        ex.this.awB = Math.max(this.ZYk, kkU);
                    }
                    long unused = ex.this.awB;
                } catch (Throwable th2) {
                    th2.toString();
                }
            }
            if (ex.this.eZI != null) {
                ex.this.eZI.sendEmptyMessageDelayed(100, 0L);
            }
        }

        public void oJ(long j10) {
            this.ZYk = j10;
        }
    }

    public ex() {
        oJ("SSMediaPlayerWrapper");
    }

    private void HL() {
        this.jFA = true;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.Id;
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().oJ(this, elapsedRealtime);
            }
        }
    }

    private void IUZ() {
        IUZ iuz = this.eZI;
        if (iuz != null) {
            iuz.post(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ex.this.kkU.so();
                        ex.this.WcQ = 207;
                        ex.this.f11006mu = false;
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Id() {
        IUZ iuz = this.eZI;
        if (iuz != null) {
            iuz.post(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.10
                @Override // java.lang.Runnable
                public void run() {
                    if (ex.this.kkU == null) {
                        try {
                            ex.this.kkU = new ZYk();
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                        if (ex.this.kkU != null) {
                            tB unused = ex.this.kkU;
                            ex.this.f11010tb = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                            ex.this.kkU.oJ((tB.Pfn) ex.this);
                            ex.this.kkU.oJ((tB.ZYk) ex.this);
                            ex.this.kkU.oJ((tB.InterfaceC0132tB) ex.this);
                            ex.this.kkU.oJ((tB.oJ) ex.this);
                            ex.this.kkU.oJ((tB.ba) ex.this);
                            ex.this.kkU.oJ((tB.ex) ex.this);
                            ex.this.kkU.oJ((tB.cFZ) ex.this);
                            try {
                                ex.this.kkU.tB(false);
                            } catch (Throwable unused2) {
                            }
                            ex.this.dLZ = false;
                        }
                    }
                }
            });
        }
    }

    private void Ln() {
        if (this.BTZ) {
            return;
        }
        this.BTZ = true;
        Iterator it = new ArrayList(this.f11005jr).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f11005jr.clear();
        this.BTZ = false;
    }

    private void LpP() {
        ArrayList<Runnable> arrayList = this.f11005jr;
        if (arrayList != null && !arrayList.isEmpty()) {
            Ln();
        }
    }

    private void Xe() {
        IUZ iuz = this.eZI;
        if (iuz != null && iuz.getLooper() != null) {
            try {
                this.eZI.post(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ex.this.eZI != null && ex.this.eZI.getLooper() != null) {
                            try {
                                com.bytedance.sdk.component.so.oJ.oJ.oJ().oJ(ex.this.eZI);
                                ex.this.eZI = null;
                            } catch (Throwable unused) {
                            }
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    private void cY() {
        ZYk(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.14
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.eZI != null) {
                    ex.this.eZI.sendEmptyMessage(104);
                }
            }
        });
    }

    private void jr() {
        if (this.kkU == null) {
            return;
        }
        try {
            this.kkU.PiB();
        } catch (Throwable unused) {
        }
        this.kkU.oJ((tB.ZYk) null);
        this.kkU.oJ((tB.cFZ) null);
        this.kkU.oJ((tB.oJ) null);
        this.kkU.oJ((tB.ex) null);
        this.kkU.oJ((tB.InterfaceC0132tB) null);
        this.kkU.oJ((tB.Pfn) null);
        this.kkU.oJ((tB.ba) null);
        try {
            this.kkU.BTZ();
        } catch (Throwable unused2) {
        }
    }

    private void nke() {
        ArrayList<Runnable> arrayList = this.f11005jr;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.f11005jr.clear();
        }
    }

    private boolean oJ(int i10, int i11) {
        boolean z10 = i10 == -1010 || i10 == -1007 || i10 == -1004 || i10 == -110 || i10 == 100 || i10 == 200;
        if (i11 == 1 || i11 == 700 || i11 == 800) {
            return true;
        }
        return z10;
    }

    private void oq() {
        this.Ry = 0L;
        this.cFZ = 0;
        this.QSm = 0L;
        this.f11008si = false;
        this.RZ = Long.MIN_VALUE;
    }

    private void tb() {
        SparseIntArray sparseIntArray = oJ;
        sparseIntArray.put(this.Xe, sparseIntArray.get(this.Xe) + 1);
    }

    public void BTZ() {
        if (so()) {
            return;
        }
        this.PiB = true;
        nke();
        IUZ iuz = this.eZI;
        if (iuz != null) {
            try {
                iuz.removeCallbacksAndMessages(null);
                if (this.kkU != null) {
                    this.eZI.sendEmptyMessage(103);
                }
                Xe();
            } catch (Throwable unused) {
                Xe();
            }
        }
    }

    public boolean PiB() {
        if (this.WcQ == 205) {
            return true;
        }
        return false;
    }

    public SurfaceTexture QSm() {
        return this.Pfn;
    }

    public SurfaceHolder RZ() {
        return this.f11004ba;
    }

    public long Ry() {
        if (so()) {
            return 0L;
        }
        if (this.WcQ == 206 || this.WcQ == 207) {
            try {
                return this.kkU.kkU();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    public boolean WcQ() {
        return this.cdg;
    }

    public long awB() {
        if (this.f11008si) {
            long j10 = this.QSm;
            if (j10 > 0) {
                return this.Ry + j10;
            }
        }
        return this.Ry;
    }

    public int eZI() {
        return this.cFZ;
    }

    public long si() {
        long j10 = this.f11007oq;
        if (j10 != 0) {
            return j10;
        }
        if (this.WcQ == 206 || this.WcQ == 207) {
            try {
                this.f11007oq = this.kkU.dLZ();
            } catch (Throwable unused) {
            }
        }
        return this.f11007oq;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public int Pfn() {
        if (this.kkU == null || so()) {
            return 0;
        }
        return this.kkU.awB();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public boolean ba() {
        IUZ iuz;
        return (this.WcQ == 206 || ((iuz = this.eZI) != null && iuz.hasMessages(100))) && !this.f11006mu;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public boolean cFZ() {
        IUZ iuz;
        return ((this.WcQ != 207 && !this.f11006mu) || (iuz = this.eZI) == null || iuz.hasMessages(100)) ? false : true;
    }

    public void dLZ() {
        IUZ iuz;
        if (so() || (iuz = this.eZI) == null) {
            return;
        }
        iuz.removeMessages(100);
        this.f11006mu = true;
        if (!this.f11011wd) {
            if (!this.cY && !ZYk(this.IUZ)) {
                oJ(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.12
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ex.this.eZI != null) {
                            ex.this.eZI.sendEmptyMessage(101);
                        }
                    }
                });
                return;
            }
            IUZ iuz2 = this.eZI;
            if (iuz2 != null) {
                iuz2.sendEmptyMessage(101);
            }
        } else if (!this.jFA && !ZYk(this.IUZ)) {
            oJ(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.13
                @Override // java.lang.Runnable
                public void run() {
                    if (ex.this.eZI != null) {
                        ex.this.eZI.sendEmptyMessage(101);
                    }
                }
            });
        } else {
            IUZ iuz3 = this.eZI;
            if (iuz3 != null) {
                iuz3.sendEmptyMessage(101);
            }
        }
    }

    public void jFA() {
        if (so() || this.kkU == null) {
            return;
        }
        this.Jc.set(true);
        if (this.WcQ != 206) {
            oq();
            this.f11006mu = false;
            this.ex.oJ(true);
            ZYk(0L);
            IUZ iuz = this.eZI;
            if (iuz != null) {
                iuz.removeCallbacks(this.HyG);
                this.eZI.postDelayed(this.HyG, this.nke);
            }
        }
        this.LpP.countDown();
    }

    public void kkU() {
        if (so() || this.eZI == null) {
            return;
        }
        this.Jc.set(true);
        this.eZI.post(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.11
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.cFZ() && ex.this.kkU != null) {
                    try {
                        ex.this.kkU.ba();
                        for (WeakReference weakReference : ex.this.tB) {
                            if (weakReference != null && weakReference.get() != null) {
                                ((oJ.InterfaceC0135oJ) weakReference.get()).Pfn(ex.this);
                            }
                        }
                        ex.this.WcQ = 206;
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public boolean so() {
        return this.PiB;
    }

    private void ZYk(long j10) {
        this.ex.oJ(j10);
        if (this.HL) {
            ZYk(this.ex);
        } else if (ZYk(this.IUZ)) {
            ZYk(this.ex);
        } else {
            oJ(this.ex);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public int ex() {
        if (this.kkU == null || so()) {
            return 0;
        }
        return this.kkU.WcQ();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public boolean tB() {
        return PiB() || ba() || cFZ();
    }

    private void tB(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) throws Throwable {
        tBVar.eZI();
        this.kkU.oJ(tBVar);
        tBVar.eZI();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB.ba
    public void tB(tB tBVar) {
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().oJ((com.bykv.vk.openvk.oJ.oJ.oJ.oJ) this, true);
            }
        }
    }

    private boolean ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        return tBVar != null && tBVar.cFZ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(long j10, long j11) {
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().oJ(this, j10, j11);
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public boolean ZYk() {
        return this.WcQ == 209;
    }

    private void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, File file) {
        try {
            String oJ2 = com.bykv.vk.openvk.oJ.oJ.oJ.cFZ.oJ.oJ(file);
            if (tBVar.si().equals(oJ2)) {
                oJ(file);
                return;
            }
            JSONObject tB = tBVar.tB();
            boolean ZYk = tBVar.ZYk();
            if (tB != null) {
                tB.put(BarrageMaskInfo.KEY_MASK_FILE_HASH, tBVar.si());
                tB.put("file_real_hash", oJ2);
                tB.put("is_change_play_type", ZYk ? 1 : 0);
                tB.put("error_real_code", 309);
                tB.put("error_real_msg", "md5_not_match");
            }
            if (ZYk) {
                boolean delete = file.delete();
                if (tB != null) {
                    tB.put("delete_cache_file", delete ? 1 : 0);
                }
                if (delete) {
                    tB(tBVar);
                    return;
                }
            }
            oJ(file);
        } catch (Throwable unused) {
        }
    }

    private void oJ(String str) {
        this.Xe = 0;
        this.eZI = com.bytedance.sdk.component.so.oJ.oJ.oJ().oJ(this, jFA.THREAD_NAME_PRE.concat(String.valueOf(str)));
        this.f11011wd = true;
        Id();
    }

    public void oJ(final boolean z10) {
        if (so()) {
            return;
        }
        this.HL = z10;
        if (this.kkU != null) {
            this.kkU.oJ(z10);
            return;
        }
        IUZ iuz = this.eZI;
        if (iuz != null) {
            iuz.post(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.9
                @Override // java.lang.Runnable
                public void run() {
                    if (ex.this.kkU != null) {
                        ex.this.kkU.oJ(z10);
                    }
                }
            });
        }
    }

    public void oJ(boolean z10, long j10, boolean z11) {
        if (so()) {
            return;
        }
        Id();
        this.Ln = z11;
        this.Jc.set(true);
        this.f11006mu = false;
        ZYk(z11);
        if (z10) {
            this.awB = j10;
            cY();
        } else {
            ZYk(j10);
        }
        IUZ iuz = this.eZI;
        if (iuz != null) {
            iuz.removeCallbacks(this.HyG);
            this.eZI.postDelayed(this.HyG, this.nke);
        }
        this.LpP.countDown();
    }

    private void ZYk(String str) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.kkU.oJ(fileInputStream.getFD());
        fileInputStream.close();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB.ex
    public boolean ZYk(tB tBVar, int i10, int i11) {
        if (this.kkU != tBVar) {
            return false;
        }
        if (i11 == -1004) {
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar = new com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(i10, i11);
            for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().oJ(this, oJVar);
                }
            }
        }
        ZYk(i10, i11);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(int i10, int i11) {
        if (i10 == 701) {
            this.XAo = SystemClock.elapsedRealtime();
            this.cFZ++;
            for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().oJ(this, Integer.MAX_VALUE, 0, 0);
                }
            }
        } else if (i10 == 702) {
            if (this.XAo > 0) {
                this.ofl += SystemClock.elapsedRealtime() - this.XAo;
                this.XAo = 0L;
            }
            for (WeakReference<oJ.InterfaceC0135oJ> weakReference2 : this.tB) {
                if (weakReference2 != null && weakReference2.get() != null) {
                    weakReference2.get().oJ((com.bykv.vk.openvk.oJ.oJ.oJ.oJ) this, Integer.MAX_VALUE);
                }
            }
        } else if (this.f11011wd && i10 == 3) {
            LpP();
            HL();
            ZYk(this.Ln);
        } else if (i10 == 805) {
            this.cdg = true;
        }
    }

    public void oJ(final long j10) {
        if (so()) {
            return;
        }
        if (this.WcQ == 207 || this.WcQ == 206 || this.WcQ == 209) {
            ZYk(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.2
                @Override // java.lang.Runnable
                public void run() {
                    if (ex.this.eZI != null) {
                        ex.this.eZI.obtainMessage(106, Long.valueOf(j10)).sendToTarget();
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
    public boolean oJ() {
        return this.jFA;
    }

    public void oJ(final SurfaceTexture surfaceTexture) {
        if (so()) {
            return;
        }
        this.Pfn = surfaceTexture;
        oJ(true);
        ZYk(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.3
            @Override // java.lang.Runnable
            public void run() {
                ex.this.Id();
                if (ex.this.eZI != null) {
                    ex.this.eZI.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    public void oJ(final SurfaceHolder surfaceHolder) {
        if (so()) {
            return;
        }
        this.f11004ba = surfaceHolder;
        oJ(true);
        ZYk(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.4
            @Override // java.lang.Runnable
            public void run() {
                ex.this.Id();
                if (ex.this.eZI != null) {
                    ex.this.eZI.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    public void oJ(final com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        if (so()) {
            return;
        }
        this.IUZ = tBVar;
        if (tBVar != null) {
            this.f11011wd = this.f11011wd && !tBVar.cFZ();
        }
        ZYk(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.5
            @Override // java.lang.Runnable
            public void run() {
                ex.this.Id();
                if (ex.this.eZI != null) {
                    ex.this.eZI.obtainMessage(107, tBVar).sendToTarget();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB.Pfn
    public void ZYk(tB tBVar) {
        if (so()) {
            return;
        }
        this.WcQ = 205;
        try {
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar2 = this.IUZ;
            if (tBVar2 != null) {
                float awB = tBVar2.awB();
                if (awB > 0.0f) {
                    com.bykv.vk.openvk.oJ.oJ.oJ.ZYk zYk = new com.bykv.vk.openvk.oJ.oJ.oJ.ZYk();
                    zYk.oJ(awB);
                    this.kkU.oJ(zYk);
                }
            }
        } catch (Throwable unused) {
        }
        if (this.eZI != null) {
            if (this.f11006mu) {
                IUZ();
            } else {
                IUZ iuz = this.eZI;
                iuz.sendMessage(iuz.obtainMessage(100, -1, -1));
            }
        }
        oJ.delete(this.Xe);
        boolean z10 = this.f11011wd;
        boolean z11 = this.cY;
        if (!z10 && !z11) {
            HL();
            this.cY = true;
        }
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().ZYk(this);
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        int i10 = this.WcQ;
        int i11 = message.what;
        if (this.kkU != null) {
            try {
                switch (message.what) {
                    case 100:
                        if (this.WcQ == 205 || this.WcQ == 207 || this.WcQ == 209) {
                            this.kkU.ba();
                            this.Id = SystemClock.elapsedRealtime();
                            this.WcQ = 206;
                            if (this.awB > 0) {
                                this.kkU.oJ(this.awB, this.f11009so);
                                this.awB = -1L;
                            }
                            if (this.IUZ != null) {
                                ZYk(this.Ln);
                                return;
                            }
                            return;
                        }
                        break;
                    case 101:
                        if (this.f11008si) {
                            this.Ry += this.QSm;
                        }
                        this.f11008si = false;
                        this.QSm = 0L;
                        this.RZ = Long.MIN_VALUE;
                        if (this.WcQ == 206 || this.WcQ == 207 || this.WcQ == 209) {
                            this.kkU.so();
                            this.WcQ = 207;
                            this.f11006mu = false;
                            for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
                                if (weakReference != null && weakReference.get() != null) {
                                    weakReference.get().ex(this);
                                }
                            }
                            return;
                        }
                        break;
                    case 102:
                        this.kkU.PiB();
                        this.WcQ = 201;
                        return;
                    case 103:
                        try {
                            jr();
                        } catch (Throwable unused) {
                        }
                        for (WeakReference<oJ.InterfaceC0135oJ> weakReference2 : this.tB) {
                            if (weakReference2 != null && weakReference2.get() != null) {
                                weakReference2.get().tB(this);
                            }
                        }
                        this.WcQ = 203;
                        return;
                    case 104:
                        if (this.WcQ == 202 || this.WcQ == 208) {
                            this.kkU.jFA();
                            return;
                        }
                        break;
                    case 105:
                        if (this.WcQ == 205 || this.WcQ == 206 || this.WcQ == 208 || this.WcQ == 207 || this.WcQ == 209) {
                            this.kkU.cFZ();
                            this.WcQ = 208;
                            return;
                        }
                        break;
                    case 106:
                        if (this.WcQ == 206 || this.WcQ == 207 || this.WcQ == 209) {
                            this.kkU.oJ(((Long) message.obj).longValue(), this.f11009so);
                            return;
                        }
                        break;
                    case 107:
                        oq();
                        if (this.WcQ == 201 || this.WcQ == 203) {
                            com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar = (com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB) message.obj;
                            if (TextUtils.isEmpty(tBVar.Pfn())) {
                                tBVar.oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk());
                            }
                            if (tBVar.Xe()) {
                                this.kkU.oJ(tBVar.eZI());
                                tBVar.eZI();
                            } else {
                                File file = new File(tBVar.Pfn(), tBVar.si());
                                if (file.exists()) {
                                    oJ(tBVar, file);
                                } else {
                                    tB(tBVar);
                                }
                            }
                            this.WcQ = 202;
                            return;
                        }
                        break;
                    case 108:
                    case 109:
                    default:
                        return;
                    case 110:
                        this.kkU.oJ((SurfaceHolder) message.obj);
                        this.kkU.ZYk(true);
                        this.LpP.await(1L, TimeUnit.SECONDS);
                        LpP();
                        return;
                    case 111:
                        this.UN = new Surface((SurfaceTexture) message.obj);
                        this.kkU.oJ(this.UN);
                        this.kkU.ZYk(true);
                        this.LpP.await(1L, TimeUnit.SECONDS);
                        LpP();
                        return;
                }
                this.WcQ = 200;
                if (this.dLZ) {
                    return;
                }
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar = new com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(308, i11);
                oJVar.oJ(i10 + "," + i11);
                for (WeakReference<oJ.InterfaceC0135oJ> weakReference3 : this.tB) {
                    if (weakReference3 != null && weakReference3.get() != null) {
                        weakReference3.get().oJ(this, oJVar);
                    }
                }
                this.dLZ = true;
            } catch (Throwable unused2) {
            }
        }
    }

    private void ZYk(Runnable runnable) {
        if (runnable == null || so()) {
            return;
        }
        if (!this.PiB) {
            runnable.run();
        } else {
            oJ(runnable);
        }
    }

    public void ZYk(final boolean z10) {
        IUZ iuz;
        if (so() || (iuz = this.eZI) == null) {
            return;
        }
        iuz.post(new Runnable() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex.8
            @Override // java.lang.Runnable
            public void run() {
                if (!ex.this.so() && ex.this.kkU != null) {
                    try {
                        ex.this.Ln = z10;
                        ex.this.kkU.ex(z10);
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    public void ZYk(int i10) {
        this.f11009so = i10;
    }

    private void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, File file) {
        if (tBVar.oJ()) {
            ZYk(tBVar, file);
        } else {
            oJ(file);
        }
    }

    private void oJ(File file) {
        file.getAbsolutePath();
        try {
            if (com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB()) {
                ZYk(file.getAbsolutePath());
            } else {
                this.kkU.oJ(file.getAbsolutePath());
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB.oJ
    public void oJ(tB tBVar, int i10) {
        if (this.kkU != tBVar) {
            return;
        }
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().ZYk(this, i10);
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB.ZYk
    public void oJ(tB tBVar) {
        this.WcQ = 209;
        oJ.delete(this.Xe);
        IUZ iuz = this.eZI;
        if (iuz != null) {
            iuz.removeCallbacks(this.HyG);
        }
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().oJ(this);
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB.InterfaceC0132tB
    public boolean oJ(tB tBVar, int i10, int i11) {
        tb();
        this.WcQ = 200;
        IUZ iuz = this.eZI;
        if (iuz != null) {
            iuz.removeCallbacks(this.HyG);
        }
        if (oJ(i10, i11)) {
            Xe();
        }
        if (this.Jc.get()) {
            this.Jc.set(false);
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar = new com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(i10, i11);
            for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().oJ(this, oJVar);
                }
            }
            return true;
        }
        return true;
    }

    private void oJ(Runnable runnable) {
        try {
            if (this.f11005jr == null) {
                this.f11005jr = new ArrayList<>();
            }
            this.f11005jr.add(runnable);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB.cFZ
    public void oJ(tB tBVar, int i10, int i11, int i12, int i13) {
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().oJ((com.bykv.vk.openvk.oJ.oJ.oJ.oJ) this, i10, i11);
            }
        }
    }

    public void oJ(oJ.InterfaceC0135oJ interfaceC0135oJ) {
        if (interfaceC0135oJ == null) {
            return;
        }
        for (WeakReference<oJ.InterfaceC0135oJ> weakReference : this.tB) {
            if (weakReference != null && weakReference.get() == interfaceC0135oJ) {
                return;
            }
        }
        this.tB.add(new WeakReference<>(interfaceC0135oJ));
    }

    public void oJ(int i10) {
        if (so()) {
            return;
        }
        this.nke = i10;
    }

    public boolean oJ(float f10) {
        if (f10 <= 0.0f) {
            return false;
        }
        try {
            if (this.kkU != null && tB()) {
                PlaybackParams Pfn = this.kkU.Pfn();
                if ((Pfn != null ? Pfn.getSpeed() : 0.0f) != f10) {
                    com.bykv.vk.openvk.oJ.oJ.oJ.ZYk zYk = new com.bykv.vk.openvk.oJ.oJ.oJ.ZYk();
                    zYk.oJ(f10);
                    this.kkU.oJ(zYk);
                    return true;
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            QSm.oJ("CSJ_VIDEO_MEDIA", "setPlaySpeedRatio error: ", th2);
            return false;
        }
    }
}
