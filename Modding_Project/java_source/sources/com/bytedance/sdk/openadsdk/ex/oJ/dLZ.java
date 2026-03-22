package com.bytedance.sdk.openadsdk.ex.oJ;

import android.content.Context;
import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.services.UnityAdsConstants;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ implements com.bytedance.sdk.component.ba.oJ.Pfn {
    private final String oJ = "[7504]";

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public com.bytedance.sdk.component.ba.oJ.cFZ BTZ() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public Executor Pfn() {
        return ofl.so();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public void PiB() {
        oJ.oJ(oJ.f13357ba);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public int Ry() {
        return com.bytedance.sdk.openadsdk.oq.oJ.oJ("batch_log_config", "once_max", 10);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean WcQ() {
        return BinderPoolService.oJ;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean ZYk() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public long awB() {
        long oJ = com.bytedance.sdk.openadsdk.oq.oJ.oJ("log_queue_timeout", (int) TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN);
        if (oJ < 30000 || oJ > UnityAdsConstants.Timeout.INIT_TIMEOUT_MS) {
            return 40000L;
        }
        return oJ;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public int ba() {
        return 1;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean cFZ() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public com.bytedance.sdk.component.ba.oJ.ba dLZ() {
        com.bytedance.sdk.component.ba.oJ.ba oJ;
        synchronized (this) {
            oJ = com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ());
        }
        return oJ;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean eZI() {
        if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("batch_log_config", "enable", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public Executor ex() {
        return ofl.ex();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public String jFA() {
        return HyG.ex();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public com.bytedance.sdk.component.ba.oJ.Pfn.tB kkU() {
        return new cFZ();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public com.bytedance.sdk.component.ba.oJ.ex.oJ oJ(JSONObject jSONObject) {
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean si() {
        if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("batch_log_config", "log_list_reuse", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean so() {
        return true;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean tB() {
        return true;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public String ZYk(String str) {
        return com.bytedance.sdk.component.ex.oJ.oJ(str, com.bytedance.sdk.openadsdk.core.oJ.oJ());
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean oJ() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public int tB(String str) {
        WcQ oCU = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oCU();
        if (oCU == null) {
            return 3;
        }
        return oCU.oJ(str);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public boolean oJ(Context context) {
        return Ry.oJ(context);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public String oJ(String str) {
        return com.bytedance.sdk.component.ex.oJ.ZYk(str, com.bytedance.sdk.openadsdk.core.oJ.oJ());
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public void oJ(boolean z10, int i10, long j10, com.bytedance.sdk.component.ba.oJ.ba.ex exVar) {
        Runnable oJ;
        if (exVar == null) {
            return;
        }
        oJ.oJ(oJ.tB, z10, i10, j10);
        if (z10) {
            com.bytedance.sdk.openadsdk.awB.tB.oJ("track_link_result", false, (com.bytedance.sdk.openadsdk.awB.ZYk) new PiB(true, exVar));
            return;
        }
        WcQ oCU = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oCU();
        if (oCU == null || exVar.ex() >= oCU.oJ(exVar.ba())) {
            com.bytedance.sdk.openadsdk.awB.tB.oJ("track_link_result", false, (com.bytedance.sdk.openadsdk.awB.ZYk) new PiB(false, exVar));
        } else if (!oCU.oJ() || (oJ = exVar.oJ(com.bytedance.sdk.openadsdk.core.BTZ.oJ(si.oJ()), null)) == null) {
        } else {
            ofl.oJ().schedule(oJ, oCU.ZYk(exVar.ba()), TimeUnit.SECONDS);
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public void oJ(boolean z10) {
        oJ.oJ(oJ.f13357ba, z10);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn
    public HandlerThread oJ(String str, int i10) {
        return com.bytedance.sdk.component.utils.so.oJ(str, i10);
    }
}
