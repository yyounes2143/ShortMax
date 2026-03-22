package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.d0;
import com.google.firebase.crashlytics.internal.settings.c;
import com.tencent.mmkv.MMKV;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SettingsV3JsonTransform.java */
/* loaded from: classes5.dex */
class j implements g {
    private static c.a b(JSONObject jSONObject) {
        return new c.a(jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_anrs", false), jSONObject.optBoolean("collect_build_ids", false));
    }

    private static c.b c(JSONObject jSONObject) {
        return new c.b(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    private static long d(d0 d0Var, long j10, JSONObject jSONObject) {
        if (jSONObject.has("expires_at")) {
            return jSONObject.optLong("expires_at");
        }
        return d0Var.a() + (j10 * 1000);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.g
    public c a(d0 d0Var, JSONObject jSONObject) throws JSONException {
        c.b c10;
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", MMKV.ExpireInHour);
        double optDouble = jSONObject.optDouble("on_demand_upload_rate_per_minute", 10.0d);
        double optDouble2 = jSONObject.optDouble("on_demand_backoff_base", 1.2d);
        int optInt3 = jSONObject.optInt("on_demand_backoff_step_duration_seconds", 60);
        if (jSONObject.has("session")) {
            c10 = c(jSONObject.getJSONObject("session"));
        } else {
            c10 = c(new JSONObject());
        }
        return new c(d(d0Var, optInt2, jSONObject), c10, b(jSONObject.getJSONObject("features")), optInt, optInt2, optDouble, optDouble2, optInt3);
    }
}
