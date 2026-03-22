package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import java.net.URLEncoder;
import org.json.JSONObject;
/* compiled from: MetricsReportUtil.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static volatile f f27251b;

    /* renamed from: a  reason: collision with root package name */
    private volatile com.mbridge.msdk.tracker.m f27252a;

    public static f a() {
        if (f27251b == null) {
            synchronized (f.class) {
                try {
                    if (f27251b == null) {
                        f27251b = new f();
                    }
                } finally {
                }
            }
        }
        return f27251b;
    }

    public com.mbridge.msdk.tracker.m b() {
        if (this.f27252a == null) {
            this.f27252a = com.mbridge.msdk.foundation.same.report.metrics.d.b().d();
        }
        return this.f27252a;
    }

    public void c() {
        b().a();
    }

    public void a(Context context, String str, String str2, String str3, String str4, int i10) {
        com.mbridge.msdk.tracker.m b10 = a().b();
        if (b10 == null) {
            return;
        }
        if (!b10.a("2000105")) {
            p0.a("MetricsReportUtil", "reportClickImpException can not track");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (TextUtils.isEmpty(str2)) {
                jSONObject.put("url", "");
            } else {
                jSONObject.put("url", URLEncoder.encode(str2, "utf-8"));
            }
            jSONObject.put("type", i10);
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("rid", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("rid_n", str4);
            }
            try {
                long[] e10 = b10.e();
                jSONObject.put("track_time", e10[0]);
                jSONObject.put("track_count", e10[1]);
                jSONObject.put("session_id", b10.d());
            } catch (Exception unused) {
            }
            jSONObject.put("reason", URLEncoder.encode(str, "utf-8"));
            com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e("2000105");
            eVar.a(jSONObject);
            eVar.a(0);
            eVar.b(0);
            eVar.a(c.d());
            b10.d(eVar);
        } catch (Exception e11) {
            p0.b("MetricsReportUtil", e11.getMessage());
        }
    }
}
