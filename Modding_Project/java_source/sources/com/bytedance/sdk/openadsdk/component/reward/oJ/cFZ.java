package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.os.Handler;
import android.os.Message;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
/* loaded from: classes3.dex */
public class cFZ extends kkU implements Handler.Callback {
    int Pfn;
    private final Handler RZ;
    long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    boolean f13005ba;
    int ex;
    boolean oJ;
    int tB;

    public cFZ(oJ oJVar) {
        super(oJVar);
        this.RZ = new Handler(this);
        this.oJ = false;
        this.ZYk = 0L;
        this.tB = 0;
        this.ex = 0;
        this.Pfn = 0;
        this.f13005ba = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void BTZ() {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if ((1.0f - (this.tB / this.ex)) * 100.0f >= com.bytedance.sdk.openadsdk.core.si.ex().Xe(String.valueOf(this.dLZ.f13020ba)).f13248ba) {
            z10 = true;
        } else {
            z10 = false;
        }
        int oJ = com.bytedance.sdk.openadsdk.core.si.ex().oJ(String.valueOf(this.dLZ.f13020ba));
        if (oJ == 0) {
            com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.f13018si;
            if (oJVar != null) {
                z11 = oJVar.ba();
            } else {
                z11 = false;
            }
            if (this.WcQ) {
                z11 = true;
            }
            if (z10 && z11) {
                z12 = true;
            }
        } else if (oJ == 1) {
            z12 = z10;
        }
        if (z12) {
            this.dLZ.cdg.ZYk(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void Pfn() {
        if (!this.PiB) {
            return;
        }
        super.Pfn();
        if (Ln.tB(this.dLZ.ZYk)) {
            this.dLZ.Jm.removeMessages(600);
        }
        this.RZ.removeMessages(900);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    protected com.bytedance.sdk.openadsdk.BTZ.ba ZYk() {
        return new com.bytedance.sdk.openadsdk.BTZ.ba() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.cFZ.1
            @Override // com.bytedance.sdk.openadsdk.BTZ.ba
            public void oJ() {
                cFZ.this.BTZ();
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void ba() {
        if (!this.PiB || this.awB) {
            return;
        }
        super.ba();
        this.RZ.removeCallbacksAndMessages(null);
    }

    public int cFZ() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void ex() {
        com.bytedance.sdk.openadsdk.core.widget.ZYk zYk;
        if (!this.PiB) {
            return;
        }
        super.ex();
        if (DeviceUtils.cFZ() == 0) {
            this.dLZ.bgF = true;
        }
        oJ oJVar = this.dLZ;
        if (oJVar.bgF) {
            oJVar.f13022mu.ZYk(true);
            tB(true);
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk2 = this.dLZ.UK;
        if ((zYk2 == null || (zYk = zYk2.PiB) == null || !zYk.isShowing()) && cFZ() > 0) {
            oJ(0L);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 900 && this.cFZ && Ln.tB(this.dLZ.ZYk) && !this.Ry.get()) {
            int i10 = message.arg1;
            if (i10 > 0) {
                this.dLZ.f13022mu.ex(true);
                int i11 = this.Pfn - (this.ex - i10);
                if (i11 == i10) {
                    this.dLZ.f13022mu.oJ(String.valueOf(i10), null);
                } else if (i11 > 0) {
                    this.dLZ.f13022mu.oJ(String.valueOf(i10), String.format(cY.oJ(this.dLZ.HyG.getApplicationContext(), "tt_skip_ad_time_text"), Integer.valueOf(i11)));
                } else {
                    this.f13005ba = true;
                    if (Ln.kkU(this.dLZ.ZYk)) {
                        this.dLZ.f13022mu.tB();
                        this.dLZ.f13022mu.Pfn(true);
                    } else {
                        this.dLZ.RZ.set(true);
                        this.dLZ.UK.awB();
                    }
                }
                Message obtain = Message.obtain();
                obtain.what = 900;
                int i12 = i10 - 1;
                obtain.arg1 = i12;
                this.RZ.sendMessageDelayed(obtain, 1000L);
                this.tB = i12;
            } else {
                this.f13005ba = true;
                if (Ln.kkU(this.jFA) && (!Ln.Id(this.jFA) || !this.f13018si.Pfn())) {
                    this.dLZ.f13022mu.tB();
                    this.dLZ.f13022mu.Pfn(true);
                } else {
                    this.dLZ.f13022mu.ex(false);
                    this.dLZ.RZ.set(true);
                    this.dLZ.UK.awB();
                }
                com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.f13018si;
                if (oJVar == null || oJVar.Pfn()) {
                    this.WcQ = true;
                }
            }
            BTZ();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public boolean jFA() {
        return this.f13005ba;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void so() {
        if (!this.PiB) {
            return;
        }
        this.RZ.removeMessages(900);
        this.RZ.removeMessages(600);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void tB() {
        if (!this.PiB) {
            return;
        }
        this.cFZ = true;
        this.f13018si.oJ();
        if (Ln.kkU(this.jFA)) {
            this.dLZ.Jc.ba();
        }
        this.ex = this.jFA.zUb();
        this.Pfn = com.bytedance.sdk.openadsdk.core.si.ex().oJ(String.valueOf(this.dLZ.f13020ba), this.jFA.kO());
        this.ZYk = System.currentTimeMillis();
        if (!this.dLZ.uvK) {
            Handler handler = this.RZ;
            handler.sendMessage(handler.obtainMessage(900, this.ex, 0));
        }
        this.dLZ.cdg.eZI();
        com.bytedance.sdk.openadsdk.component.reward.dLZ dlz = this.dLZ.EP;
        if (dlz != null) {
            dlz.oJ(this.ex);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void oJ() {
        if (this.PiB && !this.BTZ) {
            super.oJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void oJ(boolean z10) {
        if (this.eZI != null) {
            try {
                com.bytedance.sdk.openadsdk.QSm.oJ.ZYk oJ = com.bytedance.sdk.openadsdk.QSm.oJ.ex.oJ().oJ(this.jFA, this.eZI, ZYk());
                this.f13018si = oJ;
                oJ.oJ(this.dLZ.cdg);
            } catch (Throwable th2) {
                QSm.tB("RVIVPlayableNewManager", "PreRender injection exception" + th2.getMessage());
            }
            if (this.f13018si == null) {
                super.oJ(z10);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void oJ(int i10) {
        this.tB = i10;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.kkU
    public void oJ(long j10) {
        if (this.PiB && this.cFZ && !this.dLZ.dLZ.get()) {
            Message obtain = Message.obtain();
            obtain.what = 900;
            obtain.arg1 = cFZ();
            this.RZ.sendMessageDelayed(obtain, j10);
        }
    }
}
