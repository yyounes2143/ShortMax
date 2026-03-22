package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.component.reward.oJ.Pfn;
import com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ;
import com.bytedance.sdk.openadsdk.component.reward.oJ.eZI;
import com.bytedance.sdk.openadsdk.component.reward.view.kkU;
import com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import com.bytedance.sdk.openadsdk.utils.awB;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class oJ extends so implements IUZ.oJ, Pfn.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk {
    private boolean HL;
    private CountDownTimer IUZ;
    private boolean Id;
    protected boolean Pfn;
    private long Xe;
    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final AtomicBoolean f12926ba;
    private int cFZ;
    private boolean cY;
    protected int ex;

    /* renamed from: jr  reason: collision with root package name */
    private int f12927jr;
    protected final IUZ oJ;

    /* renamed from: oq  reason: collision with root package name */
    private int f12928oq;

    /* renamed from: so  reason: collision with root package name */
    private Bundle f12929so;
    protected com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tB;

    /* renamed from: tb  reason: collision with root package name */
    private long f12930tb;

    public oJ(ZYk zYk, cY cYVar, int i10, int i11, boolean z10) {
        super(zYk, cYVar, i10, i11, z10);
        this.oJ = new IUZ(Looper.getMainLooper(), this);
        boolean z11 = false;
        this.f12926ba = new AtomicBoolean(false);
        this.cFZ = 1;
        this.f12928oq = 0;
        this.Id = false;
        this.Pfn = false;
        this.f12927jr = 0;
        this.HL = false;
        if (Ln.tB(cYVar) && cYVar.nYE()) {
            z11 = true;
        }
        this.HL = z11;
        QSm.oJ("TTAD.AdScene", "current scene is isOnlyPlayable -> " + this.HL);
        if (this.HL) {
            int zUb = cYVar.zUb() * 1000;
            this.f12927jr = zUb;
            this.f12930tb = zUb;
        }
    }

    private boolean LS() {
        if (this.tB.kkU.get() && this.tB.cFZ) {
            return false;
        }
        if (this.jFA.Pfn()) {
            return this.tB.kkU.get();
        }
        return true;
    }

    private void NO() {
        if (!this.jFA.Pfn() || this.Id) {
            return;
        }
        this.Id = true;
        oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                float[] oJ;
                if (oJ.this.kkU.oq()) {
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = oJ.this.tB;
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = oJ.this.tB;
                    oJ = new float[]{cdg.tB(oJVar.HyG, oJVar.f13027wd.getWidth()), cdg.tB(oJVar2.HyG, oJVar2.f13027wd.getHeight())};
                } else {
                    oJ oJVar3 = oJ.this;
                    oJ = oJVar3.tB.HL.oJ(oJVar3.cFZ);
                }
                oJ oJVar4 = oJ.this;
                oJVar4.tB.Ln.oJ(oJ, oJVar4, oJVar4.ZYk);
            }
        });
    }

    private void jB() {
        if (!this.jFA.Pfn()) {
            if (Ln.si(this.tB.ZYk)) {
                oJ(false, ZYk.C0230ZYk.tB);
                return;
            }
            com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.ZYk;
            if (zYk != null) {
                zYk.oJ(this.tB.ofl.ba());
                this.ZYk.tb();
            }
        }
    }

    private void mwH() {
        this.tB.f13027wd.oJ(this.ZYk);
        this.ZYk.oJ(this, this.oJ);
        this.ZYk.dLZ();
    }

    private void oTd() {
        this.ZYk.oJ(this.QSm);
        this.ex = (int) this.tB.cY.XAo();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar.uvK) {
            oJ(oJVar.IUZ.Pfn());
            oJ(this.tB.IUZ.ex());
        }
        Pfn();
        jB();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final void BTZ() {
        super.BTZ();
        if (this.tB != null && !com.bytedance.sdk.component.utils.ZYk.oJ(HyG())) {
            this.tB.Jc.Jc();
            com.bytedance.sdk.openadsdk.utils.ex.oJ(HyG(), this.tB.ZYk);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public boolean HL() {
        return this.tB.f13026tb.jFA();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public List<cY> IUZ() {
        return this.kkU.cY();
    }

    public void Id() {
        if (!this.cY) {
            this.cY = true;
            Yg();
            return;
        }
        QSm.oJ("TTAD.AdScene", "tryPreloadNextAdVideo: Already tried preloading the video");
    }

    public void Jc() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar == null) {
            return;
        }
        oJVar.cY.awB();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void Ln() {
        this.tB.IUZ.oJ();
    }

    public void LpP() {
        NO();
    }

    protected abstract void Pfn();

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void PiB() {
        super.PiB();
        if (this.HL) {
            this.Xe = System.currentTimeMillis();
            QSm.oJ("TTAD.AdScene", "onPause: remainingTime = " + this.f12930tb);
            CountDownTimer countDownTimer = this.IUZ;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.ZYk;
        if (zYk == null) {
            return;
        }
        zYk.QSm();
        kkU kku = this.tB.f13026tb;
        if (kku != null) {
            kku.so();
        }
        if (this.kkU.oq()) {
            this.tB.f13026tb.oJ(8, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void QSm() {
        super.QSm();
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.ZYk;
        if (zYk == null) {
            return;
        }
        zYk.Id();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Ry() {
        this.oJ.removeMessages(400);
    }

    public void UN() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar != null && oJVar.cY.jFA()) {
            this.tB.cY.QSm();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void WcQ() {
        this.tB.cY.ofl();
    }

    public void Xe() {
        this.kkU.oJ(this, ZYk(ZYk.C0230ZYk.ZYk));
    }

    protected abstract void ZYk();

    public void ZYk(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final View awB() {
        return this.tB.cY.wd();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void ba() {
        Qu();
        this.tB.ZYk.Geh();
        this.tB.ZYk.tB(true);
        if (cY.Pfn(this.tB.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
            cY cYVar = oJVar.ZYk;
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, oJVar.Pfn, cYVar.nnj());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void cFZ() {
        QSm.oJ("TTAD.AdScene", "onPlayableLoadingDismiss()---" + this.dLZ);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public boolean cY() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar != null && oJVar.cY.nke()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void dLZ() {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.ZYk;
        if (zYk == null) {
            return;
        }
        zYk.PiB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void eZI() {
        if (this.tB.WcQ.getAndSet(true) && !Ln.tB(this.tB.ZYk)) {
            return;
        }
        this.tB.IUZ.oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void ex() {
        super.ex();
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.ZYk;
        if (zYk == null) {
            return;
        }
        zYk.oq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void jFA() {
        if (!this.f12926ba.compareAndSet(false, true)) {
            return;
        }
        QSm.oJ("BVA", "invoke callback onShow, ".concat(String.valueOf(this)));
        kkU();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    protected String jr() {
        return this.tB.nQI;
    }

    protected abstract void kkU();

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void mu() {
        this.Pfn = true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void nke() {
        com.bytedance.sdk.openadsdk.component.reward.view.ex oJ;
        super.nke();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar != null && (oJ = oJVar.f13026tb.oJ()) != null && oJ.cY()) {
            Ln();
        }
    }

    public void oJ(int i10) {
    }

    public abstract void oJ(Bundle bundle);

    public abstract boolean oJ(long j10, boolean z10);

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oq() {
        super.oq();
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.ZYk;
        if (zYk != null) {
            zYk.cY();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void so() {
        Message message = new Message();
        message.what = 400;
        if (this.jFA.kO()) {
            oJ(10000);
        }
        this.oJ.sendMessageDelayed(message, 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void tB() {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk;
        super.tB();
        if (this.tB == null || (zYk = this.ZYk) == null) {
            return;
        }
        zYk.si();
        this.tB.Yg = true;
        if (LS()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
            oJVar.f13022mu.oJ(oJVar.ZYk.LTg());
        }
        this.tB.ofl.awB();
        this.tB.Jc.Id();
        this.tB.Xe.PiB();
        if (this.ZYk.ZYk()) {
            this.tB.cY.oJ(this.ZYk);
            if (this.tB.cY.Qu()) {
                oJ(this.tB.cY.WcQ(), true);
            } else if (this.tB.cY.cFZ() && this.kkU.oq()) {
                XAo();
            } else {
                this.tB.cY.oJ(false, this, this.f12928oq != 0);
            }
        }
        this.f12928oq++;
        NO();
        kkU kku = this.tB.f13026tb;
        if (kku != null) {
            kku.cFZ();
        }
        this.tB.HL.oJ(this.oJ);
        if (this.kkU.oq()) {
            this.tB.f13026tb.oJ(0, false);
        }
        this.ZYk.RZ();
        long currentTimeMillis = System.currentTimeMillis();
        if (this.HL) {
            long j10 = this.Xe;
            if (j10 != 0 && currentTimeMillis - j10 > this.f12930tb) {
                QSm.oJ("TTAD.AdScene", "onResume: Exceed playable_duration_time, switch to next ad");
                wd().oJ(this, ZYk(8));
                return;
            }
            if (j10 != 0) {
                this.f12930tb -= currentTimeMillis - j10;
            }
            QSm.oJ("TTAD.AdScene", "onResume: The playable display time has not yet arrived, continue the countdown -> remainingTime = " + this.f12930tb);
            oJ(this.f12930tb);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb() {
        return this.tB;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ZYk.Pfn ZYk(int i10) {
        ZYk.Pfn pfn = new ZYk.Pfn(i10, this.tB);
        pfn.ex = this.tB.bgF;
        return pfn;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ex(boolean z10) {
        ZYk zYk = this.kkU;
        if (zYk != null) {
            zYk.oJ(this, z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final void oJ(Activity activity, Bundle bundle) {
        this.f12929so = bundle;
        super.oJ(activity, bundle);
        oJ(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ() {
        return this.tB.f13027wd;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(Activity activity, ZYk.Pfn pfn) {
        this.cFZ = this.jFA.Tt();
        oJ(activity, this.jFA, this.f12929so);
        if (this.tB.uvK && this.jFA.nYE()) {
            this.tB.bgF = pfn.ex;
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar.uvK && this.dLZ > 0) {
            oJVar.bgF = pfn.ex;
        }
        try {
            mwH();
            oTd();
        } catch (Throwable th2) {
            QSm.oJ("TTAD.AdScene", "onCreate: ", th2);
            com.bytedance.sdk.openadsdk.awB.tB.ZYk();
            cdg();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void RZ() {
    }

    public void si() {
    }

    private void oJ(Activity activity, cY cYVar, Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = new com.bytedance.sdk.openadsdk.component.reward.oJ.oJ(activity, this.oJ, cYVar, this, 1);
        this.tB = oJVar;
        oJVar.uvK = this.kkU.tB();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.tB;
        oJVar2.UF = this.WcQ;
        oJVar2.VJm = this.kkU.oJ();
        this.tB.bD = this.kkU.RZ();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.tB;
        oJVar3.oCU = this;
        oJVar3.nke = this.kkU.si();
        Intent intent = activity.getIntent();
        com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(this.tB, intent, bundle);
        if (intent != null) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(intent, this.tB);
            cYVar.oJ(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.tB.sH) {
            ZYk();
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk oJ = com.bytedance.sdk.openadsdk.component.reward.ZYk.ba.oJ(this.tB);
        this.ZYk = oJ;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = this.tB;
        oJVar4.UK = oJ;
        oJVar4.XAo.oJ(this);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar5 = this.tB;
        if (oJVar5.uvK) {
            oJVar5.cY.oJ(new oJ.InterfaceC0200oJ() { // from class: com.bytedance.sdk.openadsdk.activity.oJ.1
                @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.InterfaceC0200oJ
                public void oJ(int i10) {
                    oJ oJVar6 = oJ.this;
                    ZYk zYk = oJVar6.kkU;
                    if (zYk == null) {
                        return;
                    }
                    zYk.ZYk(oJVar6, i10);
                }
            });
            if (!this.kkU.oq()) {
                this.kkU.RZ().setShowSound(cY.Pfn(cYVar));
            }
        }
        awB.oJ(this.tB);
        Objects.toString(this.ZYk);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void tB(boolean z10) {
        dLZ dlz;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar == null || (dlz = oJVar.IUZ) == null) {
            return;
        }
        dlz.ZYk(z10);
        this.tB.IUZ.tB(z10);
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk) {
        if (zYk != null) {
            HashMap hashMap = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ad_show_order", this.BTZ + 1);
                hashMap.put("pag_json_data", jSONObject.toString());
            } catch (Throwable unused) {
            }
            zYk.oJ(hashMap);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(Activity activity) {
        super.oJ(activity);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar == null) {
            return;
        }
        oJVar.HL.oJ();
    }

    private void oJ(long j10) {
        this.IUZ = new CountDownTimer(j10, 1000L) { // from class: com.bytedance.sdk.openadsdk.activity.oJ.2
            @Override // android.os.CountDownTimer
            public void onFinish() {
                QSm.oJ("TTAD.AdScene", "onFinish: remainingTime = " + oJ.this.f12930tb);
                ZYk wd2 = oJ.this.wd();
                oJ oJVar = oJ.this;
                wd2.oJ(oJVar, oJVar.ZYk(8));
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j11) {
                oJ.this.f12930tb = j11;
                QSm.oJ("TTAD.AdScene", "onTick: remainingTime = " + oJ.this.f12930tb);
            }
        }.start();
    }

    public final void oJ(boolean z10, int i10) {
        oJ(z10, false, i10);
    }

    public final void oJ(boolean z10, boolean z11, int i10) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        oJVar.XAo.oJ(z10, z11, false, oJVar.UK, i10);
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.ZYk;
        if (zYk == null) {
            return;
        }
        zYk.oJ(message);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(boolean z10) {
        QSm.oJ("TTAD.AdScene", "onPlayableHappenInteraction()---" + this.dLZ + " isHappenInteraction:" + z10);
    }

    public void oJ(String str, JSONObject jSONObject) {
        ZYk zYk;
        if (str == null || !"skipToNextAd".equals(str) || (zYk = this.kkU) == null) {
            return;
        }
        zYk.ZYk(this, ZYk(7));
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.Pfn.oJ
    public void oJ(boolean z10, boolean z11, boolean z12, com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk, int i10) {
        oJ(z10, z11, z12, i10);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(so soVar, so soVar2, ZYk.Pfn pfn) {
        super.oJ(soVar, soVar2, pfn);
        if (soVar == this && (soVar2 instanceof Pfn)) {
            int i10 = pfn.ZYk;
            if (i10 == 3) {
                eZI ezi = this.tB.cY;
                ezi.oJ(!ezi.mu(), 2);
            } else if (i10 == 6) {
                eZI ezi2 = this.tB.cY;
                ezi2.oJ(!ezi2.mu(), !this.tB.cY.mu());
            } else if (i10 == 5 && !cY.Pfn(this.tB.ZYk) && pfn.Pfn) {
                this.tB.cY.oJ("skip", true);
            }
            this.tB.f13022mu.oJ(false);
            this.tB.f13022mu.ex(false);
        }
        boolean z10 = this.dLZ == soVar2.dLZ + 1;
        QSm.oJ("TTAD.AdScene", "【onActiveSceneChanged】" + this.dLZ + ",scene = " + this + ",newScene = " + soVar2 + ",oldScene = " + soVar + ",isPlayable = " + this.f12931si + ",isNextShow=" + z10);
        if (soVar2.dLZ != 0 || this.dLZ == 0) {
            return;
        }
        this.jFA.eL();
    }

    public void oJ(float f10) {
        ZYk zYk = this.kkU;
        if (zYk == null) {
            return;
        }
        zYk.oJ(f10);
        if (this.cY || this.jFA.LS() == 43 || f10 < this.jFA.HyG() / 100.0f) {
            return;
        }
        so QSm = this.kkU.QSm();
        if (QSm instanceof oJ) {
            ((oJ) QSm).Id();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(Map<String, Object> map, float f10, float f11) {
        super.oJ(map, f10, f11);
        this.kkU.oJ(map, this, f10, f11);
    }
}
