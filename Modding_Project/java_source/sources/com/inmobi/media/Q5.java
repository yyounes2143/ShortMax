package com.inmobi.media;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class Q5 {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f24034a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static final Object f24035b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public static boolean f24036c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f24037d;

    /* renamed from: e  reason: collision with root package name */
    public static JSONObject f24038e;

    /* renamed from: f  reason: collision with root package name */
    public static JSONObject f24039f;

    public static final void a(JSONObject jSONObject) {
        synchronized (f24035b) {
            try {
                Objects.toString(f24039f);
                Objects.toString(jSONObject);
                f24039f = jSONObject;
                f24037d = true;
                Context d10 = Uc.d();
                if (d10 != null) {
                    ConcurrentHashMap concurrentHashMap = C6.f23529b;
                    C6 a10 = B6.a(d10, "unified_id_info_store");
                    JSONObject jSONObject2 = f24039f;
                    if (jSONObject2 == null) {
                        a10.a("publisher_provided_unified_id");
                    } else {
                        C6.a(a10, "publisher_provided_unified_id", String.valueOf(jSONObject2), false, 4, (Object) null);
                        Unit unit = Unit.f60915a;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final JSONObject b() {
        synchronized (f24034a) {
            if (f24036c) {
                return f24038e;
            }
            f24036c = true;
            Context d10 = Uc.d();
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6 a10 = B6.a(d10, "unified_id_info_store");
                Intrinsics.checkNotNullParameter("ufids", "key");
                String string = a10.f23530a.getString("ufids", null);
                if (string != null) {
                    try {
                        f24038e = new JSONObject(string);
                    } catch (JSONException unused) {
                    }
                    return f24038e;
                }
            }
            return null;
        }
    }

    public static final JSONObject a() {
        synchronized (f24035b) {
            if (f24037d) {
                Objects.toString(f24039f);
                return f24039f;
            }
            f24037d = true;
            Context d10 = Uc.d();
            String str = null;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6 a10 = B6.a(d10, "unified_id_info_store");
                Intrinsics.checkNotNullParameter("publisher_provided_unified_id", "key");
                str = a10.f23530a.getString("publisher_provided_unified_id", null);
            }
            try {
                f24039f = new JSONObject(str);
            } catch (NullPointerException | JSONException unused) {
            }
            Objects.toString(f24039f);
            return f24039f;
        }
    }

    public static final void b(JSONObject jSONObject) {
        synchronized (f24034a) {
            try {
                f24038e = jSONObject;
                f24036c = true;
                Context d10 = Uc.d();
                if (d10 != null) {
                    ConcurrentHashMap concurrentHashMap = C6.f23529b;
                    C6 a10 = B6.a(d10, "unified_id_info_store");
                    JSONObject jSONObject2 = f24038e;
                    if (jSONObject2 == null) {
                        a10.a("ufids");
                    } else {
                        C6.a(a10, "ufids", String.valueOf(jSONObject2), false, 4, (Object) null);
                    }
                    SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(d10).edit();
                    JSONObject jSONObject3 = f24038e;
                    if (jSONObject3 == null) {
                        edit.remove("InMobi_unifiedId");
                    } else {
                        edit.putString("InMobi_unifiedId", String.valueOf(jSONObject3));
                    }
                    edit.apply();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
