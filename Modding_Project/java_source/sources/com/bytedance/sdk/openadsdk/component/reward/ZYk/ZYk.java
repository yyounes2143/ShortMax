package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import android.app.Activity;
import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.common.PiB;
import com.bytedance.sdk.openadsdk.component.reward.oJ.si;
import com.bytedance.sdk.openadsdk.component.reward.view.BTZ;
import com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.kkU;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.dLZ;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.WcQ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public abstract class ZYk extends com.bytedance.sdk.openadsdk.component.reward.ZYk.oJ {
    protected com.bytedance.sdk.openadsdk.core.ZYk.Pfn BTZ;
    public com.bytedance.sdk.openadsdk.core.widget.ZYk PiB;
    public LinearLayout WcQ;
    private com.bytedance.sdk.openadsdk.BTZ.ba awB;
    protected String dLZ;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(boolean z10);
    }

    public ZYk(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar);
    }

    public void BTZ() {
        LinearLayout linearLayout = (LinearLayout) this.oJ.f13027wd.findViewById(eZI.PiB);
        this.WcQ = linearLayout;
        cdg.oJ((View) linearLayout, 8);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        oJVar.MoK = new PiB(oJVar.HyG, oJVar.ZYk, "landingpage_endcard");
        this.oJ.MoK.tB().setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZYk.this.oJ.ofl.kkU().performClick();
            }
        });
        this.WcQ.addView(this.oJ.MoK.Pfn(), new LinearLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        oJVar2.Jc.oJ(oJVar2.MoK);
    }

    public final void HL() {
        String str;
        if (this.oJ.HyG.isFinishing()) {
            return;
        }
        this.oJ.Jc.awB();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        if (oJVar.ex) {
            str = "reward_endcard";
        } else {
            str = "fullscreen_endcard";
        }
        oJVar.Jc.oJ(this.awB, str, oJVar.cdg);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        if (oJVar2.YQ) {
            oJVar2.Xe.oJ(this.awB, oJVar2.bgF);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.oJ;
        oJVar3.Jc.oJ(str, oJVar3.cdg);
        this.oJ.Jc.Pfn();
    }

    protected boolean IUZ() {
        return true;
    }

    public void Id() {
        kkU kku = this.oJ.f13026tb;
        if (kku != null) {
            kku.ba();
        }
        BTZ btz = this.oJ.ofl;
        if (btz != null) {
            btz.WcQ();
        }
        this.oJ.cY.Jc();
        if (!Pfn()) {
            this.oJ.kkU.get();
        }
        si siVar = this.oJ.Jc;
        if (siVar != null) {
            siVar.eZI();
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.so soVar = this.oJ.Xe;
        if (soVar != null) {
            soVar.cFZ(com.bytedance.sdk.openadsdk.component.reward.oJ.so.oJ);
        }
        BTZ btz2 = this.oJ.ofl;
        if (btz2 != null) {
            btz2.BTZ();
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.Pfn pfn = this.oJ.XAo;
        if (pfn != null) {
            pfn.tB();
        }
        WcQ wcQ = this.oJ.jXJ;
        if (wcQ != null) {
            wcQ.tB();
        }
    }

    public abstract boolean Pfn();

    public void QSm() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        if (oJVar == null) {
            return;
        }
        oJVar.Yg = false;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        boolean z10 = oJVar2.Yg;
        boolean z11 = oJVar2.bgF;
        if (!oJVar2.dLZ.get()) {
            this.oJ.cY.awB();
        }
        eZI();
        this.oJ.Jc.oq();
        this.oJ.Xe.eZI();
        this.oJ.Id.set(true);
        if (this.oJ.kkU.get()) {
            this.oJ.f13023oq.set(true);
        }
        WcQ wcQ = this.oJ.jXJ;
        if (wcQ != null) {
            wcQ.ZYk();
        }
        this.oJ.ZYk();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Ry() {
        int i10;
        if (this.oJ.kkU.get()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (!oJVar.cFZ && oJVar.f13023oq.getAndSet(false) && ((i10 = this.oJ.f13025so) >= 0 || i10 == -1)) {
                Message obtain = Message.obtain();
                obtain.what = 700;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
                obtain.arg1 = oJVar2.f13025so;
                oJVar2.Jm.sendMessage(obtain);
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.oJ;
        if (oJVar3.jFA > 0 && oJVar3.Id.getAndSet(false)) {
            Message obtain2 = Message.obtain();
            obtain2.what = 900;
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = this.oJ;
            obtain2.arg1 = oJVar4.jFA;
            oJVar4.Jm.sendMessage(obtain2);
        }
    }

    public void WcQ() {
        com.bytedance.sdk.openadsdk.core.widget.ZYk zYk = this.PiB;
        if (zYk != null && zYk.isShowing()) {
            this.PiB.dismiss();
        }
    }

    public void Xe() {
        this.BTZ = this.oJ.IUZ.tB();
    }

    public void awB() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        if (oJVar.cFZ || !oJVar.ex()) {
            return;
        }
        this.oJ.f13022mu.Pfn();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        if (!oJVar2.uvK || !(oJVar2.oCU instanceof com.bytedance.sdk.openadsdk.activity.oJ)) {
            oJVar2.ofl.ba(0);
        }
    }

    public abstract boolean ba();

    public abstract void cFZ();

    public void cY() {
        int HUl;
        com.bytedance.sdk.openadsdk.component.reward.oJ.so soVar;
        com.bytedance.sdk.openadsdk.component.reward.oJ.PiB piB;
        if (com.bytedance.sdk.openadsdk.core.si.ex().QSm(String.valueOf(this.oJ.f13020ba)) == 1) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (oJVar.ex) {
                if (Ln.tB(oJVar.ZYk)) {
                    HUl = com.bytedance.sdk.openadsdk.core.si.ex().oJ(String.valueOf(this.oJ.f13020ba), true);
                } else {
                    HUl = this.oJ.ZYk.xwf();
                }
            } else if (Ln.tB(oJVar.ZYk)) {
                HUl = com.bytedance.sdk.openadsdk.core.si.ex().oJ(String.valueOf(this.oJ.f13020ba), false);
            } else {
                HUl = this.oJ.ZYk.HUl();
            }
            BTZ btz = this.oJ.ofl;
            if (btz != null && btz.jFA()) {
                BTZ btz2 = this.oJ.ofl;
                if (btz2 != null) {
                    btz2.kkU().performClick();
                }
            } else if ((!this.oJ.kkU.get() || Ln.tB(this.oJ.ZYk)) && HUl != -1) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.eZI ezi = this.oJ.cY;
                if (((ezi != null && ezi.PiB() >= HUl * 1000) || ((soVar = this.oJ.Xe) != null && soVar.ex(HUl))) && (piB = this.oJ.f13022mu) != null) {
                    piB.ex();
                }
            }
        }
    }

    public void dLZ() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        oJVar.HL.oJ(oJVar.ex);
        this.oJ.ofl.ZYk();
        this.oJ.XAo.oJ();
        if (!this.oJ.ZYk.Br()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
            if (oJVar2.cFZ && TextUtils.isEmpty(cY.oJ(oJVar2.Rl, this.ZYk))) {
                BTZ();
            }
            this.oJ.Jc.oJ();
            this.oJ.UN.oJ();
        }
        this.oJ.Xe.awB();
        this.oJ.f13022mu.oJ();
        if (Ln.ba(this.oJ.ZYk)) {
            this.oJ.ofl.ex();
            cdg.oJ((View) this.oJ.Jc.kkU(), 4);
        }
        if (!QSm.ex(this.oJ.ZYk) && !QSm.ZYk(this.oJ.ZYk) && !QSm.Pfn(this.oJ.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.oJ;
            BTZ btz = oJVar3.ofl;
            int ZYk = cdg.ZYk(oJVar3.Rl, oJVar3.NO);
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = this.oJ;
            btz.oJ(ZYk, cdg.ZYk(oJVar4.Rl, oJVar4.jB));
            this.oJ.f13021jr.oJ();
            if (Ln.si(this.oJ.ZYk)) {
                this.oJ.Jc.oJ(true);
                this.oJ.Jc.Pfn();
                oJ(false, false, false, ZYk.C0230ZYk.tB);
                return;
            }
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar5 = this.oJ;
            if (oJVar5.TA) {
                oJVar5.ofl.oJ(0);
            }
        }
    }

    public void eZI() {
        this.kkU.removeMessages(300);
    }

    public oJ ex() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0111, code lost:
        if (r2.oJ == 1) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View jFA() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk.jFA():android.view.View");
    }

    public void jr() {
        this.oJ.f13022mu.tB();
        this.oJ.f13022mu.Pfn(true);
    }

    public View kkU() {
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz;
        if (this.ZYk.EP() != 5) {
            cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(this.oJ.HyG);
            cfz.setId(eZI.eGo);
        } else {
            cfz = null;
        }
        Objects.toString(cfz);
        return cfz;
    }

    public abstract void oJ(FrameLayout frameLayout);

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.oJ
    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk, IUZ iuz) {
        super.oJ(zYk, iuz);
        if (this.oJ.ZYk.Pfn()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (oJVar.VSB) {
                oJVar.Jc.oJ(false);
            }
        }
        if (Ln.si(this.oJ.ZYk)) {
            this.oJ.Xe.BTZ();
        }
    }

    public void oq() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        if (oJVar == null) {
            return;
        }
        BTZ btz = oJVar.ofl;
        if (btz != null) {
            btz.eZI();
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        boolean z10 = oJVar2.bgF;
        oJVar2.nke.oJ();
        DeviceUtils.cFZ();
        this.oJ.Jc.QSm();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.oJ;
        if (oJVar3.bgF) {
            oJVar3.HyG.runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk.2
                @Override // java.lang.Runnable
                public void run() {
                    if (ZYk.this.oJ.nke.oJ() > 0) {
                        ZYk.this.oJ.nke.oJ(false);
                    }
                }
            });
        }
    }

    public void si() {
        if (this.oJ.oCU != null || ((!Ln.ZYk(this.ZYk) && !Ln.tB(this.ZYk)) || (Ln.kkU(this.ZYk) && this.oJ.Jc.wd() && !this.oJ.Jc.Rl()))) {
            Ry();
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        if (oJVar == null) {
            return;
        }
        WcQ wcQ = oJVar.jXJ;
        if (wcQ != null) {
            wcQ.oJ();
        }
        this.oJ.oJ();
    }

    public RFEndCardBackUpLayout so() {
        return new RFEndCardBackUpLayout(this.oJ.Rl);
    }

    public void tb() {
        cY cYVar;
        if (!ba() && ((this instanceof cFZ) || (this instanceof so))) {
            this.oJ.IUZ.ZYk();
            return;
        }
        if (!this.jFA.oJ(this.Pfn.WcQ(), false)) {
            this.kkU.removeMessages(300);
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (oJVar.uvK) {
                com.bytedance.sdk.openadsdk.activity.so soVar = oJVar.oCU;
                if (soVar instanceof com.bytedance.sdk.openadsdk.activity.oJ) {
                    ((com.bytedance.sdk.openadsdk.activity.oJ) soVar).Xe();
                }
            }
            oJ(ZYk.C0230ZYk.oJ);
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI ezi = this.Pfn;
            ezi.oJ(!ezi.mu(), 4);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        if (oJVar2 != null && (cYVar = oJVar2.ZYk) != null && oJVar2.jXJ != null && cYVar.RQ()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.oJ;
            oJVar3.jXJ.oJ(oJVar3.cY.tb());
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.component.reward.view.jFA jfa) {
        oJ(jfa, this.oJ);
    }

    public void oJ(boolean z10, boolean z11, boolean z12, int i10) {
        this.oJ.XAo.oJ(z10, z11, z12, this, i10);
    }

    public void oJ(int i10) {
        this.Pfn.RZ();
        oJ(false, true, false, i10);
        if (this.oJ.ex) {
            this.jFA.oJ(10000);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.BTZ.ba baVar) {
        this.awB = baVar;
        tB();
        if (!this.oJ.ZYk.Br() && IUZ()) {
            HL();
        }
        if (IUZ()) {
            this.oJ.XAo.ZYk();
        }
        if (QSm.ex(this.oJ.ZYk) || QSm.Pfn(this.oJ.ZYk)) {
            this.kkU.sendEmptyMessageDelayed(500, 100L);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        oJVar.ofl.oJ(oJVar.LS == 100.0f);
        Xe();
        cFZ();
    }

    public void PiB() {
    }

    public void RZ() {
    }

    public void oJ(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.eZI ezi;
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        BTZ btz;
        QSm qSm;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
        int i10 = message.what;
        if (i10 == 1) {
            jr();
        } else if (i10 == 300) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (oJVar.uvK) {
                com.bytedance.sdk.openadsdk.activity.so soVar = oJVar.oCU;
                if (soVar instanceof com.bytedance.sdk.openadsdk.activity.oJ) {
                    ((com.bytedance.sdk.openadsdk.activity.oJ) soVar).Xe();
                    NTC = this.oJ.ZYk.NTC();
                    if (NTC != null && (oJ2 = NTC.oJ()) != null) {
                        oJ2.oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.GENERAL_LINEAR_AD_ERROR);
                    }
                    btz = this.oJ.ofl;
                    if (btz != null || (qSm = btz.awB) == null) {
                    }
                    qSm.kkU();
                    return;
                }
            }
            oJ(ZYk.C0230ZYk.ZYk);
            this.oJ.cY.oJ(!ezi.mu(), 1 ^ this.oJ.cY.mu());
            NTC = this.oJ.ZYk.NTC();
            if (NTC != null) {
                oJ2.oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.GENERAL_LINEAR_AD_ERROR);
            }
            btz = this.oJ.ofl;
            if (btz != null) {
            }
        } else if (i10 == 400) {
            this.oJ.cY.RZ();
            oJ(false, true, false, 3);
        } else if (i10 == 500) {
            if (!Ln.cFZ(this.oJ.ZYk)) {
                this.oJ.f13022mu.tB(false);
            }
            com.bytedance.sdk.component.jFA.ba kkU = this.oJ.Jc.kkU();
            if (kkU != null && kkU.getWebView() != null) {
                kkU.PiB();
                kkU.getWebView().resumeTimers();
            }
            if (this.oJ.Jc.kkU() != null) {
                this.oJ.Jc.oJ(1.0f);
                this.oJ.ofl.oJ(1.0f);
            }
            if (!this.oJ.ZYk.kO() && this.oJ.cY.ba() && this.oJ.Ry.get()) {
                this.oJ.cY.RZ();
            }
        } else if (i10 == 600) {
            awB();
        } else if (i10 == 700) {
            int i11 = message.arg1;
            if (this.oJ.f13023oq.get()) {
                return;
            }
            if (i11 > 0) {
                this.oJ.f13022mu.ZYk();
                this.oJ.f13022mu.oJ((CharSequence) ((i11 / 1000) + "s"));
                this.oJ.f13022mu.Pfn(false);
                Message obtain = Message.obtain();
                obtain.what = 700;
                obtain.arg1 = i11 - 1000;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
                oJVar2.f13025so -= 1000;
                this.kkU.sendMessageDelayed(obtain, 1000L);
                return;
            }
            this.kkU.removeMessages(700);
            if (Ln.jFA(this.ZYk)) {
                if (!this.oJ.Xe.cFZ() && this.oJ.Jc.Ry()) {
                    jr();
                    return;
                } else {
                    awB();
                    return;
                }
            }
            awB();
        } else if (i10 != 800) {
            if (i10 == 900 && !this.oJ.Id.get()) {
                int i12 = message.arg1;
                double XAo = this.oJ.cY.XAo();
                oJ(i12, (long) (1000.0d * XAo));
                if (i12 > 0) {
                    this.oJ.f13022mu.ZYk();
                    this.oJ.f13022mu.oJ((CharSequence) ((i12 / 1000) + "s"));
                    this.oJ.f13022mu.Pfn(false);
                    Message obtain2 = Message.obtain();
                    obtain2.what = 900;
                    int i13 = i12 - 1000;
                    obtain2.arg1 = i13;
                    this.oJ.jFA = i13;
                    this.kkU.sendMessageDelayed(obtain2, 1000L);
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.oJ;
                    if (oJVar3.uvK) {
                        com.bytedance.sdk.openadsdk.activity.so soVar2 = oJVar3.oCU;
                        if (!(soVar2 instanceof com.bytedance.sdk.openadsdk.activity.oJ) || XAo <= 0.0d) {
                            return;
                        }
                        ((com.bytedance.sdk.openadsdk.activity.oJ) soVar2).oJ((float) (1.0d - ((i12 / 1000.0f) / XAo)));
                        return;
                    }
                    return;
                }
                this.kkU.removeMessages(900);
                awB();
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = this.oJ;
                com.bytedance.sdk.openadsdk.activity.so soVar3 = oJVar4.oCU;
                if (oJVar4.uvK && (soVar3 instanceof com.bytedance.sdk.openadsdk.activity.oJ)) {
                    soVar3.wd().oJ(soVar3, new ZYk.Pfn(5, this.oJ));
                }
            }
        } else {
            if (!Ln.cFZ(this.oJ.ZYk)) {
                this.oJ.f13022mu.tB(false);
            }
            this.oJ.ofl.oJ(1.0f);
            if (!this.oJ.ZYk.kO() && this.oJ.cY.ba() && this.oJ.Ry.get()) {
                this.oJ.cY.RZ();
            }
        }
    }

    private void oJ(long j10, long j11) {
        long j12 = j11 - j10;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        Activity activity = oJVar.HyG;
        if (activity instanceof TTRewardVideoActivity) {
            ((TTRewardVideoActivity) activity).ZYk(j12, j11);
            return;
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk = oJVar.cdg;
        if (zYk instanceof com.bytedance.sdk.openadsdk.activity.cFZ) {
            ((com.bytedance.sdk.openadsdk.activity.cFZ) zYk).oJ(j12, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void oJ(FrameLayout frameLayout, final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        final com.bytedance.sdk.openadsdk.core.Pfn.ex exVar;
        Context context = frameLayout.getContext();
        if (oJVar.VSB) {
            com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
            tBVar.setId(eZI.kkU);
            frameLayout.addView(tBVar, new FrameLayout.LayoutParams(-1, -1));
            FrameLayout oJ2 = oJ(context);
            String str = "";
            if (cY.Pfn(oJVar.ZYk)) {
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = oJVar.ZYk.ib();
                if (ib2 != null) {
                    str = ib2.kkU();
                }
            } else {
                List<Ry> yB = oJVar.ZYk.yB();
                if (yB != null && !yB.isEmpty()) {
                    str = yB.get(0).oJ();
                }
            }
            if (TextUtils.isEmpty(str)) {
                exVar = null;
            } else {
                exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
                int i10 = eZI.OP;
                exVar.setId(i10);
                exVar.setTag(i10, str);
                exVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
                oJ2.addView(exVar);
            }
            tBVar.addView(oJ2);
            tBVar.addView(new dLZ(context), new FrameLayout.LayoutParams(-1, -1));
            View pfn = new com.bytedance.sdk.openadsdk.component.reward.view.Pfn(context);
            pfn.setId(eZI.BTZ);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            frameLayout.addView(pfn, layoutParams);
            pfn.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk.3
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                    int height = view.getHeight();
                    if (height <= 0) {
                        return;
                    }
                    View findViewById = com.bytedance.sdk.openadsdk.component.reward.oJ.oJ.this.f13027wd.findViewById(520093757);
                    if (findViewById != null) {
                        ViewGroup.LayoutParams layoutParams2 = findViewById.getLayoutParams();
                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams2).bottomMargin = height;
                        }
                    }
                    View findViewById2 = com.bytedance.sdk.openadsdk.component.reward.oJ.oJ.this.f13027wd.findViewById(eZI.JC);
                    if (findViewById2 != null) {
                        ViewGroup.LayoutParams layoutParams3 = findViewById2.getLayoutParams();
                        if (layoutParams3 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams3).bottomMargin = height;
                        }
                    }
                    View findViewById3 = com.bytedance.sdk.openadsdk.component.reward.oJ.oJ.this.f13027wd.findViewById(eZI.Du);
                    if (findViewById3 != null) {
                        ViewGroup.LayoutParams layoutParams4 = findViewById3.getLayoutParams();
                        if (layoutParams4 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams4).bottomMargin = height;
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = exVar;
                    if (exVar2 != null) {
                        ViewGroup.LayoutParams layoutParams5 = exVar2.getLayoutParams();
                        if (layoutParams5 instanceof ViewGroup.MarginLayoutParams) {
                            ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin = height;
                            exVar.setLayoutParams(layoutParams5);
                        }
                    }
                }
            });
            com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
            pfn2.setId(eZI.PiB);
            pfn2.setOrientation(1);
            pfn2.setVisibility(8);
            frameLayout.addView(pfn2, new FrameLayout.LayoutParams(-1, -1));
        }
        if (oJVar.Qu) {
            View baVar = new com.bytedance.sdk.component.jFA.ba(context, true);
            baVar.setId(eZI.WcQ);
            baVar.setLayerType(2, null);
            baVar.setVisibility(4);
            frameLayout.addView(baVar, new FrameLayout.LayoutParams(-1, -1));
            View frameLayout2 = new FrameLayout(context);
            frameLayout2.setId(eZI.awB);
            frameLayout2.setVisibility(4);
            frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
            if (Ln.ZYk(oJVar.ZYk)) {
                View tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
                tBVar2.setId(eZI.SYE);
                tBVar2.setVisibility(4);
                frameLayout.addView(tBVar2, new FrameLayout.LayoutParams(-1, -1));
            }
        }
        View baVar2 = new com.bytedance.sdk.component.jFA.ba(context, true);
        baVar2.setId(eZI.eZI);
        baVar2.setVisibility(8);
        frameLayout.addView(baVar2, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static FrameLayout oJ(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar.setId(eZI.dLZ);
        tBVar.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        tBVar.setLayoutParams(layoutParams);
        return tBVar;
    }
}
