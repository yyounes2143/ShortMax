package com.bytedance.sdk.openadsdk.component.reward;

import android.graphics.SurfaceTexture;
import android.os.CountDownTimer;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
/* loaded from: classes3.dex */
public class tB implements com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB {
    private final cY ZYk;
    private long cFZ;
    private final oJ oJ;

    /* renamed from: so  reason: collision with root package name */
    private oJ.InterfaceC0200oJ f13040so;
    private final com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ tB;
    private boolean ex = true;
    private long Pfn = 0;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13039ba = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements com.bykv.vk.openvk.oJ.oJ.oJ.oJ {
        private int Pfn = 0;
        private final com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private CountDownTimer f13041ba;
        private tB.oJ cFZ;
        private long ex;
        private long jFA;
        private final long oJ;

        /* renamed from: so  reason: collision with root package name */
        private long f13042so;
        private final com.bytedance.sdk.openadsdk.ex.cFZ tB;

        public oJ(long j10, com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, com.bytedance.sdk.openadsdk.ex.cFZ cfz) {
            this.oJ = j10;
            this.ZYk = oJVar;
            this.tB = cfz;
        }

        public void BTZ() {
            this.Pfn = 2;
            this.ex = this.f13042so;
            CountDownTimer countDownTimer = this.f13041ba;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.f13041ba = null;
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public int Pfn() {
            return 0;
        }

        public void PiB() {
            this.Pfn = 0;
            CountDownTimer countDownTimer = this.f13041ba;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.f13041ba = null;
            }
            if (this.cFZ != null) {
                this.cFZ = null;
            }
        }

        public long WcQ() {
            return 0L;
        }

        public int awB() {
            return 0;
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public boolean cFZ() {
            if (this.Pfn == 2) {
                return true;
            }
            return false;
        }

        public void dLZ() {
            if (this.Pfn == 1) {
                return;
            }
            this.Pfn = 1;
            final long eZI = eZI();
            if (this.ex >= eZI) {
                this.ex = 0L;
            }
            final long j10 = eZI - this.ex;
            CountDownTimer countDownTimer = new CountDownTimer(j10, 200L) { // from class: com.bytedance.sdk.openadsdk.component.reward.tB.oJ.1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    if (oJ.this.cFZ != null) {
                        tB.oJ oJVar = oJ.this.cFZ;
                        long j11 = eZI;
                        oJVar.oJ(j11, j11);
                    }
                    oJ.this.Pfn = 4;
                    oJ.this.f13042so = eZI;
                    oJ.this.ex = eZI;
                    if (oJ.this.cFZ != null) {
                        oJ.this.cFZ.oJ(oJ.this.si(), 100);
                    }
                    awB.oJ oJVar2 = new awB.oJ();
                    oJVar2.ZYk(eZI);
                    oJVar2.ex(eZI);
                    oJVar2.tB(oJ.this.WcQ());
                    oJVar2.ex(oJ.this.awB());
                    oJVar2.oJ(oJ.this.jFA());
                    com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.ZYk(oJ.this.ZYk, oJVar2, oJ.this.tB);
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j11) {
                    long j12 = (j10 - j11) + oJ.this.ex;
                    oJ.this.f13042so = j12;
                    if (oJ.this.cFZ != null) {
                        oJ.this.cFZ.oJ(j12, eZI);
                    }
                }
            };
            this.f13041ba = countDownTimer;
            countDownTimer.start();
        }

        public long eZI() {
            return this.oJ;
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public int ex() {
            return 0;
        }

        public long jFA() {
            return this.jFA;
        }

        public void kkU() {
            this.f13042so = 0L;
            dLZ();
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public boolean oJ() {
            return false;
        }

        public long si() {
            return this.f13042so;
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public boolean so() {
            if (this.Pfn == 0) {
                return true;
            }
            return false;
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public boolean tB() {
            return false;
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public boolean ba() {
            return this.Pfn == 1;
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ
        public boolean ZYk() {
            return this.Pfn == 4;
        }

        public void ZYk(long j10) {
            this.ex = j10;
        }

        public void oJ(long j10) {
            this.jFA = j10;
        }

        public void oJ(tB.oJ oJVar) {
            this.cFZ = oJVar;
        }
    }

    public tB(cY cYVar, com.bytedance.sdk.openadsdk.ex.cFZ cfz) {
        long j10;
        com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar = new com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.tB.1
        };
        this.tB = oJVar;
        this.ZYk = cYVar;
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
        long j11 = 10;
        if (ib2 != null) {
            j10 = (long) ib2.ba();
        } else {
            j10 = 10;
        }
        if (j10 <= 0) {
            ib2.oJ(10.0d);
        } else {
            j11 = j10;
        }
        this.oJ = new oJ(j11 * 1000, oJVar, cfz);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk BTZ() {
        return null;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void Pfn() {
        ex();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean PiB() {
        return this.oJ.ZYk();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean WcQ() {
        return false;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void ZYk() {
        this.oJ.BTZ();
        awB.oJ oJVar = new awB.oJ();
        oJVar.ZYk(ba());
        oJVar.ex(jFA());
        oJVar.tB(cFZ());
        oJVar.oJ(eZI());
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(this.tB, oJVar);
        oJ.InterfaceC0200oJ interfaceC0200oJ = this.f13040so;
        if (interfaceC0200oJ != null) {
            interfaceC0200oJ.oJ(2);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean awB() {
        return false;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public long ba() {
        return this.oJ.si();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public long cFZ() {
        return 0L;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public com.bykv.vk.openvk.oJ.oJ.oJ.oJ dLZ() {
        return this.oJ;
    }

    public long eZI() {
        return this.cFZ;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void ex() {
        this.oJ.PiB();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public long jFA() {
        return this.oJ.eZI();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public int kkU() {
        return com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(this.oJ.f13042so, this.oJ.oJ);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(SurfaceTexture surfaceTexture) {
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ si() {
        return this.tB;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public int so() {
        return 0;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void tB() {
        this.oJ.dLZ();
        awB.oJ oJVar = new awB.oJ();
        oJVar.ZYk(ba());
        oJVar.ex(jFA());
        oJVar.tB(cFZ());
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.ZYk(this.tB, oJVar);
        oJ.InterfaceC0200oJ interfaceC0200oJ = this.f13040so;
        if (interfaceC0200oJ != null) {
            interfaceC0200oJ.oJ(1);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean oJ(float f10) {
        return false;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(long j10) {
        this.cFZ = j10;
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.oJ(j10);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(boolean z10, int i10) {
        ex();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        this.f13039ba = tBVar.dLZ();
        if (tBVar.kkU() > 0) {
            this.oJ.ZYk(tBVar.kkU());
        }
        tBVar.ZYk(com.bytedance.sdk.openadsdk.oq.oJ.oJ("player_force_raw_url", 0) == 1);
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(this.ZYk, this.tB, tBVar);
        this.oJ.dLZ();
        oJ.InterfaceC0200oJ interfaceC0200oJ = this.f13040so;
        if (interfaceC0200oJ != null) {
            interfaceC0200oJ.oJ(1);
        }
        return true;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(boolean z10, String str) {
        this.f13039ba = z10;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(tB.oJ oJVar) {
        this.oJ.oJ(oJVar);
    }

    public void oJ(oJ.InterfaceC0200oJ interfaceC0200oJ) {
        this.f13040so = interfaceC0200oJ;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ() {
        this.oJ.kkU();
    }
}
