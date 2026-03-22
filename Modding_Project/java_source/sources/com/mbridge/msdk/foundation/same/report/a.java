package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.net.Aa;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CommonDeviceInfo.java */
/* loaded from: classes5.dex */
public class a {
    public static JSONObject a() {
        JSONObject jSONObject;
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        try {
            jSONObject = j.a(d10).c();
        } catch (Exception e10) {
            p0.b("CommonDeviceInfo", "getCommonProperty error", e10);
            jSONObject = null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                com.mbridge.msdk.foundation.same.a.f27025g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f27025g);
            }
            jSONObject.put(MRAIDPresenter.OPEN, com.mbridge.msdk.foundation.same.a.S);
            String a10 = Aa.a();
            if (a10 == null) {
                a10 = "";
            }
            jSONObject.put(AppsFlyerProperties.CHANNEL, a10);
            jSONObject.put("band_width", com.mbridge.msdk.foundation.same.net.a.b().a());
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                jSONObject.put("dev_source", "2");
            }
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
            com.mbridge.msdk.setting.g d11 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d11 == null) {
                d11 = com.mbridge.msdk.setting.h.b().a();
            }
            JSONObject a11 = a(d11);
            if (a11 != null) {
                String jSONObject2 = a11.toString();
                if (!TextUtils.isEmpty(jSONObject2)) {
                    String b10 = j0.b(jSONObject2);
                    if (!TextUtils.isEmpty(b10)) {
                        jSONObject.put("dvi", b10);
                    }
                }
            }
            jSONObject.put("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
            jSONObject.put("m_sdk", "msdk");
            jSONObject.put("lqswt", String.valueOf(1));
            jSONObject.put("network_available", String.valueOf(u0.m(d10)));
            String str = GrsBaseInfo.CountryCodeSource.UNKNOWN;
            if (d11 != null) {
                str = d11.k();
                jSONObject.put("a_stid", d11.a());
            }
            jSONObject.put("country_code", str);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static JSONObject a(com.mbridge.msdk.setting.g gVar) {
        try {
            return j.a(com.mbridge.msdk.foundation.controller.c.m().d(), gVar);
        } catch (Exception unused) {
            return null;
        }
    }
}
