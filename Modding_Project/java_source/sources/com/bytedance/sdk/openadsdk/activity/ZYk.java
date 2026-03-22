package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.component.reward.PiB;
import com.bytedance.sdk.openadsdk.component.reward.dLZ;
import com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static com.bytedance.sdk.openadsdk.oJ.Pfn.oJ ZYk;
    private static com.bytedance.sdk.openadsdk.oJ.tB.ZYk tB;
    private final boolean BTZ;
    private Activity PiB;
    private boolean QSm;
    private Runnable Ry;
    private int WcQ;
    private Bundle awB;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.BTZ.jFA f12898ba;
    private com.bytedance.sdk.openadsdk.oJ.Pfn.oJ cFZ;
    private com.bytedance.sdk.openadsdk.activity.tB dLZ;
    private boolean eZI;
    private final cY ex;
    private final boolean jFA;
    private final boolean kkU;
    public dLZ oJ;

    /* renamed from: si  reason: collision with root package name */
    private boolean f12899si;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.oJ.tB.ZYk f12900so;
    private final Bundle Pfn = new Bundle();
    private final BTZ.ZYk RZ = new BTZ.ZYk();

    /* loaded from: classes3.dex */
    public static class Pfn {
        public boolean Pfn;
        public final int ZYk;
        public boolean ex;
        public final Bundle oJ = new Bundle();
        public final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tB;

        public Pfn(int i10, com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
            this.ZYk = i10;
            this.tB = oJVar;
        }

        public String toString() {
            return super.toString();
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.activity.ZYk$ZYk  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static abstract class AbstractC0189ZYk implements Handler.Callback {
        private boolean HL;
        private int IUZ;
        private int Id;
        private boolean LpP;
        protected int Pfn;
        private boolean PiB;
        private int QSm;
        private int RZ;
        private int Ry;
        private boolean WcQ;
        private boolean Xe;
        protected cY ZYk;
        private boolean awB;
        private int cY;
        private final Context dLZ;
        private float eZI;
        protected int ex;

        /* renamed from: jr  reason: collision with root package name */
        private boolean f12904jr;
        private final com.bytedance.sdk.openadsdk.component.reward.top.tB kkU;
        protected final ZYk oJ;

        /* renamed from: oq  reason: collision with root package name */
        private int f12905oq;
        protected float tB;

        /* renamed from: tb  reason: collision with root package name */
        private int f12908tb;
        private final Handler jFA = new Handler(Looper.getMainLooper(), this);
        private final int BTZ = 1000;

        /* renamed from: ba  reason: collision with root package name */
        protected int f12903ba = -1;

        /* renamed from: si  reason: collision with root package name */
        private int f12906si = 1000;
        private boolean Ln = false;
        boolean cFZ = false;

        /* renamed from: so  reason: collision with root package name */
        public int f12907so = -1;

        public AbstractC0189ZYk(ZYk zYk, cY cYVar, com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar) {
            this.oJ = zYk;
            this.ZYk = cYVar;
            this.kkU = tBVar;
            this.dLZ = tBVar.getContext();
            this.ex = oJ(cYVar);
        }

        private void Pfn(int i10) {
            if (this.LpP && i10 == 4) {
                this.Pfn = i10;
                oJ(i10, 1000);
            }
        }

        private void cFZ() {
            int i10 = this.f12903ba;
            if (i10 > 0) {
                this.f12903ba = i10 - 1;
            }
            if (this.f12903ba == 0 && this.awB) {
                this.awB = false;
                ZYk zYk = this.oJ;
                if (zYk != null && zYk.so() != null) {
                    so so2 = this.oJ.so();
                    if (so2 instanceof com.bytedance.sdk.openadsdk.activity.Pfn) {
                        ((com.bytedance.sdk.openadsdk.activity.Pfn) so2).Xe();
                    }
                }
            }
        }

        private void ex(int i10) {
            if (this.f12903ba > 0 && this.awB && i10 == 3) {
                this.Pfn = i10;
                oJ(i10, 1000);
            }
        }

        private void so() {
            if (this.oJ.HL()) {
                this.kkU.showSkipButton();
                this.PiB = true;
            } else {
                this.WcQ = true;
                this.kkU.showCloseButton();
            }
            this.kkU.setShowPlayableNextAd(false, this.ZYk);
        }

        public void ZYk() {
            this.LpP = false;
            this.cFZ = false;
            this.IUZ = 0;
            this.f12907so = -1;
            this.Ln = false;
            com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.kkU;
            if (tBVar != null) {
                tBVar.setShowPlayableNextAd(false, this.ZYk);
            }
        }

        public void ba() {
            this.Xe = true;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                oJ(message);
            } else if (i10 == 2) {
                oJ(message);
            } else if (i10 == 3) {
                if (this.f12903ba > 0) {
                    cFZ();
                    if (this.f12903ba >= 0) {
                        oJ(message.what, 1000);
                    }
                }
            } else if (i10 == 4 && this.LpP) {
                Pfn();
                if (this.LpP && !this.HL) {
                    oJ(message.what, 1000);
                }
            }
            return true;
        }

        public int oJ() {
            return this.ex;
        }

        protected abstract int oJ(cY cYVar);

        public void tB() {
            this.jFA.removeMessages(this.Pfn);
        }

        public void oJ(boolean z10) {
            this.f12904jr = z10;
            if (z10) {
                int i10 = this.f12905oq;
                int i11 = this.RZ;
                this.Ry = i10 - i11;
                this.cY = i11;
                this.Id = i10;
            }
        }

        public void tB(int i10) {
            this.f12903ba = i10;
            if (i10 > 0) {
                this.awB = true;
                if (this.ex <= 0 || this.PiB) {
                    ex(3);
                }
            }
        }

        public void Pfn() {
            int i10 = this.f12908tb;
            boolean z10 = this.Xe;
            boolean z11 = this.f12904jr;
            boolean z12 = this.HL;
            if (z10 && this.LpP) {
                if (this.WcQ) {
                    this.LpP = false;
                }
                if (z12) {
                    return;
                }
                int i11 = i10 + 1;
                this.f12908tb = i11;
                if (z11) {
                    this.Id = this.f12905oq;
                } else {
                    this.Id = this.Ry + this.RZ;
                }
                if (i11 >= this.Ry) {
                    if (!this.cFZ) {
                        this.IUZ++;
                        this.cFZ = true;
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("click_countdown_remaining", this.ex);
                            jSONObject.put("hint_sequence", this.IUZ);
                            com.bytedance.sdk.openadsdk.ex.tB.ba(this.ZYk, this.oJ.so().b_(), jSONObject);
                        } catch (Throwable unused) {
                        }
                    }
                    com.bytedance.sdk.openadsdk.activity.tB tBVar = this.oJ.dLZ;
                    int i12 = this.cY;
                    this.cY = i12 - 1;
                    tBVar.oJ(i12, this.ex);
                } else {
                    this.cFZ = false;
                    this.oJ.dLZ.oJ(-1, this.ex);
                }
                if (this.f12904jr && this.f12908tb >= this.QSm) {
                    boolean z13 = this.PiB;
                    boolean z14 = this.WcQ;
                    if (!z13 && !z14) {
                        this.kkU.setShowPlayableNextAd(true, this.ZYk);
                    }
                }
                if (this.f12908tb < this.Id || this.oJ.so() == null) {
                    return;
                }
                so so2 = this.oJ.so();
                if (so2 instanceof com.bytedance.sdk.openadsdk.activity.Pfn) {
                    this.jFA.removeMessages(4);
                    ((com.bytedance.sdk.openadsdk.activity.Pfn) so2).Xe();
                }
            }
        }

        public void ex() {
            if (this.PiB || this.WcQ) {
                return;
            }
            oJ(-1);
            this.Ln = true;
            com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.kkU;
            if (tBVar != null) {
                tBVar.setSkipText("");
                this.kkU.setShowEndCardNextAd(true, this.ZYk);
            }
        }

        public void oJ(int i10) {
            int i11 = this.Pfn;
            if (i10 != -1) {
                this.f12907so = i10;
            }
            this.jFA.removeMessages(i11);
        }

        public void ZYk(int i10) {
            if (this.f12907so != 2 || i10 == 1) {
                if (i10 != -1) {
                    this.f12907so = i10;
                }
                if (this.jFA.hasMessages(this.Pfn) || this.Ln) {
                    return;
                }
                ZYk zYk = this.oJ;
                if (zYk == null || zYk.so() == null || this.oJ.so().tb() == null || !this.oJ.so().tb().dLZ.get()) {
                    int i11 = this.ex;
                    boolean z10 = this.PiB;
                    int i12 = this.Pfn;
                    if (i12 == 1 || i12 == 2) {
                        if (i11 < 0 || z10 || this.WcQ) {
                            return;
                        }
                        this.jFA.sendEmptyMessageDelayed(i12, this.f12906si);
                    } else if (i12 == 3) {
                        ex(3);
                    } else if (i12 == 4) {
                        Pfn(4);
                    }
                }
            }
        }

        private void oJ(@NonNull Message message) {
            if (this.ex > 0) {
                com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.kkU;
                StringBuilder sb2 = new StringBuilder();
                int i10 = this.ex;
                this.ex = i10 - 1;
                sb2.append(i10);
                sb2.append("s");
                tBVar.setSkipText(sb2.toString());
                cFZ();
                Pfn();
                if (this.ex >= 0) {
                    oJ(message.what, this.f12906si);
                    return;
                }
                return;
            }
            ex(3);
            Pfn(4);
            so();
        }

        private void oJ(int i10, int i11) {
            if (this.Ln) {
                return;
            }
            this.jFA.removeMessages(i10);
            this.jFA.sendEmptyMessageDelayed(i10, i11);
        }

        public void ZYk(boolean z10) {
            if (z10) {
                this.f12906si = (int) (1000.0f / this.eZI);
            } else {
                this.f12906si = 1000;
            }
        }

        public void oJ(cY cYVar, boolean z10) {
            this.Ry = Ln.cY(cYVar);
            this.RZ = Ln.HL(cYVar);
            this.QSm = Ln.IUZ(cYVar);
            this.f12905oq = Ln.Ln(cYVar);
            this.cY = this.RZ;
            this.Xe = false;
            this.f12904jr = false;
            this.f12908tb = 0;
            this.LpP = true;
            com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.kkU;
            if (tBVar != null) {
                tBVar.setShowPlayableNextAd(false, cYVar);
            }
            this.HL = z10;
            if (this.ex <= 0 || this.PiB) {
                Pfn(4);
            }
        }

        public void oJ(int i10, cY cYVar) {
            if (cYVar != null && cYVar.zxE() != null) {
                this.eZI = cYVar.zxE().oJ();
                this.ZYk = cYVar;
            }
            int i11 = this.ex;
            boolean z10 = this.PiB;
            boolean z11 = this.WcQ;
            int i12 = this.Pfn;
            if (z10 || z11) {
                return;
            }
            float f10 = i10;
            this.tB = f10;
            if (f10 <= i11) {
                this.Pfn = 2;
                this.ex = (int) f10;
            } else if (i12 == 0) {
                this.Pfn = 1;
            }
            int i13 = this.Pfn;
            if (i12 == i13 && this.jFA.hasMessages(i13)) {
                return;
            }
            this.jFA.removeCallbacksAndMessages(null);
            this.jFA.sendEmptyMessage(this.Pfn);
        }
    }

    /* loaded from: classes3.dex */
    static class ex extends AbstractC0189ZYk {
        private boolean dLZ;
        private final int jFA;
        private int kkU;

        public ex(ZYk zYk, cY cYVar, com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar) {
            super(zYk, cYVar, tBVar);
            if (cYVar != null) {
                if (cYVar.MoK() >= 0) {
                    this.jFA = Math.min(100, cYVar.MoK());
                    return;
                } else {
                    this.jFA = si.ex().Xe(String.valueOf(cYVar.uv())).f13248ba;
                    return;
                }
            }
            this.jFA = 100;
        }

        @Override // com.bytedance.sdk.openadsdk.activity.ZYk.AbstractC0189ZYk, android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (!this.dLZ && this.ex <= this.kkU) {
                this.dLZ = true;
                so so2 = this.oJ.so();
                if (so2 != null) {
                    so2.nQI();
                }
            }
            super.handleMessage(message);
            return true;
        }

        @Override // com.bytedance.sdk.openadsdk.activity.ZYk.AbstractC0189ZYk
        protected int oJ(cY cYVar) {
            if (cYVar != null) {
                return cYVar.wM();
            }
            return 30;
        }

        @Override // com.bytedance.sdk.openadsdk.activity.ZYk.AbstractC0189ZYk
        public void oJ(int i10, cY cYVar) {
            boolean z10 = this.Pfn == 0;
            int i11 = this.ex;
            super.oJ(i10, cYVar);
            if (z10) {
                if (this.Pfn == 1) {
                    this.kkU = 3;
                } else {
                    this.kkU = (int) ((1.0f - (this.jFA / 100.0f)) * this.tB);
                }
                dLZ dlz = this.oJ.oJ;
                if (dlz != null) {
                    dlz.oJ(this.ex);
                }
            } else if (this.tB < i11) {
                this.kkU = (int) ((1.0f - (this.jFA / 100.0f)) * this.ex);
            }
        }
    }

    /* loaded from: classes3.dex */
    static class oJ extends AbstractC0189ZYk {
        public oJ(ZYk zYk, cY cYVar, com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar) {
            super(zYk, cYVar, tBVar);
        }

        @Override // com.bytedance.sdk.openadsdk.activity.ZYk.AbstractC0189ZYk
        protected int oJ(cY cYVar) {
            if (cYVar != null) {
                return cYVar.mlK();
            }
            return 5;
        }
    }

    /* loaded from: classes3.dex */
    public static class tB implements Runnable {
        private final cY oJ;

        public tB(cY cYVar) {
            this.oJ = cYVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.oJ.cMS()) {
                if (this.oJ.kO()) {
                    PiB.oJ(si.oJ()).oJ(this.oJ.BHY());
                } else {
                    com.bytedance.sdk.openadsdk.component.reward.Pfn.oJ(si.oJ()).oJ(this.oJ.BHY());
                }
            }
        }
    }

    public ZYk(Activity activity, cY cYVar) {
        boolean z10;
        this.ex = cYVar;
        this.PiB = activity;
        this.f12898ba = new com.bytedance.sdk.openadsdk.BTZ.jFA(activity.getApplicationContext());
        boolean wd2 = cYVar.wd();
        this.jFA = wd2;
        boolean z11 = false;
        if (wd2 && 39 == cYVar.LS()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.kkU = z10;
        if (wd2 && 40 == cYVar.LS()) {
            z11 = true;
        }
        this.BTZ = z11;
        int LS = cYVar.LS();
        if (LS != 43 && LS != 44) {
            this.dLZ = new jFA(this.PiB, cYVar, this);
        } else {
            this.dLZ = new com.bytedance.sdk.openadsdk.activity.ex(this.PiB, cYVar, this);
        }
        this.dLZ.oJ();
        tb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean HL() {
        return this.dLZ.Pfn();
    }

    private void tb() {
        if (this.ex.kO()) {
            this.oJ = new dLZ(new dLZ.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.ZYk.1
                @Override // com.bytedance.sdk.openadsdk.component.reward.dLZ.oJ
                public void oJ() {
                    so so2;
                    if (!ZYk.this.jFA().getBoolean("reward_verify", false) && !ZYk.this.PiB() && !ZYk.this.jFA().getBoolean("user_has_give_up_reward", false) && (so2 = ZYk.this.so()) == null) {
                        so2.ex(1);
                    }
                }
            });
        }
    }

    public void BTZ() {
        if (awB()) {
            return;
        }
        eZI();
        com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.oJ();
        } else {
            com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk = this.f12900so;
            if (zYk != null) {
                zYk.oJ();
            }
        }
        Runnable runnable = this.Ry;
        if (runnable != null) {
            runnable.run();
            this.Ry = null;
        }
    }

    public boolean Id() {
        return this.QSm;
    }

    public void Pfn(TTAdActivity tTAdActivity) {
        this.WcQ = 6;
        this.dLZ.ex();
        this.RZ.oJ(tTAdActivity);
        this.PiB = null;
    }

    public boolean PiB() {
        return this.f12899si;
    }

    public so QSm() {
        return this.dLZ.WcQ();
    }

    public com.bytedance.sdk.openadsdk.component.reward.top.tB RZ() {
        return this.dLZ.PiB();
    }

    public boolean Ry() {
        return this.dLZ.ba();
    }

    public void WcQ() {
        this.f12899si = true;
        dLZ dlz = this.oJ;
        if (dlz != null) {
            dlz.tB();
        }
    }

    public int Xe() {
        return this.dLZ.jFA();
    }

    public boolean awB() {
        return this.eZI;
    }

    public void ba() {
        this.dLZ.kkU();
    }

    public int cFZ() {
        return this.dLZ.dLZ();
    }

    public List<cY> cY() {
        return this.dLZ.eZI();
    }

    public void dLZ() {
        com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.ZYk();
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk = this.f12900so;
        if (zYk != null) {
            zYk.ZYk();
        }
    }

    public void eZI() {
        this.eZI = true;
        this.dLZ.si();
    }

    public void ex(TTAdActivity tTAdActivity) {
        this.WcQ = 5;
        this.dLZ.so();
    }

    public Bundle jFA() {
        return this.Pfn;
    }

    public void jr() {
        this.dLZ.Ry();
    }

    public void kkU() {
        com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.onAdClicked();
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk = this.f12900so;
        if (zYk != null) {
            zYk.onAdClicked();
        }
    }

    public boolean oq() {
        return this.dLZ instanceof com.bytedance.sdk.openadsdk.activity.ex;
    }

    public com.bytedance.sdk.openadsdk.BTZ.jFA si() {
        return this.f12898ba;
    }

    public so so() {
        return this.dLZ.BTZ();
    }

    public boolean ZYk() {
        if (this.ex != null && this.jFA) {
            return this.kkU || this.BTZ;
        }
        return false;
    }

    public boolean oJ() {
        return this.BTZ;
    }

    public boolean tB() {
        return this.jFA;
    }

    public void ex() {
        Activity activity = this.PiB;
        if (activity != null) {
            activity.finish();
        }
    }

    public boolean oJ(cY cYVar) {
        return (cYVar == null || cYVar.na() == null || cYVar.na().tB() <= 0) ? false : true;
    }

    public void tB(TTAdActivity tTAdActivity) {
        this.WcQ = 4;
        this.dLZ.tB();
        dLZ dlz = this.oJ;
        if (dlz != null) {
            dlz.oJ();
        }
    }

    public void oJ(TTAdActivity tTAdActivity, Bundle bundle, com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar, com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk) {
        this.awB = bundle;
        this.WcQ = 1;
        this.cFZ = oJVar;
        this.f12900so = zYk;
        if (oJVar == null && bundle != null) {
            this.cFZ = ZYk;
            ZYk = null;
        }
        if (zYk == null && bundle != null) {
            this.f12900so = tB;
            tB = null;
        }
        this.dLZ.oJ(bundle);
    }

    public Activity Pfn() {
        com.bytedance.sdk.openadsdk.activity.tB tBVar = this.dLZ;
        if (tBVar == null) {
            return this.PiB;
        }
        return tBVar.oJ;
    }

    public void ZYk(TTAdActivity tTAdActivity) {
        this.WcQ = 3;
        this.dLZ.ZYk();
        dLZ dlz = this.oJ;
        if (dlz != null) {
            dlz.ZYk();
        }
        this.RZ.oJ(tTAdActivity, this.ex.Tt(), this.ex.dzr());
    }

    public void ZYk(so soVar) {
        soVar.oJ(this.PiB, this.awB);
        int i10 = this.WcQ;
        if (i10 == 2) {
            soVar.BTZ();
        } else if (i10 == 3) {
            soVar.BTZ();
            soVar.tB();
            soVar.tB(true);
        } else if (i10 == 4) {
            soVar.tB(false);
            soVar.PiB();
        } else if (i10 != 5) {
        } else {
            soVar.ex();
        }
    }

    public void oJ(TTAdActivity tTAdActivity) {
        this.WcQ = 2;
        this.dLZ.cFZ();
    }

    public void oJ(boolean z10) {
        this.dLZ.oJ(z10);
    }

    public void oJ(TTAdActivity tTAdActivity, Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(this.ex, tTAdActivity != null ? tTAdActivity.getIntent() : null, bundle);
        com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            ZYk = oJVar;
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk = this.f12900so;
        if (zYk != null) {
            tB = zYk;
        }
    }

    public void ZYk(so soVar, Pfn pfn) {
        this.dLZ.oJ(soVar, pfn);
    }

    public void ZYk(boolean z10) {
        this.QSm = z10;
    }

    public void ZYk(so soVar, int i10) {
        this.dLZ.ZYk(soVar, i10);
    }

    public void oJ(so soVar, Pfn pfn) {
        this.dLZ.oJ(soVar, null, pfn);
    }

    public void oJ(Activity activity) {
        this.dLZ.oJ(activity);
    }

    public void oJ(final so soVar, final boolean z10, final int i10, final String str, final int i11, final String str2) {
        Activity activity;
        if (!this.eZI) {
            this.Ry = new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.ZYk.2
                @Override // java.lang.Runnable
                public void run() {
                    ZYk.this.oJ(soVar, z10, i10, str, i11, str2);
                }
            };
        } else if (PiB()) {
        } else {
            WcQ();
            if (this.cFZ == null || (activity = this.PiB) == null) {
                return;
            }
            activity.runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.ZYk.3
                @Override // java.lang.Runnable
                public void run() {
                    ZYk.this.cFZ.oJ(z10, i10, str, i11, str2);
                }
            });
            if (tB()) {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), soVar.jFA, soVar.b_(), z10 ? "reward_success" : "reward_fail");
            }
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.activity.oJ oJVar, boolean z10) {
        this.dLZ.oJ(oJVar, z10);
    }

    public void oJ(so soVar) {
        com.bytedance.sdk.openadsdk.activity.tB tBVar = this.dLZ;
        if (tBVar == null) {
            return;
        }
        tBVar.oJ(soVar);
    }

    public void oJ(so soVar, boolean z10) {
        com.bytedance.sdk.openadsdk.activity.tB tBVar = this.dLZ;
        if (tBVar == null) {
            return;
        }
        tBVar.oJ(soVar, z10);
    }

    public void oJ(View view) {
        this.dLZ.oJ(view);
    }

    public void oJ(View view, boolean z10) {
        this.dLZ.oJ(view, z10);
    }

    public boolean oJ(so soVar, int i10) {
        return this.dLZ.oJ(soVar, i10);
    }

    public void oJ(float f10) {
        this.dLZ.oJ(f10);
    }

    public void oJ(Map<String, Object> map, so soVar, float f10, float f11) {
        this.dLZ.oJ(map, soVar, f10, f11);
    }

    public void oJ(so soVar, boolean z10, boolean z11, boolean z12, int i10) {
        this.dLZ.oJ(soVar, z10, z11, z12, i10);
    }
}
