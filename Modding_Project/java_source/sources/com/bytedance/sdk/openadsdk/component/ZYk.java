package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.jFA;
import com.bytedance.sdk.openadsdk.core.so.so;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends tB {
    private final com.bytedance.sdk.openadsdk.component.ba.ZYk PiB;
    private com.bytedance.sdk.openadsdk.component.jFA.ZYk WcQ;
    private boolean awB;
    private com.bytedance.sdk.openadsdk.component.jFA.cFZ eZI;

    public ZYk(Activity activity, cY cYVar, FrameLayout frameLayout, oJ oJVar, int i10, boolean z10, com.bytedance.sdk.openadsdk.component.so.oJ oJVar2, com.bytedance.sdk.openadsdk.component.ba.ZYk zYk) {
        super(activity, cYVar, frameLayout, oJVar, i10, z10, oJVar2);
        this.PiB = zYk;
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public void Pfn() {
        com.bytedance.sdk.openadsdk.component.jFA.ZYk zYk = this.WcQ;
        if (zYk != null) {
            zYk.Ry();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public void ZYk() {
        this.WcQ.RZ();
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public int ex() {
        return this.WcQ.getDynamicShowType();
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public void tB() {
        super.tB();
        com.bytedance.sdk.openadsdk.component.jFA.ZYk zYk = this.WcQ;
        if (zYk != null) {
            zYk.BTZ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public void oJ(ViewGroup viewGroup) {
        Pair<Float, Float> oJ = com.bytedance.sdk.openadsdk.core.so.oJ.oJ.oJ(this.oJ.getWindow(), this.cFZ);
        com.bytedance.sdk.openadsdk.component.jFA.ZYk zYk = new com.bytedance.sdk.openadsdk.component.jFA.ZYk(this.oJ, this.ZYk, new AdSlot.Builder().setCodeId(String.valueOf(this.ZYk.uv())).setExpressViewAcceptedSize(((Float) oJ.first).floatValue(), ((Float) oJ.second).floatValue()).build(), "open_ad", this.Pfn, this.PiB, this.BTZ);
        this.WcQ = zYk;
        zYk.setTopListener(this.Pfn);
        this.WcQ.setExpressVideoListenerProxy(this.Pfn);
        this.WcQ.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.component.ZYk.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderFail(View view, String str, int i10) {
                ZYk.this.Pfn.ex();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderSuccess(View view, float f10, float f11) {
                if (ZYk.this.WcQ.oq()) {
                    ZYk.this.awB = true;
                    if (ZYk.this.eZI != null) {
                        ZYk zYk2 = ZYk.this;
                        if (zYk2.ex == zYk2.eZI.getParent()) {
                            ZYk zYk3 = ZYk.this;
                            zYk3.ex.removeView(zYk3.eZI);
                        }
                    }
                    ZYk zYk4 = ZYk.this;
                    ZYk.super.oJ((ViewGroup) zYk4.ex);
                    ZYk.super.oJ();
                    ZYk.super.ZYk();
                } else if (ZYk.this.ZYk.Xe()) {
                    ZYk.this.Pfn.tB();
                } else {
                    ZYk zYk5 = ZYk.this;
                    if (zYk5.tB) {
                        if (zYk5.oJ(zYk5.WcQ.getVideoFrameLayout())) {
                            ZYk.this.WcQ.setVideoManager(ZYk.this.cFZ());
                            ZYk.this.Pfn.tB();
                            return;
                        }
                        ZYk.this.Pfn.ex();
                        return;
                    }
                    zYk5.Pfn.tB();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
            public void onAdClicked() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdShow(View view, int i10) {
            }
        });
        this.ZYk.awB(1);
        this.ex.addView(this.WcQ, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.jFA.cFZ cfz = new com.bytedance.sdk.openadsdk.component.jFA.cFZ(this.oJ);
        this.eZI = cfz;
        this.ex.addView(cfz);
        this.jFA = this.eZI.getTopDislike();
        this.kkU = this.eZI.getTopSkip();
        this.dLZ = this.eZI.getTopCountDown();
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public void oJ() {
        jFA oJ = com.bytedance.sdk.openadsdk.component.oJ.ZYk.oJ(this.ZYk, this.oJ, this.BTZ, this.WcQ);
        oJ.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.component.ZYk.2
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view, int i10) {
                ZYk.this.Pfn.Pfn();
            }
        });
        this.WcQ.setClickListener(oJ);
        so ZYk = com.bytedance.sdk.openadsdk.component.oJ.ZYk.ZYk(this.ZYk, this.oJ, this.BTZ, this.WcQ);
        this.WcQ.setClickCreativeListener(ZYk);
        ZYk.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.component.ZYk.3
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view, int i10) {
                ZYk.this.Pfn.Pfn();
            }
        });
        super.ba();
        this.WcQ.setBackupListener(new com.bytedance.sdk.component.adexpress.ZYk.tB() { // from class: com.bytedance.sdk.openadsdk.component.ZYk.4
            @Override // com.bytedance.sdk.component.adexpress.ZYk.tB
            public boolean oJ(ViewGroup viewGroup, int i10) {
                StringBuilder sb2 = new StringBuilder("isUseBackup() called with: view = [");
                sb2.append(viewGroup);
                sb2.append("], errCode = [");
                sb2.append(i10);
                sb2.append("]");
                try {
                    ((QSm) viewGroup).QSm();
                    new com.bytedance.sdk.openadsdk.component.jFA.oJ(ZYk.this.oJ).oJ((QSm) ZYk.this.WcQ);
                    return true;
                } catch (Exception e10) {
                    Log.e("AppOpenAdExpressManager", "", e10);
                    return false;
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public void oJ(int i10, boolean z10) {
        super.oJ(i10, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.component.tB
    public JSONObject oJ(JSONObject jSONObject) {
        return this.WcQ.oJ(jSONObject, this.ZYk);
    }

    public void oJ(long j10, long j11) {
        com.bytedance.sdk.openadsdk.component.jFA.ZYk zYk = this.WcQ;
        if (zYk != null) {
            zYk.oJ(j10, j11);
        }
    }
}
