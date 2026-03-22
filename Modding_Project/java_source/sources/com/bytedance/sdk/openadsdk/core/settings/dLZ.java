package com.bytedance.sdk.openadsdk.core.settings;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.component.utils.HL;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.nke;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.LpP;
import com.bytedance.sdk.openadsdk.utils.oq;
import com.inmobi.sdk.InMobiSdk;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ extends com.bytedance.sdk.component.so.so {
    private final kkU ZYk;
    private final oJ oJ;
    private final Set<Pfn> tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(boolean z10);
    }

    public dLZ(oJ oJVar, kkU kku, Pfn... pfnArr) {
        super("SetF");
        HashSet hashSet = new HashSet();
        this.tB = hashSet;
        this.oJ = oJVar;
        this.ZYk = kku;
        hashSet.addAll(Arrays.asList(pfnArr));
    }

    private JSONObject ZYk(JSONObject jSONObject) {
        return com.bytedance.sdk.component.utils.oJ.oJ(jSONObject);
    }

    @Override // java.lang.Runnable
    public void run() {
        Log.d("TTAD.SdkSettingsFetch", "Start Try");
        int oJ2 = HL.oJ(si.oJ(), 0L);
        if (oJ2 == 0) {
            Log.d("TTAD.SdkSettingsFetch", "No net");
            this.oJ.oJ(false);
            return;
        }
        JSONObject oJ3 = oJ(oJ2);
        com.bytedance.sdk.component.cFZ.ZYk.ex ZYk = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
        try {
            ZYk.ZYk(com.bytedance.sdk.openadsdk.so.ex.oJ(ZYk, HyG.oJ("/api/ad/union/sdk/settings/", false, true)));
            ZYk.ZYk(Command.HTTP_HEADER_USER_AGENT, HyG.ex());
        } catch (Exception unused) {
        }
        String jSONObject = ZYk(oJ3).toString();
        if (si.ex().Qu() && nke.oJ().ex() == 1) {
            HyG.oJ("Pangle_Debug_Mode", jSONObject, si.oJ());
        }
        ZYk.oJ(jSONObject, si.ex().awB());
        ZYk.oJ(6);
        ZYk.oJ("setting");
        com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.settings.dLZ.1
            @Override // com.bytedance.sdk.openadsdk.si.ex
            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                oJVar.ZYk("settings_fetch");
                return oJVar;
            }
        });
        ZYk.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.settings.dLZ.2
            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                JSONObject jSONObject2;
                int optInt;
                int oJ4 = zYk.oJ();
                String ex = zYk.ex();
                if (si.ex().Qu() && nke.oJ().ex() == 1) {
                    HyG.oJ("Pangle_Debug_Mode", ex, si.oJ());
                }
                if (zYk.ba() && !TextUtils.isEmpty(ex)) {
                    String str = null;
                    try {
                        jSONObject2 = new JSONObject(ex);
                    } catch (JSONException unused2) {
                        jSONObject2 = null;
                    }
                    if (jSONObject2 != null && (optInt = jSONObject2.optInt("cypher", -1)) != -1) {
                        if (optInt == 3) {
                            str = com.bytedance.sdk.component.utils.oJ.tB(jSONObject2.optString("message"));
                            if (!TextUtils.isEmpty(str)) {
                                try {
                                    jSONObject2 = new JSONObject(str);
                                } catch (Throwable unused3) {
                                }
                            }
                        }
                        try {
                            dLZ.this.oJ(str, zYk.tB());
                        } catch (Throwable unused4) {
                        }
                        try {
                            dLZ.this.oJ(jSONObject2);
                            si.ex().oJ(System.currentTimeMillis());
                            com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.settings.dLZ.2.1
                                @Override // com.bytedance.sdk.openadsdk.si.ex
                                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                    oJVar.ZYk("settings_fetch");
                                    return oJVar;
                                }
                            });
                            oq.ZYk();
                        } catch (Throwable unused5) {
                        }
                        dLZ.this.oJ.oJ(true);
                        return;
                    }
                } else {
                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.settings.dLZ.2.2
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk("settings_fetch");
                            return oJVar;
                        }
                    });
                    if (tBVar != null) {
                        oq.oJ(tBVar.ex());
                    }
                }
                if (!zYk.ba()) {
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("settings_fetch", tBVar.ex(), oJ4, zYk.ZYk());
                }
                dLZ.this.oJ.oJ(false);
            }

            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                dLZ.this.oJ.oJ(false);
                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.settings.dLZ.2.3
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        oJVar.ZYk("settings_fetch");
                        return oJVar;
                    }
                });
                if (tBVar != null) {
                    oq.oJ(tBVar.ex());
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("settings_fetch", tBVar.ex(), -1, iOException != null ? iOException.getMessage() : null);
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.dLZ.ZYk(com.bytedance.sdk.openadsdk.core.BTZ.oJ(si.oJ()));
        DeviceUtils.BTZ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str, Map<String, String> map) {
        int i10 = 1;
        try {
            if (!TextUtils.isEmpty(str) && map != null) {
                HashMap hashMap = new HashMap();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        hashMap.put(key.toLowerCase(Locale.US), entry.getValue());
                    }
                }
                String str2 = (String) hashMap.get("active-control");
                if (str2 != null) {
                    int parseInt = Integer.parseInt(str2);
                    String str3 = (String) hashMap.get(CampaignEx.JSON_KEY_ST_TS);
                    if (str3 != null) {
                        long parseLong = Long.parseLong(str3);
                        String str4 = (String) hashMap.get("pst");
                        String oJ2 = com.bykv.vk.openvk.oJ.oJ.oJ.cFZ.ZYk.oJ(str + parseInt + parseLong);
                        if (oJ2 != null) {
                            if (oJ2.equalsIgnoreCase(str4)) {
                                i10 = parseInt;
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        jFA.oJ(i10);
    }

    public static JSONObject oJ(int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            ba ex = si.ex();
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("device_city", HyG.cY());
            com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(jSONObject);
            jSONObject.put(InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES, com.bytedance.sdk.openadsdk.core.jFA.ZYk().kkU());
            jSONObject.put("pa_consent", com.bytedance.sdk.openadsdk.core.jFA.ZYk().dLZ());
            if (ex.tb("mcc")) {
                jSONObject.put("mcc", LpP.ZYk());
            }
            Context oJ2 = si.oJ();
            jSONObject.put("conn_type", HyG.cFZ(i10));
            jSONObject.put("os", 1);
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, Build.VERSION.RELEASE);
            jSONObject.put("aos_api_level", Build.VERSION.SDK_INT);
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put(MediaFormat.KEY_LANGUAGE, com.bytedance.sdk.openadsdk.core.BTZ.ZYk());
            jSONObject.put("time_zone", HyG.tb());
            jSONObject.put("package_name", HyG.ba());
            jSONObject.put("position", HyG.oJ() ? 1 : 2);
            jSONObject.put("app_version", HyG.so());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("uuid", com.bytedance.sdk.openadsdk.core.BTZ.tB(oJ2));
            String ex2 = com.bytedance.sdk.openadsdk.core.jFA.ZYk().ex();
            if (ex2 != null) {
                jSONObject.put("app_id", ex2);
            }
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put(CampaignEx.JSON_KEY_ST_TS, currentTimeMillis);
            String str = "";
            if (ex2 != null) {
                str = ex2.concat(String.valueOf(currentTimeMillis)).concat(BuildConfig.VERSION_NAME);
            }
            jSONObject.put("req_sign", com.bytedance.sdk.component.utils.Pfn.oJ(str));
            jSONObject.put("tcstring", PiB.tB(oJ2));
            jSONObject.put("tcf_gdpr", PiB.ZYk(oJ2));
            jSONObject.put("lmt", DeviceUtils.tB());
            jSONObject.put("locale_language", DeviceUtils.ex());
            jSONObject.put(AppsFlyerProperties.CHANNEL, "main");
            JSONObject Pfn = ex.Pfn();
            if (Pfn != null) {
                jSONObject.put("digest", Pfn);
            }
            jSONObject.put("data_time", ex.ba());
            jSONObject.put("app_set_id_scope", ex.ZYk());
            jSONObject.put("app_set_id", ex.tB());
            jSONObject.put("installed_source", ex.ex());
            if (ex.tb("gaid")) {
                jSONObject.put("did", com.bytedance.sdk.openadsdk.core.BTZ.oJ(si.oJ()));
            }
            jSONObject.put("gaid", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
            String cFZ = com.bytedance.sdk.openadsdk.core.jFA.ZYk().cFZ();
            if (!TextUtils.isEmpty(cFZ)) {
                jSONObject.put("mediation", cFZ);
            }
            jSONObject.put("device", DeviceUtils.oJ(oJ2, true));
            jSONObject.put("adx_id", com.bytedance.sdk.openadsdk.core.jFA.ZYk().jr());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public boolean oJ(@NonNull JSONObject jSONObject) {
        this.ZYk.oJ(jSONObject);
        for (Pfn pfn : this.tB) {
            if (pfn != null) {
                pfn.oJ(jSONObject);
            }
        }
        return this.ZYk.tB;
    }

    public static boolean oJ() {
        return BinderPoolService.oJ;
    }
}
