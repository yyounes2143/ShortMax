package com.mbridge.msdk.videocommon.net;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.setting.h;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RewardSettingController.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f31662a = "com.mbridge.msdk.videocommon.net.a";

    public void a(Context context, String str, String str2) {
        e eVar = new e();
        eVar.a("app_id", str);
        eVar.a("sign", SameMD5.getMD5(str + str2));
        try {
            com.mbridge.msdk.videocommon.setting.a d10 = com.mbridge.msdk.videocommon.setting.b.b().d();
            if (d10 == null) {
                eVar.a("vtag", "");
            } else {
                String j10 = d10.j();
                if (TextUtils.isEmpty(j10)) {
                    j10 = "";
                }
                eVar.a("vtag", j10);
            }
        } catch (Throwable th2) {
            p0.b(f31662a, th2.getMessage());
        }
        new com.mbridge.msdk.videocommon.net.b(context).get(1, d.h().T, eVar, new C0458a(str), "setting", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        a(3, 2, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardSettingController.java */
    /* renamed from: com.mbridge.msdk.videocommon.net.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0458a extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31663b;

        C0458a(String str) {
            this.f31663b = str;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                if (u0.a(jSONObject)) {
                    com.mbridge.msdk.videocommon.setting.b.b().b(false);
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String d10 = com.mbridge.msdk.videocommon.setting.b.b().d(this.f31663b);
                        if (!TextUtils.isEmpty(d10)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(d10), jSONObject);
                            } catch (Exception e10) {
                                p0.b(a.f31662a, e10.getMessage());
                            }
                        }
                    }
                    try {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        com.mbridge.msdk.videocommon.setting.b.b().f(this.f31663b, jSONObject.toString());
                    } catch (JSONException e11) {
                        p0.b(a.f31662a, e11.getMessage());
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().f(this.f31663b);
                }
                a.this.a(1, 2, "");
            } catch (Throwable th2) {
                p0.b(a.f31662a, th2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            com.mbridge.msdk.videocommon.setting.b.b().b(false);
            p0.b(a.f31662a, str);
            a.this.a(2, 2, str);
        }
    }

    public void a(Context context, String str, String str2, String str3, c cVar) {
        e eVar = new e();
        eVar.a("app_id", str);
        eVar.a("sign", SameMD5.getMD5(str + str2));
        eVar.a("unit_ids", "[" + str3 + "]");
        try {
            com.mbridge.msdk.videocommon.setting.c d10 = com.mbridge.msdk.videocommon.setting.b.b().d(str, str3);
            if (d10 == null) {
                eVar.a("vtag", "");
            } else {
                String G = d10.G();
                if (TextUtils.isEmpty(G)) {
                    G = "";
                }
                eVar.a("vtag", G);
            }
        } catch (Throwable th2) {
            p0.b(f31662a, th2.getMessage());
        }
        b bVar = new b(str, cVar);
        bVar.setUnitId(str3);
        new com.mbridge.msdk.videocommon.net.b(context).get(1, d.h().T, eVar, bVar, "setting", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        a(3, 3, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardSettingController.java */
    /* loaded from: classes6.dex */
    public class b extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31665b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c f31666c;

        /* compiled from: RewardSettingController.java */
        /* renamed from: com.mbridge.msdk.videocommon.net.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0459a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JSONObject f31668a;

            RunnableC0459a(JSONObject jSONObject) {
                this.f31668a = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.videocommon.setting.b b10 = com.mbridge.msdk.videocommon.setting.b.b();
                b bVar = b.this;
                b10.a(bVar.f31665b, bVar.unitId, this.f31668a.toString());
            }
        }

        b(String str, c cVar) {
            this.f31665b = str;
            this.f31666c = cVar;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                try {
                    com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
                } catch (Exception e10) {
                    p0.b(a.f31662a, e10.getMessage());
                }
                if (u0.a(jSONObject)) {
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String b10 = com.mbridge.msdk.videocommon.setting.b.b().b(this.f31665b, this.unitId);
                        if (!TextUtils.isEmpty(b10)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(b10), jSONObject);
                            } catch (Exception e11) {
                                p0.b(a.f31662a, e11.getMessage());
                            }
                        }
                    }
                    if (com.mbridge.msdk.videocommon.setting.b.c(jSONObject.toString())) {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        RunnableC0459a runnableC0459a = new RunnableC0459a(jSONObject);
                        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(runnableC0459a);
                        } else {
                            runnableC0459a.run();
                        }
                        c cVar = this.f31666c;
                        if (cVar != null) {
                            cVar.a("request success");
                        }
                    } else {
                        c cVar2 = this.f31666c;
                        if (cVar2 != null) {
                            cVar2.onFailed("data error");
                        }
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().g(this.f31665b, this.unitId);
                }
                a.this.a(1, 3, "");
            } catch (Throwable th2) {
                p0.b(a.f31662a, th2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            try {
                com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
            } catch (Exception e10) {
                p0.b(a.f31662a, e10.getMessage());
            }
            if (!TextUtils.isEmpty(str)) {
                c cVar = this.f31666c;
                if (cVar != null) {
                    cVar.onFailed(str);
                }
            } else {
                c cVar2 = this.f31666c;
                if (cVar2 != null) {
                    cVar2.onFailed("request error");
                }
            }
            a.this.a(2, 3, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, int i11, String str) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("key", "2000112");
            eVar.a("st_net", Integer.valueOf(d.h().f27177t));
            eVar.a("result", Integer.valueOf(i10));
            eVar.a("type", Integer.valueOf(i11));
            eVar.a("url", d.h().f27176s ? d.h().U : d.h().T);
            eVar.a("reason", str);
            cVar.a("2000112", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000112", cVar);
        } catch (Throwable th2) {
            p0.b(f31662a, th2.getMessage());
        }
    }
}
