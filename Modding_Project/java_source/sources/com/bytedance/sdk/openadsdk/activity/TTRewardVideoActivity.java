package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.dLZ;
import com.bytedance.sdk.openadsdk.component.reward.oJ.eZI;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.cY;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.ZYk;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.WcQ;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.awB;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private static String QSm;
    private static String RZ;
    private static String Ry;
    private static com.bytedance.sdk.openadsdk.oJ.Pfn.oJ cY;
    private static String eZI;

    /* renamed from: si  reason: collision with root package name */
    private static String f12885si;
    private String Id;
    protected int PiB;
    protected int WcQ;
    protected com.bytedance.sdk.openadsdk.oJ.Pfn.oJ awB;

    /* renamed from: oq  reason: collision with root package name */
    private String f12887oq;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f12888tb;

    /* renamed from: jr  reason: collision with root package name */
    private final AtomicBoolean f12886jr = new AtomicBoolean(false);
    private int Xe = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x009f, code lost:
        if (r3.ZYk.eZI.get() == false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void HL() {
        /*
            r3 = this;
            com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB$oJ r0 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB$oJ
            r0.<init>()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.BTZ()
            r0.ZYk(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.Xe()
            r0.ex(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.eZI()
            r0.tB(r1)
            r1 = 3
            r0.tB(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            int r1 = r1.jr()
            r0.ex(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.ZYk()
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ r1 = r1.so()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r2 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r2 = r2.cY
            com.bytedance.sdk.openadsdk.ex.cFZ r2 = r2.Pfn()
            com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(r1, r0, r2)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            int r0 = r0.f13020ba
            com.bytedance.sdk.openadsdk.core.HL.tB(r0)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r0 = r0.cY
            java.lang.String r1 = "skip"
            r2 = 0
            r0.oJ(r1, r2)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            boolean r1 = r0.tB
            if (r1 == 0) goto La1
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.QSm.tB(r0)
            r1 = 4
            r2 = 1
            if (r0 == 0) goto L8a
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.view.kkU r0 = r0.f13026tb
            com.bytedance.sdk.openadsdk.component.reward.view.ex r0 = r0.oJ()
            if (r0 == 0) goto L86
            int r0 = r0.ex
            if (r0 != 0) goto L86
            r3.finish()
            goto L8d
        L86:
            r3.oJ(r2, r1)
            goto L8d
        L8a:
            r3.oJ(r2, r1)
        L8d:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.QSm.oJ(r0)
            if (r0 == 0) goto La4
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.eZI
            boolean r0 = r0.get()
            if (r0 != 0) goto La4
        La1:
            r3.finish()
        La4:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            com.bytedance.sdk.openadsdk.core.model.ex r0 = r0.NTC()
            if (r0 == 0) goto Lc2
            com.bytedance.sdk.openadsdk.core.dLZ.ex r0 = r0.oJ()
            if (r0 == 0) goto Lc2
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.BTZ()
            r0.ba(r1)
            r0.Pfn(r1)
        Lc2:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.ZYk
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            r1 = 5
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.HL():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Ln() {
        QSm.oJ("BVA", "invoke callback onAdClicked, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdVideoBarClick");
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar = this.awB;
        if (oJVar != null) {
            oJVar.onAdClicked();
        }
    }

    private JSONObject LpP() {
        JSONObject jSONObject = new JSONObject();
        int tb2 = (int) this.ZYk.cY.tb();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_NAME, this.ZYk.ZYk.sH());
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, this.ZYk.ZYk.Dex());
            jSONObject.put("network", Ry.tB(getApplicationContext()));
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            int oG = this.ZYk.ZYk.oG();
            String str = "unKnow";
            if (oG == 2) {
                str = HyG.ZYk();
            } else if (oG == 1) {
                str = HyG.ex();
            }
            jSONObject.put("user_agent", str);
            JSONObject DTf = this.ZYk.ZYk.DTf();
            DTf.put("gaid", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
            jSONObject.put(GearStrategyConsts.EV_EXTRA_INFO, DTf);
            jSONObject.put("media_extra", this.f12887oq);
            jSONObject.put("video_duration", this.ZYk.ZYk.ib().ba());
            jSONObject.put("play_start_ts", this.PiB);
            jSONObject.put("play_end_ts", this.WcQ);
            jSONObject.put("duration", tb2);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, this.Id);
            jSONObject.put("trans_id", Xe.oJ().replace("-", ""));
            return jSONObject;
        } catch (Throwable th2) {
            QSm.oJ("TTAD.RVA", "", th2);
            return null;
        }
    }

    private void nke() {
        dLZ dlz;
        if (!this.cFZ) {
            this.cFZ = true;
            QSm.oJ("BVA", "invoke callback onAdClose, ".concat(String.valueOf(this)));
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            if (oJVar != null && (dlz = oJVar.EP) != null) {
                dlz.ex();
            }
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                oJ("onAdClose");
                return;
            }
            com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar2 = this.awB;
            if (oJVar2 != null) {
                oJVar2.ZYk();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void BTZ() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdShow");
        } else {
            com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar = this.awB;
            if (oJVar != null) {
                oJVar.oJ();
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
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTRewardVideoActivity.this.ZYk.Jc.tb() && TTRewardVideoActivity.this.ZYk.kkU.get()) {
                        boolean PiB = TTRewardVideoActivity.this.ZYk.UN.PiB();
                        TTRewardVideoActivity.this.ZYk.Jc.ba(PiB);
                        TTRewardVideoActivity.this.ZYk.ofl.ba(8);
                        View view2 = kkU;
                        if (view2 instanceof com.bytedance.sdk.openadsdk.core.Pfn.ex) {
                            ((com.bytedance.sdk.openadsdk.core.Pfn.ex) view2).setImageResource(cY.ex(TTRewardVideoActivity.this.ZYk.Rl, "tt_close_btn"));
                        }
                        TTRewardVideoActivity.this.ZYk.Jm.sendEmptyMessageDelayed(600, 5000L);
                        if (com.bytedance.sdk.openadsdk.core.model.cY.tB(TTRewardVideoActivity.this.ZYk.ZYk)) {
                            if (com.bytedance.sdk.openadsdk.core.model.cY.tB(TTRewardVideoActivity.this.ZYk.ZYk) && PiB) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    TTRewardVideoActivity.this.ZYk.Jc.HL();
                    TTRewardVideoActivity.this.ZYk.UN.dLZ();
                    TTRewardVideoActivity.this.ZYk.IUZ.ba();
                    if (Ln.ex(TTRewardVideoActivity.this.ZYk.ZYk)) {
                        TTRewardVideoActivity.this.oJ(true, true);
                    } else {
                        TTRewardVideoActivity.this.finish();
                    }
                }
            };
            kkU.setOnClickListener(onClickListener);
            kkU.setTag(kkU.getId(), onClickListener);
        }
        this.ZYk.f13022mu.oJ(new com.bytedance.sdk.openadsdk.component.reward.top.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.5
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ZYk(View view) {
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                tTRewardVideoActivity.ZYk.LpP.oJ(tTRewardVideoActivity.tB);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view) {
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                tTRewardVideoActivity.oJ(Ln.tB(tTRewardVideoActivity.ZYk.ZYk), false);
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
                com.bytedance.sdk.openadsdk.core.model.ex NTC;
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
                com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = TTRewardVideoActivity.this.tB;
                if (zYk != null && zYk.ex() != null) {
                    TTRewardVideoActivity.this.tB.ex().oJ(TTRewardVideoActivity.this.ZYk.bgF);
                }
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = TTRewardVideoActivity.this.ZYk;
                oJVar.bgF = !oJVar.bgF;
                StringBuilder sb2 = new StringBuilder("will set is Mute ");
                sb2.append(TTRewardVideoActivity.this.ZYk.bgF);
                sb2.append(" mLastVolume=");
                sb2.append(TTRewardVideoActivity.this.ZYk.nke.oJ());
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = TTRewardVideoActivity.this.ZYk;
                oJVar2.cY.oJ(oJVar2.bgF, str);
                if (!Ln.Ry(TTRewardVideoActivity.this.ZYk.ZYk) || TTRewardVideoActivity.this.ZYk.kkU.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = TTRewardVideoActivity.this.ZYk;
                    oJVar3.Jc.Pfn(oJVar3.bgF);
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = TTRewardVideoActivity.this.ZYk;
                    oJVar4.Xe.ba(oJVar4.bgF);
                    com.bytedance.sdk.openadsdk.core.model.cY cYVar = TTRewardVideoActivity.this.ZYk.ZYk;
                    if (cYVar == null || (NTC = cYVar.NTC()) == null || (oJ = NTC.oJ()) == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar5 = TTRewardVideoActivity.this.ZYk;
                    if (oJVar5.bgF) {
                        oJ.so(oJVar5.cY.BTZ());
                    } else {
                        oJ.jFA(oJVar5.cY.BTZ());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ex(View view) {
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0084, code lost:
        if (r1 != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0033, code lost:
        if (((1.0d - (r8.f12869ba / r8.ZYk.cY.XAo())) * 100.0d) >= r0) goto L6;
     */
    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void RZ() {
        /*
            r8 = this;
            com.bytedance.sdk.openadsdk.core.settings.ba r0 = com.bytedance.sdk.openadsdk.core.si.ex()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.ZYk
            int r1 = r1.f13020ba
            java.lang.String r1 = java.lang.String.valueOf(r1)
            com.bytedance.sdk.openadsdk.core.settings.ZYk r0 = r0.Xe(r1)
            int r0 = r0.f13248ba
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.ZYk
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r1.ZYk
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.Ln.Ry(r1)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L39
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            double r4 = r1.XAo()
            int r1 = r8.f12869ba
            double r6 = (double) r1
            double r6 = r6 / r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r4 = r4 - r6
            r6 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r4 = r4 * r6
            double r0 = (double) r0
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L36
            goto L37
        L36:
            r2 = r3
        L37:
            r3 = r2
            goto L8a
        L39:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.ZYk
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r1.ZYk
            int r1 = r1.zUb()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r4 = r8.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.so r4 = r4.Xe
            float r4 = r4.ZYk()
            float r1 = (float) r1
            float r4 = r4 / r1
            r1 = 1065353216(0x3f800000, float:1.0)
            float r1 = r1 - r4
            r4 = 1120403456(0x42c80000, float:100.0)
            float r1 = r1 * r4
            float r0 = (float) r0
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 < 0) goto L58
            r0 = r2
            goto L59
        L58:
            r0 = r3
        L59:
            com.bytedance.sdk.openadsdk.core.settings.ba r1 = com.bytedance.sdk.openadsdk.core.si.ex()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r4 = r8.ZYk
            int r4 = r4.f13020ba
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r1 = r1.oJ(r4)
            if (r1 != 0) goto L87
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.si r1 = r1.Jc
            com.bytedance.sdk.openadsdk.core.UN r1 = r1.BTZ()
            boolean r1 = r1.ba()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r4 = r8.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.so r4 = r4.Xe
            boolean r4 = r4.tB()
            if (r4 == 0) goto L82
            r1 = r2
        L82:
            if (r0 == 0) goto L36
            if (r1 == 0) goto L36
            goto L37
        L87:
            if (r1 != r2) goto L8a
            r3 = r0
        L8a:
            if (r3 == 0) goto L8f
            r8.tb()
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.RZ():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public void Ry() {
        com.bytedance.sdk.openadsdk.component.reward.view.ex oJ;
        super.Ry();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && (oJ = oJVar.f13026tb.oJ()) != null) {
            oJ.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.Pfn() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.2
                @Override // com.bytedance.sdk.openadsdk.core.widget.Pfn
                public void oJ() {
                    TTRewardVideoActivity.this.Ln();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ba() {
        Ln();
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
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void e_() {
        Ln();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void f_() {
        tB(2);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        cY = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        if (this.ZYk != null) {
            com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("videoForceBreak", this.ZYk.ZYk);
        }
        nke();
        super.finish();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(String str, JSONObject jSONObject) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar;
        com.bytedance.sdk.openadsdk.core.model.cY cYVar;
        super.onCreate(bundle);
        try {
            if (eZI == null) {
                eZI = cY.oJ(this, "tt_reward_msg");
                f12885si = cY.oJ(this, "tt_msgPlayable");
                Ry = cY.oJ(this, "tt_negtiveBtnBtnText");
                RZ = cY.oJ(this, "tt_postiveBtnText");
                QSm = cY.oJ(this, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th2) {
            QSm.tB("TTAD.RVA", th2.getMessage());
        }
        if (bundle != null && (oJVar = this.ZYk) != null && (cYVar = oJVar.ZYk) != null && cYVar.mu()) {
            this.f12886jr.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        nke();
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("recycleRes");
        }
        this.awB = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        dLZ dlz;
        super.onPause();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && (dlz = oJVar.EP) != null) {
            dlz.oJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        dLZ dlz;
        super.onResume();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && (dlz = oJVar.EP) != null) {
            dlz.ZYk();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar;
        if (bundle == null) {
            bundle = new Bundle();
        }
        cY = this.awB;
        if (this.f12886jr.get() && (oJVar = this.ZYk) != null) {
            oJVar.ZYk.UN();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void si() {
        tb();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tb() {
        tB(0);
    }

    public void ZYk(long j10, long j11) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        boolean z10 = false;
        if (oJVar != null) {
            if (oJVar.ZYk.MoK() >= 0 && this.ZYk.ZYk.uWF() >= 0) {
                z10 = true;
            }
            if (z10) {
                j11 = this.ZYk.ZYk.uWF();
            }
        }
        long j12 = j10 + (this.ZYk.lY * 1000);
        if (z10) {
            oJ(j12, j11);
            return;
        }
        if (this.Xe == -1) {
            this.Xe = si.ex().Xe(String.valueOf(this.ZYk.f13020ba)).f13248ba;
        }
        if (j11 <= 0) {
            return;
        }
        if (j11 >= 30000 && j12 >= 27000) {
            tb();
        } else if (((float) (j12 * 100)) / ((float) j11) >= this.Xe) {
            tb();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void ex() {
        this.ZYk.f13022mu.oJ(null, TTAdDislikeToast.getSkipText());
        this.ZYk.f13022mu.Pfn(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public void tB() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar;
        super.tB();
        if (this.f12886jr.get() || (oJVar = this.ZYk) == null) {
            return;
        }
        oJVar.EP = new dLZ(new dLZ.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.component.reward.dLZ.oJ
            public void oJ() {
                if (!TTRewardVideoActivity.this.f12886jr.get() && !TTRewardVideoActivity.this.f12888tb) {
                    TTRewardVideoActivity.this.tB(1);
                }
            }
        });
    }

    protected void tB(final int i10) {
        if (this.f12886jr.get() || this.f12888tb) {
            return;
        }
        this.f12886jr.set(true);
        dLZ dlz = this.ZYk.EP;
        if (dlz != null) {
            dlz.tB();
        }
        if (si.ex().awB(String.valueOf(this.ZYk.f13020ba))) {
            oJ(true, this.ZYk.ZYk.Dex(), this.ZYk.ZYk.sH(), 0, "", i10);
            return;
        }
        si.tB().oJ(LpP(), new Id.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.9
            @Override // com.bytedance.sdk.openadsdk.core.Id.ZYk
            public void oJ(int i11, String str) {
                TTRewardVideoActivity.this.oJ(false, 0, "", i11, str, i10);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Id.ZYk
            public void oJ(cY.ZYk zYk) {
                boolean z10 = zYk.ZYk;
                TTRewardVideoActivity.this.oJ(zYk.ZYk, zYk.tB.oJ(), zYk.tB.ZYk(), 0, "", i10);
            }
        });
    }

    protected void oJ(String str) {
        oJ(str, false, 0, "", 0, "");
    }

    private void oJ(final String str, final boolean z10, final int i10, final String str2, final int i11, final String str3) {
        ofl.tB(new com.bytedance.sdk.component.so.so("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTRewardVideoActivity.this.ZYk(0).executeRewardVideoCallback(TTRewardVideoActivity.this.ZYk.nQI, str, z10, i10, str2, i11, str3);
                } catch (Throwable th2) {
                    QSm.tB("TTAD.RVA", "rewarded_video", "executeRewardVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(Bundle bundle) {
        if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            this.awB = IUZ.oJ().ZYk();
        }
        if (this.awB != null || bundle == null) {
            return;
        }
        this.awB = cY;
        cY = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ZYk(boolean z10) {
        if (z10) {
            tb();
            return;
        }
        int i10 = si.ex().Xe(String.valueOf(this.ZYk.f13020ba)).f13248ba;
        if ((1.0d - (this.f12869ba / this.ZYk.cY.XAo())) * 100.0d >= i10) {
            tb();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final boolean z10, boolean z11) {
        if (!z11 && this.f12888tb && this.ZYk.kkU.get()) {
            if (Ln.so(this.ZYk.ZYk)) {
                this.ZYk.Jc.so();
                return;
            } else if (Ln.kkU(this.ZYk.ZYk)) {
                this.ZYk.Xe.si();
                return;
            }
        }
        if (!si.ex().cFZ(String.valueOf(this.ZYk.f13020ba))) {
            if (!z11 && this.ZYk.kkU.get()) {
                if (Ln.so(this.ZYk.ZYk)) {
                    this.ZYk.Jc.so();
                    return;
                } else if (Ln.kkU(this.ZYk.ZYk)) {
                    this.ZYk.Xe.si();
                    return;
                }
            }
            if (z10) {
                finish();
            } else {
                HL();
            }
        } else if (this.f12886jr.get()) {
            if (this.ZYk.kkU.get()) {
                if (Ln.so(this.ZYk.ZYk)) {
                    this.ZYk.Jc.so();
                    return;
                } else if (Ln.kkU(this.ZYk.ZYk)) {
                    this.ZYk.Xe.si();
                    return;
                }
            }
            if (z10) {
                finish();
            } else {
                HL();
            }
        } else if (Ln.so(this.ZYk.ZYk) && this.ZYk.Jc.dLZ().getVisibility() == 0) {
            this.ZYk.Jc.so();
        } else if (Ln.kkU(this.ZYk.ZYk) && this.ZYk.Jc.kkU().getVisibility() == 0) {
            this.ZYk.Xe.si();
        } else {
            this.ZYk.QSm.set(true);
            this.ZYk.cY.oq();
            if (z10) {
                this.ZYk.Xe.WcQ();
            }
            final com.bytedance.sdk.openadsdk.core.widget.ZYk zYk = new com.bytedance.sdk.openadsdk.core.widget.ZYk(this);
            this.tB.PiB = zYk;
            if (z10) {
                zYk.oJ(f12885si).ZYk(QSm).tB(Ry);
            } else {
                zYk.oJ(eZI).ZYk(RZ).tB(Ry);
            }
            this.tB.PiB.oJ(new ZYk.InterfaceC0229ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.6
                @Override // com.bytedance.sdk.openadsdk.core.widget.ZYk.InterfaceC0229ZYk
                public void ZYk() {
                    zYk.dismiss();
                    TTRewardVideoActivity.this.f12888tb = true;
                    TTRewardVideoActivity.this.ZYk.QSm.set(false);
                    TTRewardVideoActivity.this.ZYk.Xe.ba(Integer.MAX_VALUE);
                    if (z10) {
                        if (Ln.si(TTRewardVideoActivity.this.ZYk.ZYk)) {
                            if (Ln.so(TTRewardVideoActivity.this.ZYk.ZYk)) {
                                if (TTRewardVideoActivity.this.ZYk.Xe.oJ()) {
                                    TTRewardVideoActivity.this.ZYk.Xe.oJ(5);
                                    return;
                                } else {
                                    TTRewardVideoActivity.this.ZYk.Jc.so();
                                    return;
                                }
                            }
                            TTRewardVideoActivity.this.ZYk.IUZ.ba();
                            if (TTRewardVideoActivity.this.ZYk.Xe.oJ()) {
                                TTRewardVideoActivity.this.ZYk.Xe.oJ(4);
                            }
                            TTRewardVideoActivity.this.finish();
                            return;
                        } else if (Ln.ba(TTRewardVideoActivity.this.ZYk.ZYk)) {
                            if (Ln.kkU(TTRewardVideoActivity.this.ZYk.ZYk)) {
                                TTRewardVideoActivity.this.ZYk.Xe.si();
                                return;
                            }
                            TTRewardVideoActivity.this.ZYk.IUZ.ba();
                            TTRewardVideoActivity.this.finish();
                            return;
                        }
                    }
                    TTRewardVideoActivity.this.HL();
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.ZYk.InterfaceC0229ZYk
                public void oJ() {
                    TTRewardVideoActivity.this.ZYk.cY.QSm();
                    if (z10) {
                        TTRewardVideoActivity.this.ZYk.Xe.Pfn(1000);
                    }
                    zYk.dismiss();
                    TTRewardVideoActivity.this.ZYk.QSm.set(false);
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public void oJ(@NonNull Intent intent) {
        super.oJ(intent);
        this.f12887oq = intent.getStringExtra("media_extra");
        this.Id = intent.getStringExtra(TTVideoEngineInterface.PLAY_API_KEY_USERID);
    }

    public boolean oJ(long j10, boolean z10) {
        com.bytedance.sdk.openadsdk.ex.cFZ cfz = new com.bytedance.sdk.openadsdk.ex.cFZ();
        cfz.oJ(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        oJVar.cY.oJ(oJVar.ofl.ba(), cfz);
        tB.oJ oJVar2 = new tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.7
            boolean oJ;

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void ZYk(long j11, int i10) {
                TTRewardVideoActivity.this.ex.removeMessages(300);
                com.bytedance.sdk.openadsdk.core.model.QSm qSm = TTRewardVideoActivity.this.ZYk.ofl.awB;
                if (qSm != null) {
                    qSm.kkU();
                }
                if (TTRewardVideoActivity.this.ZYk.cY.ba()) {
                    TTRewardVideoActivity.this.QSm();
                    return;
                }
                TTRewardVideoActivity.this.ZYk.cY.RZ();
                TTRewardVideoActivity.this.tb();
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = tTRewardVideoActivity.ZYk;
                if (oJVar3.tB) {
                    eZI ezi = oJVar3.cY;
                    ezi.oJ(!ezi.mu(), 2);
                    TTRewardVideoActivity.this.oJ(false, true, 3);
                    return;
                }
                tTRewardVideoActivity.finish();
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, int i10) {
                WcQ wcQ;
                if (this.oJ) {
                    return;
                }
                this.oJ = true;
                TTRewardVideoActivity.this.ex.removeMessages(300);
                TTRewardVideoActivity.this.oq();
                TTRewardVideoActivity.this.tb();
                TTRewardVideoActivity.this.ZYk.cY.oJ(j11, j11);
                TTRewardVideoActivity.this.ZYk.RZ.set(true);
                if (TTRewardVideoActivity.this.ZYk.ZYk.LS() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = TTRewardVideoActivity.this.ZYk;
                    if (oJVar3.tB) {
                        oJVar3.f13021jr.tB().tB(TTRewardVideoActivity.this.ZYk.ZYk);
                        awB.ZYk();
                    }
                }
                if (TTRewardVideoActivity.this.ZYk.ZYk.TAr()) {
                    TTRewardVideoActivity.this.ZYk.ZYk.Rl(1);
                    TTRewardVideoActivity.this.ZYk.ofl.si();
                }
                if (TTRewardVideoActivity.this.ZYk.ZYk.LS() == 21 && !TTRewardVideoActivity.this.ZYk.ZYk.WcQ()) {
                    TTRewardVideoActivity.this.ZYk.ZYk.ex(true);
                    TTRewardVideoActivity.this.ZYk.ofl.si();
                }
                TTRewardVideoActivity.this.WcQ = (int) (System.currentTimeMillis() / 1000);
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity.dLZ && tTRewardVideoActivity.ZYk.f13026tb.dLZ()) {
                    return;
                }
                if (!com.bytedance.sdk.openadsdk.core.model.QSm.ex(TTRewardVideoActivity.this.ZYk.ZYk) && !com.bytedance.sdk.openadsdk.core.model.QSm.ZYk(TTRewardVideoActivity.this.ZYk.ZYk) && !com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(TTRewardVideoActivity.this.ZYk.ZYk)) {
                    if (com.bytedance.sdk.openadsdk.core.model.QSm.oJ(TTRewardVideoActivity.this.ZYk.ZYk) && !TTRewardVideoActivity.this.ZYk.eZI.get()) {
                        TTRewardVideoActivity.this.ZYk.oJ(true);
                        TTRewardVideoActivity.this.ZYk.f13022mu.Pfn(true);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = TTRewardVideoActivity.this.ZYk;
                    if (oJVar4.tB) {
                        if (oJVar4.ZYk.Qu()) {
                            TTRewardVideoActivity.this.ZYk.f13022mu.tB();
                            return;
                        }
                        TTRewardVideoActivity.this.oJ(false, 5);
                        if (com.bytedance.sdk.openadsdk.core.model.cY.Pfn(TTRewardVideoActivity.this.ZYk.ZYk)) {
                            return;
                        }
                        TTRewardVideoActivity.this.ZYk.cY.oJ("skip", true);
                        return;
                    } else if (oJVar4.ZYk.Qu()) {
                        TTRewardVideoActivity.this.ZYk.f13022mu.tB();
                        return;
                    } else {
                        if (!com.bytedance.sdk.openadsdk.core.model.cY.Pfn(TTRewardVideoActivity.this.ZYk.ZYk)) {
                            TTRewardVideoActivity.this.ZYk.cY.oJ("skip", true);
                        }
                        TTRewardVideoActivity.this.finish();
                        return;
                    }
                }
                TTRewardVideoActivity.this.oJ(false, 5);
                if (!com.bytedance.sdk.openadsdk.core.model.QSm.ZYk(TTRewardVideoActivity.this.ZYk.ZYk) || (wcQ = TTRewardVideoActivity.this.ZYk.jXJ) == null) {
                    return;
                }
                wcQ.oJ(0L);
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ() {
                TTRewardVideoActivity.this.ex.removeMessages(300);
                TTRewardVideoActivity.this.oq();
                TTRewardVideoActivity.this.tb();
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = tTRewardVideoActivity.ZYk;
                if (oJVar3.tB) {
                    eZI ezi = oJVar3.cY;
                    ezi.oJ(!ezi.mu(), !TTRewardVideoActivity.this.ZYk.cY.mu());
                    TTRewardVideoActivity.this.oJ(false, true, 6);
                } else {
                    tTRewardVideoActivity.finish();
                }
                TTRewardVideoActivity.this.ZYk.cY.RZ();
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, long j12) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = TTRewardVideoActivity.this.ZYk;
                if (!oJVar3.Yg && oJVar3.cY.ba()) {
                    TTRewardVideoActivity.this.ZYk.cY.oq();
                }
                if (TTRewardVideoActivity.this.ZYk.kkU.get()) {
                    return;
                }
                TTRewardVideoActivity.this.ex.removeMessages(300);
                if (j11 != TTRewardVideoActivity.this.ZYk.cY.PiB()) {
                    TTRewardVideoActivity.this.oq();
                }
                TTRewardVideoActivity.this.ZYk.cY.oJ(j11, j12);
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                long j13 = j11 / 1000;
                double d10 = j13;
                tTRewardVideoActivity.f12869ba = (int) (tTRewardVideoActivity.ZYk.cY.XAo() - d10);
                TTRewardVideoActivity tTRewardVideoActivity2 = TTRewardVideoActivity.this;
                int i10 = tTRewardVideoActivity2.f12869ba;
                if (i10 >= 0) {
                    tTRewardVideoActivity2.ZYk.f13022mu.oJ(String.valueOf(i10), null);
                }
                TTRewardVideoActivity tTRewardVideoActivity3 = TTRewardVideoActivity.this;
                tTRewardVideoActivity3.f12869ba = (int) (tTRewardVideoActivity3.ZYk.cY.XAo() - d10);
                int i11 = (int) j13;
                int xwf = TTRewardVideoActivity.this.ZYk.ZYk.xwf();
                boolean z11 = xwf >= 0;
                if ((TTRewardVideoActivity.this.ZYk.QSm.get() || TTRewardVideoActivity.this.ZYk.dLZ.get()) && TTRewardVideoActivity.this.ZYk.cY.ba()) {
                    TTRewardVideoActivity.this.ZYk.cY.oq();
                }
                TTRewardVideoActivity.this.ZYk.ofl.Pfn(i11);
                TTRewardVideoActivity.this.ZYk(j11, j12);
                TTRewardVideoActivity tTRewardVideoActivity4 = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity4.f12869ba > 0) {
                    tTRewardVideoActivity4.ZYk.f13022mu.ex(true);
                    if (z11 && i11 >= xwf) {
                        TTRewardVideoActivity.this.ZYk.oJ(true);
                        TTRewardVideoActivity tTRewardVideoActivity5 = TTRewardVideoActivity.this;
                        tTRewardVideoActivity5.ZYk.f13022mu.oJ(String.valueOf(tTRewardVideoActivity5.f12869ba), TTAdDislikeToast.getSkipText());
                        TTRewardVideoActivity.this.ZYk.f13022mu.Pfn(true);
                        return;
                    }
                    TTRewardVideoActivity tTRewardVideoActivity6 = TTRewardVideoActivity.this;
                    tTRewardVideoActivity6.ZYk.f13022mu.oJ(String.valueOf(tTRewardVideoActivity6.f12869ba), null);
                }
            }
        };
        this.ZYk.cY.oJ(oJVar2);
        com.bytedance.sdk.openadsdk.core.model.QSm qSm = this.ZYk.ofl.awB;
        if (qSm != null) {
            qSm.oJ(oJVar2);
        }
        boolean oJ = this.ZYk.cY.oJ(j10, z10, null, this.tB);
        if (oJ && !z10) {
            this.PiB = (int) (System.currentTimeMillis() / 1000);
        }
        return oJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final boolean z10, final int i10, final String str, final int i11, final String str2, final int i12) {
        QSm.oJ("BVA", "invoke callback onRewardVerify: " + z10 + ", " + i10 + ", " + str + ", " + i11 + ", " + str2 + "; " + this);
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onRewardVerify", z10, i10, str, i11, str2);
            dLZ.oJ(this.ZYk.ZYk, z10, i12);
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.8
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar = TTRewardVideoActivity.this.awB;
                if (oJVar != null) {
                    oJVar.oJ(z10, i10, str, i11, str2);
                    dLZ.oJ(TTRewardVideoActivity.this.ZYk.ZYk, z10, i12);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(int i10) {
        if (i10 == 10000) {
            tb();
        }
    }

    protected void oJ(long j10, long j11) {
        if (j11 <= 0) {
            return;
        }
        if (this.Xe == -1) {
            this.Xe = Math.min(100, this.ZYk.ZYk.MoK());
        }
        if (((((float) j10) / 1000.0f) / ((float) j11)) * 100.0f >= this.Xe) {
            tb();
        }
    }
}
