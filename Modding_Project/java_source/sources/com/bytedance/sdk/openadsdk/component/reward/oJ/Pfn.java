package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import com.bytedance.sdk.openadsdk.utils.Id;
import com.bytedance.sdk.openadsdk.utils.cdg;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn {
    private final com.bytedance.sdk.openadsdk.component.reward.view.so ZYk;
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJ;
    private oJ tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(boolean z10, boolean z11, boolean z12, com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk, int i10);
    }

    public Pfn(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.oJ = oJVar;
        this.ZYk = new com.bytedance.sdk.openadsdk.component.reward.view.so(oJVar);
    }

    private int ba() {
        int PH = this.oJ.ZYk.PH();
        if (PH <= 5000 && PH >= 0) {
            if (PH < 1000) {
                PH += 1000;
            }
            int oJ2 = com.bytedance.sdk.openadsdk.core.si.ex().oJ(this.oJ.ZYk.uv());
            if (oJ2 <= 5000 && oJ2 >= 0) {
                if (oJ2 < 1000) {
                    oJ2 += 1000;
                }
                return Math.min(PH, oJ2);
            }
        }
        return -1;
    }

    private void cFZ() {
        if (Ln.Ry(this.oJ.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (oJVar.bgF) {
                oJVar.f13022mu.ZYk(true);
                this.oJ.Xe.Pfn(true);
            }
        }
    }

    public boolean Pfn() {
        return this.ZYk.Pfn();
    }

    public void ZYk() {
        this.ZYk.tB();
    }

    public void ex() {
        oJ(true);
    }

    public void oJ() {
        this.ZYk.oJ();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
        if (com.bytedance.sdk.openadsdk.core.model.Ln.jFA(r5.oJ.ZYk) == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean tB(com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk r6) {
        /*
            r5 = this;
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            int r1 = r5.ba()
            r0.f13025so = r1
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            int r1 = r0.f13025so
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            boolean r0 = r0.awB()
            r1 = 0
            if (r0 != 0) goto La4
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            int r2 = r0.f13025so
            r3 = -1
            r4 = 1
            if (r2 != r3) goto L58
            com.bytedance.sdk.openadsdk.activity.so r2 = r0.oCU
            if (r2 != 0) goto L37
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.Ln.so(r0)
            if (r0 == 0) goto L37
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            com.bytedance.sdk.openadsdk.component.reward.oJ.si r0 = r0.Jc
            boolean r0 = r0.Ry()
            if (r0 == 0) goto L37
            r6.jr()
            goto L7d
        L37:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            com.bytedance.sdk.openadsdk.activity.so r2 = r0.oCU
            if (r2 != 0) goto L53
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r0.ZYk
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.Ln.kkU(r0)
            if (r0 == 0) goto L53
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            com.bytedance.sdk.openadsdk.component.reward.oJ.si r0 = r0.Jc
            boolean r0 = r0.Ry()
            if (r0 == 0) goto L53
            r6.jr()
            goto L7d
        L53:
            r6.awB()
        L56:
            r6 = r4
            goto L7e
        L58:
            if (r2 < 0) goto L7d
            java.util.concurrent.atomic.AtomicBoolean r6 = r0.f13023oq
            r6.set(r1)
            android.os.Message r6 = android.os.Message.obtain()
            r0 = 700(0x2bc, float:9.81E-43)
            r6.what = r0
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            int r2 = r0.f13025so
            r6.arg1 = r2
            com.bytedance.sdk.component.utils.IUZ r0 = r0.Jm
            r0.sendMessage(r6)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r6 = r5.oJ
            com.bytedance.sdk.openadsdk.core.model.cY r6 = r6.ZYk
            boolean r6 = com.bytedance.sdk.openadsdk.core.model.Ln.jFA(r6)
            if (r6 != 0) goto L7d
            goto L56
        L7d:
            r6 = r1
        L7e:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r5.oJ
            com.bytedance.sdk.openadsdk.component.reward.oJ.si r0 = r0.Jc
            boolean r0 = r0.tb()
            if (r0 == 0) goto L89
            goto L8a
        L89:
            r1 = r6
        L8a:
            if (r1 == 0) goto La3
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r6 = r5.oJ
            com.bytedance.sdk.openadsdk.utils.WcQ r0 = r6.jXJ
            if (r0 == 0) goto La3
            boolean r6 = r6.ex()
            if (r6 != 0) goto L99
            return r4
        L99:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r6 = r5.oJ
            com.bytedance.sdk.openadsdk.utils.WcQ r0 = r6.jXJ
            int r6 = r6.f13025so
            long r1 = (long) r6
            r0.oJ(r1)
        La3:
            return r4
        La4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.oJ.Pfn.tB(com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk):boolean");
    }

    public void ZYk(com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        int lG = this.oJ.ZYk.lG();
        if (Ln.si(this.oJ.ZYk)) {
            lG = (this.oJ.ZYk.zUb() + 1) * 1000;
        }
        if (lG == -1) {
            if (Ln.so(this.oJ.ZYk)) {
                if (Ln.Id(this.oJ.ZYk) && this.oJ.Xe.cFZ()) {
                    zYk.awB();
                    return;
                } else {
                    zYk.jr();
                    return;
                }
            }
            zYk.awB();
        } else if (lG < 0) {
            return;
        } else {
            this.oJ.f13022mu.ex(false);
            if (Ln.so(this.oJ.ZYk)) {
                if (Ln.Id(this.oJ.ZYk) && this.oJ.Xe.cFZ()) {
                    this.oJ.Jm.sendEmptyMessageDelayed(600, lG);
                } else {
                    this.oJ.Jm.sendEmptyMessageDelayed(1, lG);
                    return;
                }
            } else {
                this.oJ.Jm.sendEmptyMessageDelayed(600, lG);
            }
        }
        com.bytedance.sdk.openadsdk.utils.WcQ wcQ = this.oJ.jXJ;
        if (wcQ != null) {
            wcQ.oJ(lG);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn) {
        this.ZYk.oJ(pfn);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0124, code lost:
        if (r1.ofl() == false) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(boolean r11, boolean r12, boolean r13, com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk r14, int r15) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.oJ.Pfn.oJ(boolean, boolean, boolean, com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk, int):void");
    }

    private boolean ZYk(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.view.ex oJ2;
        if (!QSm.tB(this.oJ.ZYk) || (oJ2 = this.oJ.f13026tb.oJ()) == null || oJ2.ex != 0 || z10) {
            return true;
        }
        this.oJ.f13022mu.tB(false);
        return false;
    }

    public void tB() {
        this.ZYk.ex();
    }

    public void oJ(boolean z10, com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        WcQ wcQ;
        if (Ln.si(this.oJ.ZYk)) {
            return;
        }
        this.oJ.Ry.set(z10);
        zYk.WcQ();
        if (this.oJ.ZYk.Br()) {
            this.oJ.f13022mu.ex(false);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            oJVar.f13022mu.ex(Ln.si(oJVar.ZYk));
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        oJVar2.f13022mu.tB(Ln.cFZ(oJVar2.ZYk));
        if (this.oJ.ZYk.Pfn() && Ln.cFZ(this.oJ.ZYk) && z10) {
            this.oJ.f13022mu.ex(true);
        }
        this.oJ.Jc.Ln();
        QSm qSm = this.oJ.ofl.awB;
        if (qSm != null) {
            qSm.Pfn();
        }
        this.oJ.ofl.tB();
        com.bytedance.sdk.openadsdk.component.reward.view.kkU kku = this.oJ.f13026tb;
        if (kku != null) {
            kku.ba();
        }
        so soVar = this.oJ.Xe;
        if (soVar != null) {
            soVar.cFZ(so.ZYk);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.oJ;
        if (!TextUtils.isEmpty(cY.oJ(oJVar3.Rl, oJVar3.ZYk))) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar4 = this.oJ;
            Id.oJ(oJVar4.HyG, Ln.PiB(oJVar4.ZYk), this.oJ.ZYk, ZYk.oJ.tB);
            return;
        }
        if (cY.tB(this.oJ.ZYk) && (wcQ = this.oJ.UN) != null) {
            wcQ.ba();
        }
        if (!cY.oJ(this.oJ.ZYk) && (cY.tB(this.oJ.ZYk) || !this.oJ.Jc.HyG())) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar5 = this.oJ;
            if (cY.oJ(oJVar5.ZYk, oJVar5.Jc.Ry(), this.oJ.Jc.Jm(), this.oJ.UN.BTZ(), this.oJ.Jc.LpP()) || Ln.cFZ(this.oJ.ZYk)) {
                if (!cY.ex(this.oJ.ZYk) && !Ln.cFZ(this.oJ.ZYk) && !cY.tB(this.oJ.ZYk)) {
                    this.oJ.Jc.oJ(true, 0, (String) null);
                }
                if (Ln.cFZ(this.oJ.ZYk)) {
                    if (Ln.Id(this.oJ.ZYk) && !this.oJ.Jc.ofl()) {
                        if (!this.oJ.Jc.Ry()) {
                            if (this.oJ.Xe.ex() != null) {
                                this.oJ.Xe.ex().oJ(2);
                            }
                            this.oJ.Xe.Pfn();
                            return;
                        }
                        if (this.oJ.Xe.ex() != null) {
                            this.oJ.Xe.ex().oJ(-1);
                        }
                        this.oJ.Xe.ba();
                        this.oJ.f13022mu.ex(false);
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar6 = this.oJ;
                        oJVar6.Xe.oJ(oJVar6.IUZ.Pfn());
                        return;
                    }
                    if (this.oJ.Jc.ofl() && this.oJ.Xe.ex() != null) {
                        this.oJ.Xe.ex().oJ(1);
                    }
                    ZYk(zYk);
                } else {
                    tB(zYk);
                }
                oJ(zYk);
                return;
            }
        }
        ex();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        this.oJ.Jc.oJ(0.0f);
        this.oJ.ofl.oJ(0.0f);
        if (!cY.tB(this.oJ.ZYk)) {
            this.oJ.UN.oJ(8);
            this.oJ.Jc.oJ(0);
            this.oJ.Jc.cdg();
        } else {
            this.oJ.Jc.oJ(8);
            this.oJ.UN.oJ(0);
            this.oJ.UN.cFZ();
        }
        if (this.oJ.cFZ) {
            cdg.oJ((View) zYk.WcQ, 0);
            this.oJ.ofl.ba(8);
        }
        this.oJ.ofl.ex(8);
        this.oJ.ofl.cFZ();
        if (cY.tB(this.oJ.ZYk)) {
            this.oJ.Jm.sendEmptyMessageDelayed(800, 100L);
            return;
        }
        this.oJ.Jm.sendEmptyMessageDelayed(500, 100L);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        oJVar.Jc.oJ(oJVar.bgF, true);
        this.oJ.Jc.tB(true);
        this.oJ.Jc.ZYk(true);
        UN BTZ = this.oJ.Jc.BTZ();
        if (BTZ != null) {
            BTZ.oJ("prerender_page_show", (JSONObject) null);
        }
    }

    public void oJ(boolean z10) {
        if (!cY.ex(this.oJ.ZYk)) {
            this.oJ.Jc.oJ(false, 408, "end_card_timeout");
        }
        this.oJ.Jc.nke();
        this.oJ.Jc.oJ(8);
        this.oJ.UN.oJ(8);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        if (oJVar.cFZ) {
            cdg.oJ((View) oJVar.UK.WcQ, 8);
            this.oJ.ofl.ba(0);
        }
        this.oJ.ofl.ex(8);
        if (this.oJ.ZYk.Br()) {
            if (!this.ZYk.oJ(this.oJ.cY)) {
                this.oJ.HyG.finish();
            }
        } else {
            com.bytedance.sdk.openadsdk.activity.so soVar = this.oJ.oCU;
            if (soVar != null) {
                this.ZYk.oJ(soVar.wd().cFZ());
            }
            this.ZYk.ZYk();
        }
        this.oJ.ofl.cFZ();
        if (z10) {
            tB(this.oJ.UK);
        }
        this.oJ.f13022mu.tB(false);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
        oJVar2.IUZ.oJ(oJVar2.ZYk.kO());
    }

    public void oJ(oJ oJVar) {
        this.tB = oJVar;
    }
}
