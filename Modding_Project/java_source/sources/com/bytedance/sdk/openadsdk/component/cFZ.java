package com.bytedance.sdk.openadsdk.component;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.component.ba;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.QSm;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.HL;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.nke;
import com.bytedance.sdk.openadsdk.core.oq;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.wd;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class cFZ implements IUZ.oJ {
    private final Id<com.bytedance.sdk.openadsdk.ex.oJ> ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private AdSlot f12977ba;
    private PAGAppOpenAdLoadListener cFZ;
    private final Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12978so;
    private final ba tB;
    private final AtomicBoolean ex = new AtomicBoolean(false);
    private int Pfn = 0;
    private volatile int jFA = 0;
    private final nke kkU = new nke();

    public cFZ(Context context) {
        if (context != null) {
            this.oJ = context.getApplicationContext();
        } else {
            this.oJ = si.oJ();
        }
        this.ZYk = si.tB();
        this.tB = ba.oJ(this.oJ);
    }

    private void ZYk(@NonNull AdSlot adSlot) {
        this.jFA = 1;
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            tB(adSlot);
        } else {
            ex(adSlot);
        }
    }

    private void ex(final AdSlot adSlot) {
        final wd ZYk = wd.ZYk();
        HL hl2 = new HL();
        hl2.dLZ = this.kkU;
        hl2.ex = 1;
        hl2.jFA = 2;
        this.ZYk.oJ(adSlot, hl2, 3, new Id.oJ() { // from class: com.bytedance.sdk.openadsdk.component.cFZ.2
            @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(int i10, String str) {
                cFZ.this.jFA = 3;
                cFZ.this.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(2, 100, i10, str));
            }

            @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                cFZ.this.oJ(oJVar, tBVar, adSlot, ZYk);
            }
        });
    }

    private void tB(final AdSlot adSlot) {
        final wd ZYk = wd.ZYk();
        HL hl2 = new HL();
        hl2.dLZ = this.kkU;
        hl2.ex = 1;
        hl2.jFA = 2;
        this.ZYk.oJ(adSlot, hl2, 3, (QSm) new oq() { // from class: com.bytedance.sdk.openadsdk.component.cFZ.1
            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(int i10, String str) {
                cFZ.this.jFA = 3;
                cFZ.this.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(2, 100, i10, str));
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                cFZ.this.oJ(oJVar, tBVar, adSlot, ZYk);
            }
        });
    }

    public static cFZ oJ(Context context) {
        return new cFZ(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk() {
        final wd ZYk = wd.ZYk();
        HL hl2 = new HL();
        hl2.dLZ = this.kkU;
        hl2.ex = 1;
        hl2.jFA = 2;
        this.jFA = 1;
        this.ZYk.oJ(this.f12977ba, hl2, 3, (QSm) new oq() { // from class: com.bytedance.sdk.openadsdk.component.cFZ.5
            boolean oJ = false;

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.QSm
            public String oJ() {
                return cFZ.this.tB.tB(cFZ.this.Pfn);
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.QSm
            public boolean oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
                cY ba2;
                if (oJVar != null && oJVar.Pfn() && (ba2 = oJVar.ba()) != null) {
                    boolean Pfn = cY.Pfn(ba2);
                    if (!ba2.Xe() && Pfn) {
                        if (TextUtils.isEmpty(cFZ.this.tB.oJ(ba2))) {
                            this.oJ = false;
                            com.bytedance.sdk.openadsdk.component.ex.oJ.ZYk(oJVar.ba());
                        } else {
                            this.oJ = true;
                        }
                    } else {
                        this.oJ = true;
                    }
                    com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.oJ(ba2);
                }
                return this.oJ;
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(int i10, String str) {
                cFZ.this.jFA = 3;
                cFZ.this.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(2, 100, i10, str));
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                if (this.oJ) {
                    cFZ.this.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 101, oJVar.ba(), (com.bytedance.sdk.openadsdk.core.model.oJ) null));
                    return;
                }
                cFZ cfz = cFZ.this;
                cfz.oJ(oJVar, tBVar, cfz.f12977ba, ZYk);
            }
        });
    }

    public void oJ(@NonNull AdSlot adSlot, com.bytedance.sdk.openadsdk.common.ba baVar, int i10) {
        if (baVar == null) {
            return;
        }
        if (i10 <= 0) {
            i10 = 3500;
        }
        this.f12977ba = adSlot;
        this.kkU.oJ = !TextUtils.isEmpty(adSlot.getBidAdm());
        if (baVar instanceof PAGAppOpenAdLoadListener) {
            this.cFZ = (PAGAppOpenAdLoadListener) baVar;
        }
        this.Pfn = oJ(this.f12977ba);
        this.f12978so = i10;
        this.kkU.oJ(wd.ZYk());
        if (this.kkU.oJ) {
            ZYk(this.f12977ba);
            return;
        }
        new IUZ(WcQ.ZYk().getLooper(), this).sendEmptyMessageDelayed(1, i10);
        oJ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        cY ex = this.tB.ex(this.Pfn);
        if (ex != null) {
            if (ex.BHY() == null) {
                ex.oJ(this.f12977ba);
            }
            com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.oJ(ex);
            boolean Pfn = cY.Pfn(ex);
            if (!ex.Xe() && Pfn) {
                if (TextUtils.isEmpty(this.tB.oJ(ex))) {
                    oJ(false);
                    com.bytedance.sdk.openadsdk.component.ex.oJ.ZYk(ex);
                    return;
                }
                oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 101, ex, (com.bytedance.sdk.openadsdk.core.model.oJ) null));
                return;
            }
            oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 101, ex, (com.bytedance.sdk.openadsdk.core.model.oJ) null));
            return;
        }
        oJ(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar, AdSlot adSlot, wd wdVar) {
        this.jFA = 2;
        if (oJVar != null && oJVar.ex() != null && oJVar.ex().size() != 0) {
            final cY cYVar = oJVar.ex().get(0);
            long mwH = cYVar.mwH();
            this.kkU.ZYk = mwH;
            boolean cFZ = cY.cFZ(cYVar);
            if (cYVar.Xe()) {
                oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar));
                return;
            } else if (!cFZ && !cYVar.cMS()) {
                if (cY.Pfn(cYVar)) {
                    int kkU = si.ex().kkU();
                    if (kkU != 1 && kkU != 3) {
                        oJ(cYVar, adSlot, !this.kkU.oJ, oJVar);
                        if (this.kkU.oJ) {
                            com.bytedance.sdk.openadsdk.awB.tB.oJ(cYVar, wdVar.ex());
                            if (mwH == 0) {
                                this.kkU.oJ(2);
                                oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar));
                                return;
                            }
                            WcQ.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.cFZ.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    cFZ.this.kkU.oJ(2);
                                    cFZ.this.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar));
                                }
                            }, mwH);
                            return;
                        }
                        return;
                    }
                    nke nkeVar = this.kkU;
                    nkeVar.ZYk = -1L;
                    nkeVar.oJ(3);
                    oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar));
                    oJ(cYVar, adSlot, false, oJVar);
                    return;
                }
                nke nkeVar2 = this.kkU;
                nkeVar2.ZYk = -1L;
                nkeVar2.oJ(3);
                oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar));
                oJ(cYVar, false, oJVar);
                return;
            } else {
                oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar));
                if (cY.Pfn(cYVar)) {
                    oJ(cYVar, adSlot, false, oJVar);
                    return;
                } else {
                    oJ(cYVar, false, oJVar);
                    return;
                }
            }
        }
        this.jFA = 3;
        oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(2, 100, 20001, so.oJ(20001)));
        tBVar.oJ(-3);
        tBVar.tB(3);
        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
    }

    private void oJ() {
        ofl.ZYk(new com.bytedance.sdk.component.so.so("tryGetAppOpenAdFromCache") { // from class: com.bytedance.sdk.openadsdk.component.cFZ.4
            @Override // java.lang.Runnable
            public void run() {
                if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
                    cFZ.this.ZYk();
                } else {
                    cFZ.this.tB();
                }
            }
        });
    }

    private void oJ(boolean z10) {
        if (z10) {
            this.tB.ba(this.Pfn);
        }
        ZYk(this.f12977ba);
    }

    private void oJ(@NonNull final cY cYVar, AdSlot adSlot, final boolean z10, final com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        this.tB.oJ(cYVar, adSlot, this.kkU, new ba.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.cFZ.6
            @Override // com.bytedance.sdk.openadsdk.component.ba.ZYk
            public void oJ() {
                Log.d("TTAppOpenAdLoadManager", "preLoadSuccess: video load success");
                if (z10) {
                    cFZ.this.jFA = 4;
                    com.bytedance.sdk.openadsdk.component.Pfn.ZYk zYk = new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar);
                    zYk.oJ(true);
                    cFZ.this.oJ(zYk);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.ba.ZYk
            public void oJ(int i10, String str) {
                if (z10) {
                    cFZ.this.jFA = 5;
                    cFZ.this.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(2, 100, 10003, so.oJ(10003)));
                }
            }
        });
    }

    private void oJ(@NonNull final cY cYVar, final boolean z10, final com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        this.tB.oJ(cYVar, this.kkU, new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.component.cFZ.7
            @Override // com.bytedance.sdk.openadsdk.component.ba.oJ
            public void oJ(com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk) {
                Log.d("TTAppOpenAdLoadManager", "preLoadSuccess: image load success");
                if (z10) {
                    cFZ.this.jFA = 4;
                    com.bytedance.sdk.openadsdk.component.Pfn.ZYk zYk2 = new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(1, 100, cYVar, oJVar);
                    zYk2.oJ(true);
                    cFZ.this.oJ(zYk2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.ba.oJ
            public void oJ() {
                Log.d("TTAppOpenAdLoadManager", "preLoadFail: image load fail");
                if (z10) {
                    cFZ.this.jFA = 5;
                    cFZ.this.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(2, 100, 10003, so.oJ(10003)));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.component.Pfn.ZYk zYk) {
        int ZYk = zYk.ZYk();
        int tB = zYk.tB();
        if (this.ex.get()) {
            return;
        }
        if (ZYk != 1) {
            if (ZYk == 2 || ZYk == 3) {
                PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener = this.cFZ;
                if (pAGAppOpenAdLoadListener != null) {
                    pAGAppOpenAdLoadListener.onError(zYk.Pfn(), zYk.ba());
                }
                this.ex.set(true);
                if (ZYk == 3) {
                    com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(this.jFA, this.f12978so);
                    return;
                }
                return;
            }
            return;
        }
        if (tB == 100 && !this.kkU.oJ) {
            this.tB.oJ(new com.bytedance.sdk.openadsdk.component.Pfn.oJ(this.Pfn, zYk.ex(), zYk.oJ()));
        }
        if (this.cFZ != null) {
            this.cFZ.onAdLoaded(new ex(this.oJ, zYk.ex(), tB == 101, this.f12977ba));
        }
        this.ex.set(true);
        if (tB == 101) {
            com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(zYk.ex(), this.kkU.oJ().ex());
        } else if (tB == 100) {
            com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(zYk.ex(), 0, this.kkU);
        }
    }

    public int oJ(@NonNull AdSlot adSlot) {
        try {
            return Integer.parseInt(adSlot.getCodeId());
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message.what != 1 || this.ex.get()) {
            return;
        }
        oJ(new com.bytedance.sdk.openadsdk.component.Pfn.ZYk(3, 102, 10002, so.oJ(10002)));
    }
}
