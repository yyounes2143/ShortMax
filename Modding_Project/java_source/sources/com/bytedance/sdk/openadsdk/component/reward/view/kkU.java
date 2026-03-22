package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.awB;
import com.bytedance.sdk.openadsdk.utils.cdg;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU {
    Handler ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final Activity f13051ba;
    private final cY cFZ;
    private boolean dLZ;
    private ex jFA;
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ kkU;
    com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba oJ;

    /* renamed from: so  reason: collision with root package name */
    private final String f13052so;
    boolean tB = false;
    boolean ex = false;
    boolean Pfn = false;

    public kkU(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.kkU = oJVar;
        this.f13051ba = oJVar.HyG;
        this.cFZ = oJVar.ZYk;
        this.f13052so = oJVar.Pfn;
    }

    public void BTZ() {
        ex exVar = this.jFA;
        if (exVar == null) {
            return;
        }
        exVar.Ry();
    }

    public Handler Pfn() {
        if (this.ZYk == null) {
            this.ZYk = new Handler(Looper.getMainLooper());
        }
        return this.ZYk;
    }

    public void PiB() {
        ex exVar = this.jFA;
        if (exVar == null) {
            return;
        }
        exVar.RZ();
        this.jFA.kkU();
    }

    public void WcQ() {
        if (cY.Pfn(this.cFZ) && this.cFZ.bD() == 3 && this.cFZ.EP() == 0) {
            try {
                if (this.cFZ.Tt() == 1) {
                    int ZYk = cdg.ZYk(si.oJ(), 90.0f);
                    FrameLayout frameLayout = (FrameLayout) this.jFA.getBackupContainerBackgroundView();
                    if (frameLayout != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                        layoutParams.bottomMargin = ZYk;
                        frameLayout.setLayoutParams(layoutParams);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public FrameLayout ZYk() {
        ex exVar = this.jFA;
        if (exVar != null) {
            FrameLayout videoFrameLayout = exVar.getVideoFrameLayout();
            if (this.jFA.oq()) {
                WcQ();
            }
            return videoFrameLayout;
        }
        return null;
    }

    public void ba() {
        if (this.dLZ) {
            return;
        }
        this.dLZ = true;
        ex exVar = this.jFA;
        if (exVar != null) {
            exVar.BTZ();
        }
        Handler handler = this.ZYk;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void cFZ() {
        ex exVar = this.jFA;
        if (exVar != null) {
            exVar.kkU();
        }
    }

    public boolean dLZ() {
        ex exVar = this.jFA;
        if (exVar != null) {
            return exVar.IUZ instanceof com.bytedance.sdk.component.adexpress.Pfn.oJ;
        }
        return false;
    }

    public boolean ex() {
        return this.ex;
    }

    public boolean jFA() {
        ex exVar = this.jFA;
        if (exVar == null) {
            return false;
        }
        return exVar.oq();
    }

    public int kkU() {
        ex exVar = this.jFA;
        if (exVar != null) {
            return exVar.getDynamicShowType();
        }
        return 0;
    }

    public void oJ(AdSlot adSlot, QSm qSm) {
        if (this.Pfn) {
            return;
        }
        this.Pfn = true;
        ex exVar = new ex(this.kkU, adSlot, this.f13052so);
        this.jFA = exVar;
        qSm.oJ(exVar, exVar.getVideoFrameLayout());
    }

    public void so() {
        ex exVar = this.jFA;
        if (exVar != null) {
            exVar.dLZ();
        }
    }

    public boolean tB() {
        return this.tB;
    }

    public void ZYk(boolean z10) {
        this.ex = z10;
    }

    public ex oJ() {
        return this.jFA;
    }

    public void oJ(boolean z10) {
        this.tB = z10;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.so.jFA jfa, com.bytedance.sdk.openadsdk.core.so.so soVar) {
        cY cYVar;
        if (this.jFA == null || (cYVar = this.cFZ) == null) {
            return;
        }
        this.oJ = oJ(cYVar);
        jfa.oJ(this.jFA);
        jfa.oJ(this.oJ);
        this.jFA.setClickListener(jfa);
        soVar.oJ((View) this.jFA);
        soVar.oJ(this.oJ);
        this.jFA.setClickCreativeListener(soVar);
    }

    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba oJ(cY cYVar) {
        if (cYVar.sQ() == 4) {
            return com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this.f13051ba, this.f13052so);
        }
        return null;
    }

    public void oJ(awB awb) {
        ex exVar = this.jFA;
        if (exVar == null) {
            return;
        }
        exVar.setExpressVideoListenerProxy(awb);
    }

    public void oJ(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        ex exVar = this.jFA;
        if (exVar == null) {
            return;
        }
        exVar.setExpressInteractionListener(pAGExpressAdWrapperListener);
    }

    public JSONObject oJ(JSONObject jSONObject) {
        ex exVar = this.jFA;
        if (exVar != null) {
            return exVar.oJ(jSONObject, this.kkU.ZYk);
        }
        return null;
    }

    public void oJ(int i10, boolean z10) {
        ex exVar = this.jFA;
        if (exVar != null) {
            exVar.oJ(i10, z10, false);
        }
    }

    public void oJ(int i10, String str) {
        ex exVar = this.jFA;
        if (exVar != null) {
            exVar.ZYk(i10, str);
        }
    }
}
