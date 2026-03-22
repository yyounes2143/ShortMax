package com.bytedance.bdtracker;

import android.app.Application;
import android.content.SharedPreferences;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public SharedPreferences f12030a;

    public h(@NotNull Application applicationContext, @NotNull String spName) {
        Intrinsics.checkParameterIsNotNull(applicationContext, "applicationContext");
        Intrinsics.checkParameterIsNotNull(spName, "spName");
        this.f12030a = g4.a(applicationContext, spName, 0);
    }

    @Nullable
    public final <T extends p> T a(@NotNull String key, @NotNull Class<T> clazz) {
        String string;
        SharedPreferences.Editor edit;
        SharedPreferences.Editor remove;
        Intrinsics.checkParameterIsNotNull(key, "key");
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        try {
            SharedPreferences sharedPreferences = this.f12030a;
            if (sharedPreferences == null || (string = sharedPreferences.getString(key, null)) == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(string);
            long optLong = jSONObject.optLong("expire_ts");
            if (optLong != -1 && (optLong <= 0 || System.currentTimeMillis() >= optLong)) {
                SharedPreferences sharedPreferences2 = this.f12030a;
                if (sharedPreferences2 == null || (edit = sharedPreferences2.edit()) == null || (remove = edit.remove(key)) == null) {
                    return null;
                }
                remove.apply();
                return null;
            }
            return (T) p.f12300a.a(jSONObject, clazz);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public final String a(@NotNull String key) {
        String string;
        SharedPreferences.Editor edit;
        SharedPreferences.Editor remove;
        Intrinsics.checkParameterIsNotNull(key, "key");
        try {
            SharedPreferences sharedPreferences = this.f12030a;
            if (sharedPreferences == null || (string = sharedPreferences.getString(key, null)) == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(string);
            long optLong = jSONObject.optLong("expire_ts");
            if (optLong != -1 && (optLong <= 0 || System.currentTimeMillis() >= optLong)) {
                SharedPreferences sharedPreferences2 = this.f12030a;
                if (sharedPreferences2 == null || (edit = sharedPreferences2.edit()) == null || (remove = edit.remove(key)) == null) {
                    return null;
                }
                remove.apply();
                return null;
            }
            return jSONObject.optString("data");
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void a(@NotNull String key, @NotNull p data, long j10) {
        SharedPreferences.Editor edit;
        SharedPreferences.Editor putString;
        Intrinsics.checkParameterIsNotNull(key, "key");
        Intrinsics.checkParameterIsNotNull(data, "data");
        JSONObject a10 = data.a();
        a10.put("expire_ts", j10 != -1 ? System.currentTimeMillis() + j10 : -1L);
        SharedPreferences sharedPreferences = this.f12030a;
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null || (putString = edit.putString(key, a10.toString())) == null) {
            return;
        }
        putString.apply();
    }

    public final void a(@NotNull String key, @Nullable String str, long j10) {
        SharedPreferences.Editor edit;
        SharedPreferences.Editor putString;
        Intrinsics.checkParameterIsNotNull(key, "key");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("data", str);
        jSONObject.put("expire_ts", j10 != -1 ? System.currentTimeMillis() + j10 : -1L);
        SharedPreferences sharedPreferences = this.f12030a;
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null || (putString = edit.putString(key, jSONObject.toString())) == null) {
            return;
        }
        putString.apply();
    }
}
