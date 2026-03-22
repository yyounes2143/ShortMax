package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.app.Activity;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class kkU {
    protected boolean BTZ;
    protected boolean PiB;
    protected AtomicBoolean Ry = new AtomicBoolean(false);
    protected boolean WcQ;
    protected boolean awB;
    protected volatile boolean cFZ;
    protected final oJ dLZ;
    protected FrameLayout eZI;
    @NonNull
    protected final cY jFA;
    protected final String kkU;

    /* renamed from: si  reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.QSm.oJ.oJ f13018si;

    /* renamed from: so  reason: collision with root package name */
    protected final Activity f13019so;

    public kkU(oJ oJVar) {
        this.dLZ = oJVar;
        this.f13019so = oJVar.HyG;
        this.kkU = oJVar.Pfn;
        cY cYVar = oJVar.ZYk;
        this.jFA = cYVar;
        this.PiB = Ln.Pfn(cYVar);
    }

    private void cFZ() {
        int lG = this.jFA.lG();
        if (lG == -1) {
            if (Ln.jFA(this.jFA)) {
                com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.f13018si;
                if (oJVar != null && oJVar.Pfn()) {
                    this.dLZ.RZ.set(true);
                    this.dLZ.UK.awB();
                } else {
                    this.dLZ.UK.jr();
                    return;
                }
            } else {
                this.dLZ.RZ.set(true);
                this.dLZ.UK.awB();
            }
        } else if (lG >= 0) {
            this.dLZ.f13022mu.ex(false);
            if (Ln.jFA(this.jFA)) {
                com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar2 = this.f13018si;
                if (oJVar2 != null && oJVar2.Pfn()) {
                    this.dLZ.Jm.sendEmptyMessageDelayed(600, lG);
                } else {
                    this.dLZ.Jm.sendEmptyMessageDelayed(1, lG);
                    return;
                }
            } else {
                this.dLZ.Jm.sendEmptyMessageDelayed(600, lG);
            }
        } else {
            return;
        }
        oJ oJVar3 = this.dLZ;
        if (oJVar3.jXJ == null || !oJVar3.ex()) {
            return;
        }
        this.dLZ.jXJ.oJ(lG);
    }

    public void Pfn() {
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar;
        if (this.PiB && !this.Ry.get() && (oJVar = this.f13018si) != null) {
            oJVar.tB();
        }
    }

    public void ZYk(boolean z10) {
        if (this.PiB) {
            oJ oJVar = this.dLZ;
            if (oJVar.Qu) {
                this.eZI = (FrameLayout) oJVar.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.SYE);
                oJ(z10);
            }
        }
    }

    public void ba() {
        if (!this.PiB || this.awB) {
            return;
        }
        this.awB = true;
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.f13018si;
        if (oJVar != null) {
            oJVar.ex();
        }
        FrameLayout frameLayout = this.eZI;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    public void dLZ() {
        if (this.Ry.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.f13018si;
            if (oJVar != null) {
                oJVar.oJ(true);
            }
            this.dLZ.Jc.cFZ(true);
            oJ oJVar2 = this.dLZ;
            oJVar2.XAo.oJ(true, oJVar2.UK);
            if (this.dLZ.XAo.Pfn()) {
                oJ oJVar3 = this.dLZ;
                oJVar3.jXJ.oJ(oJVar3.f13025so);
                return;
            }
            oJ oJVar4 = this.dLZ;
            oJVar4.Jc.oJ(oJVar4.bgF, true);
            this.dLZ.Jc.tB(true);
            this.dLZ.Jc.ZYk(true);
            this.dLZ.Jm.removeMessages(600);
            return;
        }
        this.dLZ.Jc.jFA();
    }

    public void ex() {
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar;
        if (this.PiB && !this.Ry.get() && (oJVar = this.f13018si) != null) {
            oJVar.ZYk();
        }
    }

    public boolean jFA() {
        return false;
    }

    public boolean kkU() {
        return this.cFZ;
    }

    public void oJ(int i10) {
    }

    public void tB() {
        if (this.PiB) {
            this.cFZ = true;
            tB(this.dLZ.bgF);
            this.f13018si.oJ();
            cFZ();
            if (Ln.kkU(this.jFA)) {
                this.dLZ.Jc.ba();
            }
        }
    }

    public void oJ(long j10) {
    }

    public void oJ() {
        if (this.PiB && !this.BTZ) {
            this.BTZ = true;
        }
    }

    protected com.bytedance.sdk.openadsdk.BTZ.ba ZYk() {
        return new com.bytedance.sdk.openadsdk.BTZ.ba() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.kkU.1
            @Override // com.bytedance.sdk.openadsdk.BTZ.ba
            public void oJ() {
                kkU.this.dLZ.cdg.ZYk(false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(boolean z10) {
        FrameLayout frameLayout = this.eZI;
        if (frameLayout != null) {
            oJ oJVar = this.dLZ;
            com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar2 = new com.bytedance.sdk.openadsdk.QSm.oJ.oJ(oJVar.Rl, this.jFA, oJVar.oTd, z10, frameLayout);
            this.f13018si = oJVar2;
            oJVar2.oJ(this.dLZ.cdg);
            this.f13018si.oJ(true, ZYk());
        }
    }

    public void tB(boolean z10) {
        if (this.PiB && this.f13018si != null && this.cFZ) {
            this.f13018si.oJ(z10);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn) {
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar;
        if (this.PiB && (oJVar = this.f13018si) != null) {
            oJVar.oJ(pfn);
        }
    }

    public void so() {
    }
}
