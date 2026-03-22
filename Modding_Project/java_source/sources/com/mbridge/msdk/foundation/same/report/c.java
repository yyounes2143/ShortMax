package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONObject;
/* compiled from: EventLibraryCommon.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27211a = "c";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventLibraryCommon.java */
    /* loaded from: classes5.dex */
    public class a implements com.mbridge.msdk.tracker.h {
        a() {
        }

        @Override // com.mbridge.msdk.tracker.h
        public JSONObject a(com.mbridge.msdk.tracker.e eVar) {
            String str = "";
            if (eVar == null) {
                return null;
            }
            JSONObject d10 = eVar.d();
            if (d10 == null) {
                d10 = new JSONObject();
            }
            try {
                d10.put("key", eVar.b());
                Context d11 = com.mbridge.msdk.foundation.controller.c.m().d();
                int s10 = l0.s(d11);
                if (!d10.has("network_type")) {
                    d10.put("network_type", s10);
                    d10.put("network_str", l0.a(d11, s10));
                }
                if (!d10.has("st")) {
                    d10.put("st", System.currentTimeMillis());
                }
                String optString = d10.optString(MBridgeConstans.PROPERTIES_UNIT_ID, "");
                if (!TextUtils.isEmpty(optString)) {
                    String str2 = com.mbridge.msdk.foundation.controller.a.f26683r.get(optString);
                    if (str2 != null) {
                        str = str2;
                    }
                    d10.put("u_stid", str);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && !d10.has(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                    d10.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g) && !d10.has(c.f27211a)) {
                    d10.put(c.f27211a, com.mbridge.msdk.foundation.same.a.f27025g);
                }
            } catch (Exception e10) {
                p0.b(c.f27211a, e10.getMessage());
            }
            return d10;
        }
    }

    public static JSONObject b() {
        return com.mbridge.msdk.foundation.same.report.a.a();
    }

    public static com.mbridge.msdk.tracker.f c() {
        return new com.mbridge.msdk.tracker.n();
    }

    public static com.mbridge.msdk.tracker.h d() {
        return new a();
    }

    public static boolean a(String str) {
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            return true;
        }
        return b.a(d10, str);
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            jSONObject.remove("model");
            jSONObject.remove("brand");
            jSONObject.remove("screen_size");
            jSONObject.remove("sub_ip");
            jSONObject.remove("network_type");
            jSONObject.remove("useragent");
            jSONObject.remove("ua");
            jSONObject.remove(MediaFormat.KEY_LANGUAGE);
            jSONObject.remove("network_str");
            jSONObject.remove("mnc");
            jSONObject.remove("mcc");
            jSONObject.remove(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION);
            jSONObject.remove("gp_version");
            jSONObject.remove("country_code");
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            jSONObject.remove(com.mbridge.msdk.foundation.same.net.wrapper.e.f27187d);
            jSONObject.remove(com.mbridge.msdk.foundation.same.net.wrapper.e.f27188e);
            jSONObject.remove("power_rate");
            jSONObject.remove("charging");
            jSONObject.remove("timezone");
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return;
        }
        jSONObject.remove("gaid");
        jSONObject.remove("gaid2");
        jSONObject.remove("oaid");
        jSONObject.remove("az_aid_info");
    }
}
