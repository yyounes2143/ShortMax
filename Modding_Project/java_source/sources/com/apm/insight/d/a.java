package com.apm.insight.d;

import android.content.Context;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.b.h;
import com.apm.insight.e;
import com.apm.insight.k.d;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.m;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: DartCrash.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public String f6840a;

    /* renamed from: b  reason: collision with root package name */
    public long f6841b;

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable h.a aVar) {
        a(str, map, map2, null, aVar);
    }

    public static a b(String str) {
        a aVar = new a();
        aVar.f6840a = str;
        aVar.f6841b = System.currentTimeMillis();
        return aVar;
    }

    public static void a(final String str, @Nullable final Map<? extends String, ? extends String> map, @Nullable final Map<String, String> map2, @Nullable final Map<String, String> map3, @Nullable final h.a aVar) {
        final long currentTimeMillis = System.currentTimeMillis();
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.d.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Context g10 = e.g();
                        long j10 = currentTimeMillis;
                        String str2 = str;
                        com.apm.insight.entity.a aVar2 = new com.apm.insight.entity.a();
                        aVar2.a("is_dart", (Object) 1);
                        aVar2.a("crash_time", Long.valueOf(j10));
                        aVar2.a("process_name", (Object) com.apm.insight.l.a.b());
                        aVar2.a("data", (Object) str2);
                        com.apm.insight.l.a.a(g10, aVar2.c());
                        com.apm.insight.entity.a a10 = f.a().a(CrashType.DART, aVar2);
                        if (map != null) {
                            JSONObject optJSONObject = a10.c().optJSONObject("custom");
                            if (optJSONObject == null) {
                                optJSONObject = new JSONObject();
                            }
                            com.apm.insight.entity.a.a(optJSONObject, map);
                            a10.a("custom", optJSONObject);
                        }
                        if (map2 != null) {
                            JSONObject optJSONObject2 = a10.c().optJSONObject("custom_long");
                            if (optJSONObject2 == null) {
                                optJSONObject2 = new JSONObject();
                            }
                            com.apm.insight.entity.a.a(optJSONObject2, map2);
                            a10.a("custom_long", optJSONObject2);
                        }
                        if (map3 != null) {
                            JSONObject optJSONObject3 = a10.c().optJSONObject("filters");
                            if (optJSONObject3 == null) {
                                optJSONObject3 = new JSONObject();
                                a10.a("filters", optJSONObject3);
                            }
                            com.apm.insight.entity.a.a(optJSONObject3, map3);
                        }
                        d.a().a(a10.c());
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static void a(String str) {
        a(str, null, null, null);
    }
}
