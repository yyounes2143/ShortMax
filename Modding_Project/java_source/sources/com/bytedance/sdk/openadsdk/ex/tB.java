package com.bytedance.sdk.openadsdk.ex;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.WorkerThread;
import com.adjust.sdk.Constants;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.HL;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import com.bytedance.sdk.openadsdk.ex.oJ;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.wd;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.pgl.ssdk.ces.out.DungeonFlag;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    public static void Pfn(cY cYVar, final com.bytedance.sdk.openadsdk.awB.oJ.oJ oJVar, final String str) {
        oJ(System.currentTimeMillis(), cYVar, str, "web_behavior_click", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.30
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.tB());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.ex());
                    jSONObject2.put("arbi_start_x", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.Pfn());
                    jSONObject2.put("arbi_start_y", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.ba());
                    jSONObject2.put("click_duration", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.cFZ());
                    jSONObject2.put("is_trigger_jump", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.so());
                    jSONObject2.put("click_type", String.valueOf(com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.RZ()));
                    if (com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.oJ() != -1) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("hit_type", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.oJ());
                        jSONObject3.put("hit_extra", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.ZYk());
                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    QSm.tB("TTAD.AdEvent", "onWebBehaviorClick", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(cY cYVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (Ln.ZYk(cYVar) && cYVar.wHC()) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("is_new_playable", 1);
                oJ(jSONObject2);
                jSONObject.put("pag_json_data", jSONObject2.toString());
                return;
            } catch (Throwable th2) {
                QSm.tB(th2.getMessage(), new Object[0]);
                return;
            }
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            oJ(jSONObject3);
            jSONObject.put("pag_json_data", jSONObject3.toString());
        } catch (Throwable th3) {
            QSm.tB(th3.getMessage(), new Object[0]);
        }
    }

    public static void ba(cY cYVar, String str, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, str, "show_next_ad_hint", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.46
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                if (jSONObject != null) {
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("pag_json_data", jSONObject.toString());
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    } catch (Throwable unused) {
                    }
                }
                return jSONObject2;
            }
        });
    }

    public static void cFZ(cY cYVar, String str, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, str, "click_next_ad_button", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.47
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                if (jSONObject != null) {
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("pag_json_data", jSONObject.toString());
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    } catch (Throwable unused) {
                    }
                }
                return jSONObject2;
            }
        });
    }

    @DungeonFlag
    private static void ex(final cY cYVar, final String str, final String str2, final JSONObject jSONObject) {
        if (cYVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (cYVar.ofl() && "show".equals(str)) {
            return;
        }
        if ("show".equals(str)) {
            cYVar.cFZ(true);
        }
        final long currentTimeMillis = System.currentTimeMillis();
        oJ(new com.bytedance.sdk.component.so.so("onShow") { // from class: com.bytedance.sdk.openadsdk.ex.tB.51
            @Override // java.lang.Runnable
            public void run() {
                final String str3;
                if (com.bytedance.sdk.openadsdk.core.si.ex().oIC()) {
                    str3 = com.bytedance.sdk.openadsdk.core.jFA.oJ.oJ.oJ((Application) com.bytedance.sdk.openadsdk.core.si.oJ()).oJ(str2, DeviceUtils.oJ(), cYVar.uv());
                } else {
                    str3 = DevicePublicKeyStringDef.NONE;
                }
                tB.oJ(currentTimeMillis, cYVar, str2, str, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.51.1
                    @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                    public JSONObject oJ() {
                        Object obj;
                        Object obj2;
                        try {
                            HL.ZYk(cYVar);
                            JSONObject jSONObject2 = new JSONObject();
                            try {
                                AnonymousClass51 anonymousClass51 = AnonymousClass51.this;
                                JSONObject jSONObject3 = jSONObject;
                                if (jSONObject3 != null) {
                                    jSONObject3.put("interaction_method", cYVar.NO());
                                    AnonymousClass51 anonymousClass512 = AnonymousClass51.this;
                                    jSONObject.put("real_interaction_method", cYVar.LS());
                                    jSONObject.put("video_skip_result", com.bytedance.sdk.openadsdk.core.si.ex().BTZ(String.valueOf(cYVar.uv())));
                                    jSONObject.put("au_show", str3);
                                    AnonymousClass51 anonymousClass513 = AnonymousClass51.this;
                                    tB.ZYk(cYVar, jSONObject);
                                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                                } else {
                                    JSONObject jSONObject4 = new JSONObject();
                                    jSONObject4.put("interaction_method", cYVar.NO());
                                    jSONObject4.put("real_interaction_method", cYVar.LS());
                                    jSONObject4.put("video_skip_result", com.bytedance.sdk.openadsdk.core.si.ex().BTZ(String.valueOf(cYVar.uv())));
                                    jSONObject4.put("au_show", str3);
                                    AnonymousClass51 anonymousClass514 = AnonymousClass51.this;
                                    tB.ZYk(cYVar, jSONObject);
                                    jSONObject2.put("ad_extra_data", jSONObject4.toString());
                                }
                                jSONObject2.putOpt("log_extra", cYVar.pe());
                                float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - cYVar.fTJ()).floatValue();
                                if (floatValue <= 0.0f) {
                                    floatValue = 0.0f;
                                }
                                jSONObject2.putOpt("show_time", Float.valueOf(floatValue));
                                jSONObject2.putOpt("ua_policy", Integer.valueOf(cYVar.oG()));
                                String VJm = cYVar.VJm();
                                if (!TextUtils.isEmpty(VJm) && !TextUtils.isEmpty(VJm)) {
                                    jSONObject2.put("ttdsp_price", Math.round(Float.parseFloat(VJm) * 100000.0f));
                                }
                                if (cYVar.Zwf() != null && (obj = cYVar.Zwf().get(TTAdConstant.SDK_BIDDING_TYPE)) != null && Integer.parseInt(obj.toString()) == 2 && (obj2 = cYVar.Zwf().get("price")) != null) {
                                    jSONObject2.put("ttdsp_price", Math.round(Double.parseDouble(obj2.toString()) * 100000.0d));
                                    return jSONObject2;
                                }
                                return jSONObject2;
                            } catch (Exception unused) {
                                return jSONObject2;
                            }
                        } catch (Exception unused2) {
                            return null;
                        }
                    }
                });
                if ("show".equals(str)) {
                    if (!cYVar.ai()) {
                        if (cYVar.RQ()) {
                            com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(cYVar.uaj(), new tB.ZYk("show_urls", cYVar));
                        } else {
                            tB.oJ(cYVar);
                        }
                    }
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 != null) {
                        int optInt = jSONObject2.optInt("dynamic_show_type");
                        if (cYVar.XAo() == 1 && (optInt == 7 || optInt == 10)) {
                            com.bytedance.sdk.component.utils.jFA.oJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.tB.51.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    JSONObject jSONObject3 = new JSONObject();
                                    try {
                                        jSONObject3.put("auto_click", true);
                                        AnonymousClass51 anonymousClass51 = AnonymousClass51.this;
                                        tB.ZYk(cYVar, str2, "click", jSONObject3);
                                    } catch (Exception unused) {
                                        QSm.tB("TTAD.AdEvent", "ugen click exception");
                                    }
                                }
                            }, com.bytedance.sdk.openadsdk.core.settings.PiB.ib().bD());
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.jFA.tB.oJ(cYVar, str3);
                }
            }
        });
    }

    public static void so(cY cYVar, String str, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, str, "click_playable_button", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.48
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                if (jSONObject != null) {
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("pag_json_data", jSONObject.toString());
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    } catch (Throwable unused) {
                    }
                }
                return jSONObject2;
            }
        });
    }

    public static void tB(cY cYVar, String str, final long j10) {
        oJ(System.currentTimeMillis(), cYVar, str, "load_feeling_duration", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.6
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", j10);
                } catch (Throwable th2) {
                    QSm.tB("TTAD.AdEvent", th2.getMessage());
                }
                jSONObject.toString();
                return jSONObject;
            }
        });
    }

    public static void Pfn(cY cYVar, String str, JSONObject jSONObject) {
        ex(cYVar, "activity_recreate", str, jSONObject);
    }

    @WorkerThread
    public static void oJ() {
        try {
            Class.forName(tB.class.getName());
        } catch (ClassNotFoundException unused) {
        }
    }

    public static void tB(cY cYVar, String str, final int i10) {
        oJ(System.currentTimeMillis(), cYVar, str, "check_meta_more", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.8
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                    jSONObject.put("check_url", com.bytedance.sdk.openadsdk.core.settings.PiB.ib().SCr());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    /* loaded from: classes3.dex */
    public static class oJ {
        public static void oJ(String str, final JSONObject jSONObject, cY cYVar) {
            String oJ = HyG.oJ(cYVar);
            if (oJ == null) {
                return;
            }
            tB.oJ(System.currentTimeMillis(), cYVar, oJ + "_landingpage", str, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.oJ.1
                @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                public JSONObject oJ() {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                    } catch (Throwable th2) {
                        Log.d("TTAD.AdEvent", "Gecko.loadEvent error", th2);
                    }
                    return jSONObject2;
                }
            });
        }

        public static void oJ(final int i10, final int i11, cY cYVar) {
            String oJ = HyG.oJ(cYVar);
            if (oJ == null) {
                return;
            }
            tB.oJ(System.currentTimeMillis(), cYVar, oJ + "_landingpage", "local_res_hit_rate", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.oJ.2
                @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                public JSONObject oJ() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("all_times", i11);
                        jSONObject2.put("hit_times", i10);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Throwable th2) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th2);
                    }
                    return jSONObject;
                }
            });
        }

        public static void oJ(final long j10, final cY cYVar, String str, final ILoader iLoader, final String str2) {
            if (str == null) {
                return;
            }
            tB.oJ(System.currentTimeMillis(), cYVar, str, "landingpage_init", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.oJ.3
                @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                public JSONObject oJ() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        int oJ = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(ILoader.this, str2);
                        JSONObject jSONObject2 = new JSONObject();
                        JSONObject jSONObject3 = new JSONObject();
                        int i10 = 0;
                        jSONObject3.put(cY.ZYk, cYVar.rg() ? 1 : 0);
                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                        jSONObject2.put("url", cYVar.Oof());
                        jSONObject2.put("channel_name", cYVar.PQw());
                        if (!TextUtils.isEmpty(cYVar.PQw()) && oJ > 0) {
                            i10 = 1;
                        }
                        jSONObject2.put("interceptor_status", i10);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("resource_count", oJ);
                        jSONObject2.put("resource_info", jSONObject4);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                        jSONObject.put("duration", j10);
                    } catch (Throwable th2) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th2);
                    }
                    return jSONObject;
                }
            });
        }

        public static void oJ(final int i10, final int i11, final int i12, final int i13, final cY cYVar, String str, final int i14) {
            if (str == null || TextUtils.isEmpty(cYVar.PQw())) {
                return;
            }
            tB.oJ(System.currentTimeMillis(), cYVar, str, "landing_page_resource_detail", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.oJ.4
                @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                public JSONObject oJ() {
                    int i15;
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("next_url", cY.this.Oof());
                        jSONObject2.put("channel_name", cY.this.PQw());
                        if (i10 <= 0) {
                            i15 = 0;
                        } else {
                            i15 = 2;
                        }
                        jSONObject2.put("preload_status", i15);
                        jSONObject2.put("first_page", i14);
                        jSONObject2.put("preload_h5_type", cY.this.LpP());
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("channel_response", i10);
                        jSONObject3.put("failResourceCount", i11);
                        jSONObject3.put("successCount", i12);
                        jSONObject3.put("failCount", i13);
                        jSONObject2.put("resource_info", jSONObject3);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Throwable th2) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th2);
                    }
                    return jSONObject;
                }
            });
        }
    }

    public static void oJ(cY cYVar, String str, final int i10) {
        oJ(System.currentTimeMillis(), cYVar, str, "open_url_h5", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.1
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.putOpt("preload_status", Integer.valueOf(i10));
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void tB(final cY cYVar, String str) {
        if (cYVar == null || !cY.tB(cYVar) || cYVar.IUZ() == null) {
            return;
        }
        oJ(System.currentTimeMillis(), cYVar, str, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD_SHOW, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.25
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", cY.this.IUZ().tB());
                    jSONObject2.putOpt("id", cY.this.IUZ().oJ());
                    jSONObject2.putOpt("md5", cY.this.IUZ().ZYk());
                    if (cY.this.ib() != null) {
                        jSONObject2.putOpt("render_type", Integer.valueOf(cY.this.ib().ex()));
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(final cY cYVar, String str) {
        oJ(System.currentTimeMillis(), cYVar, str, "endcard_load_start", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.12
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (cY.tB(cY.this)) {
                        if (cY.this.IUZ() != null) {
                            jSONObject2.putOpt("url", cY.this.IUZ().tB());
                            jSONObject2.putOpt("id", cY.this.IUZ().oJ());
                            jSONObject2.putOpt("md5", cY.this.IUZ().ZYk());
                        }
                        if (cY.this.ib() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", cY.this.ib().BTZ());
                        jSONObject2.putOpt("style_id", cY.this.tb());
                        if (cY.this.ib() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception e10) {
                    QSm.tB(e10.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(final cY cYVar, String str, final long j10) {
        oJ(System.currentTimeMillis(), cYVar, str, "endcard_load_finish", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.22
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (cY.tB(cY.this)) {
                        if (cY.this.IUZ() != null) {
                            jSONObject2.putOpt("url", cY.this.IUZ().tB());
                            jSONObject2.putOpt("id", cY.this.IUZ().oJ());
                            jSONObject2.putOpt("md5", cY.this.IUZ().ZYk());
                        }
                        if (cY.this.ib() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", cY.this.ib().BTZ());
                        jSONObject2.putOpt("style_id", cY.this.tb());
                        if (cY.this.ib() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j10);
                } catch (Exception e10) {
                    QSm.tB(e10.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void tB(cY cYVar, final com.bytedance.sdk.openadsdk.awB.oJ.oJ oJVar, final String str) {
        oJ(System.currentTimeMillis(), cYVar, str, "web_behavior_stay", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.28
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.tB());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.ex());
                    jSONObject2.put("arbi_stay_duration", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.WcQ());
                    jSONObject2.put("browsing_percentage", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.awB());
                    jSONObject2.put("out_focus_scene", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.eZI());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    QSm.tB("TTAD.AdEvent", "onWebBehaviorStay", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void ex(final cY cYVar, final String str, final int i10) {
        oJ(System.currentTimeMillis(), cYVar, str, "material_status", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.13
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("trigger_type", i10);
                    jSONObject3.put("image_mode", cYVar.Dc());
                    jSONObject.put("pag_json_data", jSONObject3.toString());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject.toString();
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(final cY cYVar, String str, final long j10, final int i10, final String str2, final String str3) {
        oJ(System.currentTimeMillis(), cYVar, str, "endcard_load_fail", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.33
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (cY.tB(cY.this)) {
                        if (cY.this.IUZ() != null) {
                            jSONObject2.putOpt("url", cY.this.IUZ().tB());
                            jSONObject2.putOpt("id", cY.this.IUZ().oJ());
                            jSONObject2.putOpt("md5", cY.this.IUZ().ZYk());
                        }
                        if (cY.this.ib() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", cY.this.ib().BTZ());
                        jSONObject2.putOpt("style_id", cY.this.tb());
                        if (!TextUtils.isEmpty(str3)) {
                            jSONObject2.putOpt("error_url", str3);
                        }
                        if (cY.this.ib() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject2.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                    jSONObject2.put("error_msg", str2);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j10);
                } catch (Exception e10) {
                    QSm.tB(e10.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void tB(cY cYVar, final String str, final String str2, final JSONObject jSONObject) {
        if (cYVar == null || jSONObject == null) {
            return;
        }
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.36
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (JSONException unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void ex(cY cYVar, final com.bytedance.sdk.openadsdk.awB.oJ.oJ oJVar, final String str) {
        oJ(System.currentTimeMillis(), cYVar, str, "web_behavior_scroll", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.29
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.tB());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.ex());
                    jSONObject2.put("trigger_scroll_x", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.jFA());
                    jSONObject2.put("trigger_scroll_y", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.kkU());
                    jSONObject2.put("arbi_offset_y", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.dLZ());
                    jSONObject2.put("scroll_type", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.BTZ());
                    jSONObject2.put("scroll_duration", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.PiB());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    QSm.tB("TTAD.AdEvent", "onWebBehaviorScroll", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(final cY cYVar, String str, final long j10, final int i10, final int i11) {
        oJ(System.currentTimeMillis(), cYVar, str, "load", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.44
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.putOpt("interaction_method", Integer.valueOf(cY.this.NO()));
                    jSONObject2.put("first_page", i11);
                    jSONObject2.put("preload_h5_type", cY.this.LpP());
                    int i12 = i10;
                    if (i12 >= 0) {
                        jSONObject2.putOpt("preload_status", Integer.valueOf(i12));
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", Math.min(j10, (long) TTAdConstant.AD_MAX_EVENT_TIME));
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void tB(cY cYVar, final String str, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, str, ZYk.f13343ba, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.38
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("pag_json_data", jSONObject);
                    jSONObject2.put("ad_extra_data", jSONObject3);
                } catch (JSONException unused) {
                }
                String str2 = ZYk.oJ;
                return jSONObject2;
            }
        });
    }

    public static void ex(cY cYVar, String str, JSONObject jSONObject) {
        if (cYVar == null) {
            return;
        }
        oJ(cYVar, str, -1L, jSONObject);
    }

    public static void oJ(String str, cY cYVar, String str2, final Map<String, Object> map) {
        oJ(System.currentTimeMillis(), cYVar, str2, str, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.49
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (map != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        for (Map.Entry entry : map.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    }
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(long j10, cY cYVar, String str, String str2, final JSONObject jSONObject, cFZ cfz, com.bytedance.sdk.openadsdk.ex.ZYk.oJ oJVar) {
        oJ(j10, cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.50
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                return jSONObject;
            }
        });
    }

    @DungeonFlag
    public static void oJ(cY cYVar, String str, JSONObject jSONObject) {
        ex(cYVar, "show", str, jSONObject);
    }

    public static void ZYk(cY cYVar, String str, final long j10) {
        if (cYVar != null && j10 > 0 && j10 < 200000) {
            oJ(System.currentTimeMillis(), cYVar, str, "video_click_duration", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.3
                @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                public JSONObject oJ() {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject.put("video_click_duration_time", j10);
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                    } catch (Throwable unused) {
                    }
                    return jSONObject2;
                }
            });
        }
    }

    private static void oJ(JSONObject jSONObject) {
        try {
            JSONObject oJ2 = so.oJ();
            if (oJ2 != null) {
                Iterator<String> keys = oJ2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, oJ2.get(next));
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void ZYk(cY cYVar, String str, final int i10) {
        oJ(System.currentTimeMillis(), cYVar, str, "check_meta", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.7
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                    jSONObject.put("check_url", com.bytedance.sdk.openadsdk.core.settings.PiB.ib().SCr());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void ZYk(final cY cYVar, String str) {
        oJ(System.currentTimeMillis(), cYVar, str, "picture_click", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.14
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("ad_slot_type", cY.this.qnr());
                    jSONObject.put("interaction_method", cY.this.NO());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void ZYk(cY cYVar, String str, String str2, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.18
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    }
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void ZYk(final long j10, final cY cYVar, String str, final String str2) {
        oJ(System.currentTimeMillis(), cYVar, str, "endcard_feeling_duraion", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.24
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject.put("duration", j10);
                    if (cY.tB(cYVar)) {
                        if (cYVar.IUZ() != null) {
                            jSONObject2.putOpt("url", cYVar.IUZ().tB());
                            jSONObject2.putOpt("id", cYVar.IUZ().oJ());
                            jSONObject2.putOpt("md5", cYVar.IUZ().ZYk());
                        }
                        jSONObject2.putOpt("from", str2);
                        if (cYVar.ib() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.put("url", cYVar.ib().BTZ());
                        jSONObject2.put("style_id", cYVar.tb());
                        if (cYVar.ib() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception e10) {
                    QSm.tB(e10.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void ZYk(cY cYVar, final com.bytedance.sdk.openadsdk.awB.oJ.oJ oJVar, final String str) {
        oJ(System.currentTimeMillis(), cYVar, str, "web_behavior_load", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.27
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.tB());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.ex());
                    jSONObject2.put("arbi_load_duration", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.Ry());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    QSm.tB("TTAD.AdEvent", "onWebBehaviorLoad", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(cY cYVar) {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.BTZ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ()))) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(com.bytedance.sdk.openadsdk.jr.oJ.oJ(cYVar.uaj(), true), 1, cYVar.edj());
    }

    public static void ZYk(cY cYVar, String str, String str2, final JSONObject jSONObject, final long j10) {
        if (cYVar == null || jSONObject == null) {
            return;
        }
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.35
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject2.put("duration", j10);
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void ZYk(cY cYVar, final String str, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, str, ZYk.Pfn, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.37
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("pag_json_data", jSONObject);
                    jSONObject2.put("ad_extra_data", jSONObject3);
                } catch (JSONException unused) {
                }
                String str2 = ZYk.oJ;
                return jSONObject2;
            }
        });
    }

    public static void ZYk(cY cYVar, String str, int i10, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("type", i10);
        } catch (JSONException unused) {
        }
        ZYk(cYVar, str, "download_app_ad_track", jSONObject);
    }

    @DungeonFlag
    public static void oJ(final String str, final cY cYVar, final String str2, final cFZ cfz) {
        if (cYVar == null || cfz == null || !cfz.oJ()) {
            return;
        }
        oJ(System.currentTimeMillis(), cYVar, str2, "ad_show_time", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.52
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", str);
                    cFZ cfz2 = cfz;
                    if (cfz2 != null && cfz2.ZYk() != null) {
                        JSONObject ZYk = cfz.ZYk();
                        if (str2.equals("open_ad")) {
                            ZYk.put("is_icon_only", cYVar.Xe() ? 1 : 0);
                        }
                        jSONObject.put("ad_extra_data", ZYk.toString());
                    }
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(final cY cYVar, final String str, final wd wdVar) {
        if (cYVar == null) {
            return;
        }
        final long ex = wdVar.ex();
        oJ(System.currentTimeMillis(), cYVar, str, "stay_duration", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.2
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("click_stay_time", ex);
                    jSONObject.put("click_time", wdVar.oJ);
                    if (str.equals("open_ad")) {
                        jSONObject.put("is_icon_only", cYVar.Xe() ? 1 : 0);
                    }
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(cY cYVar, final String str, final int i10, final String str2, final long j10, final boolean z10, final int i11, final long j11) {
        oJ(System.currentTimeMillis(), cYVar, str, ZYk.ex, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.4
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("invisible_scene", i10);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("loading_visible_time", j10);
                    jSONObject.put("arbi_trigger_start", z10);
                    jSONObject.put("arbi_convert_count", i11);
                    jSONObject.put("loading_start_timestamp", j11);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(cY cYVar, String str, final long j10, final boolean z10) {
        oJ(System.currentTimeMillis(), cYVar, str, "lp_loading", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.5
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                int i10;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    if (z10) {
                        i10 = 1;
                    } else {
                        i10 = 2;
                    }
                    jSONObject.put("if_lp_loading_success", i10);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject2.put("duration", j10);
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(cY cYVar, final String str, final int i10, final String str2, final int i11) {
        oJ(System.currentTimeMillis(), cYVar, str, ZYk.oJ, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.9
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(TextureRenderKeys.KEY_IS_INDEX, i10);
                    jSONObject.put("arbi_current_url", str2);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("new_index", i11);
                    jSONObject.put("pag_json_data", jSONObject3.toString());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(cY cYVar, final String str, final int i10, final String str2, final float f10) {
        oJ(System.currentTimeMillis(), cYVar, str, ZYk.ZYk, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.10
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(TextureRenderKeys.KEY_IS_INDEX, i10);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("arbi_load_duration", f10);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(cY cYVar, final String str, final int i10, final String str2, final String str3, final int i11) {
        oJ(System.currentTimeMillis(), cYVar, str, ZYk.tB, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.11
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(TextureRenderKeys.KEY_IS_INDEX, i10);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_LOAD_URL, str3);
                    jSONObject.put("url_flag", i11);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    QSm.tB(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    @DungeonFlag
    public static void oJ(final String str, final cY cYVar, final com.bytedance.sdk.openadsdk.core.model.BTZ btz, final String str2, final boolean z10, final Map<String, Object> map, final int i10) {
        final long currentTimeMillis = System.currentTimeMillis();
        oJ(new com.bytedance.sdk.component.so.so("onClick") { // from class: com.bytedance.sdk.openadsdk.ex.tB.15
            @Override // java.lang.Runnable
            public void run() {
                cY cYVar2 = cYVar;
                if (cYVar2 == null) {
                    return;
                }
                tB.oJ(currentTimeMillis, cYVar2, str2, str, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.15.1
                    @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                    public JSONObject oJ() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            com.bytedance.sdk.openadsdk.core.model.BTZ btz2 = btz;
                            if (btz2 != null) {
                                JSONObject oJ2 = btz2.oJ();
                                oJ2.put("is_valid", z10);
                                int i11 = i10;
                                if (i11 > 0 && i11 <= 2) {
                                    oJ2.put("user_behavior_type", i11);
                                }
                                Map map2 = map;
                                if (map2 != null) {
                                    if (map2.containsKey("duration")) {
                                        jSONObject.put("duration", map.get("duration"));
                                    }
                                    for (Map.Entry entry : map.entrySet()) {
                                        if (!"duration".equals(entry.getKey())) {
                                            oJ2.put((String) entry.getKey(), entry.getValue());
                                        }
                                    }
                                }
                                oJ2.put("interaction_method", cYVar.NO());
                                if (str2.equals("open_ad")) {
                                    oJ2.put("is_icon_only", cYVar.Xe() ? 1 : 0);
                                }
                                jSONObject.put("ad_extra_data", oJ2.toString());
                            }
                            jSONObject.putOpt("log_extra", cYVar.pe());
                            float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - cYVar.fTJ()).floatValue();
                            if (floatValue <= 0.0f) {
                                floatValue = 0.0f;
                            }
                            jSONObject.putOpt("show_time", Float.valueOf(floatValue));
                            jSONObject.putOpt("ua_policy", Integer.valueOf(cYVar.oG()));
                        } catch (Exception unused) {
                        }
                        return jSONObject;
                    }
                });
                if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.BTZ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ())) && "click".equals(str)) {
                    com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(com.bytedance.sdk.openadsdk.jr.oJ.oJ(cYVar.LE(), true), 2, cYVar.edj());
                }
                if ("click".equals(str)) {
                    HL.tB(cYVar);
                }
            }
        });
    }

    public static void oJ(cY cYVar, String str, String str2, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.16
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        if (jSONObject.has("duration")) {
                            jSONObject2.put("duration", jSONObject.get("duration"));
                        }
                    } catch (Exception e10) {
                        QSm.tB("TTAD.AdEvent", e10.getMessage());
                    }
                    return jSONObject2;
                }
                return null;
            }
        });
        if ("click".equals(str2)) {
            HL.tB(cYVar);
        }
    }

    public static void oJ(cY cYVar, String str, final String str2, final long j10, final int i10, JSONObject jSONObject, final cFZ cfz) {
        final JSONObject jSONObject2 = jSONObject == null ? new JSONObject() : jSONObject;
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.17
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                cFZ cfz2;
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("duration", j10);
                    jSONObject3.put("percent", i10);
                    if (("feed_break".equals(str2) || "feed_over".equals(str2)) && (cfz2 = cfz) != null) {
                        cfz2.oJ(jSONObject2);
                    }
                    jSONObject3.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                return jSONObject3;
            }
        });
    }

    public static void oJ(cY cYVar, String str, String str2, final JSONObject jSONObject, final long j10) {
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.19
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    }
                    jSONObject2.put("duration", j10);
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(final cY cYVar, String str, String str2, final Map<String, Object> map) {
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.20
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                        Object obj = map.get("duration");
                        if (obj instanceof Long) {
                            jSONObject.put("duration", obj);
                        }
                    }
                    jSONObject2.put("dp_creative_type", cYVar.GSK());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    @DungeonFlag
    public static void oJ(long j10, cY cYVar, String str, String str2) {
        oJ(j10, cYVar, str, str2, (com.bytedance.sdk.openadsdk.awB.tB.oJ) null);
    }

    @DungeonFlag
    public static void oJ(final long j10, final cY cYVar, final String str, final String str2, final com.bytedance.sdk.openadsdk.awB.tB.oJ oJVar) {
        if (cYVar == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || oJ(cYVar.Jm(), str2)) {
            return;
        }
        oJ(new com.bytedance.sdk.component.so.so(str2) { // from class: com.bytedance.sdk.openadsdk.ex.tB.21
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                try {
                    com.bytedance.sdk.openadsdk.awB.tB.oJ oJVar2 = oJVar;
                    if (oJVar2 != null) {
                        jSONObject = oJVar2.oJ();
                        if (jSONObject == null) {
                            try {
                                jSONObject = new JSONObject();
                            } catch (Exception unused) {
                            }
                        }
                    } else {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.putOpt("log_extra", cYVar.pe());
                    jSONObject.putOpt("ua_policy", Integer.valueOf(cYVar.oG()));
                } catch (Exception unused2) {
                    jSONObject = null;
                }
                new oJ.C0233oJ(j10, cYVar).ZYk(str).tB(str2).Pfn(cYVar.edj()).so(cYVar.cdg()).oJ(cYVar.eW()).oJ(jSONObject).cFZ(cYVar.iPr()).oJ((com.bytedance.sdk.openadsdk.ex.ZYk.oJ) null);
            }
        });
    }

    public static void oJ(cY cYVar, String str, final String str2, final com.bytedance.sdk.openadsdk.awB.tB.oJ oJVar) {
        oJ(System.currentTimeMillis(), cYVar, str, "playable_track", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.23
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject;
                JSONObject jSONObject2 = new JSONObject();
                try {
                    com.bytedance.sdk.openadsdk.awB.tB.oJ oJVar2 = com.bytedance.sdk.openadsdk.awB.tB.oJ.this;
                    if (oJVar2 != null) {
                        jSONObject = oJVar2.oJ();
                        if (jSONObject == null) {
                            jSONObject = new JSONObject();
                        }
                    } else {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put("is_new_playable", 1);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("pag_json_data", jSONObject.toString());
                    jSONObject3.put("playable_event", str2);
                    jSONObject2.put("ad_extra_data", jSONObject3.toString());
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(cY cYVar, final com.bytedance.sdk.openadsdk.awB.oJ.oJ oJVar, final String str) {
        oJ(System.currentTimeMillis(), cYVar, str, "web_behavior_keyword", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.26
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.tB());
                    jSONObject2.put("keyword", com.bytedance.sdk.openadsdk.awB.oJ.oJ.this.si());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    QSm.tB("TTAD.AdEvent", "onWebBehaviorKeyword", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(final long j10, final cY cYVar, String str) {
        if (cYVar == null || !cY.tB(cYVar) || cYVar.IUZ() == null) {
            return;
        }
        oJ(System.currentTimeMillis(), cYVar, str, "endcard_close", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.31
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", cY.this.IUZ().tB());
                    jSONObject2.putOpt("id", cY.this.IUZ().oJ());
                    jSONObject2.putOpt("md5", cY.this.IUZ().ZYk());
                    if (cY.this.ib() != null) {
                        jSONObject2.putOpt("render_type", Integer.valueOf(cY.this.ib().ex()));
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j10);
                } catch (Exception e10) {
                    QSm.tB(e10.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(cY cYVar, String str, final String str2) {
        oJ(System.currentTimeMillis(), cYVar, str, "show_error", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.32
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.putOpt("error_msg", str2);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(cY cYVar, String str, String str2, final long j10, final JSONObject jSONObject) {
        if (cYVar == null || jSONObject == null) {
            return;
        }
        oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.34
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("duration", j10);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Exception e10) {
                    QSm.tB("TTAD.AdEvent", e10.getMessage());
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(String str, long j10) {
        com.bytedance.sdk.openadsdk.core.cFZ.tB.oJ(str, j10);
    }

    @DungeonFlag
    public static void oJ(final cY cYVar, final String str, final String str2, final String str3, final long j10, final long j11, final JSONObject jSONObject, final boolean z10) {
        if (cYVar == null || oJ(cYVar.Jm(), str3)) {
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        oJ(new com.bytedance.sdk.component.so.so("sendJsAdEvent") { // from class: com.bytedance.sdk.openadsdk.ex.tB.39
            @Override // java.lang.Runnable
            public void run() {
                JSONArray optJSONArray;
                String eW = cYVar.eW();
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        String optString = jSONObject.optString("ad_extra_data");
                        if (!TextUtils.isEmpty(optString)) {
                            jSONObject2 = new JSONObject(optString);
                        }
                        if (!"click".equals(str3)) {
                            jSONObject2.put("device", DeviceUtils.cFZ(com.bytedance.sdk.openadsdk.core.si.oJ()).toString());
                        }
                        if ("click".equals(str3)) {
                            if (z10) {
                                jSONObject2.put("click_scence", 1);
                            } else if (Ln.ZYk(cYVar)) {
                                jSONObject2.put("click_scence", 3);
                            }
                        }
                        if (cYVar.wHC()) {
                            try {
                                JSONObject optJSONObject = jSONObject2.optJSONObject("pag_json_data");
                                if (optJSONObject == null) {
                                    optJSONObject = new JSONObject();
                                }
                                optJSONObject.put("is_new_playable", 1);
                                if (cYVar.dTl()) {
                                    optJSONObject.put("is_pre_render", 1);
                                }
                                jSONObject2.put("pag_json_data", optJSONObject.toString());
                            } catch (Throwable unused) {
                            }
                        }
                        int i10 = 0;
                        if (com.bytedance.sdk.openadsdk.PiB.oJ.tB(cYVar)) {
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("pag_json_data");
                            if (optJSONObject2 == null) {
                                optJSONObject2 = new JSONObject();
                            }
                            optJSONObject2.put("is_lp_pre_render", cYVar.XS() ? 1 : 0);
                            jSONObject2.put("pag_json_data", optJSONObject2.toString());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                        jSONObject.put(ITTVideoEngineEventSource.KEY_TAG, str2);
                        int optInt = jSONObject2.optInt("agg_request_type", -1);
                        if (z10 && optInt == 2) {
                            eW = jSONObject2.optString("app_log_url");
                        }
                        if ("click".equals(str3)) {
                            HL.tB(cYVar);
                            float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - cY.ZYk(jSONObject.optString("log_extra"))).floatValue();
                            JSONObject jSONObject3 = jSONObject;
                            if (floatValue <= 0.0f) {
                                floatValue = 0.0f;
                            }
                            jSONObject3.putOpt("show_time", Float.valueOf(floatValue));
                            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.BTZ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ()))) {
                                if (z10 && optInt == 2) {
                                    JSONArray optJSONArray2 = jSONObject2.optJSONArray("click_tracking_url");
                                    if (optJSONArray2 != null) {
                                        ArrayList arrayList = new ArrayList();
                                        while (i10 < optJSONArray2.length()) {
                                            arrayList.add(optJSONArray2.optString(i10));
                                            i10++;
                                        }
                                        com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(com.bytedance.sdk.openadsdk.jr.oJ.oJ(arrayList, true), 2, String.valueOf(j10));
                                    }
                                } else {
                                    cY cYVar2 = cYVar;
                                    if (cYVar2 != null) {
                                        com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(com.bytedance.sdk.openadsdk.jr.oJ.oJ(cYVar2.LE(), true), 2, cYVar.edj());
                                    }
                                }
                            }
                        } else if ("show".equals(str3) && !TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.BTZ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ())) && z10 && optInt == 2 && (optJSONArray = jSONObject2.optJSONArray("show_tracking_url")) != null) {
                            ArrayList arrayList2 = new ArrayList();
                            while (i10 < optJSONArray.length()) {
                                arrayList2.add(optJSONArray.optString(i10));
                                i10++;
                            }
                            com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(com.bytedance.sdk.openadsdk.jr.oJ.oJ(arrayList2, true), 1, String.valueOf(j10));
                        }
                    } catch (Exception unused2) {
                    }
                }
                new oJ.C0233oJ(currentTimeMillis, cYVar).ex(str).ZYk(str2).tB(str3).Pfn(String.valueOf(j10)).ba(String.valueOf(j11)).oJ(eW).oJ(jSONObject).so(cYVar.cdg()).cFZ(cYVar.iPr()).oJ((com.bytedance.sdk.openadsdk.ex.ZYk.oJ) null);
            }
        });
    }

    public static void oJ(cY cYVar, String str, final long j10, final JSONObject jSONObject) {
        oJ(System.currentTimeMillis(), cYVar, "open_ad", str, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.40
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    long j11 = j10;
                    if (j11 != -1) {
                        jSONObject2.put("duration", j11);
                    }
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    } else {
                        jSONObject2.put("ad_extra_data", new JSONObject().toString());
                    }
                } catch (Exception e10) {
                    QSm.tB("TTAD.AdEvent", e10.getMessage());
                }
                return jSONObject2;
            }
        });
    }

    public static void oJ(final com.bytedance.sdk.component.so.so soVar) {
        if (soVar == null) {
            return;
        }
        if (ofl.ba()) {
            com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.tB.41
                @Override // java.lang.Runnable
                public void run() {
                    ofl.ZYk(com.bytedance.sdk.component.so.so.this, 10);
                }
            });
        } else if (!ofl.cFZ()) {
            ofl.ZYk(soVar, 10);
        } else {
            soVar.run();
        }
    }

    public static void oJ(final com.bytedance.sdk.openadsdk.awB.oJ.ZYk zYk) {
        if (zYk == null || zYk.ZYk() == null) {
            return;
        }
        final cY ZYk = zYk.ZYk();
        final int sQ = ZYk.sQ();
        if (sQ == 2 || sQ == 8 || (HyG.ex(ZYk) && ZYk.oJ.ex.equals(zYk.oJ()))) {
            oJ(System.currentTimeMillis(), ZYk, zYk.tB(), "open_browser", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.42
                @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                public JSONObject oJ() {
                    JSONArray optJSONArray;
                    JSONObject jSONObject = new JSONObject();
                    try {
                        int ex = com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.ex();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(MetricsSQLiteCacheKt.METRICS_COUNT, HyG.kkU(com.bytedance.sdk.openadsdk.core.si.oJ()));
                        jSONObject2.put("interceptor", ex);
                        jSONObject2.put("success", com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.Pfn());
                        jSONObject2.put("link", com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.oJ());
                        jSONObject2.put("interaction_type", sQ);
                        jSONObject2.put("real_interaction_type", com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.cFZ());
                        if (com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.ex() == 9) {
                            jSONObject2.put("is_act_signals_api_available", com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.so());
                            jSONObject2.put("is_act_signals_callback", com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.jFA());
                        }
                        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.ba())) {
                            jSONObject2.put("exception_msg", com.bytedance.sdk.openadsdk.awB.oJ.ZYk.this.ba());
                        }
                        if (ex == 2 || ex == 5) {
                            String FjF = ZYk.FjF();
                            if (!TextUtils.isEmpty(FjF) && (optJSONArray = new JSONObject(FjF).optJSONArray("creatives")) != null && optJSONArray.length() > 0) {
                                jSONObject2.put(Constants.REFERRER_API_META, optJSONArray.optJSONObject(ZYk.ZYk()));
                            }
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Throwable th2) {
                        QSm.tB("TTAD.AdEvent", th2.getMessage());
                    }
                    return jSONObject;
                }
            });
        }
    }

    public static void oJ(JSONObject jSONObject, int i10, int i11) {
        try {
            jSONObject.put("skip_show_time", i10);
            jSONObject.put("skip_time", i11);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("skip_after_time", i11 - (i10 * 1000));
            jSONObject.put("pag_json_data", jSONObject2.toString());
        } catch (JSONException unused) {
        }
    }

    public static void oJ(cY cYVar, String str, int i10, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("type", i10);
        } catch (JSONException unused) {
        }
        ZYk(cYVar, str, "open_ad_land_page_links", jSONObject);
    }

    public static void oJ(cY cYVar, String str, final boolean z10, final boolean z11, final boolean z12, final boolean z13, final int i10, final Map<String, Object> map) {
        oJ(System.currentTimeMillis(), cYVar, str, "start_show_plb", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.43
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("isSkip", z10);
                    jSONObject2.put("force", z11);
                    jSONObject2.put("isFromLandingPage", z12);
                    jSONObject2.put("finishing", z13);
                    jSONObject2.put("from", i10);
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(final cY cYVar, final boolean z10, String str, final String str2, final long j10, final String str3, final String str4, final int i10, final String str5) {
        oJ(System.currentTimeMillis(), cYVar, str, "load_ugen_template", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.tB.45
            /* JADX WARN: Can't wrap try/catch for region: R(12:1|(1:(2:2|3))|(2:5|(11:7|(9:42|11|(1:(1:(1:17))(2:29|(1:31)))(2:32|(2:34|(1:36))(2:37|(1:39)))|18|(1:20)|21|22|23|24)|10|11|(0)(0)|18|(0)|21|22|23|24)(11:43|(9:45|11|(0)(0)|18|(0)|21|22|23|24)|10|11|(0)(0)|18|(0)|21|22|23|24))(11:46|(9:48|11|(0)(0)|18|(0)|21|22|23|24)|10|11|(0)(0)|18|(0)|21|22|23|24)|49|50|51|52|53|22|23|24|(1:(1:54))) */
            /* JADX WARN: Removed duplicated region for block: B:24:0x004f  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0091 A[Catch: all -> 0x002f, TryCatch #2 {all -> 0x002f, blocks: (B:3:0x000e, B:27:0x0055, B:29:0x005d, B:41:0x00d0, B:43:0x00ef, B:44:0x00f9, B:30:0x0073, B:32:0x007b, B:33:0x0091, B:35:0x0095, B:37:0x009d, B:38:0x00b3, B:40:0x00bb, B:10:0x0025, B:15:0x0032, B:18:0x003c), top: B:56:0x000e }] */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00ef A[Catch: all -> 0x002f, TryCatch #2 {all -> 0x002f, blocks: (B:3:0x000e, B:27:0x0055, B:29:0x005d, B:41:0x00d0, B:43:0x00ef, B:44:0x00f9, B:30:0x0073, B:32:0x007b, B:33:0x0091, B:35:0x0095, B:37:0x009d, B:38:0x00b3, B:40:0x00bb, B:10:0x0025, B:15:0x0032, B:18:0x003c), top: B:56:0x000e }] */
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.json.JSONObject oJ() {
                /*
                    Method dump skipped, instructions count: 293
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.ex.tB.AnonymousClass45.oJ():org.json.JSONObject");
            }
        });
    }

    private static boolean oJ(int i10, String str) {
        int HL;
        try {
            Set<String> oG = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oG();
            if ((i10 == 1 && oG != null && oG.contains(str)) || (HL = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().HL(str)) == 0) {
                return true;
            }
            if (HL != 100) {
                return ((int) ((Math.random() * 100.0d) + 1.0d)) > HL;
            }
            return false;
        } catch (Throwable th2) {
            QSm.tB("TTAD.AdEvent", th2.getMessage());
            return false;
        }
    }

    public static void oJ(int i10, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_show_order", i10);
            jSONObject.put("pag_json_data", jSONObject2.toString());
        } catch (Throwable unused) {
        }
    }
}
