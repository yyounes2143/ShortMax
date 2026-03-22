package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class RZ extends QSm implements tB.ex, tB.InterfaceC0134tB {
    private com.bytedance.sdk.openadsdk.oJ.ZYk.tB Jc;
    private com.bytedance.sdk.openadsdk.multipro.ZYk.oJ Ln;
    private long LpP;
    int Pfn;
    private boolean UN;
    int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    boolean f13266ba;
    boolean cFZ;
    boolean ex;

    /* renamed from: mu  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba f13267mu;
    private long nke;
    private eZI oJ;

    /* renamed from: so  reason: collision with root package name */
    int f13268so;
    boolean tB;

    public RZ(@NonNull Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, AdSlot adSlot, String str, boolean z10) {
        super(context, cYVar, adSlot, str, false, true);
        this.ZYk = 1;
        this.tB = false;
        this.ex = true;
        this.f13266ba = true;
        this.cFZ = true;
        this.f13268so = -1;
        this.UN = z10;
        WcQ();
    }

    private void Xe() {
        boolean z10;
        try {
            this.Ln = new com.bytedance.sdk.openadsdk.multipro.ZYk.oJ();
            eZI ezi = new eZI(this.jFA, this.BTZ, this.kkU, this.Xe, this.UN);
            this.oJ = ezi;
            ezi.setShouldCheckNetChange(false);
            this.oJ.setControllerStatusCallBack(new ba.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.so.RZ.2
                @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.ZYk
                public void oJ(boolean z11, long j10, long j11, long j12, boolean z12) {
                    RZ.this.Ln.oJ = z11;
                    RZ.this.Ln.Pfn = j10;
                    RZ.this.Ln.f13372ba = j11;
                    RZ.this.Ln.cFZ = j12;
                    RZ.this.Ln.ex = z12;
                }
            });
            this.oJ.setVideoAdLoadListener(this);
            this.oJ.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.kkU)) {
                eZI ezi2 = this.oJ;
                if (this.tB) {
                    z10 = this.dLZ.isAutoPlay();
                } else {
                    z10 = this.ex;
                }
                ezi2.setIsAutoPlay(z10);
            } else if ("open_ad".equals(this.kkU)) {
                this.oJ.setIsAutoPlay(true);
            } else {
                this.oJ.setIsAutoPlay(this.ex);
            }
            if ("open_ad".equals(this.kkU)) {
                this.oJ.oJ(true, "initVideo");
            } else {
                boolean ZYk = com.bytedance.sdk.openadsdk.core.si.ex().ZYk(String.valueOf(this.Pfn));
                this.Id = ZYk;
                this.oJ.oJ(ZYk, "initVideo");
            }
            this.oJ.ex();
        } catch (Exception unused) {
            this.oJ = null;
        }
    }

    private void setShowAdInteractionView(boolean z10) {
        eZI ezi = this.oJ;
        if (ezi != null) {
            ezi.setShowAdInteractionView(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(@NonNull com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
        if (oJ(wcQ, false)) {
            this.PiB.removeAllViews();
            if (this.oJ != null) {
                int i10 = this.f13268so;
                if ((i10 == 7 || i10 == 10) && (wcQ instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ZYk)) {
                    FrameLayout awB = ((com.bytedance.sdk.openadsdk.core.kkU.ba.ZYk) wcQ).awB();
                    if (awB != null) {
                        awB.removeAllViews();
                        if (this.f13268so == 10) {
                            this.oJ.setClickable(false);
                        }
                        awB.addView(this.oJ, new FrameLayout.LayoutParams(-1, -1));
                    }
                } else if (wcQ.oJ() != null) {
                    if (this.cFZ) {
                        wcQ.oJ().setTag(com.bytedance.sdk.component.adexpress.dynamic.oJ.f12709ba, 1);
                        ((FrameLayout) wcQ.oJ()).removeAllViews();
                        ((FrameLayout) wcQ.oJ()).addView(this.oJ, new FrameLayout.LayoutParams(-1, -1));
                        this.cFZ = false;
                    }
                } else {
                    this.PiB.addView(this.oJ);
                }
                this.oJ.oJ(0L, true, false);
                ex(this.Pfn);
                if (!com.bytedance.sdk.component.utils.Ry.ex(this.jFA) && !this.ex && this.f13266ba) {
                    this.oJ.Pfn();
                }
                if (TextUtils.equals("embeded_ad", this.kkU)) {
                    return;
                }
                setShowAdInteractionView(false);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public int Pfn() {
        eZI ezi;
        if (this.ZYk == 3 && (ezi = this.oJ) != null) {
            ezi.ex();
        }
        eZI ezi2 = this.oJ;
        if (ezi2 != null && ezi2.getNativeVideoController().WcQ()) {
            this.ZYk = 1;
        }
        cFZ(this.ZYk);
        return this.ZYk;
    }

    public boolean PiB() {
        return this.UN;
    }

    protected void WcQ() {
        int i10;
        this.PiB = new FrameLayout(this.jFA);
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.BTZ;
        if (cYVar != null) {
            i10 = cYVar.uv();
        } else {
            i10 = 0;
        }
        this.Pfn = i10;
        ex(i10);
        Xe();
        addView(this.PiB, new FrameLayout.LayoutParams(-1, -1));
        if (getWebView() != null) {
            getWebView().setBackgroundColor(0);
        }
        setVideoFrameChangeListener(new com.bytedance.sdk.openadsdk.BTZ.cFZ() { // from class: com.bytedance.sdk.openadsdk.core.so.RZ.1
            @Override // com.bytedance.sdk.openadsdk.BTZ.cFZ
            public void oJ(final com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
                ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.RZ.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RZ.this.oJ(wcQ, true);
                    }
                });
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void ZYk() {
    }

    public void awB() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.f13267mu;
        if (baVar != null) {
            baVar.PiB();
            return;
        }
        eZI ezi = this.oJ;
        if (ezi != null) {
            ezi.PiB();
        }
    }

    public void eZI() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.f13267mu;
        if (baVar != null) {
            baVar.awB();
            return;
        }
        eZI ezi = this.oJ;
        if (ezi != null) {
            ezi.awB();
        }
    }

    void ex(int i10) {
        int ZYk = com.bytedance.sdk.openadsdk.core.si.ex().ZYk(i10);
        if (3 == ZYk) {
            this.tB = false;
            this.ex = false;
        } else if (4 == ZYk) {
            this.tB = true;
        } else {
            int tB = com.bytedance.sdk.component.utils.Ry.tB(com.bytedance.sdk.openadsdk.core.si.oJ());
            if (1 == ZYk) {
                this.tB = false;
                this.ex = HyG.ex(tB);
            } else if (2 == ZYk) {
                if (HyG.Pfn(tB) || HyG.ex(tB) || HyG.ba(tB)) {
                    this.tB = false;
                    this.ex = true;
                }
            } else if (5 == ZYk && (HyG.ex(tB) || HyG.ba(tB))) {
                this.tB = false;
                this.ex = true;
            }
        }
        if (this.ex) {
            return;
        }
        this.ZYk = 3;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void g_() {
        this.f13266ba = false;
        this.ZYk = 2;
        com.bytedance.sdk.openadsdk.oJ.ZYk.tB tBVar = this.Jc;
        if (tBVar != null) {
            tBVar.oJ(null);
        }
    }

    protected eZI getExpressVideoView() {
        return this.oJ;
    }

    public com.bytedance.sdk.openadsdk.oJ.ZYk.tB getVideoAdListener() {
        return this.Jc;
    }

    @Nullable
    public com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB getVideoController() {
        eZI ezi = this.oJ;
        if (ezi != null) {
            return ezi.getNativeVideoController();
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.multipro.ZYk.oJ getVideoModel() {
        return this.Ln;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void h_() {
        this.f13266ba = false;
        this.WcQ = true;
        this.ZYk = 3;
        com.bytedance.sdk.openadsdk.oJ.ZYk.tB tBVar = this.Jc;
        if (tBVar != null) {
            tBVar.ZYk(null);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void i_() {
        this.f13266ba = false;
        this.WcQ = false;
        this.ZYk = 2;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void j_() {
        this.f13266ba = false;
        this.ZYk = 5;
        com.bytedance.sdk.component.adexpress.ZYk.ZYk zYk = this.HL;
        if (zYk != null && zYk.ZYk() != null) {
            this.HL.ZYk().onvideoComplate();
        }
        com.bytedance.sdk.openadsdk.oJ.ZYk.tB tBVar = this.Jc;
        if (tBVar != null) {
            tBVar.tB(null);
        }
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.tB) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.tB) exVar).onvideoComplate();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ() {
    }

    public void setBackupVideoView(com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar) {
        this.f13267mu = baVar;
    }

    public void setVideoAdListener(com.bytedance.sdk.openadsdk.oJ.ZYk.tB tBVar) {
        this.Jc = tBVar;
    }

    public void si() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB videoController = getVideoController();
        if (videoController != null) {
            videoController.oJ(3, true);
        }
    }

    private void ZYk(long j10, long j11) {
        int abs = (int) Math.abs(this.Ry - j10);
        int i10 = this.Ry;
        if (i10 < 0 || abs > 500 || i10 > j11 || abs >= 500 || this.QSm.contains(this.RZ)) {
            return;
        }
        if (this.Ry > j10) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.RZ.4
                @Override // java.lang.Runnable
                public void run() {
                    RZ.this.oJ.setCanInterruptVideoPlay(true);
                    RZ.this.oJ.performClick();
                    RZ rz = RZ.this;
                    rz.ZYk(rz.Ry, rz.RZ);
                }
            }, abs);
        } else {
            this.oJ.setCanInterruptVideoPlay(true);
            this.oJ.performClick();
            ZYk(this.Ry, this.RZ);
        }
        this.QSm.add(this.RZ);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.component.adexpress.ZYk.awB
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar, com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
        this.IUZ = exVar;
        this.f13268so = exVar.tB();
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar2 = this.IUZ;
        if ((exVar2 instanceof jr) && ((jr) exVar2).eZI() != null) {
            ((jr) this.IUZ).eZI().oJ((awB) this);
        }
        if (wcQ != null && wcQ.ZYk()) {
            oJ(wcQ);
        }
        super.oJ(exVar, wcQ);
    }

    private void oJ(final com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
        if (wcQ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.RZ.3
            @Override // java.lang.Runnable
            public void run() {
                RZ.this.tB(wcQ);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ, boolean z10) {
        int i10;
        double Pfn = wcQ.Pfn();
        double ba2 = wcQ.ba();
        double cFZ = wcQ.cFZ();
        double so2 = wcQ.so();
        if ((cFZ != 0.0d && so2 != 0.0d) || (i10 = this.f13268so) == 7 || i10 == 10 || i10 == 9) {
            int ZYk = cdg.ZYk(this.jFA, (float) Pfn);
            int ZYk2 = cdg.ZYk(this.jFA, (float) ba2);
            int ZYk3 = cdg.ZYk(this.jFA, (float) cFZ);
            int ZYk4 = cdg.ZYk(this.jFA, (float) so2);
            float min = Math.min(Math.min(cdg.ZYk(this.jFA, wcQ.dLZ()), cdg.ZYk(this.jFA, wcQ.BTZ())), Math.min(cdg.ZYk(this.jFA, wcQ.PiB()), cdg.ZYk(this.jFA, wcQ.WcQ())));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.PiB.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(ZYk3, ZYk4);
            }
            layoutParams.width = ZYk3;
            layoutParams.height = ZYk4;
            layoutParams.topMargin = ZYk2;
            layoutParams.leftMargin = ZYk;
            layoutParams.setMarginStart(ZYk);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
            this.PiB.setLayoutParams(layoutParams);
            cdg.ZYk(this.PiB, min);
            eZI ezi = this.oJ;
            if (ezi == null || !z10) {
                return true;
            }
            ezi.oJ(ZYk3, ZYk4);
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public long ex() {
        return this.LpP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void ba() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public long tB() {
        return this.LpP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(boolean z10, String str) {
        eZI ezi;
        if (this.BTZ.nip() || (ezi = this.oJ) == null) {
            return;
        }
        ezi.oJ(z10, str);
        setSoundMute(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(int i10) {
        eZI ezi = this.oJ;
        if (ezi == null) {
            return;
        }
        if (i10 == 1) {
            ezi.oJ(0L, true, false);
        } else if (i10 == 2 || i10 == 3) {
            ezi.setCanInterruptVideoPlay(true);
            this.oJ.performClick();
        } else if (i10 == 4) {
            ezi.getNativeVideoController().Pfn();
        } else if (i10 != 5) {
        } else {
            ezi.oJ(0L, true, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.component.adexpress.ZYk.so
    public void oJ(View view, int i10, com.bytedance.sdk.component.adexpress.tB tBVar) {
        if (i10 == -1 || tBVar == null) {
            return;
        }
        if (i10 == 11) {
            try {
                eZI ezi = this.oJ;
                if (ezi != null) {
                    ezi.setCanInterruptVideoPlay(true);
                    this.oJ.performClick();
                    if (this.WcQ) {
                        this.oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.NX).setVisibility(0);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        super.oJ(view, i10, tBVar);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void oJ(long j10, long j11) {
        this.f13266ba = false;
        int i10 = this.ZYk;
        if (i10 != 5 && i10 != 3 && j10 > this.LpP) {
            this.ZYk = 2;
        }
        this.LpP = j10;
        this.nke = j11;
        com.bytedance.sdk.component.adexpress.ZYk.ZYk zYk = this.HL;
        if (zYk != null && zYk.ZYk() != null) {
            this.HL.ZYk().setTimeUpdate(((int) (j11 - j10)) / 1000);
        }
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.tB) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.tB) exVar).setTimeUpdate(((int) (j11 - j10)) / 1000);
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.tB) this.IUZ).oJ(j10, j11);
        }
        ZYk(j10, j11);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.ex
    public void oJ(int i10, int i11) {
        this.LpP = this.nke;
        this.ZYk = 4;
        com.bytedance.sdk.openadsdk.oJ.ZYk.tB tBVar = this.Jc;
        if (tBVar != null) {
            tBVar.oJ(i10, i11);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(int i10, String str) {
        this.Ry = i10;
        this.RZ = str;
    }
}
