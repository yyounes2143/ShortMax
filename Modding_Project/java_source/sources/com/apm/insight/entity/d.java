package com.apm.insight.entity;

import android.os.Environment;
import com.apm.insight.e;
import com.apm.insight.l.f;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: HeaderCombiner.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f6884a;

    /* renamed from: b  reason: collision with root package name */
    private static JSONObject f6885b;

    private static void a() {
        if (f6884a == null) {
            f6884a = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/" + e.g().getPackageName() + "/AutomationTestInfo.json";
        }
        if (f6885b == null) {
            try {
                f6885b = new JSONObject(f.a(f6884a, "\n"));
            } catch (IOException unused) {
                f6885b = new JSONObject();
            } catch (JSONException unused2) {
                f6885b = new JSONObject();
            }
        }
    }

    public static void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            a();
            JSONObject jSONObject2 = f6885b;
            if (jSONObject2 != null) {
                JSONObject optJSONObject = jSONObject2.optJSONObject("slardar_filter");
                if (!com.apm.insight.a.a(optJSONObject)) {
                    JSONObject optJSONObject2 = jSONObject.optJSONObject("filters");
                    if (optJSONObject2 == null) {
                        optJSONObject2 = new JSONObject();
                        try {
                            jSONObject.put("filters", optJSONObject2);
                        } catch (JSONException unused) {
                        }
                    }
                    a.b(optJSONObject2, optJSONObject);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public static void a(JSONObject jSONObject) {
        Object opt;
        if (jSONObject == null) {
            return;
        }
        try {
            a();
            JSONObject jSONObject2 = f6885b;
            if (jSONObject2 != null) {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!"slardar_filter".equals(next) && (opt = f6885b.opt(next)) != null) {
                        try {
                            jSONObject.put(next, opt);
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }
}
