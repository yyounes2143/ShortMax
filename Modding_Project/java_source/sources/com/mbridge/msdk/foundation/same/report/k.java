package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.l0;
import org.json.JSONObject;
/* compiled from: ReportUtilDiff.java */
/* loaded from: classes5.dex */
public class k {
    public static void a(com.mbridge.msdk.foundation.same.net.wrapper.e eVar, Context context) {
    }

    public static JSONObject a(Context context, com.mbridge.msdk.setting.g gVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            String p10 = l0.p();
            if (!TextUtils.isEmpty(p10)) {
                jSONObject.put("manufacturer", p10);
            }
            int m10 = l0.m();
            if (m10 != -1) {
                jSONObject.put("sdkint", m10);
            }
            String x10 = l0.x(context);
            if (!TextUtils.isEmpty(x10)) {
                jSONObject.put("is24H", x10);
            }
            String x11 = l0.x();
            if (!TextUtils.isEmpty(x11)) {
                jSONObject.put("totalram", x11);
            }
            String y10 = l0.y(context);
            if (!TextUtils.isEmpty(y10)) {
                jSONObject.put("totalmemory", y10);
            }
            jSONObject.put("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
            jSONObject.put("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        if (gVar.s0() == 1 && !TextUtils.isEmpty(com.mbridge.msdk.foundation.tools.f.e()) && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            jSONObject.put("az_aid_info", com.mbridge.msdk.foundation.tools.f.e());
        }
        return jSONObject;
    }
}
