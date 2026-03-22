package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.component.reward.oJ.PiB;
import com.bytedance.sdk.openadsdk.component.reward.oJ.eZI;
import com.bytedance.sdk.openadsdk.component.reward.oJ.si;
import com.bytedance.sdk.openadsdk.component.reward.view.BTZ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
/* loaded from: classes3.dex */
public class oJ {
    protected final eZI Pfn;
    protected cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected final BTZ f12992ba;
    protected final si cFZ;
    protected int ex;
    protected com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk jFA;
    protected IUZ kkU;
    protected com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJ;

    /* renamed from: so  reason: collision with root package name */
    protected final PiB f12993so;
    protected int tB;

    public oJ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.oJ = oJVar;
        this.ZYk = oJVar.ZYk;
        this.tB = oJVar.NO;
        this.ex = oJVar.jB;
        this.Pfn = oJVar.cY;
        this.f12992ba = oJVar.ofl;
        this.cFZ = oJVar.Jc;
        this.f12993so = oJVar.f13022mu;
    }

    public boolean ZYk() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        if (oJVar.oCU == null && oJVar.cY.cFZ() && (QSm.tB(this.oJ.ZYk) || !cY.Pfn(this.oJ.ZYk))) {
            return false;
        }
        if (QSm.ZYk(this.oJ.ZYk) && this.oJ.RZ.get()) {
            FrameLayout ba2 = this.oJ.ofl.ba();
            ba2.setVisibility(4);
            ba2.setVisibility(0);
            return false;
        } else if (this.oJ.kkU.get() || this.oJ.dLZ.get() || Ln.si(this.oJ.ZYk)) {
            return false;
        } else {
            return true;
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk, IUZ iuz) {
        this.jFA = zYk;
        this.kkU = iuz;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tB() {
        if (Ln.ZYk(this.oJ.ZYk) && DeviceUtils.cFZ() == 0) {
            this.oJ.bgF = true;
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
        oJVar.f13022mu.ZYk(oJVar.bgF);
    }

    public boolean oJ() {
        return this.oJ.ZYk.Br() || this.oJ.ZYk.Dc() == 15 || this.oJ.ZYk.Dc() == 5 || this.oJ.ZYk.Dc() == 50;
    }

    public void oJ(boolean z10) {
        if (this.oJ.kkU.get()) {
            return;
        }
        cY cYVar = this.ZYk;
        if (cYVar != null && cYVar.RQ()) {
            this.f12993so.tB(false);
            this.f12993so.oJ(true);
            this.oJ.ofl.ZYk(8);
            this.oJ.ofl.ex(8);
            return;
        }
        if (!z10) {
            this.f12993so.tB(false);
            this.f12993so.oJ(false);
            this.f12993so.ex(false);
            this.oJ.ofl.ba(8);
        } else {
            this.f12993so.oJ(this.oJ.ZYk.LTg());
            if (Ln.si(this.oJ.ZYk) || oJ()) {
                this.f12993so.tB(true);
            }
            if (!oJ() && (!(this instanceof cFZ) || !this.oJ.ZYk.Pfn())) {
                this.f12993so.Pfn();
                this.oJ.ofl.ba(0);
            } else {
                this.f12993so.ex(true);
            }
        }
        if (z10) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            if (oJVar.LS != com.bytedance.sdk.openadsdk.component.reward.view.ex.oJ) {
                oJVar.ofl.ZYk(8);
                this.oJ.ofl.ex(8);
                return;
            }
            oJVar.ofl.ZYk(0);
            this.oJ.ofl.tB(0);
            this.oJ.ofl.ex(0);
            return;
        }
        this.oJ.ofl.ZYk(4);
        this.oJ.ofl.tB(8);
        this.oJ.ofl.ex(8);
    }
}
