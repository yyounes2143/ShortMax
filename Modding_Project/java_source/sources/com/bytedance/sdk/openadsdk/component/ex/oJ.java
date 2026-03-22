package com.bytedance.sdk.openadsdk.component.ex;

import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.awB.ZYk;
import com.bytedance.sdk.openadsdk.awB.oJ.ex;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.nke;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.wd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    public static void ZYk(cY cYVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("openad_creative_type", cY.Pfn(cYVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException e10) {
            QSm.oJ("TTAppOpenAdReport", "reportCacheLoss json error", e10);
        }
        tB.ex(cYVar, "cache_loss", jSONObject);
    }

    public static void oJ(final int i10, final int i11) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("openad_load_ad_timeout", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.component.ex.oJ.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout_type", i10);
                jSONObject.put("user_timeout_time", i11);
                return ex.ZYk().oJ("openad_load_ad_timeout").ZYk(jSONObject.toString());
            }
        });
    }

    public static void oJ(cY cYVar, int i10, int i11, float f10) {
        JSONObject jSONObject = new JSONObject();
        try {
            oJ(jSONObject, cYVar);
            jSONObject.put("openad_creative_type", cY.Pfn(cYVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("total_time", f10);
            tB.oJ(jSONObject, i11, i10);
        } catch (JSONException e10) {
            QSm.oJ("TTAppOpenAdReport", "reportSkip json error", e10);
        }
        tB.oJ(cYVar, "skip", i10, jSONObject);
    }

    public static void ZYk(cY cYVar, long j10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("size", cYVar.ib().Pfn());
            jSONObject.put("video_duration", cYVar.ib().ba());
            jSONObject.put("order", z10 ? 1 : 2);
        } catch (JSONException unused) {
        }
        tB.oJ(cYVar, "download_video_duration", j10, jSONObject);
    }

    public static void oJ(cY cYVar, long j10, float f10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            oJ(jSONObject, cYVar);
            jSONObject.put("openad_creative_type", cY.Pfn(cYVar) ? "video_normal_ad" : "image_normal_ad");
            if (z10) {
                double d10 = f10;
                jSONObject.put("video_duration", d10);
                jSONObject.put("video_percent", (int) (((j10 * 1.0d) / 10.0d) / d10));
            } else {
                jSONObject.put("image_duration", f10);
            }
        } catch (JSONException e10) {
            QSm.oJ("TTAppOpenAdReport", "reportDestroy json error", e10);
        }
        tB.ex(cYVar, "destroy", jSONObject);
    }

    public static void oJ(cY cYVar) {
        tB.ex(cYVar, "cache_expire", (JSONObject) null);
    }

    public static void oJ(cY cYVar, long j10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("order", z10 ? 1 : 2);
        } catch (JSONException unused) {
        }
        tB.oJ(cYVar, "download_image_duration", j10, jSONObject);
    }

    public static void oJ(cY cYVar, int i10, nke nkeVar) {
        JSONObject jSONObject = new JSONObject();
        long j10 = 0;
        try {
            jSONObject.put("openad_creative_type", cY.Pfn(cYVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("open_ad_cache_type", i10);
            if (nkeVar != null) {
                nkeVar.ZYk(wd.ZYk());
                oJ(jSONObject, cYVar);
                jSONObject.put("client_start_time", nkeVar.ZYk());
                jSONObject.put("sever_time", nkeVar.ex());
                jSONObject.put("network_time", nkeVar.tB());
                jSONObject.put("client_end_time", nkeVar.Pfn());
                jSONObject.put("download_resource_duration", nkeVar.cFZ());
                jSONObject.put("resource_source", nkeVar.so());
                jSONObject.put("is_bidding", nkeVar.oJ ? 1 : 0);
                if (nkeVar.oJ) {
                    jSONObject.put("load_wait_time", nkeVar.ZYk);
                }
                j10 = nkeVar.ba();
            }
        } catch (JSONException e10) {
            QSm.oJ("TTAppOpenAdReport", "reportLoadNetDuration json error", e10);
        }
        tB.oJ(cYVar, "load_net_duration", j10, jSONObject);
    }

    public static void oJ(cY cYVar, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            oJ(jSONObject, cYVar);
            jSONObject.put("openad_creative_type", cY.Pfn(cYVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException unused) {
            QSm.tB("TTAppOpenAdReport", "reportLoadCacheDuration json error");
        }
        tB.oJ(cYVar, "load_cache_duration", j10, jSONObject);
    }

    private static void oJ(JSONObject jSONObject, cY cYVar) {
        int i10;
        if (cYVar != null) {
            try {
                if (cYVar.Xe()) {
                    i10 = 1;
                    jSONObject.put("is_icon_only", i10);
                }
            } catch (JSONException e10) {
                QSm.tB("TTAppOpenAdReport", e10.getMessage());
                return;
            }
        }
        i10 = 0;
        jSONObject.put("is_icon_only", i10);
    }
}
