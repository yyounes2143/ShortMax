package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.component.reward.PiB;
import com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ;
import com.bytedance.sdk.openadsdk.component.reward.oJ.dLZ;
import com.bytedance.sdk.openadsdk.component.reward.oJ.eZI;
import com.bytedance.sdk.openadsdk.component.reward.view.kkU;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.LpP;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import com.bytedance.sdk.openadsdk.utils.Jc;
import com.bytedance.sdk.openadsdk.utils.awB;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public abstract class TTBaseVideoActivity extends TTBaseActivity implements IUZ.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk {
    protected com.bytedance.sdk.openadsdk.BTZ.ba BTZ;
    protected IListenerManager Pfn;
    private boolean PiB;
    private int WcQ;
    com.bytedance.sdk.openadsdk.component.reward.oJ.oJ ZYk;
    private final BTZ.ZYk awB;

    /* renamed from: ba  reason: collision with root package name */
    int f12869ba;
    boolean cFZ;
    protected boolean dLZ;
    private final AtomicBoolean eZI;
    final IUZ ex;
    protected Jc jFA;
    int kkU;
    public final String oJ;
    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk tB;

    /* loaded from: classes3.dex */
    private static class oJ implements Runnable {
        AdSlot ZYk;
        boolean oJ;

        oJ(boolean z10, AdSlot adSlot) {
            this.oJ = z10;
            this.ZYk = adSlot;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.oJ) {
                PiB.oJ(si.oJ()).oJ(this.ZYk);
            } else {
                com.bytedance.sdk.openadsdk.component.reward.Pfn.oJ(si.oJ()).oJ(this.ZYk);
            }
        }
    }

    public TTBaseVideoActivity() {
        String str;
        if (cY()) {
            str = "rewarded_video";
        } else {
            str = "fullscreen_interstitial_ad";
        }
        this.oJ = str;
        this.ex = new IUZ(Looper.getMainLooper(), this);
        this.PiB = false;
        this.WcQ = 0;
        this.kkU = 1;
        this.awB = new BTZ.ZYk();
        this.dLZ = false;
        this.eZI = new AtomicBoolean(false);
        this.BTZ = new com.bytedance.sdk.openadsdk.BTZ.ba() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.BTZ.ba
            public void oJ() {
                TTBaseVideoActivity.this.RZ();
            }
        };
    }

    private void HL() {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk;
        if (this.ZYk != null && (zYk = this.tB) != null) {
            zYk.cY();
        } else {
            super.onBackPressed();
        }
    }

    private boolean Ln() {
        if (this.ZYk.kkU.get() && this.ZYk.cFZ) {
            return false;
        }
        if (!(this instanceof TTFullScreenExpressVideoActivity) && !(this instanceof TTRewardExpressVideoActivity)) {
            return true;
        }
        return this.ZYk.kkU.get();
    }

    private void tb() {
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
        this.tB.oJ(this.BTZ);
        this.f12869ba = (int) this.ZYk.cY.XAo();
        Id();
        Pfn();
        com.bytedance.sdk.openadsdk.core.model.ex NTC = this.ZYk.ZYk.NTC();
        if (NTC != null && (oJ2 = NTC.oJ()) != null) {
            oJ2.oJ(0L);
        }
    }

    protected abstract void BTZ();

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public List<cY> IUZ() {
        return this.ZYk.ZYk.BnM();
    }

    protected abstract void Id();

    protected void Pfn() {
        if (Ln.tB(this.ZYk.ZYk)) {
            oJ(false, ZYk.C0230ZYk.tB);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk != null) {
            zYk.oJ(this.ZYk.ofl.ba());
            this.tB.tb();
        }
    }

    protected void PiB() {
        if (!jr() || this.PiB) {
            return;
        }
        this.PiB = true;
        getWindow().getDecorView().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.2
            @Override // java.lang.Runnable
            public void run() {
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = tTBaseVideoActivity.ZYk;
                com.bytedance.sdk.openadsdk.component.reward.oJ.ba baVar = oJVar.Ln;
                float[] oJ2 = oJVar.HL.oJ(tTBaseVideoActivity.kkU);
                TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                baVar.oJ(oJ2, tTBaseVideoActivity2, tTBaseVideoActivity2.tB);
                TTBaseVideoActivity.this.Ry();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void QSm() {
        Message message = new Message();
        message.what = 400;
        if (cY()) {
            oJ(10000);
        }
        this.ex.sendMessageDelayed(message, 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void WcQ() {
        this.ZYk.cY.ofl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Xe() {
        cY cYVar;
        LpP zxE;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && (cYVar = oJVar.ZYk) != null && (zxE = cYVar.zxE()) != null) {
            if (zxE.ZYk() == 1 || zxE.ZYk() == 2) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
                Jc jc2 = new Jc(oJVar2, oJVar2.ZYk);
                this.jFA = jc2;
                eZI ezi = this.ZYk.cY;
                if (ezi != null) {
                    ezi.oJ(jc2);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected void ZYk() {
        HL();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public View awB() {
        return this.ZYk.cY.wd();
    }

    public abstract boolean cY();

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void dLZ() {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.PiB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void eZI() {
        if (this.ZYk.WcQ.getAndSet(true) && !Ln.tB(this.ZYk.ZYk)) {
            return;
        }
        this.ZYk.IUZ.oJ();
    }

    protected abstract void ex();

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ex(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        if (this.ZYk == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.utils.IUZ.Pfn()) {
            cdg.ZYk((Activity) this);
        }
        if (Ln.cFZ(this.ZYk.ZYk) && !this.ZYk.kkU.get()) {
            ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
        } else if (Ln.Pfn(this.ZYk.ZYk) && !this.ZYk.Xe.so(com.bytedance.sdk.openadsdk.component.reward.oJ.so.ZYk)) {
            ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public final void jFA() {
        if (!this.eZI.compareAndSet(false, true)) {
            return;
        }
        QSm.oJ("BVA", "invoke callback onShow, ".concat(String.valueOf(this)));
        BTZ();
    }

    public boolean jr() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void mu() {
        this.dLZ = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(@NonNull Intent intent) {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar == null) {
            return;
        }
        oJVar.HL.oJ();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        HL();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar;
        super.onCreate(bundle);
        QSm.oJ("BVA", "onCreate ".concat(String.valueOf(this)));
        si.ZYk(getApplicationContext());
        if (!WcQ.Pfn()) {
            finish();
            return;
        }
        cY oJ2 = com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(getIntent(), bundle, this);
        if (oJ2 == null) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.utils.ZYk.oJ(oJ2);
        this.kkU = oJ2.Tt();
        oJ(oJ2, bundle);
        if (bundle != null) {
            if (oJ2.Jc()) {
                this.eZI.set(true);
            }
            if (oJ2.ofl() && (oJVar = this.ZYk) != null) {
                oJVar.PiB.set(true);
            }
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
            if (oJVar2 != null) {
                oJVar2.IUZ.cFZ();
            }
        }
        try {
            tB();
            tb();
        } catch (Throwable th2) {
            QSm.oJ("TTAD.BVA", "onCreate: ", th2);
            com.bytedance.sdk.openadsdk.awB.tB.ZYk();
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        QSm.oJ("BVA", "onDestroy ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && this.tB != null) {
            if (oJVar.oIC > 0 && oJVar.PiB.get()) {
                String valueOf = String.valueOf(SystemClock.elapsedRealtime() - this.ZYk.oIC);
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(valueOf, oJVar2.ZYk, this.oJ, oJVar2.cY.Pfn());
                this.ZYk.oIC = 0L;
            }
            this.ZYk.LpP.ZYk();
            this.ex.removeCallbacksAndMessages(null);
            this.tB.Id();
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.ZYk.ZYk);
            com.bytedance.sdk.openadsdk.jr.oJ.tB.ZYk(this.ZYk.ZYk);
            AdSlot BHY = this.ZYk.ZYk.BHY();
            if (!this.ZYk.cY.nke() && BHY != null && TextUtils.isEmpty(BHY.getBidAdm()) && !this.ZYk.ZYk.cMS()) {
                WcQ.ZYk().post(new oJ(cY(), BHY));
            }
            awB.oJ();
            Jc jc2 = this.jFA;
            if (jc2 != null) {
                jc2.Pfn();
                this.jFA = null;
            }
            this.awB.oJ(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        QSm.oJ("BVA", "onPause ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.QSm();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        cY cYVar;
        super.onRestart();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && (cYVar = oJVar.ZYk) != null) {
            if (this.f12868so && !cYVar.bj() && !TextUtils.isEmpty(cY.oJ(this, cYVar))) {
                finish();
            }
            if (cYVar.bj()) {
                cYVar.dLZ(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk;
        boolean z10;
        super.onResume();
        QSm.oJ("BVA", "onResume ".concat(String.valueOf(this)));
        if (this.ZYk != null && (zYk = this.tB) != null) {
            zYk.si();
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            oJVar.Yg = true;
            this.awB.oJ(this, oJVar.oTd, oJVar.LS);
            if (Ln()) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
                oJVar2.f13022mu.oJ(oJVar2.ZYk.LTg());
            }
            this.ZYk.ofl.awB();
            this.ZYk.Jc.Id();
            this.ZYk.Xe.PiB();
            if (this.tB.ZYk()) {
                this.ZYk.cY.oJ(this.tB);
                eZI ezi = this.ZYk.cY;
                if (this.WcQ != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                ezi.oJ(false, this, z10);
            }
            this.WcQ++;
            PiB();
            kkU kku = this.ZYk.f13026tb;
            if (kku != null) {
                kku.cFZ();
            }
            this.ZYk.HL.oJ(this.ex);
            this.tB.RZ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar == null) {
            super.onSaveInstanceState(bundle);
            return;
        }
        if (oJVar.PiB.get()) {
            this.ZYk.ZYk.cFZ(true);
        }
        if (this.eZI.get()) {
            this.ZYk.ZYk.nke();
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(this.ZYk, bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        QSm.oJ("BVA", "onStart ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar == null) {
            return;
        }
        oJVar.Jc.Jc();
        com.bytedance.sdk.openadsdk.utils.ex.oJ(this, this.ZYk.ZYk);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        QSm.oJ("BVA", "onStop ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.oq();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        dLZ dlz;
        super.onWindowFocusChanged(z10);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null && (dlz = oJVar.IUZ) != null) {
            dlz.ZYk(z10);
            this.ZYk.IUZ.tB(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oq() {
        this.ex.removeMessages(400);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tB() {
        setContentView(this.ZYk.f13027wd);
        this.ZYk.f13027wd.oJ(this.tB);
        this.tB.oJ(this, this.ex);
        this.tB.dLZ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IListenerManager ZYk(int i10) {
        if (this.Pfn == null) {
            this.Pfn = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().oJ(i10));
        }
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected boolean oJ() {
        return true;
    }

    private void oJ(cY cYVar, Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = new com.bytedance.sdk.openadsdk.component.reward.oJ.oJ(this, this.ex, cYVar, this, 0);
        this.ZYk = oJVar;
        com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(oJVar, getIntent(), bundle);
        Intent intent = getIntent();
        if (intent != null) {
            oJ(intent);
            cYVar.oJ(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.ZYk.sH) {
            ex();
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk oJ2 = com.bytedance.sdk.openadsdk.component.reward.ZYk.ba.oJ(this.ZYk);
        this.tB = oJ2;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
        oJVar2.UK = oJ2;
        awB.oJ(oJVar2);
        Objects.toString(this.tB);
    }

    public void oJ(boolean z10, int i10) {
        oJ(z10, false, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Ry() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void cFZ() {
    }

    public void oJ(boolean z10, boolean z11, int i10) {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.oJ(z10, z11, false, i10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void si() {
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.oJ(message);
    }
}
