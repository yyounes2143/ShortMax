package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.out.Campaign;
import com.vungle.ads.internal.ui.AdActivity;
import java.net.URLEncoder;
import org.json.JSONObject;
/* compiled from: ReportController.java */
/* loaded from: classes5.dex */
public class h {

    /* renamed from: b  reason: collision with root package name */
    public static final String f27254b = "h";

    /* renamed from: a  reason: collision with root package name */
    private final Context f27255a;

    public h(Context context, int i10) {
        this.f27255a = context;
    }

    public void a(String str, com.mbridge.msdk.foundation.entity.e eVar, String str2) {
        JSONObject a10 = com.mbridge.msdk.foundation.entity.e.a(eVar);
        if (a10 != null) {
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(a10);
        }
    }

    public void b(String str, String str2, String str3, String str4, String str5, boolean z10) {
        try {
            if (!TextUtils.isEmpty(str5)) {
                JSONObject jSONObject = new JSONObject();
                if (z10) {
                    jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
                }
                jSONObject.put("key", URLEncoder.encode("2000066", "utf-8"));
                jSONObject.put("rid", URLEncoder.encode(str, "utf-8"));
                jSONObject.put("rid_n", URLEncoder.encode(str2, "utf-8"));
                jSONObject.put(BidResponsedEx.KEY_CID, URLEncoder.encode(str3, "utf-8"));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str4, "utf-8"));
                jSONObject.put("err_method", str5);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            }
        } catch (Exception e10) {
            p0.b(f27254b, e10.getMessage());
        }
    }

    public h(Context context) {
        this.f27255a = context.getApplicationContext();
    }

    public void a(int i10, int i11, String str, String str2, String str3) {
        i.a(this.f27255a, i10, i11, str, str2, str3);
    }

    public void a(String str, String str2, String str3, String str4, String str5, boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (z10) {
                jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
            }
            jSONObject.put("key", URLEncoder.encode("2000065", "utf-8"));
            jSONObject.put("rid", URLEncoder.encode(str, "utf-8"));
            jSONObject.put("rid_n", URLEncoder.encode(str2, "utf-8"));
            jSONObject.put(BidResponsedEx.KEY_CID, URLEncoder.encode(str3, "utf-8"));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str4, "utf-8"));
            jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, URLEncoder.encode(str5, "utf-8"));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e10) {
            p0.b(f27254b, e10.getMessage());
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        try {
            int s10 = l0.s(this.f27255a);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", URLEncoder.encode("2000071", "utf-8"));
            jSONObject.put("rid", URLEncoder.encode(str, "utf-8"));
            jSONObject.put("rid_n", URLEncoder.encode(str2, "utf-8"));
            jSONObject.put(BidResponsedEx.KEY_CID, URLEncoder.encode(str3, "utf-8"));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str4, "utf-8"));
            jSONObject.put("reason", URLEncoder.encode(str5, "utf-8"));
            jSONObject.put("network_type", URLEncoder.encode(String.valueOf(s10), "utf-8"));
            jSONObject.put("result", URLEncoder.encode(MBridgeConstans.ENDCARD_URL_TYPE_PL, "utf-8"));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e10) {
            p0.b(f27254b, e10.getMessage());
        }
    }

    public void a() {
        try {
            if (j.a()) {
                String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
                com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(b10);
                if (d10 == null) {
                    d10 = com.mbridge.msdk.setting.h.b().a();
                }
                String d11 = com.mbridge.msdk.foundation.tools.f.d();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000053");
                jSONObject.put("Appid", b10);
                jSONObject.put("uptips2", d10.r0());
                jSONObject.put("info_status", com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().g());
                jSONObject.put("iseu", d10.F());
                if (!TextUtils.isEmpty(d11)) {
                    jSONObject.put("gaid", d11);
                }
                jSONObject.put("GDPR_area", d10.E0());
                jSONObject.put("GDPR_consent", com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().e());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                j.c();
            }
        } catch (Throwable th2) {
            p0.b(f27254b, th2.getMessage());
        }
    }

    public void a(int i10, String str) {
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a(j.a((Campaign) null, i10, AdActivity.REQUEST_KEY_EXTRA));
    }

    public void a(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("click_type", "1");
            jSONObject.put(BidResponsedEx.KEY_CID, str);
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            jSONObject.put("key", "2000027");
            jSONObject.put("http_url", str3);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e10) {
            p0.b(f27254b, e10.getMessage());
        }
    }
}
