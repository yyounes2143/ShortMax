package com.bytedance.sdk.openadsdk.activity;

import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.view.kkU;
import com.bytedance.sdk.openadsdk.core.HL;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
/* loaded from: classes3.dex */
public class ba extends oJ {

    /* renamed from: ba  reason: collision with root package name */
    int f12909ba;
    private boolean cFZ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f12910so;

    public ba(ZYk zYk, cY cYVar, int i10, int i11, boolean z10) {
        super(zYk, cYVar, i10, i11, z10);
    }

    private void ba(int i10) {
        this.tB.f13022mu.oJ(null, new SpannableStringBuilder(String.format(com.bytedance.sdk.component.utils.cY.oJ(si.oJ(), "tt_skip_ad_time_text"), Integer.valueOf(i10))));
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ
    protected void Pfn() {
        final View kkU = this.tB.ofl.kkU();
        if (kkU != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.ba.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ba.this.tB.Jc.tb() && ba.this.tB.kkU.get()) {
                        boolean PiB = ba.this.tB.UN.PiB();
                        ba.this.tB.Jc.ba(PiB);
                        ba.this.tB.ofl.ba(8);
                        ba.this.tB.Jm.sendEmptyMessageDelayed(600, 5000L);
                        if (cY.tB(ba.this.tB.ZYk)) {
                            if (cY.tB(ba.this.tB.ZYk) && PiB) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    ba.this.tB.Jc.HL();
                    ba.this.tB.UN.dLZ();
                    ba.this.tB.IUZ.ba();
                    ba.this.cdg();
                }
            };
            kkU.setOnClickListener(onClickListener);
            kkU.setTag(kkU.getId(), onClickListener);
        }
        this.tB.f13022mu.oJ(new com.bytedance.sdk.openadsdk.component.reward.top.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.ba.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ZYk(View view) {
                ba.this.c_();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view) {
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
                if (Ln.so(ba.this.tB.ZYk) && (Ln.si(ba.this.tB.ZYk) || ba.this.tB.kkU.get())) {
                    if (ba.this.tB.Xe.oJ()) {
                        ba.this.tB.Xe.oJ(5);
                    } else {
                        ba.this.tB.Jc.so();
                    }
                } else if (!Ln.si(ba.this.tB.ZYk) && (!QSm.oJ(ba.this.tB.ZYk) || ba.this.tB.eZI.get())) {
                    ba.this.tB.cY.LpP();
                    awB.oJ oJVar = new awB.oJ();
                    oJVar.ZYk(ba.this.tB.cY.BTZ());
                    oJVar.ex(ba.this.tB.cY.Xe());
                    oJVar.tB(ba.this.tB.cY.eZI());
                    oJVar.tB(3);
                    oJVar.ex(ba.this.tB.cY.jr());
                    oJVar.oJ(ba.this.tB.cY.ZYk());
                    com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(ba.this.tB.cY.so(), oJVar, ba.this.tB.cY.Pfn());
                    HL.tB(ba.this.tB.f13020ba);
                    ba.this.tB.cY.oJ("skip", false);
                    ba.this.tB.f13022mu.ex(false);
                    ba baVar = ba.this;
                    if (baVar.tB.tB) {
                        baVar.oJ(true, 4);
                    } else {
                        baVar.cdg();
                    }
                    cY cYVar = ba.this.tB.ZYk;
                    if (cYVar != null && cYVar.NTC() != null) {
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = ba.this.tB;
                        if (oJVar2.cY != null && (oJ = oJVar2.ZYk.NTC().oJ()) != null) {
                            oJ.ba(ba.this.tB.cY.BTZ());
                            oJ.Pfn(ba.this.tB.cY.BTZ());
                        }
                    }
                    com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(ba.this.tB.ZYk, 5);
                } else {
                    if (!Ln.so(ba.this.tB.ZYk) && ba.this.tB.Xe.oJ()) {
                        ba.this.tB.Xe.oJ(4);
                    }
                    ba.this.cdg();
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
            public void ex(View view) {
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view, String str) {
                ba.this.oJ(str);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void XAo() {
        super.XAo();
        this.f12910so = false;
        this.tB.f13026tb.ZYk(false);
        this.tB.cY.Rl();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ
    public void ZYk() {
        if (!cY.Pfn(this.tB.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
            if (!oJVar.tB) {
                oJVar.f13022mu.oJ(null, "X");
                this.tB.f13022mu.Pfn(true);
            }
        }
        this.tB.f13022mu.oJ(null, TTAdDislikeToast.getSkipText());
        this.tB.f13022mu.Pfn(true);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    protected boolean a_() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public String b_() {
        return "fullscreen_interstitial_ad";
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void c_() {
        this.tB.LpP.oJ(((oJ) this).ZYk);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public boolean d_() {
        return this.tB.bgF;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void e_() {
        if (this.tB.ZYk.dzr() != 100.0f) {
            this.cFZ = true;
        }
        Qu();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.activity.so
    public void ex() {
        super.ex();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar != null && ZYk(oJVar.ZYk) && !oJ(this.tB.ZYk)) {
            if (this.cFZ) {
                this.cFZ = false;
                cdg();
            } else if (this.tB.Jc.UN()) {
                cdg();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ
    protected void kkU() {
        Jm();
        if (this.jFA.Pfn()) {
            this.tB.f13026tb.BTZ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(Bundle bundle) {
    }

    private boolean ZYk(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        return si.ex().RZ(String.valueOf(this.tB.f13020ba));
    }

    private boolean oJ(cY cYVar) {
        return cYVar == null || cYVar.dzr() == 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Pfn(int i10) {
        int HUl = this.tB.ZYk.HUl();
        if (!si.ex().Pfn(String.valueOf(this.tB.f13020ba)) || (!cY.Pfn(this.tB.ZYk) && !this.tB.tB)) {
            if (i10 >= HUl) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
                if (!oJVar.sH) {
                    oJVar.oJ(true);
                }
                ZYk();
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.tB;
        if (!oJVar2.sH) {
            oJVar2.oJ(true);
        }
        if (i10 <= HUl) {
            ba(HUl - i10);
            this.tB.f13022mu.Pfn(false);
            return;
        }
        ZYk();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(String str) {
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        oJVar.bgF = !oJVar.bgF;
        kkU kku = oJVar.f13026tb;
        if (kku != null && kku.oJ() != null) {
            this.tB.f13026tb.oJ().setSoundMute(this.tB.bgF);
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = ((oJ) this).ZYk;
        if (zYk != null && zYk.ex() != null) {
            ((oJ) this).ZYk.ex().oJ(this.tB.bgF);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.tB;
        oJVar2.cY.oJ(oJVar2.bgF, str);
        if (!Ln.Ry(this.tB.ZYk) || this.tB.kkU.get()) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.tB;
            oJVar3.Jc.Pfn(oJVar3.bgF);
            cY cYVar = this.tB.ZYk;
            if (cYVar == null || (NTC = cYVar.NTC()) == null || (oJ = NTC.oJ()) == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = this.tB;
            if (oJVar4.bgF) {
                oJ.so(oJVar4.cY.BTZ());
            } else {
                oJ.jFA(oJVar4.cY.BTZ());
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void f_() {
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean oJ(long r10, boolean r12) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.ba.oJ(long, boolean):boolean");
    }
}
