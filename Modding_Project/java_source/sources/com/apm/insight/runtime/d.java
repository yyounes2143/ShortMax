package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: ConfigAid.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, d> f7184a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f7185b = null;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f7186c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7187d = false;

    /* renamed from: e  reason: collision with root package name */
    private String f7188e;

    private d(JSONObject jSONObject, String str) {
        this.f7188e = str;
        a(jSONObject);
        f7184a.put(this.f7188e, this);
        com.apm.insight.a.a((Object) "after update aid ".concat(String.valueOf(str)));
    }

    private void a(JSONObject jSONObject) {
        JSONObject optJSONObject;
        this.f7185b = jSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("error_module")) == null) {
            return;
        }
        boolean z10 = true;
        this.f7187d = (optJSONObject.optInt("switcher") == 1 && optJSONObject.optInt("err_sampling_rate") == 1) ? false : false;
    }

    @Nullable
    public static JSONObject b(String str) {
        d dVar = f7184a.get(str);
        if (dVar != null) {
            return dVar.f7185b;
        }
        return null;
    }

    public static d c(String str) {
        return f7184a.get(str);
    }

    public static long d(String str) {
        d dVar = f7184a.get(str);
        if (dVar == null) {
            return 3600000L;
        }
        try {
            return Long.decode(com.apm.insight.a.a(dVar.f7185b, "over_all", "get_settings_interval")).longValue() * 1000;
        } catch (Throwable unused) {
            return 3600000L;
        }
    }

    public static boolean e(String str) {
        JSONObject jSONObject;
        d dVar = f7184a.get(str);
        if (dVar == null || (jSONObject = dVar.f7185b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) {
            return false;
        }
        return true;
    }

    public static boolean f(String str) {
        JSONObject jSONObject;
        d dVar = f7184a.get(str);
        if (dVar == null || (jSONObject = dVar.f7185b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) {
            return false;
        }
        return true;
    }

    public static boolean g(String str) {
        JSONObject jSONObject;
        d dVar = f7184a.get(str);
        if (dVar == null || (jSONObject = dVar.f7185b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) {
            return false;
        }
        return true;
    }

    public final boolean a() {
        if (this.f7185b == null) {
            return false;
        }
        return this.f7187d;
    }

    public static boolean a(String str) {
        return f7184a.get(str) != null;
    }

    public static void a(String str, JSONObject jSONObject) {
        d dVar = f7184a.get(str);
        if (dVar != null) {
            dVar.a(jSONObject);
        } else {
            new d(jSONObject, str);
        }
    }
}
