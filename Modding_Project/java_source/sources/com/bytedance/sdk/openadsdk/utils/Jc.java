package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ;
/* loaded from: classes3.dex */
public class Jc implements Handler.Callback, oJ.InterfaceC0200oJ {
    private int BTZ;
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13401ba;
    private boolean cFZ;
    private final com.bytedance.sdk.openadsdk.core.model.cY ex;
    private boolean jFA;
    private int kkU;

    /* renamed from: so  reason: collision with root package name */
    private boolean f13402so;
    private float oJ = 1.0f;
    private int ZYk = 1000;
    private final Handler tB = new Handler(Looper.getMainLooper(), this);
    private int dLZ = 0;

    public Jc(@NonNull com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar, @NonNull com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        this.kkU = 0;
        this.BTZ = 0;
        this.Pfn = oJVar;
        this.ex = cYVar;
        if (cYVar.kO()) {
            if (cYVar.xwf() >= 0) {
                this.BTZ = cYVar.xwf();
            } else {
                this.BTZ = com.bytedance.sdk.openadsdk.core.si.ex().jFA(String.valueOf(cYVar.uv()));
            }
        } else if (cYVar.uZd()) {
            if (cYVar.HUl() >= 0) {
                this.BTZ = cYVar.HUl();
            } else {
                this.BTZ = com.bytedance.sdk.openadsdk.core.si.ex().Ry(String.valueOf(cYVar.uv()));
            }
        }
        this.kkU = (int) oJVar.cY.XAo();
        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.TopLayoutHelper", "totalTime: " + this.kkU + ", skipTime=" + this.BTZ);
    }

    public void Pfn() {
        this.tB.removeMessages(1024);
        this.f13401ba = false;
        this.f13402so = true;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.Pfn;
        if (oJVar != null) {
            oJVar.cY.LpP();
        }
    }

    public void ZYk() {
        this.tB.sendEmptyMessage(1024);
        this.cFZ = false;
    }

    public void ex() {
        if (this.f13401ba && !this.cFZ) {
            this.tB.removeMessages(1024);
            this.cFZ = true;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (message.what == 1024) {
            int i10 = this.kkU;
            int i11 = this.dLZ;
            int i12 = i10 - i11;
            this.Pfn.cY.oJ(i11 * 1000);
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.TopLayoutHelper", "handleMessage: currentTime= " + this.dLZ + ", mRemainTimeInSeconds=" + i12);
            if (i12 > 0) {
                Activity activity = this.Pfn.HyG;
                if (activity instanceof TTRewardVideoActivity) {
                    ((TTRewardVideoActivity) activity).ZYk(this.dLZ * 1000, this.kkU);
                }
                com.bytedance.sdk.openadsdk.component.reward.view.kkU kku = this.Pfn.f13026tb;
                boolean z10 = false;
                if (kku != null && kku.oJ() != null) {
                    this.Pfn.f13026tb.oJ().setTime(String.valueOf(i12), this.dLZ, 0, false);
                }
                if (this.ex.kO()) {
                    com.bytedance.sdk.openadsdk.component.reward.view.kkU kku2 = this.Pfn.f13026tb;
                    if (kku2 != null) {
                        if (kku2.jFA() && this.BTZ > 0) {
                            z10 = true;
                        }
                        this.jFA = z10;
                    }
                    if (this.jFA && this.dLZ >= this.BTZ && this.Pfn.ZYk.LS() != 5 && this.Pfn.ZYk.LS() != 33) {
                        this.Pfn.oJ(true);
                        this.Pfn.f13022mu.oJ(String.valueOf(i12), TTAdDislikeToast.getSkipText());
                        this.Pfn.f13022mu.Pfn(true);
                    } else {
                        this.Pfn.f13022mu.oJ(String.valueOf(i12), null);
                    }
                } else if (this.ex.uZd() && (this.Pfn.f13026tb.jFA() || this.Pfn.ZYk.RQ())) {
                    Activity activity2 = this.Pfn.HyG;
                    if (activity2 instanceof TTFullScreenVideoActivity) {
                        ((TTFullScreenVideoActivity) activity2).tB(this.dLZ);
                    }
                    this.Pfn.f13022mu.ex(true);
                    this.Pfn.f13022mu.oJ(String.valueOf(i12), null);
                }
                this.dLZ++;
                if (this.Pfn.cY.tB()) {
                    com.bytedance.sdk.openadsdk.core.model.LpP zxE = this.Pfn.ZYk.zxE();
                    if (zxE != null) {
                        float oJ = zxE.oJ();
                        this.oJ = oJ;
                        if (oJ <= 0.0f) {
                            this.oJ = 1.0f;
                        }
                    }
                } else {
                    this.oJ = 1.0f;
                }
                int i13 = (int) (1000.0f / this.oJ);
                com.bytedance.sdk.component.utils.QSm.oJ("TTAD.TopLayoutHelper", "handleMessage: next msg intervalInMillis = ".concat(String.valueOf(i13)));
                this.tB.sendEmptyMessageDelayed(message.what, i13);
            }
        }
        return true;
    }

    public boolean oJ() {
        return this.f13401ba;
    }

    public void tB() {
        if (!this.f13401ba) {
            return;
        }
        this.tB.removeMessages(1024);
        this.tB.sendEmptyMessage(1024);
        this.cFZ = false;
    }

    public void oJ(long j10) {
        int ceil = (int) Math.ceil(j10 / 1000.0d);
        if (this.cFZ && !this.f13402so) {
            this.dLZ = ceil;
            tB();
        } else if (this.f13401ba || this.f13402so) {
        } else {
            this.dLZ = ceil;
            this.f13401ba = true;
            ZYk();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.InterfaceC0200oJ
    public void oJ(int i10) {
        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.TopLayoutHelper", "onPlayerStateChanged: ".concat(String.valueOf(i10)));
        if (i10 == 1) {
            tB();
        } else if (i10 == 2) {
            ex();
        } else if (i10 == 3 || i10 == 4) {
            Pfn();
        }
    }
}
