package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ApmConfig.java */
/* loaded from: classes2.dex */
public final class a {
    static {
        new ConcurrentLinkedQueue();
    }

    public static boolean a(Object obj) {
        String b10 = com.apm.insight.entity.b.b(obj);
        if (b10 != null) {
            return d.a(b10);
        }
        return false;
    }

    public static boolean b(Object obj) {
        d c10;
        String b10 = com.apm.insight.entity.b.b(obj);
        if (b10 == null || (c10 = d.c(b10)) == null) {
            return false;
        }
        return c10.a();
    }

    public static boolean c() {
        return a("custom_event_settings", "npth_simple_setting", "disable_looper_monitor") == 1;
    }

    public static boolean d() {
        if (a("custom_event_settings", "npth_simple_setting", "enable_all_thread_stack_native") == 1) {
            return true;
        }
        return false;
    }

    public static boolean e() {
        if (a("custom_event_settings", "npth_simple_setting", "anr_with_traces_txt") == 1) {
            return true;
        }
        return false;
    }

    public static boolean f() {
        if (a("custom_event_settings", "npth_simple_setting", "upload_crash_crash") == 1) {
            return true;
        }
        return false;
    }

    public static boolean g() {
        if (a("custom_event_settings", "npth_simple_setting", "force_apm_crash") == 1) {
            return true;
        }
        return false;
    }

    public static boolean h() {
        if (a("custom_event_settings", "npth_simple_setting", "enable_anr_all_process_trace") == 1) {
            return true;
        }
        return false;
    }

    @Nullable
    private static JSONObject i() {
        return d.b(com.apm.insight.e.a().e());
    }

    public static boolean c(String str) {
        if (!d.a(str)) {
            com.apm.insight.k.a.b();
        }
        return d.f(str);
    }

    public static void a(JSONArray jSONArray, boolean z10) {
        if (jSONArray == null) {
            return;
        }
        com.apm.insight.a.a("apmconfig", "fromnet " + z10 + " : " + jSONArray);
        if (z10) {
            com.apm.insight.k.j.f();
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                String next = optJSONObject.keys().next();
                JSONObject optJSONObject2 = optJSONObject.optJSONObject(next);
                com.apm.insight.a.a((Object) ("update config " + next + " : " + optJSONObject2));
                d.a(next, optJSONObject2);
                if (z10) {
                    com.apm.insight.k.j.a(next);
                }
            } catch (Throwable unused) {
            }
        }
        k.a(a(jSONArray, String.valueOf(com.apm.insight.e.a().e())));
        if (z10) {
            com.apm.insight.k.j.a(jSONArray);
        }
    }

    @Nullable
    public static JSONArray b() {
        String[] strArr = {"custom_event_settings", "npth_simple_setting", "max_utm_thread_ignore"};
        JSONObject b10 = com.apm.insight.a.b(i(), strArr);
        if (b10 == null) {
            return null;
        }
        JSONArray optJSONArray = b10.optJSONArray(strArr[2]);
        com.apm.insight.a.a("ApmConfig", "normal get configArray: " + strArr[2] + " : " + optJSONArray);
        return optJSONArray;
    }

    public static boolean b(String str) {
        if (!d.a(str)) {
            com.apm.insight.k.a.b();
        }
        return d.g(str);
    }

    @Nullable
    private static JSONObject a(JSONArray jSONArray, String str) {
        if (jSONArray != null && jSONArray.length() != 0) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10).optJSONObject(str);
                if (optJSONObject != null) {
                    return optJSONObject;
                }
            }
        }
        return null;
    }

    public static boolean a() {
        return l.e();
    }

    @Nullable
    public static String a(@Nullable JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("exception_modules")) == null) {
            return null;
        }
        return optJSONObject.optString("npth");
    }

    public static int a(String... strArr) {
        return com.apm.insight.a.a(i(), -1, strArr);
    }

    public static int a(int i10, String... strArr) {
        return com.apm.insight.a.a(i(), i10, strArr);
    }

    public static boolean a(String str) {
        if (!d.a(str)) {
            com.apm.insight.k.a.b();
        }
        return d.e(str);
    }
}
