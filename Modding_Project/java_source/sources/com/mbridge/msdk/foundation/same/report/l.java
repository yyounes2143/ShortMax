package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: SameCommonReporter.java */
/* loaded from: classes5.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f27257a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27258b;

    /* compiled from: SameCommonReporter.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f27259a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final String f27260b;

        public b(String str) {
            this.f27260b = str;
        }

        public l a() {
            return new l(this);
        }
    }

    private void a(Map<String, String> map, JSONObject jSONObject) {
        if (map == null || map.isEmpty() || jSONObject == null) {
            return;
        }
        try {
            for (String str : map.keySet()) {
                jSONObject.put(str, a(map.get(str)));
            }
        } catch (Exception e10) {
            p0.b("SameCommonReporter", e10.getMessage());
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(this.f27258b)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", this.f27258b);
            a(this.f27257a, jSONObject);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            p0.b("SameCommonReporter", th2.getMessage());
        }
    }

    private l(b bVar) {
        this.f27258b = bVar.f27260b;
        this.f27257a = bVar.f27259a;
    }

    private String a(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }
}
