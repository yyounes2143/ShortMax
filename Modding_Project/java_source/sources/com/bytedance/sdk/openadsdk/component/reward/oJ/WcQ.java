package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.os.SystemClock;
import android.view.View;
import android.widget.FrameLayout;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class WcQ {
    private com.bytedance.adsdk.ugeno.ZYk.tB PiB;
    private com.bytedance.adsdk.ugeno.ZYk.tB WcQ;
    private final oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private volatile long f13001ba;
    private volatile long cFZ;
    private String jFA;
    final cY oJ;

    /* renamed from: si  reason: collision with root package name */
    private boolean f13002si;

    /* renamed from: so  reason: collision with root package name */
    private volatile long f13003so;
    private FrameLayout tB;
    private final AtomicBoolean ex = new AtomicBoolean(false);
    private final AtomicBoolean Pfn = new AtomicBoolean(false);
    private final AtomicBoolean kkU = new AtomicBoolean(false);
    private long dLZ = 0;
    private long BTZ = 0;
    private String awB = null;
    private boolean eZI = false;

    public WcQ(oJ oJVar) {
        this.ZYk = oJVar;
        this.oJ = oJVar.ZYk;
        this.jFA = oJVar.Pfn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void WcQ() {
        com.bytedance.sdk.openadsdk.core.kkU.so.oJ Ln;
        cY cYVar = this.oJ;
        if (cYVar == null || (Ln = cYVar.Ln()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk zYk = new com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk(this.ZYk.HyG, this.oJ, Ln, this.jFA, new com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.WcQ.3
            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
            public void ZYk(String str) {
                WcQ wcQ = WcQ.this;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(wcQ.oJ, true, wcQ.jFA, "success", SystemClock.elapsedRealtime() - WcQ.this.BTZ, str, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, 0, null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk
            public void oJ() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
            public void oJ(String str) {
                WcQ.this.BTZ = SystemClock.elapsedRealtime();
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
            public void oJ(int i10, String str, String str2) {
                WcQ.this.Pfn.set(false);
                WcQ wcQ = WcQ.this;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(wcQ.oJ, true, wcQ.jFA, "fail", SystemClock.elapsedRealtime() - WcQ.this.BTZ, str2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, i10, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk
            public void oJ(int i10, String str) {
                WcQ.this.Pfn.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk
            public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
                WcQ.this.WcQ = tBVar;
                WcQ.this.Pfn.set(true);
            }
        });
        zYk.oJ(new com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.WcQ.4
            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ
            public void ZYk() {
                WcQ.this.eZI = true;
                WcQ.this.ZYk.ofl.kkU().performClick();
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ
            public String oJ() {
                return "overlay";
            }
        });
        zYk.oJ();
        zYk.oJ(this.ZYk.ofl.kkU());
    }

    public boolean BTZ() {
        return this.ex.get();
    }

    public boolean PiB() {
        return this.Pfn.get();
    }

    public void dLZ() {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(SystemClock.elapsedRealtime() - this.f13003so, this.oJ, this.jFA);
    }

    public void kkU() {
        com.bytedance.sdk.openadsdk.ex.tB.tB(this.oJ, this.jFA);
    }

    public void Pfn() {
        this.f13001ba = SystemClock.elapsedRealtime();
        com.bytedance.sdk.openadsdk.ex.tB.oJ(this.oJ, this.jFA);
    }

    public void ba() {
        this.f13003so = SystemClock.elapsedRealtime();
    }

    public void cFZ() {
        kkU();
        jFA();
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.PiB;
        if (tBVar != null) {
            this.tB.addView(tBVar.dLZ(), new FrameLayout.LayoutParams(this.PiB.XAo(), this.PiB.ofl()));
        }
    }

    public boolean ex() {
        return this.eZI;
    }

    public void jFA() {
        if (this.f13003so <= 0 || this.cFZ <= 0 || this.kkU.getAndSet(true)) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.cFZ - this.f13003so, this.oJ, this.jFA, this.awB);
    }

    public void so() {
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.WcQ;
        if (tBVar != null) {
            this.tB.addView(tBVar.dLZ(), new FrameLayout.LayoutParams(this.WcQ.XAo(), this.WcQ.ofl()));
        }
    }

    public void tB() {
        com.bytedance.sdk.openadsdk.core.kkU.so.oJ IUZ;
        cY cYVar = this.oJ;
        if (cYVar == null || (IUZ = cYVar.IUZ()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk zYk = new com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk(this.ZYk.HyG, this.oJ, IUZ, this.jFA, new com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.WcQ.1
            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
            public void ZYk(String str) {
                WcQ.this.awB = str;
                WcQ wcQ = WcQ.this;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(wcQ.oJ, false, wcQ.jFA, "success", SystemClock.elapsedRealtime() - WcQ.this.dLZ, str, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, 0, null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
            public void oJ(String str) {
                WcQ.this.dLZ = SystemClock.elapsedRealtime();
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
            public void oJ(int i10, String str, String str2) {
                WcQ.this.awB = str2;
                WcQ.this.ex.set(false);
                WcQ wcQ = WcQ.this;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(wcQ.oJ, false, wcQ.jFA, "fail", SystemClock.elapsedRealtime() - WcQ.this.dLZ, str2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, i10, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk
            public void oJ() {
                WcQ.this.Pfn();
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk
            public void oJ(int i10, String str) {
                WcQ.this.ex.set(false);
                long elapsedRealtime = SystemClock.elapsedRealtime();
                WcQ wcQ = WcQ.this;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(wcQ.oJ, wcQ.jFA, elapsedRealtime - WcQ.this.f13001ba, i10, str, (String) null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk
            public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
                WcQ.this.PiB = tBVar;
                WcQ.this.ex.set(true);
                WcQ.this.cFZ = SystemClock.elapsedRealtime();
                if (WcQ.this.ZYk.Jc.tb()) {
                    View kkU = WcQ.this.ZYk.ofl.kkU();
                    if (kkU instanceof com.bytedance.sdk.openadsdk.core.Pfn.ex) {
                        ((com.bytedance.sdk.openadsdk.core.Pfn.ex) kkU).setImageResource(com.bytedance.sdk.component.utils.cY.ex(WcQ.this.ZYk.Rl, "tt_skip_btn"));
                    }
                }
                WcQ.this.WcQ();
                WcQ.this.jFA();
                WcQ wcQ = WcQ.this;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(wcQ.oJ, wcQ.jFA, WcQ.this.cFZ - WcQ.this.f13001ba);
            }
        });
        if (this.oJ.Ln() != null) {
            zYk.oJ(new com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.WcQ.2
                @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ
                public String oJ() {
                    return Constants.NORMAL;
                }

                @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ
                public void ZYk() {
                }
            });
        }
        zYk.oJ();
        zYk.oJ(this.ZYk.ofl.kkU());
    }

    void ZYk() {
        this.tB = (FrameLayout) this.ZYk.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.awB);
    }

    public void oJ() {
        if (this.f13002si) {
            return;
        }
        this.f13002si = true;
        ZYk();
    }

    public void oJ(int i10) {
        cdg.oJ((View) this.tB, i10);
    }
}
