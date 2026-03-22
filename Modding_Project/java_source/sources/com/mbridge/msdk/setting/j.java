package com.mbridge.msdk.setting;

import android.content.Context;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.f0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.vungle.ads.internal.signals.SignalManager;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SettingRequestController.java */
/* loaded from: classes6.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f29021a = "j";

    /* compiled from: SettingRequestController.java */
    /* loaded from: classes6.dex */
    class a extends com.mbridge.msdk.foundation.same.net.wrapper.d {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            if (jSONObject == null || !jSONObject.has(com.mbridge.msdk.foundation.entity.b.JSON_KEY_C_I)) {
                return;
            }
            try {
                f0.a().a(jSONObject.getString(com.mbridge.msdk.foundation.entity.b.JSON_KEY_C_I));
            } catch (Exception e10) {
                p0.b(j.f29021a, e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingRequestController.java */
    /* loaded from: classes6.dex */
    public class c extends com.mbridge.msdk.foundation.same.net.handler.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f29027b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f29028c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f29029d;

        c(Context context, String str, String str2) {
            this.f29027b = context;
            this.f29028c = str;
            this.f29029d = str2;
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void a(String str) {
            com.mbridge.msdk.foundation.same.net.utils.d.h().f27175r = false;
            String str2 = j.f29021a;
            p0.a(str2, "fetch CNDSettingHost failed, errorCode = " + str);
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void b(String str) {
            String[] split;
            p0.a(j.f29021a, "fetch CNDSettingHost success, content = " + str);
            if (!TextUtils.isEmpty(str)) {
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("mkey_spare_host_ts", System.currentTimeMillis());
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("mkey_spare_host", str);
                for (String str2 : str.split("\n")) {
                    if (!TextUtils.isEmpty(str2.trim()) && !com.mbridge.msdk.foundation.same.net.utils.d.h().f27178u.contains(str2.trim())) {
                        com.mbridge.msdk.foundation.same.net.utils.d.h().f27178u.add(str2.trim());
                        com.mbridge.msdk.foundation.same.net.utils.d.h().f27181x.add(str2.trim());
                    }
                }
                j.this.a(this.f29027b, this.f29028c, this.f29029d);
            }
        }
    }

    private String b() {
        String str = com.mbridge.msdk.foundation.same.net.utils.d.h().f27176s ? com.mbridge.msdk.foundation.same.net.utils.d.h().R : com.mbridge.msdk.foundation.same.net.utils.d.h().Q;
        try {
            if (com.mbridge.msdk.foundation.same.net.utils.d.h().f27176s && com.mbridge.msdk.foundation.same.net.utils.d.h().f27175r && com.mbridge.msdk.foundation.same.net.utils.d.h().f27180w < com.mbridge.msdk.foundation.same.net.utils.d.h().f27181x.size()) {
                String str2 = com.mbridge.msdk.foundation.same.net.utils.d.h().f27181x.get(com.mbridge.msdk.foundation.same.net.utils.d.h().f27180w);
                if (TextUtils.isEmpty(str2)) {
                    return str;
                }
                if (!str2.startsWith(ProxyConfig.MATCH_HTTP) && !str2.startsWith("https")) {
                    return str;
                }
                return str2 + "/setting";
            }
            return str;
        } catch (Throwable th2) {
            p0.b(f29021a, th2.getMessage());
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a();
        } catch (Throwable th2) {
            p0.b(f29021a, th2.getMessage());
        }
    }

    public void d(Context context, String str, String str2) {
        String[] split;
        try {
            if (com.mbridge.msdk.foundation.same.net.utils.d.h().f27175r) {
                return;
            }
            com.mbridge.msdk.foundation.same.net.utils.d.h().f27175r = true;
            if (System.currentTimeMillis() >= com.mbridge.msdk.foundation.buffer.sharedperference.a.b().b("mkey_spare_host_ts").longValue() + SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                String a10 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("mkey_spare_host");
                if (!TextUtils.isEmpty(a10)) {
                    for (String str3 : a10.split("\n")) {
                        if (!TextUtils.isEmpty(str3.trim()) && !com.mbridge.msdk.foundation.same.net.utils.d.h().f27178u.contains(str3.trim())) {
                            com.mbridge.msdk.foundation.same.net.utils.d.h().f27178u.add(str3.trim());
                            com.mbridge.msdk.foundation.same.net.utils.d.h().f27181x.add(str3.trim());
                        }
                    }
                    a(context, str, str2);
                    return;
                }
            }
            new com.mbridge.msdk.foundation.same.net.wrapper.c(context.getApplicationContext()).get(0, com.mbridge.msdk.foundation.same.net.utils.d.h().f27156c, new com.mbridge.msdk.foundation.same.net.wrapper.e(), new c(context, str, str2), "setting", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        } catch (Throwable th2) {
            com.mbridge.msdk.foundation.same.net.utils.d.h().f27175r = false;
            p0.b(f29021a, th2.getMessage());
        }
    }

    public void c(Context context, String str, String str2) {
        a(context, str, str2, "1", new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2) {
        if (!com.mbridge.msdk.foundation.same.net.utils.d.h().g()) {
            d(context, str, str2);
        } else {
            b(context, str, str2);
        }
    }

    public void a(Context context, String str, String str2, String str3, com.mbridge.msdk.foundation.same.net.wrapper.d dVar) {
        if (context == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        eVar.a("app_id", str);
        eVar.a("sign", SameMD5.getMD5(str + str2));
        try {
            String v02 = h.b().b(str).v0();
            if (TextUtils.isEmpty(v02)) {
                v02 = "";
            }
            eVar.a("vtag", v02);
        } catch (Throwable th2) {
            p0.b(f29021a, th2.getMessage());
        }
        if (com.mbridge.msdk.foundation.same.net.utils.d.h().f27175r) {
            eVar.a("st_net", com.mbridge.msdk.foundation.same.net.utils.d.h().f27177t + "");
        }
        eVar.a("only_p_info", str3);
        com.mbridge.msdk.setting.net.c cVar = new com.mbridge.msdk.setting.net.c(context);
        String str4 = com.mbridge.msdk.foundation.same.net.utils.d.h().Q;
        try {
            if (com.mbridge.msdk.foundation.same.net.utils.d.h().f27176s && com.mbridge.msdk.foundation.same.net.utils.d.h().f27175r && com.mbridge.msdk.foundation.same.net.utils.d.h().f27180w < com.mbridge.msdk.foundation.same.net.utils.d.h().f27181x.size()) {
                String str5 = com.mbridge.msdk.foundation.same.net.utils.d.h().f27181x.get(com.mbridge.msdk.foundation.same.net.utils.d.h().f27180w);
                if (!TextUtils.isEmpty(str5)) {
                    if (!str5.startsWith(ProxyConfig.MATCH_HTTP)) {
                        if (str5.startsWith("https")) {
                        }
                    }
                    str4 = str5 + "/setting";
                }
            }
        } catch (Throwable th3) {
            p0.b(f29021a, th3.getMessage());
        }
        cVar.get(1, str4, eVar, dVar, "setting", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public void b(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        a(context, str, str2, MBridgeConstans.ENDCARD_URL_TYPE_PL, new b(str, context, str2));
        a(3, 0, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingRequestController.java */
    /* loaded from: classes6.dex */
    public class d extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29031b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f29032c;

        d(String str, String str2) {
            this.f29031b = str;
            this.f29032c = str2;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                if (u0.a(jSONObject)) {
                    String optString = jSONObject.optString("vtag", "");
                    String optString2 = jSONObject.optString("rid", "");
                    JSONArray optJSONArray = jSONObject.optJSONArray("unitSetting");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(0);
                        if (jSONObject.optInt("vtag_status", 0) == 1) {
                            String f10 = h.b().f(this.f29031b, this.f29032c);
                            if (!TextUtils.isEmpty(f10)) {
                                try {
                                    optJSONObject = h.b().a(new JSONObject(f10), optJSONObject);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                        optJSONObject.put("current_time", System.currentTimeMillis());
                        optJSONObject.put("vtag", optString);
                        optJSONObject.put("rid", optString2);
                        h.b().a(this.f29031b, this.f29032c, optJSONObject.toString());
                    }
                } else {
                    h.b().j(this.f29031b, this.f29032c);
                }
                j.this.a(1, 1, "");
            } catch (Exception e11) {
                p0.b(j.f29021a, e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            j.this.a(2, 1, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingRequestController.java */
    /* loaded from: classes6.dex */
    public class b extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29023b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f29024c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f29025d;

        b(String str, Context context, String str2) {
            this.f29023b = str;
            this.f29024c = context;
            this.f29025d = str2;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                j.this.a(1, 0, "");
            } catch (Throwable th2) {
                p0.b(j.f29021a, th2.getMessage());
            }
            try {
                if (u0.a(jSONObject)) {
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String e10 = h.b().e(this.f29023b);
                        if (!TextUtils.isEmpty(e10)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(e10), jSONObject);
                            } catch (Exception e11) {
                                p0.b(j.f29021a, e11.getMessage());
                            }
                        }
                    }
                    k.a(jSONObject);
                    jSONObject.put("current_time", System.currentTimeMillis());
                    if (com.mbridge.msdk.foundation.same.net.utils.d.h().f27176s) {
                        if (TextUtils.isEmpty(jSONObject.optString("hst_st_t"))) {
                            jSONObject.put("hst_st_t", com.mbridge.msdk.foundation.same.net.utils.d.h().f27170m);
                        }
                    } else if (TextUtils.isEmpty(jSONObject.optString("hst_st"))) {
                        jSONObject.put("hst_st", com.mbridge.msdk.foundation.same.net.utils.d.h().f27166i);
                    }
                    h.b().h(this.f29023b, jSONObject.toString());
                    com.mbridge.msdk.foundation.same.net.utils.d.h().j();
                    k.a();
                    try {
                        if (!TextUtils.isEmpty(jSONObject.optString("mraid_js"))) {
                            com.mbridge.msdk.setting.util.a.a().a(this.f29024c, jSONObject.optString("mraid_js"));
                        }
                    } catch (Exception e12) {
                        p0.b(j.f29021a, e12.getMessage());
                    }
                    if (!TextUtils.isEmpty(jSONObject.optString("web_env_url"))) {
                        com.mbridge.msdk.setting.util.b.c().a(this.f29024c, jSONObject.optString("web_env_url"));
                    }
                    j.this.a(this.f29024c, this.f29023b);
                } else {
                    h.b().h(this.f29023b);
                }
                j.this.c();
            } catch (Exception e13) {
                p0.b(j.f29021a, e13.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            try {
                j.this.a(2, 0, str);
            } catch (Throwable th2) {
                p0.b(j.f29021a, th2.getMessage());
            }
            if (!com.mbridge.msdk.foundation.same.net.utils.d.h().f27176s) {
                com.mbridge.msdk.foundation.same.net.utils.d.h().f27179v++;
            } else {
                com.mbridge.msdk.foundation.same.net.utils.d.h().f27180w++;
            }
            j.this.a(this.f29024c, this.f29023b, this.f29025d);
            j.this.c();
            p0.b(j.f29021a, "get app setting error" + str);
        }
    }

    public void a(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str = com.mbridge.msdk.foundation.controller.c.m().b();
            str2 = com.mbridge.msdk.foundation.controller.c.m().c();
        }
        if (h.b().g(str3, str) && h.b().a(str, 2, str3)) {
            com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
            String str4 = "[" + str3 + "]";
            eVar.a("unit_ids", str4);
            eVar.a("app_id", str);
            eVar.a("sign", SameMD5.getMD5(str + str2));
            try {
                String J = h.b().d(str, str4).J();
                if (TextUtils.isEmpty(J)) {
                    J = "";
                }
                eVar.a("vtag", J);
            } catch (Throwable th2) {
                p0.b(f29021a, th2.getMessage());
            }
            d dVar = new d(str, str3);
            dVar.setUnitId(str3);
            new com.mbridge.msdk.setting.net.c(context).get(1, com.mbridge.msdk.foundation.same.net.utils.d.h().Q, eVar, dVar, "setting", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
            a(3, 1, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str) {
        g d10;
        h b10 = h.b();
        if (b10 != null && (d10 = b10.d(str)) != null) {
            MBridgeConstans.OMID_JS_SERVICE_URL = d10.U();
            MBridgeConstans.OMID_JS_H5_URL = d10.T();
        }
        com.mbridge.msdk.omsdk.b.b(context);
        com.mbridge.msdk.omsdk.b.c(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, int i11, String str) {
        String str2;
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("key", "2000112");
            eVar.a("st_net", Integer.valueOf(com.mbridge.msdk.foundation.same.net.utils.d.h().f27177t));
            eVar.a("result", Integer.valueOf(i10));
            eVar.a("type", Integer.valueOf(i11));
            if (i11 == 0) {
                str2 = b();
            } else {
                str2 = com.mbridge.msdk.foundation.same.net.utils.d.h().f27176s ? com.mbridge.msdk.foundation.same.net.utils.d.h().R : com.mbridge.msdk.foundation.same.net.utils.d.h().Q;
            }
            eVar.a("url", str2);
            eVar.a("reason", str);
            cVar.a("2000112", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000112", cVar);
        } catch (Throwable th2) {
            p0.b(f29021a, th2.getMessage());
        }
    }
}
