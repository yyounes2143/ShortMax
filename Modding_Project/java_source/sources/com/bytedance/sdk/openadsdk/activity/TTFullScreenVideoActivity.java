package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.oJ.eZI;
import com.bytedance.sdk.openadsdk.core.HL;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
import com.bytedance.sdk.openadsdk.utils.WcQ;
import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {
    private static com.bytedance.sdk.openadsdk.oJ.tB.ZYk WcQ;
    private com.bytedance.sdk.openadsdk.oJ.tB.ZYk PiB;
    private boolean awB;

    private void HL() {
        if (!this.cFZ) {
            this.cFZ = true;
            QSm.oJ("BVA", "invoke callback onAdClose, ".concat(String.valueOf(this)));
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                oJ("onAdClose");
                return;
            }
            com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk = this.PiB;
            if (zYk != null) {
                zYk.ZYk();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tb() {
        QSm.oJ("BVA", "invoke callback onAdClicked, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdVideoBarClick");
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk = this.PiB;
        if (zYk != null) {
            zYk.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void BTZ() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdShow");
        } else {
            com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk = this.PiB;
            if (zYk != null) {
                zYk.oJ();
            }
        }
        if (jr()) {
            this.ZYk.f13026tb.BTZ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Id() {
        final View kkU = this.ZYk.ofl.kkU();
        if (kkU != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTFullScreenVideoActivity.this.ZYk.Jc.tb() && TTFullScreenVideoActivity.this.ZYk.kkU.get()) {
                        boolean PiB = TTFullScreenVideoActivity.this.ZYk.UN.PiB();
                        TTFullScreenVideoActivity.this.ZYk.Jc.ba(PiB);
                        TTFullScreenVideoActivity.this.ZYk.ofl.ba(8);
                        View view2 = kkU;
                        if (view2 instanceof com.bytedance.sdk.openadsdk.core.Pfn.ex) {
                            ((com.bytedance.sdk.openadsdk.core.Pfn.ex) view2).setImageResource(cY.ex(TTFullScreenVideoActivity.this.ZYk.Rl, "tt_close_btn"));
                        }
                        TTFullScreenVideoActivity.this.ZYk.Jm.sendEmptyMessageDelayed(600, 5000L);
                        if (com.bytedance.sdk.openadsdk.core.model.cY.tB(TTFullScreenVideoActivity.this.ZYk.ZYk)) {
                            if (com.bytedance.sdk.openadsdk.core.model.cY.tB(TTFullScreenVideoActivity.this.ZYk.ZYk) && PiB) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    TTFullScreenVideoActivity.this.ZYk.Jc.HL();
                    TTFullScreenVideoActivity.this.ZYk.UN.dLZ();
                    TTFullScreenVideoActivity.this.ZYk.IUZ.ba();
                    TTFullScreenVideoActivity.this.finish();
                }
            };
            kkU.setOnClickListener(onClickListener);
            kkU.setTag(kkU.getId(), onClickListener);
        }
        this.ZYk.f13022mu.oJ(new com.bytedance.sdk.openadsdk.component.reward.top.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ZYk(View view) {
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                tTFullScreenVideoActivity.ZYk.LpP.oJ(tTFullScreenVideoActivity.tB);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view) {
                com.bytedance.sdk.openadsdk.core.model.cY cYVar;
                com.bytedance.sdk.openadsdk.core.model.ex NTC;
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
                if (!Ln.ba(TTFullScreenVideoActivity.this.ZYk.ZYk) && (!Ln.Pfn(TTFullScreenVideoActivity.this.ZYk.ZYk) || !TTFullScreenVideoActivity.this.ZYk.Xe.so(com.bytedance.sdk.openadsdk.component.reward.oJ.so.ZYk))) {
                    if (Ln.so(TTFullScreenVideoActivity.this.ZYk.ZYk) && (Ln.si(TTFullScreenVideoActivity.this.ZYk.ZYk) || TTFullScreenVideoActivity.this.ZYk.kkU.get())) {
                        if (TTFullScreenVideoActivity.this.ZYk.Xe.oJ()) {
                            TTFullScreenVideoActivity.this.ZYk.Xe.oJ(5);
                        } else {
                            TTFullScreenVideoActivity.this.ZYk.Jc.so();
                        }
                    } else if (!Ln.si(TTFullScreenVideoActivity.this.ZYk.ZYk) && (!com.bytedance.sdk.openadsdk.core.model.QSm.oJ(TTFullScreenVideoActivity.this.ZYk.ZYk) || TTFullScreenVideoActivity.this.ZYk.eZI.get())) {
                        awB.oJ oJVar = new awB.oJ();
                        oJVar.ZYk(TTFullScreenVideoActivity.this.ZYk.cY.BTZ());
                        oJVar.ex(TTFullScreenVideoActivity.this.ZYk.cY.Xe());
                        oJVar.tB(TTFullScreenVideoActivity.this.ZYk.cY.eZI());
                        oJVar.tB(3);
                        oJVar.ex(TTFullScreenVideoActivity.this.ZYk.cY.jr());
                        oJVar.oJ(TTFullScreenVideoActivity.this.ZYk.cY.ZYk());
                        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(TTFullScreenVideoActivity.this.ZYk.cY.so(), oJVar, TTFullScreenVideoActivity.this.ZYk.cY.Pfn());
                        HL.tB(TTFullScreenVideoActivity.this.ZYk.f13020ba);
                        TTFullScreenVideoActivity.this.ZYk.cY.oJ("skip", false);
                        TTFullScreenVideoActivity.this.ZYk.f13022mu.ex(false);
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = TTFullScreenVideoActivity.this.ZYk;
                        if (oJVar2.tB) {
                            if (com.bytedance.sdk.openadsdk.core.model.QSm.tB(oJVar2.ZYk)) {
                                com.bytedance.sdk.openadsdk.component.reward.view.ex oJ2 = TTFullScreenVideoActivity.this.ZYk.f13026tb.oJ();
                                if (oJ2 == null || oJ2.ex != 0) {
                                    TTFullScreenVideoActivity.this.oJ(true, 4);
                                }
                            } else {
                                TTFullScreenVideoActivity.this.oJ(true, 4);
                            }
                            cYVar = TTFullScreenVideoActivity.this.ZYk.ZYk;
                            if (cYVar != null && (NTC = cYVar.NTC()) != null && (oJ = NTC.oJ()) != null) {
                                oJ.ba(TTFullScreenVideoActivity.this.ZYk.cY.BTZ());
                                oJ.Pfn(TTFullScreenVideoActivity.this.ZYk.cY.BTZ());
                            }
                            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(TTFullScreenVideoActivity.this.ZYk.ZYk, 5);
                        }
                        TTFullScreenVideoActivity.this.finish();
                        cYVar = TTFullScreenVideoActivity.this.ZYk.ZYk;
                        if (cYVar != null) {
                            oJ.ba(TTFullScreenVideoActivity.this.ZYk.cY.BTZ());
                            oJ.Pfn(TTFullScreenVideoActivity.this.ZYk.cY.BTZ());
                        }
                        com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(TTFullScreenVideoActivity.this.ZYk.ZYk, 5);
                    } else {
                        if (!Ln.so(TTFullScreenVideoActivity.this.ZYk.ZYk) && TTFullScreenVideoActivity.this.ZYk.Xe.oJ()) {
                            TTFullScreenVideoActivity.this.ZYk.Xe.oJ(4);
                        }
                        TTFullScreenVideoActivity.this.finish();
                    }
                } else if (Ln.kkU(TTFullScreenVideoActivity.this.ZYk.ZYk)) {
                    TTFullScreenVideoActivity.this.ZYk.Xe.si();
                } else {
                    View view2 = kkU;
                    if (view2 != null) {
                        view2.performClick();
                    } else {
                        TTFullScreenVideoActivity.this.finish();
                    }
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
                com.bytedance.sdk.openadsdk.core.model.ex NTC;
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = tTFullScreenVideoActivity.ZYk;
                oJVar.bgF = !oJVar.bgF;
                com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = tTFullScreenVideoActivity.tB;
                if (zYk != null && zYk.ex() != null) {
                    TTFullScreenVideoActivity.this.tB.ex().oJ(TTFullScreenVideoActivity.this.ZYk.bgF);
                }
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = TTFullScreenVideoActivity.this.ZYk;
                oJVar2.cY.oJ(oJVar2.bgF, str);
                if (!Ln.Ry(TTFullScreenVideoActivity.this.ZYk.ZYk) || TTFullScreenVideoActivity.this.ZYk.kkU.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = TTFullScreenVideoActivity.this.ZYk;
                    oJVar3.Jc.Pfn(oJVar3.bgF);
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = TTFullScreenVideoActivity.this.ZYk;
                    oJVar4.Xe.ba(oJVar4.bgF);
                    com.bytedance.sdk.openadsdk.core.model.cY cYVar = TTFullScreenVideoActivity.this.ZYk.ZYk;
                    if (cYVar == null || (NTC = cYVar.NTC()) == null || (oJ = NTC.oJ()) == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar5 = TTFullScreenVideoActivity.this.ZYk;
                    if (oJVar5.bgF) {
                        oJ.so(oJVar5.cY.BTZ());
                    } else {
                        oJ.jFA(oJVar5.cY.BTZ());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public void Ry() {
        com.bytedance.sdk.openadsdk.component.reward.view.ex oJ;
        super.Ry();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && (oJ = oJVar.f13026tb.oJ()) != null) {
            oJ.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.Pfn() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.1
                @Override // com.bytedance.sdk.openadsdk.core.widget.Pfn
                public void oJ() {
                    TTFullScreenVideoActivity.this.tb();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ZYk(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ba() {
        tb();
        this.ZYk.ZYk.Geh();
        this.ZYk.ZYk.tB(true);
        if (com.bytedance.sdk.openadsdk.core.model.cY.Pfn(this.ZYk.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = oJVar.ZYk;
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, oJVar.Pfn, cYVar.nnj());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean cY() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void e_() {
        if (this.ZYk.ZYk.dzr() != 100.0f) {
            this.awB = true;
        }
        tb();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void ex() {
        if (!com.bytedance.sdk.openadsdk.core.model.cY.Pfn(this.ZYk.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            if (!oJVar.tB) {
                oJVar.f13022mu.oJ(null, "X");
                this.ZYk.f13022mu.Pfn(true);
            }
        }
        this.ZYk.f13022mu.oJ(null, TTAdDislikeToast.getSkipText());
        this.ZYk.f13022mu.Pfn(true);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        WcQ = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        if (this.ZYk != null) {
            com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("videoForceBreak", this.ZYk.ZYk);
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            oJVar.Xe.oJ(oJVar.Dex);
        }
        try {
            HL();
        } catch (Exception unused) {
        }
        super.finish();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && !com.bytedance.sdk.openadsdk.core.model.cY.Pfn(oJVar.ZYk)) {
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = this.ZYk.ZYk.ib();
            if (ib2 == null) {
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk = new com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk();
                zYk.oJ(10.0d);
                this.ZYk.ZYk.oJ(zYk);
            } else if (ib2.ba() <= 0.0d) {
                ib2.oJ(10.0d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        HL();
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("recycleRes");
        }
        this.PiB = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        WcQ = this.PiB;
        super.onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && ZYk(oJVar.ZYk) && !oJ(this.ZYk.ZYk)) {
            if (this.awB) {
                this.awB = false;
                finish();
            } else if (this.ZYk.Jc.UN()) {
                finish();
            }
        }
    }

    public void tB(int i10) {
        int HUl = this.ZYk.ZYk.HUl();
        if (si.ex().Pfn(String.valueOf(this.ZYk.f13020ba)) && (com.bytedance.sdk.openadsdk.core.model.cY.Pfn(this.ZYk.ZYk) || this.ZYk.tB)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            if (!oJVar.sH) {
                oJVar.oJ(true);
            }
            if (i10 <= HUl) {
                ex(HUl - i10);
                this.ZYk.f13022mu.Pfn(false);
                return;
            }
            ex();
        } else if (i10 >= HUl) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
            if (!oJVar2.sH) {
                oJVar2.oJ(true);
            }
            ex();
        }
    }

    private boolean ZYk(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        return si.ex().RZ(String.valueOf(this.ZYk.f13020ba));
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(String str, JSONObject jSONObject) {
    }

    private void oJ(final String str) {
        ofl.tB(new com.bytedance.sdk.component.so.so("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTFullScreenVideoActivity.this.ZYk(1).executeFullVideoCallback(TTFullScreenVideoActivity.this.ZYk.nQI, str);
                } catch (Throwable th2) {
                    QSm.tB("TTAD.FSVA", "fullscreen_interstitial_ad", "executeFullVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    private void ex(int i10) {
        this.ZYk.f13022mu.oJ(null, String.format(cY.oJ(si.oJ(), "tt_skip_ad_time_text"), Integer.valueOf(i10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public void oJ(@NonNull Intent intent) {
        super.oJ(intent);
        this.ZYk.Dex = intent.getBooleanExtra("is_verity_playable", false);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(Bundle bundle) {
        if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            this.PiB = IUZ.oJ().tB();
        }
        if (this.PiB != null || bundle == null) {
            return;
        }
        this.PiB = WcQ;
        WcQ = null;
    }

    public boolean oJ(long j10, boolean z10) {
        com.bytedance.sdk.openadsdk.ex.cFZ cfz = new com.bytedance.sdk.openadsdk.ex.cFZ();
        cfz.oJ(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk != null && (zYk instanceof com.bytedance.sdk.openadsdk.component.reward.ZYk.so)) {
            this.ZYk.cY.oJ(((com.bytedance.sdk.openadsdk.component.reward.ZYk.so) zYk).Ln(), cfz);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            oJVar.cY.oJ(oJVar.ofl.ba(), cfz);
        }
        tB.oJ oJVar2 = new tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.5
            boolean oJ;

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void ZYk(long j11, int i10) {
                TTFullScreenVideoActivity.this.ex.removeMessages(300);
                com.bytedance.sdk.openadsdk.core.model.QSm qSm = TTFullScreenVideoActivity.this.ZYk.ofl.awB;
                if (qSm != null) {
                    qSm.kkU();
                }
                if (TTFullScreenVideoActivity.this.ZYk.cY.ba()) {
                    TTFullScreenVideoActivity.this.QSm();
                    return;
                }
                TTFullScreenVideoActivity.this.ZYk.cY.RZ();
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (tTFullScreenVideoActivity.ZYk.tB) {
                    tTFullScreenVideoActivity.oJ(false, true, 3);
                    eZI ezi = TTFullScreenVideoActivity.this.ZYk.cY;
                    ezi.oJ(!ezi.mu(), 2);
                    return;
                }
                tTFullScreenVideoActivity.finish();
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, int i10) {
                WcQ wcQ;
                if (this.oJ) {
                    return;
                }
                this.oJ = true;
                TTFullScreenVideoActivity.this.ex.removeMessages(300);
                TTFullScreenVideoActivity.this.oq();
                TTFullScreenVideoActivity.this.ZYk.cY.oJ(j11, j11);
                TTFullScreenVideoActivity.this.ZYk.RZ.set(true);
                if (TTFullScreenVideoActivity.this.ZYk.ZYk.LS() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = TTFullScreenVideoActivity.this.ZYk;
                    if (oJVar3.tB) {
                        oJVar3.f13021jr.tB().tB(TTFullScreenVideoActivity.this.ZYk.ZYk);
                        com.bytedance.sdk.openadsdk.utils.awB.ZYk();
                    }
                }
                if (TTFullScreenVideoActivity.this.ZYk.ZYk.TAr()) {
                    TTFullScreenVideoActivity.this.ZYk.ZYk.Rl(1);
                    TTFullScreenVideoActivity.this.ZYk.ofl.si();
                }
                if (TTFullScreenVideoActivity.this.ZYk.ZYk.LS() == 21 && !TTFullScreenVideoActivity.this.ZYk.ZYk.WcQ()) {
                    TTFullScreenVideoActivity.this.ZYk.ZYk.ex(true);
                    TTFullScreenVideoActivity.this.ZYk.ofl.si();
                }
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (tTFullScreenVideoActivity.dLZ && tTFullScreenVideoActivity.ZYk.f13026tb.dLZ()) {
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = TTFullScreenVideoActivity.this.ZYk;
                if (oJVar4.tB) {
                    if (oJVar4.ZYk.Qu()) {
                        TTFullScreenVideoActivity.this.ZYk.f13022mu.tB();
                        return;
                    }
                    TTFullScreenVideoActivity.this.oJ(false, 5);
                    if (com.bytedance.sdk.openadsdk.core.model.QSm.ZYk(TTFullScreenVideoActivity.this.ZYk.ZYk) && (wcQ = TTFullScreenVideoActivity.this.ZYk.jXJ) != null) {
                        wcQ.oJ(0L);
                    }
                    if (com.bytedance.sdk.openadsdk.core.model.cY.Pfn(TTFullScreenVideoActivity.this.ZYk.ZYk)) {
                        return;
                    }
                    TTFullScreenVideoActivity.this.ZYk.cY.oJ("skip", true);
                } else if (oJVar4.ZYk.Qu()) {
                    TTFullScreenVideoActivity.this.ZYk.f13022mu.tB();
                } else {
                    if (!com.bytedance.sdk.openadsdk.core.model.cY.Pfn(TTFullScreenVideoActivity.this.ZYk.ZYk)) {
                        TTFullScreenVideoActivity.this.ZYk.cY.oJ("skip", true);
                    }
                    TTFullScreenVideoActivity.this.finish();
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ() {
                TTFullScreenVideoActivity.this.ex.removeMessages(300);
                TTFullScreenVideoActivity.this.oq();
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = tTFullScreenVideoActivity.ZYk;
                if (oJVar3.tB) {
                    eZI ezi = oJVar3.cY;
                    ezi.oJ(!ezi.mu(), !TTFullScreenVideoActivity.this.ZYk.cY.mu());
                    TTFullScreenVideoActivity.this.oJ(false, true, 6);
                } else {
                    tTFullScreenVideoActivity.finish();
                }
                TTFullScreenVideoActivity.this.ZYk.cY.RZ();
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, long j12) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = TTFullScreenVideoActivity.this.ZYk;
                if (!oJVar3.Yg && oJVar3.cY.ba()) {
                    TTFullScreenVideoActivity.this.ZYk.cY.oq();
                }
                if (TTFullScreenVideoActivity.this.ZYk.kkU.get()) {
                    return;
                }
                TTFullScreenVideoActivity.this.ex.removeMessages(300);
                if (j11 != TTFullScreenVideoActivity.this.ZYk.cY.PiB()) {
                    TTFullScreenVideoActivity.this.oq();
                }
                TTFullScreenVideoActivity.this.ZYk.cY.oJ(j11, j12);
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                long j13 = j11 / 1000;
                tTFullScreenVideoActivity.f12869ba = (int) (tTFullScreenVideoActivity.ZYk.cY.XAo() - j13);
                int i10 = (int) j13;
                if ((TTFullScreenVideoActivity.this.ZYk.QSm.get() || TTFullScreenVideoActivity.this.ZYk.dLZ.get()) && TTFullScreenVideoActivity.this.ZYk.cY.ba()) {
                    TTFullScreenVideoActivity.this.ZYk.cY.oq();
                }
                TTFullScreenVideoActivity.this.tB(i10);
                TTFullScreenVideoActivity tTFullScreenVideoActivity2 = TTFullScreenVideoActivity.this;
                int i11 = tTFullScreenVideoActivity2.f12869ba;
                if (i11 >= 0) {
                    tTFullScreenVideoActivity2.ZYk.f13022mu.oJ(String.valueOf(i11), null);
                }
            }
        };
        this.ZYk.cY.oJ(oJVar2);
        com.bytedance.sdk.openadsdk.core.model.QSm qSm = this.ZYk.ofl.awB;
        if (qSm != null) {
            qSm.oJ(oJVar2);
        }
        return this.ZYk.cY.oJ(j10, z10, null, this.tB);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void RZ() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void f_() {
    }

    private boolean oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        return cYVar == null || cYVar.dzr() == 100.0f;
    }
}
