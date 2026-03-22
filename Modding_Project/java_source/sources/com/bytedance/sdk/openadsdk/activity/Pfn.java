package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ;
import com.bytedance.sdk.openadsdk.component.reward.view.kkU;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.ZYk;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import java.util.Objects;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn extends so implements IUZ.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk {
    private static String Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private static String f12857ba;
    private static String cFZ;

    /* renamed from: oq  reason: collision with root package name */
    private static String f12858oq;

    /* renamed from: so  reason: collision with root package name */
    private static String f12859so;
    private long HL;
    private JSONObject IUZ;
    private Bundle Id;
    private int Ln;
    private boolean LpP;
    private boolean Xe;
    protected final IUZ ZYk;
    private int cY;
    protected com.bytedance.sdk.openadsdk.component.reward.oJ.oJ ex;

    /* renamed from: jr  reason: collision with root package name */
    private ZYk.Pfn f12860jr;
    private boolean nke;
    public boolean oJ;
    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk tB;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f12861tb;

    public Pfn(ZYk zYk, cY cYVar, int i10, int i11, boolean z10, boolean z11, boolean z12) {
        super(zYk, cYVar, i10, i11, z11);
        this.ZYk = new IUZ(Looper.getMainLooper(), this);
        boolean z13 = false;
        this.cY = 0;
        this.nke = true;
        this.f12931si = z10;
        this.WcQ = zYk.ZYk();
        if (z10 && Ln.tB(cYVar)) {
            z13 = true;
        }
        this.LpP = z13;
        this.oJ = z12;
        oJ(cYVar, this.Id);
    }

    private void Jc() {
        if (this.f12861tb) {
            return;
        }
        this.f12861tb = true;
        if (!this.oJ) {
            this.ex.bD = this.kkU.RZ();
        }
        this.ex.f13027wd.oJ(this.tB);
        this.tB.oJ(this, this.ZYk);
        this.tB.dLZ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean LS() {
        if ((this.WcQ || this.f12931si) && !ofl()) {
            try {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), this.jFA, this.ex.Pfn, "skip", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.Pfn.3
                    @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                    public JSONObject oJ() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("duration", Pfn.this.HL);
                            jSONObject.put("percent", Pfn.this.Ln);
                            if (Pfn.this.IUZ != null) {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("scene_type", Pfn.this.ex.oJ);
                                Pfn.this.IUZ.put("pag_json_data", jSONObject2.toString());
                                jSONObject.put("ad_extra_data", Pfn.this.IUZ);
                            }
                        } catch (Throwable unused) {
                        }
                        return jSONObject;
                    }
                });
            } catch (Throwable unused) {
            }
            this.kkU.oJ(this, true, false, false, 4);
            return true;
        }
        return false;
    }

    private boolean NO() {
        if (this.ex.kkU.get() && this.ex.cFZ) {
            return false;
        }
        if (this.jFA.Pfn()) {
            return this.ex.kkU.get();
        }
        return true;
    }

    private void UN() {
        if (this.Xe) {
            return;
        }
        this.Xe = true;
        if (Ln.cFZ(this.ex.ZYk) || com.bytedance.sdk.openadsdk.oq.oJ.oJ("ivrv_new_arch_endcard_view_add_at_first", 0) == 1) {
            if (this.WcQ) {
                this.kkU.oJ(oJ(), ofl());
            } else {
                this.kkU.oJ(oJ());
            }
        }
        this.tB.oJ(this.QSm);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jB() {
        ZYk.Pfn pfn = new ZYk.Pfn(7, this.ex);
        pfn.ex = this.ex.bgF;
        this.kkU.ZYk(this, pfn);
    }

    private void mwH() {
        final View kkU = this.ex.ofl.kkU();
        if (kkU != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.Pfn.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (Pfn.this.ex.Jc.tb()) {
                        boolean PiB = Pfn.this.ex.UN.PiB();
                        Pfn.this.ex.Jc.ba(PiB);
                        Pfn.this.ex.ofl.ba(8);
                        View view2 = kkU;
                        if (view2 instanceof com.bytedance.sdk.openadsdk.core.Pfn.ex) {
                            ((com.bytedance.sdk.openadsdk.core.Pfn.ex) view2).setImageResource(com.bytedance.sdk.component.utils.cY.ex(Pfn.this.ex.Rl, "tt_close_btn"));
                        }
                        Pfn.this.ex.Jm.sendEmptyMessageDelayed(600, 5000L);
                        if (cY.tB(Pfn.this.ex.ZYk)) {
                            if (cY.tB(Pfn.this.ex.ZYk) && PiB) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    Pfn.this.ex.Jc.HL();
                    Pfn.this.ex.UN.dLZ();
                    Pfn.this.ex.IUZ.ba();
                    if (Ln.ex(Pfn.this.ex.ZYk) && Pfn.this.oJ(true, true, (Runnable) null)) {
                        return;
                    }
                    Pfn.this.cdg();
                }
            };
            kkU.setOnClickListener(onClickListener);
            kkU.setTag(kkU.getId(), onClickListener);
        }
        this.ex.f13022mu.oJ(new com.bytedance.sdk.openadsdk.component.reward.top.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.Pfn.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ZYk(View view) {
                Pfn.this.c_();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ex(View view) {
                Log.e("TTAD.EndCardScene", "onPlayableChangeNext: click");
                Pfn.this.oTd();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view) {
                Pfn pfn = Pfn.this;
                if (pfn.oJ(Ln.tB(pfn.ex.ZYk), false, (Runnable) null) || Pfn.this.LS()) {
                    return;
                }
                if (Ln.Pfn(Pfn.this.ex.ZYk)) {
                    if (Ln.kkU(Pfn.this.ex.ZYk)) {
                        Pfn.this.ex.Xe.si();
                        return;
                    }
                    View view2 = kkU;
                    if (view2 != null) {
                        view2.performClick();
                    } else {
                        Pfn.this.cdg();
                    }
                } else if (Ln.so(Pfn.this.ex.ZYk)) {
                    if (Pfn.this.ex.Xe.oJ()) {
                        Pfn.this.ex.Xe.oJ(5);
                    } else {
                        Pfn.this.ex.Jc.so();
                    }
                } else if (!Ln.si(Pfn.this.ex.ZYk) && (!QSm.oJ(Pfn.this.ex.ZYk) || Pfn.this.ex.eZI.get())) {
                    Pfn.this.cdg();
                } else {
                    if (!Ln.so(Pfn.this.ex.ZYk) && Pfn.this.ex.Xe.oJ()) {
                        Pfn.this.ex.Xe.oJ(4);
                    }
                    Pfn.this.cdg();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void tB(View view) {
                View view2 = kkU;
                if (view2 != null) {
                    view2.performClick();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view, String str) {
                Pfn.this.oJ(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oTd() {
        try {
            int Xe = this.kkU.Xe();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("click_countdown_remaining", Math.max(Xe, 0));
            com.bytedance.sdk.openadsdk.ex.tB.cFZ(this.jFA, this.ex.Pfn, jSONObject);
        } catch (Throwable unused) {
        }
        Xe();
    }

    private void yz() {
        try {
            Jc();
        } catch (Throwable unused) {
            cdg();
        }
        UN();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final void BTZ() {
        super.BTZ();
        if (this.ex != null && !com.bytedance.sdk.component.utils.ZYk.oJ(HyG())) {
            this.ex.Jc.Jc();
            com.bytedance.sdk.openadsdk.utils.ex.oJ(HyG(), this.ex.ZYk);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public List<cY> IUZ() {
        return this.kkU.cY();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void Ln() {
        eZI();
    }

    public boolean LpP() {
        return this.ex.Jc.ofl();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final void PiB() {
        super.PiB();
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.QSm();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void QSm() {
        super.QSm();
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.Id();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void RZ() {
        boolean z10;
        boolean z11 = true;
        boolean z12 = false;
        if ((1.0f - (this.ex.Xe.ZYk() / this.ex.ZYk.zUb())) * 100.0f >= si.ex().Xe(String.valueOf(this.ex.f13020ba)).f13248ba) {
            z10 = true;
        } else {
            z10 = false;
        }
        int oJ = si.ex().oJ(String.valueOf(this.ex.f13020ba));
        if (oJ == 0) {
            boolean ba2 = this.ex.Jc.BTZ().ba();
            if (this.ex.Xe.tB()) {
                ba2 = true;
            }
            if (!z10 || !ba2) {
                z11 = false;
            }
            z12 = z11;
        } else if (oJ == 1) {
            z12 = z10;
        }
        if (z12) {
            nQI();
        }
    }

    public void Xe() {
        if (ofl()) {
            return;
        }
        ZYk.Pfn pfn = new ZYk.Pfn(8, this.ex);
        pfn.ex = this.ex.bgF;
        ZYk zYk = this.kkU;
        if (zYk != null) {
            zYk.oJ(this, pfn);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    protected boolean a_() {
        return this.ex.ex;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final View awB() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public String b_() {
        return this.ex.Pfn;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void cFZ() {
        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.EndCardScene", "onPlayableLoadingDismiss()---" + this.dLZ + ",scene = " + this);
        ZYk zYk = this.kkU;
        if (zYk != null) {
            zYk.oJ(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public boolean cY() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ex;
        if (oJVar != null && oJVar.cY.nke()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void c_() {
        this.ex.LpP.oJ(this.tB);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void dLZ() {
        if (this.kkU == null) {
            return;
        }
        this.ex.XAo.oJ(this.f12860jr.oJ.getBoolean("isSkip", false), this.f12860jr.oJ.getBoolean("force", false), this.f12860jr.oJ.getBoolean("isFromLandingPage", false), this.tB, this.f12860jr.ZYk);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public boolean d_() {
        return this.ex.bgF;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void eZI() {
        if (this.ex.WcQ.getAndSet(true) && !Ln.si(this.ex.ZYk)) {
            return;
        }
        this.ex.IUZ.oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void e_() {
        Qu();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ex(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void f_() {
        ex(2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void jFA() {
        Jm();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    protected String jr() {
        return this.ex.nQI;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(int i10) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oq() {
        super.oq();
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk != null) {
            zYk.cY();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void si() {
        nQI();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ZYk(boolean z10) {
        if (!z10 || this.ex.uvK) {
            return;
        }
        nQI();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void ba() {
        Qu();
        this.ex.ZYk.Geh();
        this.ex.ZYk.tB(true);
        if (cY.Pfn(this.ex.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ex;
            cY cYVar = oJVar.ZYk;
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, oJVar.Pfn, cYVar.nnj());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final void tB() {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk;
        super.tB();
        if (this.ex == null || (zYk = this.tB) == null) {
            return;
        }
        zYk.si();
        this.ex.Yg = true;
        if (NO()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ex;
            oJVar.f13022mu.oJ(oJVar.ZYk.LTg());
        }
        this.ex.ofl.awB();
        this.ex.Jc.Id();
        this.ex.Xe.PiB();
        if (this.tB.ZYk()) {
            this.ex.cY.oJ(this.tB);
            this.ex.cY.oJ(false, this, this.cY != 0);
        }
        this.cY++;
        kkU kku = this.ex.f13026tb;
        if (kku != null) {
            kku.cFZ();
        }
        this.ex.HL.oJ(this.ZYk);
        this.tB.RZ();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void ex() {
        super.ex();
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.oq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public boolean oJ(long j10, boolean z10) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final void oJ(Activity activity, Bundle bundle) {
        this.Id = bundle;
        super.oJ(activity, bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public final com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ() {
        return this.ex.f13027wd;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(Activity activity, ZYk.Pfn pfn) {
        ZYk zYk;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar;
        this.f12860jr = pfn;
        Intent intent = activity.getIntent();
        this.eZI = intent.getStringExtra("media_extra");
        this.awB = intent.getStringExtra(TTVideoEngineInterface.PLAY_API_KEY_USERID);
        try {
            if (f12859so == null) {
                f12859so = com.bytedance.sdk.component.utils.cY.oJ(this.ex.Rl, "tt_reward_msg");
                Pfn = com.bytedance.sdk.component.utils.cY.oJ(this.ex.Rl, "tt_msgPlayable");
                cFZ = com.bytedance.sdk.component.utils.cY.oJ(this.ex.Rl, "tt_negtiveBtnBtnText");
                f12858oq = com.bytedance.sdk.component.utils.cY.oJ(this.ex.Rl, "tt_postiveBtnText");
                f12857ba = com.bytedance.sdk.component.utils.cY.oJ(this.ex.Rl, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.EndCardScene", th2.getMessage());
        }
        if (pfn != null && (oJVar = pfn.tB) != null) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ex;
            oJVar2.oIC = oJVar.oIC;
            oJVar2.bgF = oJVar.bgF;
            if ((this.WcQ || this.f12931si) && !ofl()) {
                this.ex.BTZ.set(oJVar.BTZ.get());
            }
            if (!this.LpP) {
                this.ex.PiB.set(oJVar.PiB.get());
                this.ex.WcQ.set(oJVar.WcQ.get());
            }
            this.ex.cY.oJ(oJVar.cY.Pfn());
            oJ(this.ex, oJVar);
        }
        if (this.WcQ || this.f12931si) {
            try {
                Jc();
            } catch (Throwable unused) {
                cdg();
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.ex;
        if (oJVar3 != null && (zYk = this.kkU) != null) {
            oJVar3.EP = zYk.oJ;
        }
        UN();
        mwH();
        dLZ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void WcQ() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void mu() {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void tB(boolean z10) {
        dLZ dlz;
        long j10 = this.nke ? this.ex.oIC : 0L;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ex;
        if (oJVar != null && (dlz = oJVar.IUZ) != null) {
            dlz.ZYk(z10);
            this.ex.IUZ.tB(z10);
            if (z10 && j10 > 0) {
                this.ex.oIC = j10;
            }
        }
        if (z10) {
            this.nke = false;
        }
    }

    private void oJ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar, com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2) {
        if (this.WcQ && !ofl() && oJVar != null && oJVar2 != null) {
            try {
                this.HL = oJVar2.cY.PiB();
                if (this.jFA.Qu()) {
                    this.HL = oJVar2.tB();
                }
                this.Ln = oJVar2.cY.cY();
                this.IUZ = HyG.oJ(this.jFA, oJVar2.cY.eZI(), oJVar2.cY.si());
            } catch (Throwable unused) {
            }
        }
    }

    private void oJ(cY cYVar, Bundle bundle) {
        Activity HyG = HyG();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = new com.bytedance.sdk.openadsdk.component.reward.oJ.oJ(HyG, this.ZYk, cYVar, this, 2);
        this.ex = oJVar;
        oJVar.YQ = this.f12931si;
        oJVar.uvK = this.kkU.tB();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ex;
        oJVar2.UF = this.WcQ;
        oJVar2.VJm = this.kkU.oJ();
        if (!this.oJ) {
            this.ex.bD = this.kkU.RZ();
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.ex;
        oJVar3.oCU = this;
        oJVar3.nke = this.kkU.si();
        com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(this.ex, HyG.getIntent(), bundle);
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk oJ = com.bytedance.sdk.openadsdk.component.reward.ZYk.ba.oJ(this.ex);
        this.tB = oJ;
        this.ex.UK = oJ;
        Objects.toString(this.tB);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(String str) {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk != null && zYk.ex() != null) {
            this.tB.ex().oJ(this.ex.bgF);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ex;
        oJVar.bgF = !oJVar.bgF;
        StringBuilder sb2 = new StringBuilder("will set is Mute ");
        sb2.append(this.ex.bgF);
        sb2.append(" mLastVolume=");
        sb2.append(this.ex.nke.oJ());
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ex;
        oJVar2.cY.oJ(oJVar2.bgF, str);
        if (!Ln.Ry(this.ex.ZYk) || this.ex.kkU.get()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.ex;
            oJVar3.Jc.Pfn(oJVar3.bgF);
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = this.ex;
            oJVar4.Xe.ba(oJVar4.bgF);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(Activity activity) {
        super.oJ(activity);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ex;
        if (oJVar == null) {
            return;
        }
        oJVar.HL.oJ();
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public final void oJ(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.oJ(message);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(String str, JSONObject jSONObject) {
        if (str == null || !"skipToNextAd".equals(str) || this.kkU == null || ofl()) {
            return;
        }
        if (this.kkU.QSm() == null && oJ(Ln.tB(this.ex.ZYk), false, new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.Pfn.4
            @Override // java.lang.Runnable
            public void run() {
                Pfn.this.jB();
            }
        })) {
            return;
        }
        jB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(boolean z10) {
        ZYk zYk = this.kkU;
        if (zYk != null) {
            zYk.oJ(this, z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(so soVar, so soVar2, ZYk.Pfn pfn) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar;
        super.oJ(soVar, soVar2, pfn);
        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.EndCardScene", "【onActiveSceneChanged】" + this.dLZ + ",scene = " + this + ",newScene = " + soVar2 + ",oldScene = " + soVar + ",isPlayable = " + this.f12931si);
        boolean z10 = this.dLZ == soVar2.dLZ + 1;
        if (soVar != null && (oJVar = this.ex) != null) {
            oJVar.bgF = pfn.ex;
        }
        if (z10) {
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.EndCardScene", "preload index =" + this.dLZ + ",new index =" + soVar2.dLZ + ",isPlayableProxy = " + this.f12931si);
            yz();
        }
        if (soVar == null && this.oJ) {
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.EndCardScene", "preload agg-endcard =" + this.dLZ + ",new index =" + soVar2.dLZ + ",isPlayableProxy = " + this.f12931si);
            yz();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(final boolean z10, boolean z11, final Runnable runnable) {
        if (!this.ex.ex || this.kkU.jFA().getBoolean("reward_verify", false) || this.kkU.PiB()) {
            return false;
        }
        if (z11 || !this.kkU.jFA().getBoolean("user_has_give_up_reward", false)) {
            if (!si.ex().cFZ(String.valueOf(this.ex.f13020ba))) {
                if (!z11) {
                    return false;
                }
                if (runnable == null && z10) {
                    cdg();
                    return true;
                }
            }
            this.ex.QSm.set(true);
            if (z10) {
                this.ex.Xe.WcQ();
            }
            final com.bytedance.sdk.openadsdk.core.widget.ZYk zYk = new com.bytedance.sdk.openadsdk.core.widget.ZYk(this.ex.HyG);
            this.tB.PiB = zYk;
            if (z10) {
                zYk.oJ(Pfn).ZYk(f12857ba).tB(cFZ);
            } else {
                zYk.oJ(f12859so).ZYk(f12858oq).tB(cFZ);
            }
            this.tB.PiB.oJ(new ZYk.InterfaceC0229ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.Pfn.5
                @Override // com.bytedance.sdk.openadsdk.core.widget.ZYk.InterfaceC0229ZYk
                public void ZYk() {
                    zYk.dismiss();
                    Pfn.this.kkU.jFA().putBoolean("user_has_give_up_reward", true);
                    Pfn.this.ex.QSm.set(false);
                    Pfn.this.ex.Xe.ba(Integer.MAX_VALUE);
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    } else if (!z10) {
                        Pfn.this.LS();
                    } else if (Ln.so(Pfn.this.ex.ZYk)) {
                        if (Pfn.this.ex.Xe.oJ()) {
                            Pfn.this.ex.Xe.oJ(5);
                            return;
                        }
                        Pfn.this.ex.Jc.so();
                        Pfn.this.LS();
                    } else {
                        Pfn.this.ex.IUZ.ba();
                        if (Pfn.this.ex.Xe.oJ()) {
                            Pfn.this.ex.Xe.oJ(4);
                        }
                        Pfn.this.cdg();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.ZYk.InterfaceC0229ZYk
                public void oJ() {
                    if (z10) {
                        Pfn.this.ex.Xe.Pfn(1000);
                    }
                    zYk.dismiss();
                    Pfn.this.ex.QSm.set(false);
                }
            }).show();
            return true;
        }
        return false;
    }
}
