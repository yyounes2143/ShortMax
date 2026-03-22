package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.component.reward.dLZ;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.cY;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class so {
    public int BTZ;
    public boolean PiB;
    protected IListenerManager RZ;
    public boolean Ry;
    public boolean WcQ;
    private boolean ZYk;
    public String awB;
    public int dLZ;
    public String eZI;
    protected final cY jFA;
    protected final ZYk kkU;
    private boolean oJ;

    /* renamed from: si  reason: collision with root package name */
    public boolean f12931si = false;
    protected com.bytedance.sdk.openadsdk.BTZ.ba QSm = new com.bytedance.sdk.openadsdk.BTZ.ba() { // from class: com.bytedance.sdk.openadsdk.activity.so.1
        @Override // com.bytedance.sdk.openadsdk.BTZ.ba
        public void oJ() {
            so.this.RZ();
        }
    };

    public so(ZYk zYk, cY cYVar, int i10, int i11, boolean z10) {
        this.Ry = false;
        this.kkU = zYk;
        this.jFA = cYVar;
        this.dLZ = i10;
        this.BTZ = i11;
        this.Ry = z10;
    }

    public boolean HL() {
        return false;
    }

    public Activity HyG() {
        return this.kkU.Pfn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Jm() {
        if (this.kkU.awB()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ZYk("onAdShow");
        } else {
            this.kkU.BTZ();
        }
        this.kkU.eZI();
    }

    public abstract void Ln();

    public void Pfn(boolean z10) {
        this.ZYk = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Qu() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ZYk("onAdVideoBarClick");
        } else {
            this.kkU.kkU();
        }
    }

    public void Rl() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ZYk("onAdClose");
        } else {
            this.kkU.dLZ();
        }
    }

    public void Yg() {
        QSm.oJ("Scene", "tryPreloadVideo scene = " + this + ",index =" + this.dLZ);
        com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ = cY.oJ(CacheDirFactory.getICacheDir(this.jFA.rQ()).oJ(), this.jFA);
        oJ.oJ("material_meta", this.jFA);
        oJ.oJ("ad_slot", this.jFA.BHY());
        com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(oJ, new com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.so.5
            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
            }

            @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
            public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10, String str) {
            }
        });
    }

    public final void ZYk(Activity activity, ZYk.Pfn pfn) {
        if (this.oJ) {
            return;
        }
        this.oJ = true;
        oJ(activity, pfn);
    }

    protected abstract boolean a_();

    public abstract String b_();

    public JSONObject bgF() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("media_extra", this.eZI);
            jSONObject.put("play_start_ts", 0);
            jSONObject.put("play_end_ts", 0);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, this.awB);
            jSONObject.put("trans_id", Xe.oJ().replace("-", ""));
            if (tb() != null) {
                com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb2 = tb();
                jSONObject.put("duration", (int) tb2.cY.tb());
                jSONObject.put(CampaignEx.JSON_KEY_REWARD_NAME, tb2.ZYk.sH());
                jSONObject.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, tb2.ZYk.Dex());
                jSONObject.put("network", Ry.tB(tb2.Rl));
                JSONObject DTf = tb2.ZYk.DTf();
                DTf.put("gaid", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
                jSONObject.put(GearStrategyConsts.EV_EXTRA_INFO, DTf);
                jSONObject.put("video_duration", tb2.ZYk.ib().ba());
                String str = "unKnow";
                int oG = tb2.ZYk.oG();
                if (oG == 2) {
                    str = HyG.ZYk();
                } else if (oG == 1) {
                    str = HyG.ex();
                }
                jSONObject.put("user_agent", str);
            }
            return jSONObject;
        } catch (Throwable th2) {
            QSm.oJ("Scene", "", th2);
            return null;
        }
    }

    public abstract boolean cY();

    public abstract void c_();

    /* JADX INFO: Access modifiers changed from: protected */
    public void cdg() {
        if (this.jFA != null) {
            com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("videoForceBreak", this.jFA);
        }
        this.kkU.ex();
    }

    public abstract boolean d_();

    public void ex() {
    }

    protected abstract String jr();

    public boolean lY() {
        return this.ZYk;
    }

    public void nQI() {
        ex(0);
    }

    public abstract com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ();

    public void oJ(Activity activity) {
    }

    protected abstract void oJ(Activity activity, ZYk.Pfn pfn);

    public abstract void oJ(String str);

    public boolean ofl() {
        ZYk zYk = this.kkU;
        if (zYk != null && zYk.oJ(this, this.dLZ)) {
            return true;
        }
        return false;
    }

    public void tB() {
    }

    public abstract void tB(boolean z10);

    public abstract com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb();

    public ZYk wd() {
        return this.kkU;
    }

    private void tB(final String str) {
        ofl.tB(new com.bytedance.sdk.component.so.so("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.so.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    so.this.tB(1).executeFullVideoCallback(so.this.jr(), str);
                } catch (Throwable th2) {
                    QSm.tB("Scene", "fullscreen_interstitial_ad", "executeFullVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    public void ex(final int i10) {
        if (this.kkU.jFA().getBoolean("reward_verify", false) || this.kkU.PiB() || this.kkU.jFA().getBoolean("user_has_give_up_reward", false)) {
            return;
        }
        this.kkU.jFA().putBoolean("reward_verify", true);
        if (tb() == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb2 = tb();
        if (si.ex().awB(String.valueOf(tb2.f13020ba))) {
            oJ(true, tb2.ZYk.Dex(), tb2.ZYk.sH(), 0, "", i10);
            return;
        }
        si.tB().oJ(bgF(), new Id.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.so.4
            @Override // com.bytedance.sdk.openadsdk.core.Id.ZYk
            public void oJ(int i11, String str) {
                so.this.oJ(false, 0, "", i11, str, i10);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Id.ZYk
            public void oJ(cY.ZYk zYk) {
                so.this.oJ(zYk.ZYk, zYk.tB.oJ(), zYk.tB.ZYk(), 0, "", i10);
            }
        });
    }

    public void oJ(Activity activity, Bundle bundle) {
    }

    public void oJ(so soVar, so soVar2, ZYk.Pfn pfn) {
    }

    protected final IListenerManager tB(int i10) {
        if (this.RZ == null) {
            this.RZ = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().oJ(i10));
        }
        return this.RZ;
    }

    protected void ZYk(String str) {
        if (a_()) {
            oJ(str, false, 0, "", 0, "");
        } else {
            tB(str);
        }
    }

    public void oJ(Map<String, Object> map, float f10, float f11) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(boolean z10, boolean z11, boolean z12, int i10) {
        this.kkU.oJ(this, z10, z11, z12, i10);
    }

    private void oJ(final String str, final boolean z10, final int i10, final String str2, final int i11, final String str3) {
        ofl.tB(new com.bytedance.sdk.component.so.so("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.so.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    so.this.tB(0).executeRewardVideoCallback(so.this.jr(), str, z10, i10, str2, i11, str3);
                } catch (Throwable th2) {
                    QSm.tB("Scene", "rewarded_video", "executeRewardVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    protected final void oJ(boolean z10, int i10, String str, int i11, String str2, int i12) {
        if (this.kkU.PiB()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onRewardVerify", z10, i10, str, i11, str2);
        } else {
            this.kkU.oJ(this, z10, i10, str, i11, str2);
        }
        dLZ.oJ(this.jFA, z10, i12);
    }

    public void BTZ() {
    }

    public void PiB() {
    }

    public void QSm() {
    }

    public void RZ() {
    }

    public void XAo() {
    }

    public void nke() {
    }

    public void oq() {
    }
}
