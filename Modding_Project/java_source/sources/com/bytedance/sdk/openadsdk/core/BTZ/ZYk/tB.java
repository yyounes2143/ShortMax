package com.bytedance.sdk.openadsdk.core.BTZ.ZYk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.WorkerThread;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bykv.vk.openvk.oJ.oJ.oJ.oJ;
import com.bytedance.sdk.component.utils.HL;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.component.utils.jFA;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.WcQ.PiB;
import com.bytedance.sdk.openadsdk.WcQ.WcQ;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.jr;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
import com.bytedance.sdk.openadsdk.ex.cFZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes3.dex */
public class tB extends com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ {
    private boolean Dex;
    private final String HyG;
    private boolean Jm;
    private final oJ.InterfaceC0135oJ LS;
    private int NO;
    private WeakReference<tB.ex> Qu;
    private final boolean Rl;
    private long XAo;
    private int Yg;
    private int bgF;
    private final boolean cdg;
    private final Runnable jB;
    private cFZ lY;
    private ZYk mwH;
    private WeakReference<oJ> nQI;
    private int oTd;
    private long ofl;
    private int sH;

    /* renamed from: wd  reason: collision with root package name */
    private final boolean f13077wd;
    private final HL.oJ yz;

    /* loaded from: classes3.dex */
    public interface oJ {
        void ba();

        void oJ(int i10);
    }

    public tB(Context context, ViewGroup viewGroup, cY cYVar, String str, boolean z10, boolean z11, boolean z12, cFZ cfz) {
        super(context, cYVar, viewGroup);
        this.XAo = 0L;
        this.ofl = 0L;
        this.Jm = true;
        this.bgF = 0;
        this.Yg = 0;
        this.LS = new oJ.InterfaceC0135oJ() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1
            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void Pfn(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
                com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so.NTC();
                if (NTC != null && (oJ2 = NTC.oJ()) != null) {
                    oJ2.tB(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).jFA);
                }
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln != null) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln.oJ(1);
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10) {
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void ex(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
                com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so.NTC();
                if (NTC != null && (oJ2 = NTC.oJ()) != null) {
                    oJ2.ZYk(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).jFA);
                }
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, 3);
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln != null) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln.oJ(0);
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, 5);
                            com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, 5);
                            if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln != null) {
                                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln.oJ(9);
                            }
                        } catch (Exception unused) {
                        }
                        tB.this.Rl();
                    }
                });
                com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so.NTC();
                if (NTC == null || (oJ2 = NTC.oJ()) == null) {
                    return;
                }
                oJ2.ex(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).jFA);
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.removeCallbacks(tB.this.jB);
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (tB.this.Qu != null && tB.this.Qu.get() != null) {
                            tB.this.Qu.get();
                        }
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ != null) {
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.ZYk();
                        }
                    }
                });
                if (tB.this.f13077wd) {
                    return;
                }
                tB tBVar = tB.this;
                tBVar.oJ(tBVar.lY);
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, long j10) {
                if (!((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13083oq.get()) {
                    tB.this.IUZ();
                }
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Xe = false;
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.removeCallbacks(tB.this.jB);
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ != null) {
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.ZYk();
                        }
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).awB && tB.this.nQI != null && tB.this.nQI.get() != null) {
                            ((oJ) tB.this.nQI.get()).ba();
                        }
                    }
                });
                tB.this.mu();
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, 0);
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln != null) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln.tB();
                }
                tB tBVar = tB.this;
                tBVar.oJ(tBVar.lY);
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, final com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar2) {
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
                if (cY.ba(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so)) {
                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.5
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            try {
                                oJVar3.ZYk("video_player");
                                oJVar3.ex(HyG.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so));
                                oJVar3.oJ(BuildConfig.VERSION_NAME);
                            } catch (Throwable unused) {
                            }
                            return oJVar3;
                        }
                    });
                }
                String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).oJ;
                oJVar2.oJ();
                oJVar2.ZYk();
                oJVar2.tB();
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        int oJ3 = oJVar2.oJ();
                        int ZYk = oJVar2.ZYk();
                        if (tB.this.HL() && ZYk != -1004) {
                            return;
                        }
                        if (tB.this.ex(oJ3, ZYk)) {
                            String unused2 = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).oJ;
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.oJ2(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, (WeakReference<Context>) null, false);
                            tB.this.ZYk(true);
                            tB.this.Pfn();
                        }
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ != null) {
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.ZYk();
                        }
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).IUZ != null) {
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).IUZ.ZYk(tB.this.ofl, com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).jFA, ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).UN));
                        }
                        if (tB.this.Qu != null && tB.this.Qu.get() != null && !tB.this.HL()) {
                            ((tB.ex) tB.this.Qu.get()).oJ(oJ3, ZYk);
                        }
                    }
                });
                tB.this.oJ(oJVar2);
                com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so.NTC();
                if (NTC != null && (oJ2 = NTC.oJ()) != null) {
                    oJ2.oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.GENERAL_LINEAR_AD_ERROR);
                }
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, 6);
                com.bytedance.sdk.openadsdk.jr.oJ.tB.ZYk(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so);
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln != null) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln.oJ(14);
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, boolean z13) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ != null) {
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.ZYk();
                        }
                    }
                });
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void tB(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10, int i11) {
                jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        tB.this.Qu();
                    }
                });
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10, int i11, int i12) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Xe = true;
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ != null) {
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.si();
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.postDelayed(tB.this.jB, 8000L);
                        }
                    }
                });
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, 2);
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln != null) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln.oJ(4);
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Xe = false;
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.removeCallbacks(tB.this.jB);
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.10
                    @Override // java.lang.Runnable
                    public void run() {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.ZYk();
                    }
                });
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, 0);
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln != null) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).Ln.oJ(5);
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, final long j10, final long j11) {
                if (Math.abs(j10 - ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).jFA) < 50) {
                    return;
                }
                if (!((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13083oq.get()) {
                    tB.this.IUZ();
                }
                tB tBVar = tB.this;
                tBVar.oJ(tBVar.lY);
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        tB.this.oJ(j10, j11);
                        tB.this.ZYk(j10, j11);
                    }
                });
            }
        };
        this.NO = 0;
        this.jB = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.4
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ != null) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.oJ2(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13085so, (WeakReference<Context>) null, false);
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.ZYk();
                    tB.this.ZYk(true);
                    String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).oJ;
                }
            }
        };
        this.yz = new HL.oJ() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.6
            @Override // com.bytedance.sdk.component.utils.HL.oJ
            @WorkerThread
            public void oJ(Context context2, Intent intent, boolean z13, final int i10) {
                ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        tB.this.ba(i10);
                    }
                });
            }
        };
        this.Dex = false;
        this.sH = Ry.tB(context);
        oJ(z10);
        this.HyG = str;
        try {
            this.bgF = viewGroup.getWidth();
            this.Yg = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        oJ(context);
        this.f13077wd = true;
        this.cdg = z11;
        this.Rl = z12;
        if (cfz != null) {
            this.lY = cfz;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ex(int i10, int i11) {
        boolean z10 = i10 == -1010 || i10 == -1007 || i10 == -1004 || i10 == -110 || i10 == 100 || i10 == 200;
        if (i11 == 1 || i11 == 700 || i11 == 800) {
            return true;
        }
        return z10;
    }

    private void Jm() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            if (tBVar.cFZ()) {
                if (this.PiB) {
                    QSm();
                } else {
                    ZYk(this.f13082mu);
                }
            } else {
                this.f13080ba.oJ(false, this.jFA, this.eZI);
            }
        }
        if (this.QSm.get()) {
            Ln();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005c, code lost:
        if (r1 > 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
        r2 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qu() {
        /*
            r8 = this;
            com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk r0 = r8.nQI()     // Catch: java.lang.Throwable -> L6b
            if (r0 == 0) goto L6e
            com.bytedance.sdk.openadsdk.core.BTZ.ex.tB r0 = r8.f13080ba     // Catch: java.lang.Throwable -> L6b
            if (r0 == 0) goto L6e
            android.view.ViewGroup r1 = r8.f13086tb     // Catch: java.lang.Throwable -> L6b
            if (r1 != 0) goto L10
            goto L6e
        L10:
            int r0 = r0.ex()     // Catch: java.lang.Throwable -> L6b
            com.bytedance.sdk.openadsdk.core.BTZ.ex.tB r1 = r8.f13080ba     // Catch: java.lang.Throwable -> L6b
            int r1 = r1.Pfn()     // Catch: java.lang.Throwable -> L6b
            android.view.ViewGroup r2 = r8.f13086tb     // Catch: java.lang.Throwable -> L6b
            int r2 = r2.getWidth()     // Catch: java.lang.Throwable -> L6b
            android.view.ViewGroup r3 = r8.f13086tb     // Catch: java.lang.Throwable -> L6b
            int r3 = r3.getHeight()     // Catch: java.lang.Throwable -> L6b
            if (r2 <= 0) goto L6d
            if (r3 <= 0) goto L6d
            if (r1 <= 0) goto L6d
            if (r0 > 0) goto L2f
            goto L6d
        L2f:
            if (r0 != r1) goto L38
            if (r2 <= r3) goto L36
            r0 = r3
        L34:
            r1 = r0
            goto L54
        L36:
            r0 = r2
            goto L34
        L38:
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r6 = 1065353216(0x3f800000, float:1.0)
            if (r0 <= r1) goto L49
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L6b
            float r0 = r0 * r6
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L6b
            float r0 = r0 / r1
            double r6 = (double) r2     // Catch: java.lang.Throwable -> L6b
            double r6 = r6 * r4
            double r0 = (double) r0     // Catch: java.lang.Throwable -> L6b
            double r6 = r6 / r0
            int r0 = (int) r6     // Catch: java.lang.Throwable -> L6b
            r1 = r2
            goto L54
        L49:
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L6b
            float r1 = r1 * r6
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L6b
            float r1 = r1 / r0
            double r6 = (double) r3     // Catch: java.lang.Throwable -> L6b
            double r6 = r6 * r4
            double r0 = (double) r1     // Catch: java.lang.Throwable -> L6b
            double r6 = r6 / r0
            int r0 = (int) r6     // Catch: java.lang.Throwable -> L6b
            r1 = r0
            r0 = r3
        L54:
            if (r0 > r3) goto L5a
            if (r0 > 0) goto L59
            goto L5a
        L59:
            r3 = r0
        L5a:
            if (r1 > r2) goto L60
            if (r1 > 0) goto L5f
            goto L60
        L5f:
            r2 = r1
        L60:
            com.bytedance.sdk.component.utils.IUZ r0 = r8.tB     // Catch: java.lang.Throwable -> L6b
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB$5 r1 = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB$5     // Catch: java.lang.Throwable -> L6b
            r1.<init>()     // Catch: java.lang.Throwable -> L6b
            r0.post(r1)     // Catch: java.lang.Throwable -> L6b
            return
        L6b:
            r0 = move-exception
            goto L7b
        L6d:
            return
        L6e:
            android.content.Context r0 = r8.dLZ     // Catch: java.lang.Throwable -> L6b
            java.util.Objects.toString(r0)     // Catch: java.lang.Throwable -> L6b
            com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk r0 = r8.nQI()     // Catch: java.lang.Throwable -> L6b
            java.util.Objects.toString(r0)     // Catch: java.lang.Throwable -> L6b
            return
        L7b:
            r0.toString()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.Qu():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Rl() {
        this.NO++;
        Pfn pfn = this.cFZ;
        if (pfn == null) {
            return;
        }
        pfn.ZYk();
        tB.oJ oJVar = this.IUZ;
        if (oJVar != null) {
            oJVar.oJ(this.ofl, com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(this.jFA, this.UN));
        }
        this.ofl = System.currentTimeMillis() - this.XAo;
        if (this.Jm) {
            this.cFZ.oJ2(this.f13085so, (WeakReference<Context>) null, true);
        }
        if (!this.Id) {
            this.Id = true;
            long j10 = this.UN;
            ZYk(j10, j10);
            long j11 = this.UN;
            this.jFA = j11;
            this.kkU = j11;
            ZYk(this.lY);
        }
        if (!this.awB && this.RZ) {
            Pfn(this.cFZ, null);
        }
        this.WcQ = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk nQI() {
        Pfn pfn;
        if (this.dLZ.getResources().getConfiguration().orientation != 1 || (pfn = this.cFZ) == null) {
            return null;
        }
        return pfn.PiB();
    }

    public void HyG() {
        if (this.f13080ba != null) {
            ZYk(false);
            nke();
            this.QSm.set(false);
            this.Id = false;
            oJ(this.lY);
            this.f13080ba.jFA();
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void Pfn() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.BTZ();
            this.f13080ba = null;
        }
        if (this.Jm) {
            if (!"embeded_ad".equals(this.HyG)) {
                this.cFZ.oJ2(this.f13085so, (WeakReference<Context>) null, true);
            } else {
                this.cFZ.QSm();
            }
            this.tB.removeCallbacksAndMessages(null);
            this.BTZ.clear();
            if (this.awB) {
                ofl();
            }
        }
    }

    public void ba(boolean z10) {
        this.Jm = z10;
    }

    public void cFZ(boolean z10) {
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.oJ();
        }
        Pfn pfn2 = this.cFZ;
        if (pfn2 != null && z10) {
            pfn2.Ry();
        }
        Jm();
    }

    public int cdg() {
        return this.oTd;
    }

    public void eZI() {
        if (this.Dex || !this.cY) {
            return;
        }
        Context applicationContext = si.oJ().getApplicationContext();
        this.Dex = true;
        HL.oJ(this.yz, applicationContext);
    }

    public void ofl() {
        if (this.Dex && this.cY) {
            this.Dex = false;
            HL.oJ(this.yz);
        }
    }

    public void wd() {
        com.bytedance.sdk.openadsdk.core.dLZ.ba baVar = this.Ln;
        if (baVar != null) {
            baVar.oJ(13);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ba(int i10) {
        Pfn(i10);
        if (i10 == 4) {
            this.f13084si = false;
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void ex() {
        oJ(true, 3);
    }

    private void tB(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        tBVar.ex(0);
        this.f13080ba.oJ(tBVar);
        this.XAo = System.currentTimeMillis();
        this.cFZ.tB(8);
        this.cFZ.tB(0);
        oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.3
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13080ba == null) {
                    return;
                }
                tB.this.XAo = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).cFZ.ex(0);
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).f13080ba.oJ(true, ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).jFA, ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) tB.this).eZI);
            }
        });
        if (this.awB) {
            eZI();
        }
    }

    public void ex(int i10) {
        this.oTd = i10;
    }

    public void ZYk(int i10, int i11) {
        oJ(i10, i11);
        Pfn pfn = this.cFZ;
        if (pfn == null || i10 <= 0 || i11 <= 0) {
            return;
        }
        pfn.tB(i10, i11);
        this.cFZ.oJ(i10, i11);
        Qu();
    }

    public void oJ(final ba.oJ oJVar) {
        Pfn pfn;
        if (!this.awB || (pfn = this.cFZ) == null) {
            return;
        }
        pfn.oJ(new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.2
            @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.oJ
            public void oJ(View view, int i10) {
                ba.oJ oJVar2 = oJVar;
                if (oJVar2 != null) {
                    oJVar2.oJ(view, i10);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(long j10, long j11) {
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
        this.f13085so.tB(j10);
        this.jFA = j10;
        this.UN = j11;
        this.cFZ.oJ(j10, j11);
        this.cFZ.oJ(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(j10, j11));
        try {
            tB.oJ oJVar = this.IUZ;
            if (oJVar != null) {
                oJVar.oJ(j10, j11);
            }
        } catch (Throwable th2) {
            QSm.oJ(this.oJ, "onProgressUpdate error: ", th2);
        }
        com.bytedance.sdk.openadsdk.core.model.ex NTC = this.f13085so.NTC();
        if (NTC == null || (oJ2 = NTC.oJ()) == null) {
            return;
        }
        oJ2.oJ(j10, j11, this.Ln);
    }

    public void oJ(PAGNativeAd pAGNativeAd) {
        Pfn pfn;
        if (!this.awB || (pfn = this.cFZ) == null) {
            return;
        }
        pfn.oJ(pAGNativeAd);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void tB() {
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.oJ();
        }
        Pfn pfn2 = this.cFZ;
        if (pfn2 != null) {
            pfn2.Ry();
        }
        Jm();
    }

    private void Pfn(int i10) {
        if (this.sH == i10) {
            return;
        }
        this.sH = i10;
        if (i10 != 4 && i10 != 0) {
            this.Ry = false;
        }
        if (!this.Ry && !PiB() && this.cdg) {
            tB(2, i10);
        }
        WeakReference<oJ> weakReference = this.nQI;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.nQI.get().oJ(this.sH);
    }

    public void oJ(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return;
        }
        this.bgF = i10;
        this.Yg = i11;
    }

    public void oJ(ZYk zYk) {
        this.mwH = zYk;
    }

    private void oJ(Context context) {
        ViewGroup piB;
        if (this.awB) {
            piB = new WcQ(context);
        } else {
            piB = new PiB(context);
        }
        ViewGroup viewGroup = piB;
        if (this.awB) {
            this.cFZ = new Pfn(context, viewGroup, true, 17, this.f13085so, this, Id());
        } else {
            this.cFZ = new ex(context, viewGroup, true, 17, this.f13085so, this, false);
        }
        this.cFZ.oJ(this);
    }

    private boolean tB(int i10, int i11) {
        if (i11 == 0) {
            ZYk();
            this.f13084si = true;
            Pfn pfn = this.cFZ;
            if (pfn != null) {
                pfn.oJ2(this.f13085so, (WeakReference<Context>) null, false);
            }
        }
        if (i11 != 4 && i11 != 0) {
            Pfn pfn2 = this.cFZ;
            if (pfn2 != null) {
                pfn2.oJ();
            }
            ZYk();
            this.f13084si = true;
            this.Ry = false;
            Pfn pfn3 = this.cFZ;
            if (pfn3 != null) {
                return pfn3.oJ(i10, this.f13085so.ib(), this.Rl);
            }
        } else if (i11 == 4) {
            this.f13084si = false;
            Pfn pfn4 = this.cFZ;
            if (pfn4 != null) {
                pfn4.awB();
            }
        }
        return true;
    }

    public com.bytedance.sdk.openadsdk.core.dLZ.ba oJ(View view, List<Pair<View, FriendlyObstructionPurpose>> list) {
        if (this.f13085so.SzJ()) {
            if (this.Ln == null) {
                this.Ln = com.bytedance.sdk.openadsdk.core.dLZ.ba.oJ();
            }
            this.Ln.oJ(view, this.f13085so);
            if (list != null && list.size() > 0) {
                for (Pair<View, FriendlyObstructionPurpose> pair : list) {
                    if (pair != null) {
                        Object obj = pair.second;
                        this.Ln.oJ((View) pair.first, obj == null ? FriendlyObstructionPurpose.OTHER : (FriendlyObstructionPurpose) obj);
                    }
                }
            }
            return this.Ln;
        }
        return null;
    }

    public void tB(int i10) {
        Pfn(i10);
        if (i10 == 4) {
            this.f13084si = false;
            tB();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ
    public void oJ(tB.ex exVar) {
        this.Qu = new WeakReference<>(exVar);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.jFA();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        super.oJ(tBVar);
        if (this.f13080ba != null) {
            ApmHelper.reportCustomError("", "twice playVideoUrl", new IllegalStateException());
            return true;
        } else if (TextUtils.isEmpty(tBVar.eZI())) {
            return false;
        } else {
            ZYk(false);
            tBVar.eZI();
            tBVar.ZYk(com.bytedance.sdk.openadsdk.oq.oJ.oJ("player_force_raw_url", 0) == 1);
            int i10 = this.oTd + 1;
            this.oTd = i10;
            tBVar.Pfn = i10;
            ZYk(tBVar);
            nke();
            com.bytedance.sdk.openadsdk.core.dLZ.ba baVar = this.Ln;
            if (baVar != null) {
                baVar.oJ(false, 0.0f);
            }
            if (!jr.ZYk(this.HyG) || this.jFA <= 0) {
                this.jFA = tBVar.kkU();
            }
            if (jr.ZYk(this.HyG) && this.jFA == this.UN) {
                this.jFA = 0L;
            }
            if (tBVar.kkU() <= 0) {
                this.Id = false;
                this.QSm.set(false);
            } else {
                long kkU = tBVar.kkU();
                this.jFA = kkU;
                this.kkU = Math.max(this.kkU, kkU);
            }
            Pfn pfn = this.cFZ;
            if (pfn != null) {
                pfn.oJ();
                if (this.NO == 0) {
                    this.cFZ.cFZ();
                }
                this.cFZ.tB(tBVar.so(), tBVar.jFA());
                this.cFZ.tB(this.f13086tb);
                this.cFZ.oJ(tBVar.so(), tBVar.jFA());
            }
            if (this.f13080ba == null) {
                com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.BTZ.ex.tB();
                this.f13080ba = tBVar2;
                tBVar2.oJ(this.LS);
            }
            Ry();
            this.ofl = 0L;
            try {
                tB(tBVar);
                return true;
            } catch (Exception e10) {
                oJ(new com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(-10, 0, e10.getMessage()));
                QSm.tB(this.oJ, "[video] invoke NativeVideoController#playVideo cause exception :".concat(String.valueOf(e10)));
                return false;
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(boolean z10, int i10) {
        if (!this.Id && this.QSm.get()) {
            if (z10) {
                oJ(i10, false);
                this.Id = false;
            } else {
                LpP();
            }
        }
        Pfn();
        com.bytedance.sdk.openadsdk.core.dLZ.ba baVar = this.Ln;
        if (baVar != null) {
            baVar.ex();
        }
    }

    public final void oJ(int i10, boolean z10) {
        if (z10 || this.Jc) {
            if (z10) {
                this.Jc = false;
            }
            if (this.Id || !this.QSm.get()) {
                return;
            }
            awB.oJ oJVar = new awB.oJ();
            oJVar.ZYk(ba());
            oJVar.ex(jFA());
            oJVar.tB(cFZ());
            oJVar.tB(i10);
            oJVar.ex(so());
            oJVar.tB(this.LpP);
            com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(this.cFZ, oJVar, this.lY);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view) {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar == null) {
            return;
        }
        if (tBVar.ba()) {
            ZYk();
            this.cFZ.ZYk(true, false);
            this.cFZ.ba();
        } else if (!this.f13080ba.cFZ()) {
            Pfn pfn = this.cFZ;
            if (pfn != null) {
                pfn.tB(this.f13086tb);
            }
            Pfn(this.jFA);
            Pfn pfn2 = this.cFZ;
            if (pfn2 != null) {
                pfn2.ZYk(false, false);
            }
        } else {
            cFZ(false);
            Pfn pfn3 = this.cFZ;
            if (pfn3 != null) {
                pfn3.ZYk(false, false);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view, boolean z10) {
        tB(!this.RZ);
        if (this.dLZ instanceof Activity) {
            Pfn pfn = this.cFZ;
            if (pfn != null) {
                pfn.ZYk(this.f13086tb);
                this.cFZ.tB(false);
            }
            oJ(1);
            WeakReference<tB.ZYk> weakReference = this.HL;
            tB.ZYk zYk2 = weakReference != null ? weakReference.get() : null;
            if (zYk2 != null) {
                zYk2.oJ(this.RZ);
            }
        }
    }

    public void oJ(oJ oJVar) {
        this.nQI = new WeakReference<>(oJVar);
    }
}
