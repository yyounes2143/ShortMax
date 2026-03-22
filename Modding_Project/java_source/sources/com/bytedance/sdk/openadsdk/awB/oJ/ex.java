package com.bytedance.sdk.openadsdk.awB.oJ;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.awB.oJ.ex;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex<T extends ex> implements tB {
    private String BTZ;
    private String ZYk;
    private String cFZ;
    private String dLZ;
    private String jFA;
    private String kkU;
    private String oJ;
    private String tB;
    private final String ex = BuildConfig.VERSION_NAME;
    private long Pfn = System.currentTimeMillis() / 1000;

    /* renamed from: ba  reason: collision with root package name */
    private int f12944ba = 0;

    /* renamed from: so  reason: collision with root package name */
    private int f12945so = 0;

    public static ex<ex> ZYk() {
        return new ex<>();
    }

    private JSONObject awB() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("os", 1);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", HyG.ba());
            jSONObject.put("ua", HyG.ex());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public String BTZ() {
        return this.jFA;
    }

    public String Pfn() {
        return this.ZYk;
    }

    public String PiB() {
        return this.kkU;
    }

    public String WcQ() {
        return this.BTZ;
    }

    public String ba() {
        return this.tB;
    }

    public String cFZ() {
        return TextUtils.isEmpty(BuildConfig.VERSION_NAME) ? "" : BuildConfig.VERSION_NAME;
    }

    public int dLZ() {
        return this.f12945so;
    }

    public String ex() {
        return this.dLZ;
    }

    public int jFA() {
        return this.f12944ba;
    }

    public String kkU() {
        return this.cFZ;
    }

    @Override // com.bytedance.sdk.openadsdk.awB.oJ.tB
    public JSONObject oJ() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("ad_sdk_version", cFZ());
            jSONObject2.put("app_version", HyG.so());
            jSONObject2.put("timestamp", so());
            jSONObject2.put("conn_type", Ry.ZYk(si.oJ()));
            jSONObject2.put("appid", TextUtils.isEmpty(jFA.ZYk().ex()) ? "" : jFA.ZYk().ex());
            jSONObject2.put("device_info", awB());
            if (!TextUtils.isEmpty(tB())) {
                jSONObject2.put("type", tB());
            }
            jSONObject2.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, dLZ());
            if (!TextUtils.isEmpty(BTZ())) {
                jSONObject2.put("error_msg", BTZ());
            }
            if (!TextUtils.isEmpty(Pfn())) {
                jSONObject2.put("rit", Pfn());
            }
            if (!TextUtils.isEmpty(ba())) {
                jSONObject2.put(CampaignEx.JSON_KEY_CREATIVE_ID, ba());
            }
            if (jFA() > 0) {
                jSONObject2.put("adtype", jFA());
            }
            if (!TextUtils.isEmpty(kkU())) {
                jSONObject2.put("req_id", kkU());
            }
            if (!TextUtils.isEmpty(PiB())) {
                jSONObject2.put(GearStrategyConsts.EV_EXTRA_INFO, PiB());
            }
            String ex = ex();
            if (TextUtils.isEmpty(ex)) {
                jSONObject = new JSONObject();
            } else {
                try {
                    jSONObject = new JSONObject(ex);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            }
            if (jSONObject != null) {
                jSONObject.put("os_version_int", Build.VERSION.SDK_INT);
                jSONObject2.put("event_extra", jSONObject.toString());
            } else if (!TextUtils.isEmpty(ex)) {
                jSONObject2.put("event_extra", ex);
            }
            if (!TextUtils.isEmpty(WcQ())) {
                jSONObject2.put("duration", WcQ());
            }
        } catch (Throwable th2) {
            QSm.tB("LogStatsBase", th2.getMessage());
        }
        return jSONObject2;
    }

    public long so() {
        return this.Pfn;
    }

    public String tB() {
        return this.oJ;
    }

    public T Pfn(String str) {
        this.cFZ = str;
        return eZI();
    }

    public T ZYk(String str) {
        this.dLZ = str;
        return eZI();
    }

    public T ba(String str) {
        this.jFA = str;
        return eZI();
    }

    public T cFZ(String str) {
        this.kkU = str;
        return eZI();
    }

    public T ex(String str) {
        this.tB = str;
        return eZI();
    }

    public T so(String str) {
        this.BTZ = str;
        return eZI();
    }

    public T tB(String str) {
        this.ZYk = str;
        return eZI();
    }

    public T ZYk(int i10) {
        this.f12945so = i10;
        return eZI();
    }

    private T eZI() {
        return this;
    }

    public T oJ(String str) {
        this.oJ = str;
        return eZI();
    }

    public T oJ(int i10) {
        this.f12944ba = i10;
        return eZI();
    }
}
