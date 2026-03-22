package com.bytedance.sdk.openadsdk.component.reward.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ZYk.WcQ;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.awB;
import com.bytedance.sdk.openadsdk.core.so.jr;
import com.bytedance.sdk.openadsdk.core.so.si;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.Objects;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex extends QSm {
    public static float oJ = 100.0f;
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ Pfn;
    awB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private float f13050ba;
    private com.bytedance.sdk.openadsdk.QSm.oJ.oJ cFZ;
    public int ex;
    si tB;

    public ex(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar, AdSlot adSlot, String str) {
        super(oJVar.HyG, oJVar.ZYk, adSlot, str, oJVar.bgF, !oJVar.uvK);
        this.ex = 1;
        this.f13050ba = -1.0f;
        this.Pfn = oJVar;
        setVideoBusiness(oJVar.cdg);
    }

    private void PiB() {
        setBackupListener(new com.bytedance.sdk.component.adexpress.ZYk.tB() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.ex.2
            @Override // com.bytedance.sdk.component.adexpress.ZYk.tB
            public boolean oJ(ViewGroup viewGroup, int i10) {
                try {
                    ((QSm) viewGroup).QSm();
                    ex.this.tB = new si(viewGroup.getContext());
                    ex exVar = ex.this;
                    exVar.tB.oJ(((QSm) exVar).BTZ, (QSm) viewGroup, ex.this.Pfn.f13027wd);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex(WcQ wcQ) {
        if (wcQ == null) {
            return;
        }
        double Pfn = wcQ.Pfn();
        double ba2 = wcQ.ba();
        double cFZ = wcQ.cFZ();
        double so2 = wcQ.so();
        int ZYk = cdg.ZYk(this.jFA, (float) Pfn);
        int ZYk2 = cdg.ZYk(this.jFA, (float) ba2);
        int ZYk3 = cdg.ZYk(this.jFA, (float) cFZ);
        int ZYk4 = cdg.ZYk(this.jFA, (float) so2);
        if ((so2 != 0.0d && cFZ != 0.0d) || this.IUZ.tB() == 7 || this.IUZ.tB() == 10) {
            if ((this.IUZ.tB() == 7 || this.IUZ.tB() == 10) && (wcQ instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ZYk)) {
                FrameLayout awB = ((com.bytedance.sdk.openadsdk.core.kkU.ba.ZYk) wcQ).awB();
                if (awB != null) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams.gravity = 17;
                    awB.addView(this.PiB, layoutParams);
                    return;
                }
                return;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.PiB.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new FrameLayout.LayoutParams(ZYk3, ZYk4);
            }
            layoutParams2.width = ZYk3;
            layoutParams2.height = ZYk4;
            layoutParams2.topMargin = ZYk2;
            layoutParams2.leftMargin = ZYk;
            layoutParams2.setMarginStart(ZYk);
            layoutParams2.setMarginEnd(layoutParams2.rightMargin);
            this.PiB.setLayoutParams(layoutParams2);
        }
    }

    private void tB(WcQ wcQ) {
        FrameLayout eZI;
        boolean z10;
        boolean z11;
        try {
            if (!(wcQ instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ZYk) || (eZI = ((com.bytedance.sdk.openadsdk.core.kkU.ba.ZYk) wcQ).eZI()) == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.activity.so soVar = this.Pfn.oCU;
            boolean z12 = true;
            if (soVar == null || soVar.wd() == null) {
                z10 = true;
                z11 = false;
            } else {
                com.bytedance.sdk.openadsdk.activity.so so2 = this.Pfn.oCU.wd().so();
                com.bytedance.sdk.openadsdk.activity.so soVar2 = this.Pfn.oCU;
                z11 = so2 == soVar2;
                if (!soVar2.wd().Ry() && z11) {
                    z12 = false;
                }
                z10 = z12;
            }
            com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = new com.bytedance.sdk.openadsdk.QSm.oJ.oJ(this.jFA, this.BTZ, this.Pfn.oTd, z10, eZI);
            this.cFZ = oJVar;
            oJVar.oJ(this.Pfn.cdg);
            this.cFZ.oJ(false, (com.bytedance.sdk.openadsdk.BTZ.ba) null);
            this.cFZ.oJ();
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.FRExpressView", "initPlayable success mute = " + this.Pfn.bgF + ",isCurrentScene->" + z11 + ",isMute = " + z10);
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    public void BTZ() {
        try {
            com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.cFZ;
            if (oJVar != null) {
                oJVar.ex();
            }
        } catch (Throwable unused) {
        }
        super.BTZ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public int Pfn() {
        awB awb = this.ZYk;
        if (awb != null) {
            int Pfn = awb.Pfn();
            cFZ(Pfn);
            return Pfn;
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void ba() {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.ba();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    public void cFZ() {
        this.awB = true;
        this.PiB = new FrameLayout(this.jFA);
        if (!com.bytedance.sdk.openadsdk.core.kkU.ex.oJ(this.BTZ) && !com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk(this.BTZ)) {
            addView(this.PiB, new FrameLayout.LayoutParams(-1, -1));
        }
        super.cFZ();
        com.bytedance.sdk.component.jFA.ba webView = getWebView();
        if (webView != null) {
            webView.setBackgroundColor(0);
        }
        PiB();
        setVideoFrameChangeListener(new com.bytedance.sdk.openadsdk.BTZ.cFZ() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.ex.1
            @Override // com.bytedance.sdk.openadsdk.BTZ.cFZ
            public void oJ(WcQ wcQ) {
                ex.this.oJ(wcQ);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    public void dLZ() {
        super.dLZ();
        if (this.cFZ != null) {
            com.bytedance.sdk.openadsdk.activity.so soVar = this.Pfn.oCU;
            if (soVar != null && soVar.wd() != null) {
                this.cFZ.oJ(true);
            }
            this.cFZ.tB();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
        if (r1 != 1) goto L15;
     */
    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r4.Pfn
            com.bytedance.sdk.openadsdk.component.reward.view.BTZ r0 = r0.ofl
            if (r0 == 0) goto L32
            com.bytedance.sdk.openadsdk.core.model.QSm r0 = r0.awB
            if (r0 == 0) goto L32
            boolean r1 = r0.jFA()
            if (r1 == 0) goto L32
            int r1 = r5.getAction()
            if (r1 == 0) goto L1a
            r2 = 1
            if (r1 == r2) goto L20
            goto L32
        L1a:
            float r1 = r5.getY()
            r4.f13050ba = r1
        L20:
            float r1 = r5.getY()
            float r2 = r4.f13050ba
            android.content.Context r3 = r4.jFA
            boolean r1 = com.bytedance.sdk.openadsdk.utils.cdg.oJ(r2, r1, r3)
            if (r1 == 0) goto L32
            r1 = 5
            r0.oJ(r1)
        L32:
            boolean r5 = super.dispatchTouchEvent(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.view.ex.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public View getBackupContainerBackgroundView() {
        if (oq()) {
            return this.tB.getBackupContainerBackgroundView();
        }
        return null;
    }

    public FrameLayout getVideoFrameLayout() {
        if (oq()) {
            return this.tB.getVideoContainer();
        }
        return this.PiB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    protected boolean jFA() {
        com.bytedance.sdk.openadsdk.activity.so soVar = this.Pfn.oCU;
        if (soVar != null && soVar.wd().oq()) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    public void kkU() {
        super.kkU();
        if (this.cFZ != null) {
            com.bytedance.sdk.openadsdk.activity.so soVar = this.Pfn.oCU;
            if (soVar != null && soVar.wd() != null) {
                this.cFZ.oJ(this.Pfn.oCU.wd().Ry());
            }
            this.cFZ.ZYk();
        }
    }

    public void setExpressVideoListenerProxy(awB awb) {
        this.ZYk = awb;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setSoundMute(boolean z10) {
        super.setSoundMute(z10);
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.oJ(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    protected boolean so() {
        com.bytedance.sdk.openadsdk.activity.so soVar = this.Pfn.oCU;
        if (soVar != null && soVar.wd().oq()) {
            return this.Pfn.Yg;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public boolean ZYk(JSONObject jSONObject) {
        return com.bytedance.sdk.openadsdk.component.reward.oJ.oJ(this.Pfn);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void ZYk() {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.ZYk();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.component.adexpress.ZYk.awB
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar, WcQ wcQ) {
        this.IUZ = exVar;
        cY cYVar = this.BTZ;
        if (cYVar != null && cYVar.RQ()) {
            super.oJ(exVar, wcQ);
            return;
        }
        if (exVar instanceof jr) {
            jr jrVar = (jr) exVar;
            if (jrVar.eZI() != null) {
                jrVar.eZI().oJ((awB) this);
            }
        }
        if (wcQ != null && wcQ.ZYk()) {
            oJ(wcQ);
            int tB = exVar.tB();
            this.ex = tB;
            if (tB == 10 && Ln.tB(this.BTZ)) {
                tB(wcQ);
            }
        }
        super.oJ(exVar, wcQ);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void ZYk(int i10) {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.ZYk(i10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public long tB() {
        awB awb = this.ZYk;
        if (awb != null) {
            return awb.tB();
        }
        return 0L;
    }

    public void oJ(final WcQ wcQ) {
        if (wcQ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.ex.3
            @Override // java.lang.Runnable
            public void run() {
                ex.this.ex(wcQ);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    public Pfn.oJ tB(int i10) {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        Pfn.oJ tB = super.tB(i10);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.Pfn;
        if (oJVar.uvK && (soVar = oJVar.oCU) != null) {
            tB.ZYk = soVar.BTZ;
        }
        return tB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(String str, JSONObject jSONObject) {
        super.oJ(str, jSONObject);
        awB awb = this.ZYk;
        if (awb != null) {
            awb.oJ(str, jSONObject);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(boolean z10, String str) {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.oJ(z10, str);
        }
        setSoundMute(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public boolean oJ(JSONObject jSONObject) {
        Objects.toString(jSONObject);
        awB awb = this.ZYk;
        if (awb != null) {
            return awb.oJ(jSONObject);
        }
        return super.oJ(jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public long ex() {
        awB awb = this.ZYk;
        if (awb != null) {
            return awb.ex();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ() {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.oJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(int i10) {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.oJ(i10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(int i10, WcQ wcQ) {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.oJ(i10, wcQ);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.component.adexpress.ZYk.so
    public void oJ(View view, int i10, com.bytedance.sdk.component.adexpress.tB tBVar) {
        if (i10 != -1 && tBVar != null && i10 == 3) {
            ba();
        } else {
            super.oJ(view, i10, tBVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(int i10, String str) {
        awB awb = this.ZYk;
        if (awb != null) {
            awb.oJ(i10, str);
        }
    }

    public void oJ(long j10, long j11) {
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.tB) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.tB) exVar).oJ(j10, j11);
        }
    }
}
