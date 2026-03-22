package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.text.TextUtils;
import com.inmobi.sdk.InMobiSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.s0;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: CommonRequestParamsForAdd.java */
/* loaded from: classes5.dex */
public class f {
    public static void a(e eVar, Context context) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            eVar.a("withGP", l0.C() + "");
            eVar.a("has_wx", l0.D(context) + "");
            eVar.a("integrated_wx", l0.D() + "");
            eVar.a("opensdk_ver", l0.B() + "");
            eVar.a("wx_api_ver", l0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
            eVar.a("mnc", l0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
            eVar.a("mcc", l0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
            String j10 = l0.j();
            if (!TextUtils.isEmpty(j10)) {
                eVar.a("hardware", j10);
            }
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().d() == 1) {
                eVar.a("dnt", "1");
            }
            String str = e.f27189f;
            eVar.a(str, com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c() + "");
            eVar.a("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
            eVar.a("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            String str2 = e.f27187d;
            eVar.a(str2, s0.c() + "");
            String str3 = e.f27188e;
            eVar.a(str3, s0.a() + "");
            eVar.a(e.f27193j, l0.u());
        }
        eVar.a("pkg_source", l0.a(l0.t(context), context));
        if (com.mbridge.msdk.foundation.controller.c.m().j() != null) {
            eVar.a("web_env", com.mbridge.msdk.foundation.controller.c.m().j().toString());
        }
        eVar.a("http_req", "2");
        g.a(eVar, context);
        g(eVar);
    }

    public static void b(e eVar) {
        eVar.a("api_version", com.mbridge.msdk.foundation.same.a.f27022d);
    }

    public static void c(e eVar) {
        String str = com.mbridge.msdk.util.c.f30463b;
        if (!TextUtils.isEmpty(str)) {
            eVar.a("cronet_env", str);
        }
    }

    public static void d(e eVar) {
        eVar.a("dyview_type", com.mbridge.msdk.foundation.same.a.f27041w);
    }

    public static void e(e eVar) {
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = com.mbridge.msdk.setting.h.b().a();
        }
        if (d10.D() == 1) {
            eVar.a(InMobiSdk.IM_GDPR_CONSENT_IAB, com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().e() + "");
        } else if (d10.E0()) {
            eVar.a(InMobiSdk.IM_GDPR_CONSENT_IAB, com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().e() + "");
        }
        String f10 = com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().f();
        if (!TextUtils.isEmpty(f10)) {
            eVar.a("tc_string", f10);
        }
    }

    public static void f(e eVar) {
        try {
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                eVar.a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                com.mbridge.msdk.foundation.same.a.f27025g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                eVar.a("c", com.mbridge.msdk.foundation.same.a.f27025g);
            }
        } catch (Exception e10) {
            p0.b("CommonRequestParamsForAdd", e10.getMessage());
        }
    }

    public static void g(e eVar) {
        a(eVar, true);
        i(eVar);
        f(eVar);
        e(eVar);
        a(eVar);
        c(eVar);
        g.a(eVar);
    }

    public static void h(e eVar) {
        String str;
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            eVar.a("withGP", l0.C() + "");
            eVar.a("has_wx", l0.D(com.mbridge.msdk.foundation.controller.c.m().d()) + "");
            eVar.a("integrated_wx", l0.D() + "");
            eVar.a("opensdk_ver", l0.B() + "");
            eVar.a("wx_api_ver", l0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
            eVar.a("mnc", l0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
            eVar.a("mcc", l0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
            String j10 = l0.j();
            if (!TextUtils.isEmpty(j10)) {
                eVar.a("hardware", j10);
            }
            eVar.a("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.j()) {
                str = "1";
            } else {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            eVar.a("adid_limit_dev", str);
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            eVar.a(e.f27193j, l0.u());
        }
        g.b(eVar);
        a(eVar, false);
        i(eVar);
        f(eVar);
        a(eVar);
        c(eVar);
    }

    public static void i(e eVar) {
        int A = l0.A();
        if (A != -1) {
            eVar.a("unknown_source", A + "");
        }
    }

    public static void j(e eVar) {
        if (l0.y() == 0) {
            return;
        }
        eVar.a("tun", l0.y() + "");
    }

    public static void k(e eVar) {
        if (eVar != null) {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                eVar.a("model");
                eVar.a("brand");
                eVar.a("screen_size");
                eVar.a("sub_ip");
                eVar.a("network_type");
                eVar.a("useragent");
                eVar.a("ua");
                eVar.a(MediaFormat.KEY_LANGUAGE);
                eVar.a("network_str");
                eVar.a(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION);
                eVar.a("country_code");
                eVar.a("cronet_env");
                eVar.a("adid_limit");
                eVar.a("adid_limit_dev");
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                eVar.a(e.f27187d);
                eVar.a(e.f27188e);
                eVar.a("power_rate");
                eVar.a("charging");
                eVar.a("timezone");
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                eVar.a("gaid");
                eVar.a("gaid2");
                eVar.a("az_aid_info");
            }
            g.c(eVar);
        }
    }

    public static void a(e eVar, boolean z10) {
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        Context d11 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d10 != null) {
            if (!TextUtils.isEmpty(d10.a()) && z10) {
                eVar.a("a_stid", d10.a());
            }
            try {
                g.a(eVar, d11, z10, d10);
            } catch (Exception e10) {
                p0.b("CommonRequestParamsForAdd", e10.getMessage());
            }
        }
    }

    public static void a(e eVar) {
        String b10 = com.mbridge.msdk.foundation.tools.f.b();
        if (TextUtils.isEmpty(b10)) {
            return;
        }
        eVar.a("az_aid_info", b10);
    }
}
