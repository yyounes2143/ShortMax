package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.bytedance.applog.log.LoggerImpl;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class l5 {

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f12206a;

    @WorkerThread
    public l5(Context context) {
        this.f12206a = g4.a(context, "device_register_oaid_refine", 0);
    }

    @WorkerThread
    public void a(@Nullable k5 k5Var) {
        if (k5Var == null) {
            return;
        }
        this.f12206a.edit().putString("oaid", k5Var.b().toString()).apply();
    }

    @Nullable
    @WorkerThread
    public k5 a() {
        String string = this.f12206a.getString("oaid", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            return new k5(jSONObject.optString("id", null), jSONObject.optString("req_id", null), jSONObject.has("is_track_limited") ? Boolean.valueOf(jSONObject.optBoolean("is_track_limited")) : null, jSONObject.has("take_ms") ? Long.valueOf(jSONObject.optLong("take_ms", -1L)) : null, jSONObject.has(CrashHianalyticsData.TIME) ? Long.valueOf(jSONObject.optLong(CrashHianalyticsData.TIME, -1L)) : null, jSONObject.has("query_times") ? Integer.valueOf(jSONObject.optInt("query_times", -1)) : null, jSONObject.has("hw_id_version_code") ? Long.valueOf(jSONObject.optLong("hw_id_version_code", -1L)) : null);
        } catch (Throwable th2) {
            LoggerImpl.global().error(1, "Create model failed", th2, new Object[0]);
            return null;
        }
    }
}
