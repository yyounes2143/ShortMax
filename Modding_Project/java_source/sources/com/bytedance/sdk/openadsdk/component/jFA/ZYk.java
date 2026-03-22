package com.bytedance.sdk.openadsdk.component.jFA;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.ZYk.WcQ;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.awB;
import com.bytedance.sdk.openadsdk.core.so.jr;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends QSm {
    private com.bytedance.sdk.openadsdk.component.ba.oJ Ln;
    private FrameLayout LpP;
    private final com.bytedance.sdk.openadsdk.component.oJ Pfn;
    boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.component.ba.ZYk f12981ba;
    private final com.bytedance.sdk.openadsdk.component.so.oJ cFZ;
    float ex;
    private tB.oJ nke;
    boolean oJ;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.component.so.tB f12982so;
    int tB;

    public ZYk(@NonNull Context context, cY cYVar, AdSlot adSlot, String str, com.bytedance.sdk.openadsdk.component.oJ oJVar, com.bytedance.sdk.openadsdk.component.ba.ZYk zYk, com.bytedance.sdk.openadsdk.component.so.oJ oJVar2) {
        super(context, cYVar, adSlot, str, true, true);
        this.oJ = true;
        this.ZYk = false;
        this.tB = 0;
        this.ex = 1.0f;
        this.Pfn = oJVar;
        this.f12981ba = zYk;
        this.cFZ = oJVar2;
        if (cYVar != null && cYVar.zxE() != null) {
            this.tB = cYVar.zxE().ZYk();
            this.ex = cYVar.zxE().oJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(WcQ wcQ) {
        if (wcQ == null) {
            return;
        }
        if (wcQ.oJ() != null) {
            if (this.oJ) {
                wcQ.oJ().setTag(com.bytedance.sdk.component.adexpress.dynamic.oJ.f12709ba, 1);
                ((FrameLayout) wcQ.oJ()).removeAllViews();
                FrameLayout frameLayout = (FrameLayout) wcQ.oJ();
                this.LpP = frameLayout;
                ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).gravity = 17;
                this.oJ = false;
                return;
            }
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
                    awB.addView(this.LpP, layoutParams);
                    return;
                }
                return;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.LpP.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new FrameLayout.LayoutParams(ZYk3, ZYk4);
            }
            layoutParams2.width = ZYk3;
            layoutParams2.height = ZYk4;
            layoutParams2.topMargin = ZYk2;
            layoutParams2.leftMargin = ZYk;
            layoutParams2.setMarginStart(ZYk);
            layoutParams2.setMarginEnd(layoutParams2.rightMargin);
            this.LpP.setLayoutParams(layoutParams2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public int Pfn() {
        com.bytedance.sdk.openadsdk.component.so.tB tBVar = this.f12982so;
        if (tBVar != null && tBVar.cFZ()) {
            return 1;
        }
        com.bytedance.sdk.openadsdk.component.so.tB tBVar2 = this.f12982so;
        if (tBVar2 != null && tBVar2.ba()) {
            return 3;
        }
        com.bytedance.sdk.openadsdk.component.so.tB tBVar3 = this.f12982so;
        if (tBVar3 != null && tBVar3.Pfn()) {
            return 2;
        }
        com.bytedance.sdk.openadsdk.component.so.tB tBVar4 = this.f12982so;
        if (tBVar4 != null && tBVar4.tB()) {
            cFZ(4);
            return 4;
        }
        com.bytedance.sdk.openadsdk.component.so.tB tBVar5 = this.f12982so;
        if (tBVar5 == null || !tBVar5.ex()) {
            return 3;
        }
        return 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void ZYk() {
        super.ZYk();
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void ba() {
        com.bytedance.sdk.openadsdk.component.ba.oJ oJVar = this.Ln;
        if (oJVar != null) {
            oJVar.ZYk(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    public void cFZ() {
        this.awB = true;
        this.LpP = new FrameLayout(this.jFA);
        if (!com.bytedance.sdk.openadsdk.core.kkU.ex.oJ(this.BTZ) && !com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk(this.BTZ)) {
            addView(this.LpP, new FrameLayout.LayoutParams(-1, -1));
        }
        super.cFZ();
        setVideoFrameChangeListener(new com.bytedance.sdk.openadsdk.BTZ.cFZ() { // from class: com.bytedance.sdk.openadsdk.component.jFA.ZYk.1
            @Override // com.bytedance.sdk.openadsdk.BTZ.cFZ
            public void oJ(WcQ wcQ) {
                ZYk.this.oJ(wcQ);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public long ex() {
        return this.cFZ.tB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    public int getDynamicShowType() {
        if (this.IUZ == null) {
            return 1;
        }
        return super.getDynamicShowType();
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.component.cFZ.oJ.oJ(this.BTZ, si.ex().ba(String.valueOf(this.BTZ.uv())));
    }

    public FrameLayout getVideoFrameLayout() {
        return this.LpP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(int i10, String str) {
    }

    public void setExpressVideoListenerProxy(tB.oJ oJVar) {
        this.nke = oJVar;
    }

    public void setTopListener(com.bytedance.sdk.openadsdk.component.ba.oJ oJVar) {
        this.Ln = oJVar;
    }

    public void setVideoManager(com.bytedance.sdk.openadsdk.component.so.tB tBVar) {
        this.f12982so = tBVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.component.adexpress.ZYk.awB
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar, WcQ wcQ) {
        this.IUZ = exVar;
        if (exVar instanceof jr) {
            jr jrVar = (jr) exVar;
            if (jrVar.eZI() != null) {
                jrVar.eZI().oJ((awB) this);
            }
        }
        if (wcQ != null && wcQ.ZYk()) {
            oJ(wcQ);
        }
        super.oJ(exVar, wcQ);
    }

    public void oJ(final WcQ wcQ) {
        if (wcQ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.jFA.ZYk.2
            @Override // java.lang.Runnable
            public void run() {
                ZYk.this.tB(wcQ);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ() {
        com.bytedance.sdk.openadsdk.component.ba.oJ oJVar = this.Ln;
        if (oJVar != null) {
            oJVar.oJ(this);
        }
    }

    public void oJ(long j10, long j11) {
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.tB) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.tB) exVar).oJ(j10, j11);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public boolean oJ(JSONObject jSONObject) {
        cY cYVar;
        if (jSONObject == null) {
            this.ZYk = false;
            return false;
        }
        int i10 = this.tB;
        if (i10 != 1 && i10 != 2) {
            this.ZYk = false;
            return false;
        }
        int optInt = jSONObject.optInt("switch", 0);
        float optDouble = (float) jSONObject.optDouble("speed", 0.0d);
        this.ex = optDouble;
        if (optDouble <= 0.0f && (cYVar = this.BTZ) != null && cYVar.zxE() != null) {
            this.ex = this.BTZ.zxE().oJ();
        }
        boolean z10 = optInt == 1;
        this.ZYk = z10;
        com.bytedance.sdk.openadsdk.component.ba.ZYk zYk = this.f12981ba;
        if (zYk != null) {
            zYk.oJ(this.tB, this.ex, z10);
            com.bytedance.sdk.openadsdk.component.so.tB tBVar = this.f12982so;
            if (tBVar != null && tBVar.ZYk() != null && this.cFZ != null) {
                this.f12982so.ZYk().oJ(this.cFZ.oJ());
                com.bytedance.sdk.component.utils.QSm.oJ("PAGAppOpenAdExpressView", "isAccelerate =" + this.ZYk + ",total duration = " + this.f12982so.ZYk().si());
            }
        }
        if (this.tB == 1) {
            return true;
        }
        if (!this.ZYk) {
            this.ex = 1.0f;
        }
        com.bytedance.sdk.openadsdk.component.so.tB tBVar2 = this.f12982so;
        if (tBVar2 != null) {
            return tBVar2.oJ(this.ex);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public long tB() {
        return this.cFZ.tB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.openadsdk.core.so.awB
    public void oJ(int i10) {
        com.bytedance.sdk.openadsdk.component.so.tB tBVar = this.f12982so;
        if (tBVar == null) {
            return;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                tBVar.so();
                this.f12981ba.ex();
                return;
            } else if (i10 == 3) {
                tBVar.jFA();
                this.f12981ba.tB();
                return;
            } else if (i10 == 4) {
                tBVar.kkU();
                return;
            } else if (i10 != 5) {
                return;
            }
        }
        if (tBVar.Pfn() || this.f12982so.ba()) {
            return;
        }
        this.f12982so.oJ(getVideoFrameLayout(), this.Pfn, this.BTZ);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    protected void tB(JSONObject jSONObject) {
        cY cYVar = this.BTZ;
        boolean z10 = cYVar != null && cYVar.uvK() == 0;
        cY cYVar2 = this.BTZ;
        com.bytedance.sdk.openadsdk.component.cFZ.oJ.oJ(jSONObject, cYVar2 != null ? cYVar2.uv() : 0, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm, com.bytedance.sdk.component.adexpress.ZYk.so
    public void oJ(View view, int i10, com.bytedance.sdk.component.adexpress.tB tBVar) {
        if (i10 != -1 && tBVar != null && i10 == 3) {
            ba();
        } else {
            super.oJ(view, i10, tBVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.QSm
    protected void oJ(PiB.oJ oJVar) {
        oJVar.Pfn(com.bytedance.sdk.openadsdk.component.cFZ.oJ.oJ());
    }
}
