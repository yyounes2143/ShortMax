package com.bytedance.sdk.openadsdk.core.BTZ.ex;

import android.content.Context;
import android.text.TextUtils;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.jFA;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.WcQ.WcQ;
import com.bytedance.sdk.openadsdk.core.BTZ.ex.tB;
import com.bytedance.sdk.openadsdk.core.dLZ.ba;
import com.bytedance.sdk.openadsdk.core.dLZ.ex;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.cFZ;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ {
    private final cFZ HyG;
    private boolean Jm;
    private final int Qu;
    private long Rl;
    protected long XAo;
    private InterfaceC0200oJ Yg;
    private final Runnable bgF;
    private long cdg;
    private final AtomicBoolean nQI;
    protected boolean ofl;

    /* renamed from: wd  reason: collision with root package name */
    final tB.ZYk f13078wd;

    /* renamed from: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements tB.ZYk {
        private boolean ZYk = true;

        AnonymousClass1() {
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void Pfn(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 0);
            if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln != null) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln.oJ(1);
            }
            if (oJ.this.Yg != null) {
                oJ.this.Yg.oJ(1);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10) {
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void ex(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            ex oJ;
            com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so.NTC();
            if (NTC != null && (oJ = NTC.oJ()) != null) {
                oJ.ZYk(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).jFA);
            }
            Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 3);
            if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln != null) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln.oJ(0);
            }
            if (oJ.this.Yg != null) {
                oJ.this.Yg.oJ(2);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            ex oJ;
            if (oJ.this.nQI.compareAndSet(false, true)) {
                String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln != null) {
                            try {
                                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln.oJ(9);
                            } catch (Exception unused2) {
                            }
                        }
                        oJ.this.bgF();
                    }
                });
                com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so.NTC();
                if (NTC != null && (oJ = NTC.oJ()) != null) {
                    long ba2 = oJ.this.ba();
                    oJ.ex(ba2);
                    oJ.Pfn(ba2);
                }
                Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 5);
                com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 5);
                if (oJ.this.Yg != null) {
                    oJ.this.Yg.oJ(3);
                }
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void tB(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.removeCallbacks(oJ.this.bgF);
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.4
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.ZYk();
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, long j10) {
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
            if (!((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).QSm.get()) {
                oJ.this.IUZ();
            }
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Xe = false;
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.removeCallbacks(oJ.this.bgF);
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.3
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.ZYk();
                    }
                }
            });
            if (!((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).QSm.get()) {
                oJ oJVar2 = oJ.this;
                oJVar2.XAo = j10;
                oJVar2.oJ(oJVar2.HyG);
                oJ.this.mu();
            }
            if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln != null) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln.tB();
            }
            Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 0);
            if (oJ.this.Yg != null) {
                oJ.this.Yg.oJ(1);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar2) {
            ex oJ;
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
            oJVar2.oJ();
            oJVar2.ZYk();
            oJVar2.tB();
            if (cY.ba(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so)) {
                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.5
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        try {
                            oJVar3.ZYk("video_player");
                            oJVar3.ex(HyG.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so));
                            oJVar3.oJ(BuildConfig.VERSION_NAME);
                        } catch (Throwable unused2) {
                        }
                        return oJVar3;
                    }
                });
            }
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.removeCallbacks(oJ.this.bgF);
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.6
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.ZYk();
                    }
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).IUZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).IUZ.ZYk(oJ.this.Rl, com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).jFA, ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).UN));
                    }
                }
            });
            oJ.this.oJ(oJVar2);
            Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 6);
            com.bytedance.sdk.openadsdk.jr.oJ.tB.ZYk(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so);
            if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln != null) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln.oJ(14);
            }
            if (oJ.this.Yg != null) {
                oJ.this.Yg.oJ(4);
            }
            com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so.NTC();
            if (NTC == null || (oJ = NTC.oJ()) == null) {
                return;
            }
            oJ.oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.GENERAL_LINEAR_AD_ERROR);
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, boolean z10) {
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.removeCallbacks(oJ.this.bgF);
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.7
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.ZYk();
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10, int i11) {
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
            jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.8
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13080ba == null) {
                        return;
                    }
                    try {
                        final float ex = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13080ba.ex();
                        final float Pfn = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13080ba.Pfn();
                        if (ex != 0.0f && Pfn != 0.0f) {
                            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.8.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!oJ.this.Yg()) {
                                        oJ.this.oJ(ex, Pfn);
                                    } else if (!QSm.ZYk(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so) && ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13081jr.f13079ba != 4) {
                                        if (QSm.tB(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so)) {
                                            oJ.this.oJ(true, ex, Pfn);
                                        } else if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so.bD() == 3) {
                                            oJ.this.oJ(true, ex, Pfn);
                                        } else if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so.bD() != 0) {
                                            oJ.this.ZYk(ex, Pfn);
                                        } else {
                                            oJ.this.tB(ex, Pfn);
                                        }
                                    } else {
                                        oJ.this.oJ(true, ex, Pfn);
                                    }
                                }
                            });
                        }
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.QSm.tB(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ, th2.getMessage());
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10, int i11, int i12) {
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Xe = true;
            oJ.this.nQI();
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.9
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.si();
                    }
                }
            });
            Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 3);
            if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln != null) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln.oJ(4);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10) {
            String unused = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ;
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Xe = false;
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.removeCallbacks(oJ.this.bgF);
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.10
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.ZYk();
                    }
                }
            });
            Pfn.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so, 0);
            if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln != null) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln.oJ(5);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(final com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, long j10, long j11) {
            ex oJ;
            if (Math.abs(j10 - ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).jFA) < 50) {
                return;
            }
            if (!((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).QSm.get()) {
                oJ.this.IUZ();
            }
            oJ oJVar2 = oJ.this;
            oJVar2.oJ(oJVar2.HyG);
            oJ.this.oJ(j10, j11);
            oJ.this.ZYk(j10, j11);
            com.bytedance.sdk.openadsdk.core.model.ex NTC = ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so.NTC();
            if (NTC != null && (oJ = NTC.oJ()) != null) {
                oJ.oJ(j10, j11, ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).Ln);
            }
            if (!this.ZYk || j11 - j10 >= 500) {
                return;
            }
            this.ZYk = false;
            ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).tB.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.1.2
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.oJ(oJVar);
                }
            }, 1000L);
        }

        @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.tB.ZYk
        public void oJ(int i10, int i11) {
            oJ.this.Jm();
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0200oJ {
        void oJ(int i10);
    }

    public oJ(Context context, ViewGroup viewGroup, cY cYVar, cFZ cfz) {
        super(context, cYVar, viewGroup);
        this.cdg = 0L;
        this.Rl = 0L;
        this.Jm = false;
        this.XAo = 0L;
        this.ofl = false;
        this.nQI = new AtomicBoolean(false);
        this.f13078wd = new AnonymousClass1();
        this.bgF = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.4
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).IUZ != null) {
                    oJ.this.eZI();
                    ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).IUZ.oJ();
                }
            }
        };
        this.HyG = cfz;
        this.Qu = cYVar.uv();
        if (cYVar.SzJ() && this.f13086tb != null) {
            if (this.Ln == null) {
                this.Ln = ba.oJ();
            }
            this.Ln.oJ(this.f13086tb, cYVar);
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn(context.getApplicationContext(), new WcQ(context), true, 17, this.f13085so, this);
        this.cFZ = pfn;
        pfn.oJ(this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ
    public boolean Xe() {
        return true;
    }

    protected void eZI() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Jm() {
        ZYk(this.HyG);
        this.f13081jr.Pfn = this.f13080ba.oq();
        if (cY.ba(this.f13085so)) {
            com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.2
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    try {
                        oJVar.ZYk("video_player");
                        oJVar.ex(HyG.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13085so));
                        oJVar.oJ(BuildConfig.VERSION_NAME);
                    } catch (Throwable unused) {
                    }
                    return oJVar;
                }
            });
        }
        nke();
        this.QSm.set(false);
        this.nQI.set(false);
        oJ(this.HyG);
    }

    private void Qu() {
        this.f13080ba.tB(Jc());
        this.f13080ba.oJ(this.f13081jr);
        this.cdg = System.currentTimeMillis();
        this.cFZ.tB(8);
        this.cFZ.tB(0);
        oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13080ba == null) {
                    return;
                }
                oJ.this.cdg = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.ex(0);
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).f13080ba.oJ(true, ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).jFA, ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).eZI);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Yg() {
        return this.f13085so.dzr() == 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bgF() {
        if (this.cFZ == null) {
            return;
        }
        this.tB.removeCallbacks(this.bgF);
        this.cFZ.ZYk();
        this.Rl = System.currentTimeMillis() - this.cdg;
        if (!this.Jm) {
            this.Jm = true;
            long j10 = this.UN;
            ZYk(j10, j10);
            long j11 = this.UN;
            this.jFA = j11;
            this.kkU = j11;
            ZYk(this.HyG);
        }
        tB.oJ oJVar = this.IUZ;
        if (oJVar != null) {
            oJVar.oJ(this.Rl, com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(this.jFA, this.UN));
        }
        this.WcQ = true;
    }

    private boolean lY() {
        return HyG() == null || this.f13080ba == null || (!com.bytedance.sdk.openadsdk.core.kkU.ex.oJ(this.f13085so.uvK()) ? this.f13085so.PdF() != null : this.f13085so.BWx() != null) || this.f13085so.EP() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nQI() {
        int ofl;
        int i10 = this.f13081jr.f13079ba;
        if (i10 != 2 && i10 != 1) {
            ofl = i10 == 4 ? si.ex().so(String.valueOf(this.Qu)) : 5000;
        } else {
            ofl = si.ex().ofl() * 1000;
        }
        this.tB.removeCallbacks(this.bgF);
        this.tB.postDelayed(this.bgF, ofl);
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk HyG() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn = this.cFZ;
        if (pfn != null) {
            return pfn.PiB();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void Pfn() {
        ex();
    }

    public void Rl() {
        ba baVar = this.Ln;
        if (baVar != null) {
            baVar.oJ(13);
        }
    }

    public void cdg() {
        ba baVar = this.Ln;
        if (baVar != null) {
            baVar.oJ(2);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void ex() {
        tB tBVar = this.f13080ba;
        if (tBVar == null) {
            return;
        }
        tBVar.BTZ();
        this.f13080ba = null;
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.jFA();
        }
        this.tB.removeCallbacks(this.bgF);
        this.tB.removeCallbacksAndMessages(null);
        ba baVar = this.Ln;
        if (baVar != null) {
            baVar.ex();
        }
    }

    public void ofl() {
        this.f13078wd.oJ((com.bykv.vk.openvk.oJ.oJ.oJ.oJ) null, 0, 0);
    }

    public void wd() {
        ex oJ;
        if (this.Jm || !this.QSm.get()) {
            return;
        }
        Ln();
        com.bytedance.sdk.openadsdk.core.model.ex NTC = this.f13085so.NTC();
        if (NTC == null || (oJ = NTC.oJ()) == null) {
            return;
        }
        oJ.tB(ba());
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void tB() {
        ex oJ;
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.oJ();
            this.cFZ.awB();
            this.cFZ.Ry();
        }
        tB tBVar = this.f13080ba;
        if (tBVar != null) {
            if (tBVar.cFZ()) {
                if (this.PiB) {
                    if (com.bytedance.sdk.openadsdk.core.jFA.Id()) {
                        this.f13080ba.ZYk(3);
                        tB tBVar2 = this.f13080ba;
                        tBVar2.oJ(false, tBVar2.Ry(), this.eZI);
                    } else {
                        QSm();
                    }
                } else {
                    ZYk(this.f13082mu);
                }
            } else {
                this.f13080ba.oJ(false, this.jFA, this.eZI);
            }
        }
        if (this.Jm || !this.QSm.get()) {
            return;
        }
        Ln();
        com.bytedance.sdk.openadsdk.core.model.ex NTC = this.f13085so.NTC();
        if (NTC == null || (oJ = NTC.oJ()) == null) {
            return;
        }
        oJ.tB(ba());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(float f10, float f11) {
        try {
            Objects.toString(this.f13085so.BHY());
            if (lY()) {
                return;
            }
            int[] ZYk = cdg.ZYk(si.oJ());
            boolean z10 = false;
            boolean z11 = this.f13085so.Tt() == 1;
            float f12 = ZYk[0];
            float f13 = ZYk[1];
            if (z11) {
                if (f10 > f11) {
                    oJ(f12, f13, f10, f11, true);
                    return;
                }
            } else if (f10 < f11) {
                oJ(f12, f13, f10, f11, false);
                return;
            }
            float f14 = f10 / f11;
            float f15 = f12 / f13;
            if (z11) {
                if (f15 < 0.5625f && f14 == 0.5625f) {
                    f10 = (9.0f * f13) / 16.0f;
                    z10 = true;
                    f11 = f13;
                }
            } else if (f15 > 1.7777778f && f14 == 1.7777778f) {
                f11 = (9.0f * f12) / 16.0f;
                z10 = true;
                f10 = f12;
            }
            if (z10) {
                f12 = f10;
                f13 = f11;
            }
            int i10 = (int) f12;
            int i11 = (int) f13;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i10, i11);
            layoutParams.addRule(13);
            if (HyG() != null) {
                if (HyG() instanceof TextureView) {
                    ((TextureView) HyG()).setLayoutParams(layoutParams);
                } else if (HyG() instanceof SurfaceView) {
                    ((SurfaceView) HyG()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.f13086tb.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.height = i11;
                    layoutParams2.width = i10;
                    this.f13086tb.setLayoutParams(layoutParams2);
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ(this.oJ, "changeSize error", th2);
        }
    }

    protected void oJ(boolean z10, float f10, float f11) {
        try {
            Objects.toString(this.f13085so.BHY());
            if (!lY() || z10) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f10, (int) f11);
                layoutParams.addRule(13);
                if (HyG() != null) {
                    if (HyG() instanceof TextureView) {
                        ((TextureView) HyG()).setLayoutParams(layoutParams);
                    } else if (HyG() instanceof SurfaceView) {
                        ((SurfaceView) HyG()).setLayoutParams(layoutParams);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.f13086tb.getLayoutParams();
                    if (this.f13086tb.getHeight() > 0) {
                        float min = Math.min(this.f13086tb.getWidth() / f10, this.f13086tb.getHeight() / f11);
                        if (layoutParams2 != null) {
                            layoutParams.width = (int) (f10 * min);
                            layoutParams.height = (int) (f11 * min);
                            if (HyG() instanceof TextureView) {
                                ((TextureView) HyG()).setLayoutParams(layoutParams);
                            } else if (HyG() instanceof SurfaceView) {
                                ((SurfaceView) HyG()).setLayoutParams(layoutParams);
                            }
                            if (this.f13081jr.f13079ba == 4) {
                                layoutParams2.width = layoutParams.width;
                                layoutParams2.height = layoutParams.height;
                                this.f13086tb.setLayoutParams(layoutParams2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ(this.oJ, "changeSize error", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(float f10, float f11) {
        try {
            if (HyG() != null && this.f13080ba != null) {
                boolean z10 = this.f13085so.Tt() == 1;
                int[] ZYk = cdg.ZYk(si.oJ());
                oJ(ZYk[0], ZYk[1], f10, f11, z10);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(final long j10, final long j11) {
        this.f13085so.tB(j10);
        this.jFA = j10;
        this.UN = j11;
        final int oJ = com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(j10, j11);
        this.tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.5
            @Override // java.lang.Runnable
            public void run() {
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.oJ(j10, j11);
                ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).cFZ.oJ(oJ);
                try {
                    if (((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).IUZ != null) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).IUZ.oJ(j10, j11);
                    }
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.oJ(((com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ) oJ.this).oJ, "onProgressUpdate error: ", th2);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean oJ(@NonNull com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        int HUl;
        View view;
        super.oJ(tBVar);
        if (this.f13080ba != null) {
            return false;
        }
        tBVar.eZI();
        if (TextUtils.isEmpty(tBVar.eZI())) {
            return false;
        }
        tBVar.ZYk(com.bytedance.sdk.openadsdk.oq.oJ.oJ("player_force_raw_url", 0) == 1);
        ZYk(tBVar);
        tBVar.ex(1);
        this.ofl = !tBVar.eZI().startsWith(ProxyConfig.MATCH_HTTP);
        if (this.Ln != null) {
            if (this.f13081jr.f13079ba == 1) {
                HUl = this.f13085so.xwf();
            } else {
                HUl = this.f13085so.HUl();
            }
            ViewGroup viewGroup = this.f13086tb;
            if (viewGroup != null && (view = (View) viewGroup.getParent()) != null) {
                try {
                    View findViewById = view.findViewById(eZI.BTZ);
                    View findViewById2 = view.findViewById(eZI.jA);
                    ba baVar = this.Ln;
                    FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                    baVar.oJ(findViewById2, friendlyObstructionPurpose);
                    this.Ln.oJ(findViewById, friendlyObstructionPurpose);
                } catch (Throwable unused) {
                }
            }
            this.Ln.oJ(HUl > 0, HUl / 1000.0f);
        }
        nke();
        if (tBVar.kkU() > 0) {
            long kkU = tBVar.kkU();
            this.jFA = kkU;
            this.kkU = Math.max(this.kkU, kkU);
        }
        if (this.jFA == this.UN) {
            this.jFA = 0L;
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.oJ();
            this.cFZ.cFZ();
            this.cFZ.tB(tBVar.so(), tBVar.jFA());
            this.cFZ.tB(this.f13086tb);
        }
        tB tBVar2 = new tB();
        this.f13080ba = tBVar2;
        tBVar2.oJ(this.f13078wd);
        Ry();
        this.Rl = 0L;
        Qu();
        return true;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(boolean z10, int i10) {
        ex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(float f10, float f11) {
        ViewGroup viewGroup;
        try {
            if (HyG() != null && this.f13080ba != null && (viewGroup = this.f13086tb) != null) {
                float width = viewGroup.getWidth();
                float height = this.f13086tb.getHeight();
                if (f10 / (width * 1.0f) <= f11 / (1.0f * height)) {
                    width = f10 * (height / f11);
                } else {
                    height = f11 * (width / f10);
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) width, (int) height);
                layoutParams.addRule(13);
                if (HyG() instanceof TextureView) {
                    ((TextureView) HyG()).setLayoutParams(layoutParams);
                } else if (HyG() instanceof SurfaceView) {
                    ((SurfaceView) HyG()).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ(this.oJ, "changeVideoSizeSupportInteraction error", th2);
        }
    }

    private void oJ(float f10, float f11, float f12, float f13, boolean z10) {
        RelativeLayout.LayoutParams layoutParams;
        if (f12 <= 0.0f || f13 <= 0.0f) {
            try {
                f12 = this.f13085so.ib().tB();
                f13 = this.f13085so.ib().ZYk();
            } catch (Throwable unused) {
                return;
            }
        }
        if (f13 > 0.0f && f12 > 0.0f) {
            if (z10) {
                if (f12 < f13) {
                    return;
                }
                layoutParams = new RelativeLayout.LayoutParams((int) f10, (int) ((f13 * f10) / f12));
            } else if (f12 > f13) {
                return;
            } else {
                layoutParams = new RelativeLayout.LayoutParams((int) ((f12 * f11) / f13), (int) f11);
            }
            layoutParams.addRule(13);
            if (HyG() != null) {
                if (HyG() instanceof TextureView) {
                    ((TextureView) HyG()).setLayoutParams(layoutParams);
                } else if (HyG() instanceof SurfaceView) {
                    ((SurfaceView) HyG()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.f13086tb.getLayoutParams();
                if (!com.bytedance.sdk.component.adexpress.ex.ZYk.oJ(si.oJ()) || this.f13086tb.getHeight() <= 0 || layoutParams2 == null) {
                    return;
                }
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
                this.f13086tb.setLayoutParams(layoutParams2);
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view) {
        tB tBVar = this.f13080ba;
        if (tBVar == null) {
            return;
        }
        if (tBVar.ba()) {
            ZYk();
            this.cFZ.ZYk(true, false);
            this.cFZ.ba();
        } else if (!this.f13080ba.cFZ()) {
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn = this.cFZ;
            if (pfn != null) {
                pfn.tB(this.f13086tb);
            }
            Pfn(this.jFA);
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn2 = this.cFZ;
            if (pfn2 != null) {
                pfn2.ZYk(false, false);
            }
        } else {
            tB();
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn pfn3 = this.cFZ;
            if (pfn3 != null) {
                pfn3.ZYk(false, false);
            }
        }
    }

    public void oJ(InterfaceC0200oJ interfaceC0200oJ) {
        this.Yg = interfaceC0200oJ;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ() {
        if (this.f13080ba != null) {
            Jm();
            this.f13080ba.jFA();
        }
    }
}
