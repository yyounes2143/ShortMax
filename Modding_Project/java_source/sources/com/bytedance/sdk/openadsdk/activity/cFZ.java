package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.view.kkU;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.ZYk;
import com.bytedance.sdk.openadsdk.utils.WcQ;
import com.bytedance.sdk.openadsdk.utils.awB;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ extends oJ {
    private static String Id;
    private static String Xe;
    private static String cY;

    /* renamed from: jr  reason: collision with root package name */
    private static String f12911jr;

    /* renamed from: oq  reason: collision with root package name */
    private static String f12912oq;
    private boolean HL;

    /* renamed from: ba  reason: collision with root package name */
    protected int f12913ba;
    protected int cFZ;

    /* renamed from: so  reason: collision with root package name */
    int f12914so;

    /* renamed from: tb  reason: collision with root package name */
    private int f12915tb;

    public cFZ(ZYk zYk, cY cYVar, int i10, int i11, boolean z10) {
        super(zYk, cYVar, i10, i11, z10);
        this.f12915tb = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0088, code lost:
        if (r3.tB.eZI.get() == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mwH() {
        /*
            r3 = this;
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r0 = r0.cY
            r0.LpP()
            com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB$oJ r0 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB$oJ
            r0.<init>()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.BTZ()
            r0.ZYk(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.Xe()
            r0.ex(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.eZI()
            r0.tB(r1)
            r1 = 3
            r0.tB(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            int r1 = r1.jr()
            r0.ex(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.ZYk()
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ r1 = r1.so()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r2 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r2 = r2.cY
            com.bytedance.sdk.openadsdk.ex.cFZ r2 = r2.Pfn()
            com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(r1, r0, r2)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            int r0 = r0.f13020ba
            com.bytedance.sdk.openadsdk.core.HL.tB(r0)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r0 = r0.cY
            java.lang.String r1 = "skip"
            r2 = 0
            r0.oJ(r1, r2)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            boolean r0 = r0.tB
            if (r0 == 0) goto L8a
            r0 = 1
            r1 = 4
            r3.oJ(r0, r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.QSm.oJ(r0)
            if (r0 == 0) goto L8d
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.eZI
            boolean r0 = r0.get()
            if (r0 != 0) goto L8d
        L8a:
            r3.cdg()
        L8d:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            com.bytedance.sdk.openadsdk.core.model.ex r0 = r0.NTC()
            if (r0 == 0) goto Lab
            com.bytedance.sdk.openadsdk.core.dLZ.ex r0 = r0.oJ()
            if (r0 == 0) goto Lab
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r3.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            long r1 = r1.BTZ()
            r0.ba(r1)
            r0.Pfn(r1)
        Lab:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r3.tB
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            r1 = 5
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.cFZ.mwH():void");
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ
    protected void Pfn() {
        final View kkU = this.tB.ofl.kkU();
        if (kkU != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.cFZ.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (cFZ.this.tB.Jc.tb() && cFZ.this.tB.kkU.get()) {
                        boolean PiB = cFZ.this.tB.UN.PiB();
                        cFZ.this.tB.Jc.ba(PiB);
                        cFZ.this.tB.ofl.ba(8);
                        cFZ.this.tB.Jm.sendEmptyMessageDelayed(600, 5000L);
                        if (cY.tB(cFZ.this.tB.ZYk)) {
                            if (cY.tB(cFZ.this.tB.ZYk) && PiB) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    cFZ.this.tB.Jc.HL();
                    cFZ.this.tB.UN.dLZ();
                    cFZ.this.tB.IUZ.ba();
                    if (Ln.ex(cFZ.this.tB.ZYk)) {
                        cFZ.this.oJ(true, true, (Runnable) null);
                    } else {
                        cFZ.this.cdg();
                    }
                }
            };
            kkU.setOnClickListener(onClickListener);
            kkU.setTag(kkU.getId(), onClickListener);
        }
        this.tB.f13022mu.oJ(new com.bytedance.sdk.openadsdk.component.reward.top.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.cFZ.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ZYk(View view) {
                cFZ.this.c_();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view) {
                cFZ cfz = cFZ.this;
                cfz.oJ(Ln.tB(cfz.tB.ZYk), false, (Runnable) null);
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
                cFZ.this.oJ(str);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ex(View view) {
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008b, code lost:
        if (r1 != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003c, code lost:
        if (((1.0d - (r8.f12914so / r8.tB.cY.XAo())) * 100.0d) >= r0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        r2 = true;
     */
    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.activity.so, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void RZ() {
        /*
            r8 = this;
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r8.jFA
            boolean r0 = r0.kO()
            if (r0 != 0) goto L9
            return
        L9:
            com.bytedance.sdk.openadsdk.core.settings.ba r0 = com.bytedance.sdk.openadsdk.core.si.ex()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.tB
            int r1 = r1.f13020ba
            java.lang.String r1 = java.lang.String.valueOf(r1)
            com.bytedance.sdk.openadsdk.core.settings.ZYk r0 = r0.Xe(r1)
            int r0 = r0.f13248ba
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.tB
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r1.ZYk
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.Ln.Ry(r1)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L40
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r1 = r1.cY
            double r4 = r1.XAo()
            int r1 = r8.f12914so
            double r6 = (double) r1
            double r6 = r6 / r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r4 = r4 - r6
            r6 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r4 = r4 * r6
            double r0 = (double) r0
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L91
        L3e:
            r2 = r3
            goto L91
        L40:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.tB
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r1.ZYk
            int r1 = r1.zUb()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r4 = r8.tB
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
            if (r0 < 0) goto L5f
            r0 = r3
            goto L60
        L5f:
            r0 = r2
        L60:
            com.bytedance.sdk.openadsdk.core.settings.ba r1 = com.bytedance.sdk.openadsdk.core.si.ex()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r4 = r8.tB
            int r4 = r4.f13020ba
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r1 = r1.oJ(r4)
            if (r1 != 0) goto L8e
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r8.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.si r1 = r1.Jc
            com.bytedance.sdk.openadsdk.core.UN r1 = r1.BTZ()
            boolean r1 = r1.ba()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r4 = r8.tB
            com.bytedance.sdk.openadsdk.component.reward.oJ.so r4 = r4.Xe
            boolean r4 = r4.tB()
            if (r4 == 0) goto L89
            r1 = r3
        L89:
            if (r0 == 0) goto L91
            if (r1 == 0) goto L91
            goto L3e
        L8e:
            if (r1 != r3) goto L91
            r2 = r0
        L91:
            if (r2 == 0) goto L96
            r8.nQI()
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.cFZ.RZ():void");
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void XAo() {
        super.XAo();
        this.HL = false;
        this.tB.f13026tb.ZYk(false);
        this.tB.cY.Rl();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ZYk(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    protected boolean a_() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public String b_() {
        return "rewarded_video";
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
        Qu();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void f_() {
        ex(2);
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

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void si() {
        nQI();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ
    protected void ZYk() {
        this.tB.f13022mu.oJ(null, TTAdDislikeToast.getSkipText());
        this.tB.f13022mu.Pfn(true);
    }

    protected void ZYk(long j10, long j11) {
        if (j11 <= 0) {
            return;
        }
        if (this.f12915tb == -1) {
            this.f12915tb = Math.min(100, this.jFA.MoK());
        }
        if (((((float) j10) / 1000.0f) / ((float) j11)) * 100.0f >= this.f12915tb) {
            nQI();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.activity.so
    public void oJ(Activity activity, ZYk.Pfn pfn) {
        ZYk zYk;
        super.oJ(activity, pfn);
        if (com.bytedance.sdk.component.utils.ZYk.oJ(activity)) {
            return;
        }
        Intent intent = activity.getIntent();
        this.eZI = intent.getStringExtra("media_extra");
        this.awB = intent.getStringExtra(TTVideoEngineInterface.PLAY_API_KEY_USERID);
        try {
            if (f12911jr == null) {
                f12911jr = com.bytedance.sdk.component.utils.cY.oJ(this.tB.Rl, "tt_reward_msg");
                f12912oq = com.bytedance.sdk.component.utils.cY.oJ(this.tB.Rl, "tt_msgPlayable");
                cY = com.bytedance.sdk.component.utils.cY.oJ(this.tB.Rl, "tt_negtiveBtnBtnText");
                Xe = com.bytedance.sdk.component.utils.cY.oJ(this.tB.Rl, "tt_postiveBtnText");
                Id = com.bytedance.sdk.component.utils.cY.oJ(this.tB.Rl, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th2) {
            QSm.tB("TTAD.RewardAdScene", th2.getMessage());
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        if (oJVar == null || (zYk = this.kkU) == null) {
            return;
        }
        oJVar.EP = zYk.oJ;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.so
    public void oJ(String str) {
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = ((oJ) this).ZYk;
        if (zYk != null && zYk.ex() != null) {
            ((oJ) this).ZYk.ex().oJ(this.tB.bgF);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        oJVar.bgF = !oJVar.bgF;
        kkU kku = oJVar.f13026tb;
        if (kku != null && kku.oJ() != null) {
            this.tB.f13026tb.oJ().setSoundMute(this.tB.bgF);
        }
        StringBuilder sb2 = new StringBuilder("will set is Mute ");
        sb2.append(this.tB.bgF);
        sb2.append(" mLastVolume=");
        sb2.append(this.tB.nke.oJ());
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

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(int i10) {
        if (i10 == 10000) {
            nQI();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public boolean oJ(long j10, boolean z10) {
        com.bytedance.sdk.openadsdk.ex.cFZ cfz;
        this.tB.f13026tb.ZYk(false);
        this.HL = false;
        if (this.jFA.Pfn()) {
            kkU kku = this.tB.f13026tb;
            if (kku != null && kku.oJ() != null) {
                cfz = this.tB.f13026tb.oJ().getAdShowTime();
            } else {
                cfz = new com.bytedance.sdk.openadsdk.ex.cFZ();
            }
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
            oJVar.cY.oJ(oJVar.f13026tb.ZYk(), cfz);
            HashMap hashMap = new HashMap();
            kkU kku2 = this.tB.f13026tb;
            if (kku2 != null) {
                hashMap.put("dynamic_show_type", Integer.valueOf(kku2.kkU()));
                JSONObject oJ = this.tB.f13026tb.oJ((JSONObject) null);
                if (oJ != null) {
                    Iterator<String> keys = oJ.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        try {
                            hashMap.put(next, oJ.get(next));
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
            this.tB.cY.oJ(new tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.cFZ.3
                @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                public void ZYk(long j11, int i10) {
                    ((oJ) cFZ.this).oJ.removeMessages(300);
                    com.bytedance.sdk.openadsdk.core.model.QSm qSm = cFZ.this.tB.ofl.awB;
                    if (qSm != null) {
                        qSm.kkU();
                    }
                    if (cFZ.this.tB.cY.ba()) {
                        cFZ.this.so();
                        return;
                    }
                    cFZ cfz2 = cFZ.this;
                    if (!cfz2.tB.uvK) {
                        cfz2.nQI();
                    }
                    cFZ.this.tB.cY.RZ();
                    cFZ.this.tB.f13026tb.oJ(true);
                    cFZ cfz3 = cFZ.this;
                    cfz3.kkU.oJ(cfz3, cfz3.ZYk(3));
                }

                @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                public void oJ(long j11, int i10) {
                    if (cFZ.this.HL) {
                        return;
                    }
                    cFZ.this.HL = true;
                    ((oJ) cFZ.this).oJ.removeMessages(300);
                    cFZ.this.Ry();
                    cFZ.this.tB.cY.oJ(j11, j11);
                    cFZ.this.tB.f13026tb.ZYk(true);
                    cFZ.this.f12913ba = (int) (System.currentTimeMillis() / 1000);
                    cFZ cfz2 = cFZ.this;
                    if (!cfz2.tB.uvK) {
                        cfz2.nQI();
                    }
                    if (cFZ.this.tB.ZYk.LS() == 36) {
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = cFZ.this.tB;
                        if (oJVar2.tB) {
                            oJVar2.f13021jr.tB().tB(cFZ.this.tB.ZYk);
                            awB.ZYk();
                        }
                    }
                    if (cFZ.this.tB.ZYk.LS() == 21 && !cFZ.this.tB.ZYk.WcQ()) {
                        cFZ.this.tB.ZYk.ex(true);
                        cFZ.this.tB.ofl.si();
                    }
                    cFZ cfz3 = cFZ.this;
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = cfz3.tB;
                    if (oJVar3.uvK) {
                        cfz3.kkU.oJ(cfz3, cfz3.ZYk(5));
                    } else if (cfz3.Pfn && oJVar3.f13026tb.dLZ()) {
                    } else {
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = cFZ.this.tB;
                        if (oJVar4.tB) {
                            if (oJVar4.ZYk.Qu()) {
                                if (cFZ.this.tB.f13026tb.kkU() == 1) {
                                    cFZ.this.tB.f13022mu.tB();
                                    return;
                                }
                                return;
                            }
                            cFZ.this.oJ(false, 5);
                            if (cY.Pfn(cFZ.this.tB.ZYk)) {
                                return;
                            }
                            cFZ.this.tB.cY.oJ("skip", true);
                        } else if (oJVar4.ZYk.Qu()) {
                            if (cFZ.this.tB.f13026tb.kkU() == 1) {
                                cFZ.this.tB.f13022mu.tB();
                            }
                        } else {
                            if (!cY.Pfn(cFZ.this.tB.ZYk)) {
                                cFZ.this.tB.cY.oJ("skip", true);
                            }
                            cFZ.this.cdg();
                        }
                    }
                }

                @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                public void oJ() {
                    ((oJ) cFZ.this).oJ.removeMessages(300);
                    cFZ.this.Ry();
                    cFZ cfz2 = cFZ.this;
                    if (!cfz2.tB.uvK) {
                        cfz2.nQI();
                    }
                    cFZ cfz3 = cFZ.this;
                    cfz3.kkU.oJ(cfz3, cfz3.ZYk(6));
                }

                @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                public void oJ(long j11, long j12) {
                    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = cFZ.this.tB;
                    if (!oJVar2.Yg && oJVar2.cY.ba()) {
                        cFZ.this.tB.cY.ZYk(true);
                    }
                    if (cFZ.this.tB.kkU.get()) {
                        return;
                    }
                    ((oJ) cFZ.this).oJ.removeMessages(300);
                    if (j11 != cFZ.this.tB.cY.PiB()) {
                        cFZ.this.Ry();
                    }
                    if (cFZ.this.tB.cY.ba()) {
                        cFZ.this.tB.cY.oJ(j11, j12);
                        int xwf = cFZ.this.jFA.xwf();
                        boolean z11 = cFZ.this.tB.f13026tb.jFA() && xwf != -1 && xwf >= 0;
                        cFZ cfz2 = cFZ.this;
                        long j13 = j11 / 1000;
                        cfz2.f12914so = (int) (cfz2.tB.cY.XAo() - j13);
                        int i10 = (int) j13;
                        if ((cFZ.this.tB.QSm.get() || cFZ.this.tB.dLZ.get()) && cFZ.this.tB.cY.ba()) {
                            cFZ.this.tB.cY.oq();
                        }
                        cFZ cfz3 = cFZ.this;
                        int i11 = cfz3.f12914so;
                        if (i11 >= 0) {
                            cfz3.tB.f13022mu.oJ(String.valueOf(i11), null);
                        }
                        cFZ.this.tB.ofl.Pfn(i10);
                        cFZ.this.oJ(j11, j12);
                        kkU kku3 = cFZ.this.tB.f13026tb;
                        if (kku3 != null && kku3.oJ() != null) {
                            cFZ.this.tB.f13026tb.oJ().setTime(String.valueOf(cFZ.this.f12914so), i10, 0, false);
                            cFZ.this.tB.f13026tb.oJ().oJ(j11, j12);
                        }
                        cFZ.this.oJ((((float) j11) * 1.0f) / ((float) j12));
                        cFZ cfz4 = cFZ.this;
                        if (cfz4.f12914so > 0) {
                            if (z11 && i10 >= xwf && cfz4.tB.ZYk.LS() != 5) {
                                cFZ.this.tB.oJ(true);
                                cFZ cfz5 = cFZ.this;
                                cfz5.tB.f13022mu.oJ(String.valueOf(cfz5.f12914so), TTAdDislikeToast.getSkipText());
                                cFZ.this.tB.f13022mu.Pfn(true);
                                return;
                            }
                            cFZ cfz6 = cFZ.this;
                            cfz6.tB.f13022mu.oJ(String.valueOf(cfz6.f12914so), null);
                        }
                    }
                }
            });
            boolean oJ2 = this.tB.cY.oJ(j10, z10, hashMap, ((oJ) this).ZYk);
            if (oJ2 && !z10) {
                this.cFZ = (int) (System.currentTimeMillis() / 1000);
            }
            return oJ2;
        }
        com.bytedance.sdk.openadsdk.ex.cFZ cfz2 = new com.bytedance.sdk.openadsdk.ex.cFZ();
        cfz2.oJ(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.tB;
        oJVar2.cY.oJ(oJVar2.ofl.ba(), cfz2);
        tB.oJ oJVar3 = new tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.cFZ.4
            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void ZYk(long j11, int i10) {
                ((oJ) cFZ.this).oJ.removeMessages(300);
                com.bytedance.sdk.openadsdk.core.model.QSm qSm = cFZ.this.tB.ofl.awB;
                if (qSm != null) {
                    qSm.kkU();
                }
                if (cFZ.this.tB.cY.ba()) {
                    cFZ.this.so();
                    return;
                }
                cFZ.this.tB.cY.RZ();
                cFZ cfz3 = cFZ.this;
                if (!cfz3.tB.uvK) {
                    cfz3.nQI();
                }
                cFZ cfz4 = cFZ.this;
                cfz4.kkU.oJ(cfz4, cfz4.ZYk(3));
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, int i10) {
                WcQ wcQ;
                if (cFZ.this.HL) {
                    return;
                }
                cFZ.this.HL = true;
                ((oJ) cFZ.this).oJ.removeMessages(300);
                cFZ.this.Ry();
                cFZ cfz3 = cFZ.this;
                if (!cfz3.tB.uvK) {
                    cfz3.nQI();
                }
                cFZ.this.tB.cY.oJ(j11, j11);
                cFZ.this.tB.RZ.set(true);
                if (cFZ.this.tB.ZYk.TAr()) {
                    cFZ.this.tB.ZYk.Rl(1);
                    cFZ.this.tB.ofl.si();
                }
                if (cFZ.this.tB.ZYk.LS() == 21 && !cFZ.this.tB.ZYk.WcQ()) {
                    cFZ.this.tB.ZYk.ex(true);
                    cFZ.this.tB.ofl.si();
                }
                cFZ.this.f12913ba = (int) (System.currentTimeMillis() / 1000);
                cFZ cfz4 = cFZ.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = cfz4.tB;
                if (oJVar4.uvK) {
                    ZYk.Pfn ZYk = cfz4.ZYk(5);
                    ZYk.Pfn = true;
                    cFZ cfz5 = cFZ.this;
                    cfz5.kkU.oJ(cfz5, ZYk);
                } else if (cfz4.Pfn && oJVar4.f13026tb.dLZ()) {
                } else {
                    if (!com.bytedance.sdk.openadsdk.core.model.QSm.ex(cFZ.this.tB.ZYk) && !com.bytedance.sdk.openadsdk.core.model.QSm.ZYk(cFZ.this.tB.ZYk) && !com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(cFZ.this.tB.ZYk)) {
                        if (com.bytedance.sdk.openadsdk.core.model.QSm.oJ(cFZ.this.tB.ZYk) && !cFZ.this.tB.eZI.get()) {
                            cFZ.this.tB.oJ(true);
                            cFZ.this.tB.f13022mu.Pfn(true);
                            return;
                        }
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar5 = cFZ.this.tB;
                        if (oJVar5.tB) {
                            if (oJVar5.ZYk.Qu()) {
                                cFZ.this.tB.f13022mu.tB();
                                return;
                            }
                            cFZ.this.oJ(false, 5);
                            if (cY.Pfn(cFZ.this.tB.ZYk)) {
                                return;
                            }
                            cFZ.this.tB.cY.oJ("skip", true);
                            return;
                        } else if (oJVar5.ZYk.Qu()) {
                            cFZ.this.tB.f13022mu.tB();
                            return;
                        } else {
                            if (!cY.Pfn(cFZ.this.tB.ZYk)) {
                                cFZ.this.tB.cY.oJ("skip", true);
                            }
                            cFZ.this.cdg();
                            return;
                        }
                    }
                    cFZ.this.oJ(false, 5);
                    if (!com.bytedance.sdk.openadsdk.core.model.QSm.ZYk(cFZ.this.tB.ZYk) || (wcQ = cFZ.this.tB.jXJ) == null) {
                        return;
                    }
                    wcQ.oJ(0L);
                }
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ() {
                ((oJ) cFZ.this).oJ.removeMessages(300);
                cFZ.this.Ry();
                cFZ cfz3 = cFZ.this;
                if (!cfz3.tB.uvK) {
                    cfz3.nQI();
                }
                cFZ cfz4 = cFZ.this;
                cfz4.kkU.oJ(cfz4, cfz4.ZYk(6));
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
            public void oJ(long j11, long j12) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = cFZ.this.tB;
                if (!oJVar4.Yg && oJVar4.cY.ba()) {
                    cFZ.this.tB.cY.ZYk(true);
                }
                if (cFZ.this.tB.kkU.get()) {
                    return;
                }
                ((oJ) cFZ.this).oJ.removeMessages(300);
                if (j11 != cFZ.this.tB.cY.PiB()) {
                    cFZ.this.Ry();
                }
                cFZ.this.tB.cY.oJ(j11, j12);
                cFZ cfz3 = cFZ.this;
                long j13 = j11 / 1000;
                double d10 = j13;
                cfz3.f12914so = (int) (cfz3.tB.cY.XAo() - d10);
                cFZ cfz4 = cFZ.this;
                int i10 = cfz4.f12914so;
                if (i10 >= 0) {
                    cfz4.tB.f13022mu.oJ(String.valueOf(i10), null);
                }
                cFZ cfz5 = cFZ.this;
                cfz5.f12914so = (int) (cfz5.tB.cY.XAo() - d10);
                int i11 = (int) j13;
                int xwf = cFZ.this.jFA.xwf();
                boolean z11 = xwf >= 0;
                if ((cFZ.this.tB.QSm.get() || cFZ.this.tB.dLZ.get()) && cFZ.this.tB.cY.ba()) {
                    cFZ.this.tB.cY.oq();
                }
                cFZ.this.tB.ofl.Pfn(i11);
                cFZ.this.oJ(j11, j12);
                cFZ.this.oJ((((float) j11) * 1.0f) / ((float) j12));
                cFZ cfz6 = cFZ.this;
                if (cfz6.f12914so > 0) {
                    cfz6.tB.f13022mu.ex(true);
                    if (z11 && i11 >= xwf) {
                        cFZ.this.tB.oJ(true);
                        cFZ cfz7 = cFZ.this;
                        cfz7.tB.f13022mu.oJ(String.valueOf(cfz7.f12914so), TTAdDislikeToast.getSkipText());
                        cFZ.this.tB.f13022mu.Pfn(true);
                        return;
                    }
                    cFZ cfz8 = cFZ.this;
                    cfz8.tB.f13022mu.oJ(String.valueOf(cfz8.f12914so), null);
                }
            }
        };
        this.tB.cY.oJ(oJVar3);
        com.bytedance.sdk.openadsdk.core.model.QSm qSm = this.tB.ofl.awB;
        if (qSm != null) {
            qSm.oJ(oJVar3);
        }
        boolean oJ3 = this.tB.cY.oJ(j10, z10, null, ((oJ) this).ZYk);
        if (oJ3 && !z10) {
            this.cFZ = (int) (System.currentTimeMillis() / 1000);
        }
        return oJ3;
    }

    public void oJ(long j10, long j11) {
        if (this.tB.uvK) {
            return;
        }
        cY cYVar = this.jFA;
        if (cYVar != null && cYVar.MoK() >= 0 && this.jFA.uWF() >= 0) {
            ZYk(j10, this.jFA.uWF());
        } else if (j11 <= 0) {
        } else {
            long j12 = j10 + (this.tB.lY * 1000);
            if (this.f12915tb == -1) {
                this.f12915tb = si.ex().Xe(String.valueOf(this.tB.f13020ba)).f13248ba;
            }
            if (j11 >= 30000 && j12 >= 27000) {
                nQI();
            } else if (((float) (j12 * 100)) / ((float) j11) >= this.f12915tb) {
                nQI();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(final boolean z10, boolean z11, final Runnable runnable) {
        if (!z11 && this.kkU.jFA().getBoolean("user_has_give_up_reward", false) && (Ln.so(this.tB.ZYk) || runnable != null)) {
            if (runnable == null) {
                mwH();
            }
            return false;
        } else if (!si.ex().cFZ(String.valueOf(this.tB.f13020ba))) {
            if (runnable == null) {
                if (z10) {
                    cdg();
                    return false;
                }
                mwH();
            }
            return false;
        } else if (this.kkU.jFA().getBoolean("reward_verify", false)) {
            if (runnable == null) {
                if (Ln.so(this.tB.ZYk)) {
                    mwH();
                    return false;
                } else if (z10) {
                    cdg();
                    return false;
                } else {
                    mwH();
                }
            }
            return false;
        } else {
            this.tB.QSm.set(true);
            this.tB.cY.oq();
            if (z10) {
                this.tB.Xe.WcQ();
            }
            final com.bytedance.sdk.openadsdk.core.widget.ZYk zYk = new com.bytedance.sdk.openadsdk.core.widget.ZYk(HyG());
            ((oJ) this).ZYk.PiB = zYk;
            if (z10) {
                zYk.oJ(f12912oq).ZYk(Id).tB(cY);
            } else {
                zYk.oJ(f12911jr).ZYk(Xe).tB(cY);
            }
            ((oJ) this).ZYk.PiB.oJ(new ZYk.InterfaceC0229ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.cFZ.5
                @Override // com.bytedance.sdk.openadsdk.core.widget.ZYk.InterfaceC0229ZYk
                public void ZYk() {
                    zYk.dismiss();
                    cFZ.this.kkU.jFA().putBoolean("user_has_give_up_reward", true);
                    cFZ.this.tB.QSm.set(false);
                    cFZ.this.tB.Xe.ba(Integer.MAX_VALUE);
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    } else if (!z10) {
                        cFZ.this.mwH();
                    } else if (Ln.so(cFZ.this.tB.ZYk)) {
                        if (!cFZ.this.tB.Xe.oJ()) {
                            cFZ.this.mwH();
                        } else {
                            cFZ.this.tB.Xe.oJ(5);
                        }
                    } else {
                        cFZ.this.tB.IUZ.ba();
                        if (cFZ.this.tB.Xe.oJ()) {
                            cFZ.this.tB.Xe.oJ(4);
                        }
                        cFZ.this.cdg();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.ZYk.InterfaceC0229ZYk
                public void oJ() {
                    cFZ.this.tB.cY.QSm();
                    if (z10) {
                        cFZ.this.tB.Xe.Pfn(1000);
                    }
                    zYk.dismiss();
                    cFZ.this.tB.QSm.set(false);
                }
            }).show();
            return true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(final String str, final JSONObject jSONObject) {
        if ("skipToNextAd".equals(str) && this.tB.oCU != null && this.kkU.QSm() == null && oJ(Ln.tB(this.tB.ZYk), false, new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.cFZ.6
            @Override // java.lang.Runnable
            public void run() {
                cFZ.super.oJ(str, jSONObject);
            }
        })) {
            return;
        }
        super.oJ(str, jSONObject);
    }
}
