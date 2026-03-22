package com.apm.insight.entity;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.e;
import com.apm.insight.l.m;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CrashBody.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f6880a;

    /* renamed from: b  reason: collision with root package name */
    private Header f6881b;

    public a() {
        JSONObject jSONObject = new JSONObject();
        this.f6880a = jSONObject;
        try {
            jSONObject.put("apm_id", "20000001");
        } catch (JSONException unused) {
        }
    }

    public static a a(long j10, Context context, @NonNull Throwable th2) {
        if (j10 == 0) {
            j10 = System.currentTimeMillis();
        }
        a aVar = new a();
        aVar.a("isJava", (Object) 1);
        aVar.a("data", (Object) m.a(th2));
        aVar.a("crash_time", Long.valueOf(j10));
        aVar.a("process_name", (Object) com.apm.insight.l.a.b());
        if (!com.apm.insight.l.a.b(context)) {
            aVar.a("remote_process", (Object) 1);
        }
        return aVar;
    }

    public static boolean c(String str) {
        return com.apm.insight.nativecrash.b.b(str) > 350;
    }

    public final void b() {
        a("has_logcat", String.valueOf(a()));
    }

    public final Header d() {
        if (this.f6881b == null) {
            Header header = new Header(e.g());
            this.f6881b = header;
            a(header);
        }
        return this.f6881b;
    }

    public static boolean b(String str) {
        return com.apm.insight.nativecrash.b.a(str) > 960;
    }

    public final JSONObject c() {
        return this.f6880a;
    }

    public final a b(Map<Integer, String> map) {
        if (map != null && map.size() > 0) {
            JSONObject jSONObject = new JSONObject();
            for (Integer num : map.keySet()) {
                try {
                    jSONObject.put(String.valueOf(num), map.get(num));
                } catch (JSONException e10) {
                    com.apm.insight.a.b((Throwable) e10);
                }
            }
            try {
                this.f6880a.put("sdk_info", jSONObject);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        return this;
    }

    public final void c(@NonNull JSONObject jSONObject) {
        b(this.f6880a, jSONObject);
    }

    public a(JSONObject jSONObject) {
        this.f6880a = jSONObject;
    }

    public final a c(Map<? extends String, ? extends String> map) {
        JSONObject jSONObject;
        JSONObject optJSONObject;
        if (map != null) {
            Object opt = this.f6880a.opt("data");
            if (opt instanceof JSONArray) {
                jSONObject = ((JSONArray) opt).optJSONObject(0);
            } else {
                jSONObject = this.f6880a;
            }
            if (jSONObject == null) {
                optJSONObject = new JSONObject();
            } else {
                optJSONObject = jSONObject.optJSONObject("filters");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                    a("filters", optJSONObject);
                }
            }
            for (Map.Entry<? extends String, ? extends String> entry : map.entrySet()) {
                try {
                    optJSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException unused) {
                }
            }
            a("filters", optJSONObject);
        }
        return this;
    }

    public static boolean a(String str) {
        return ((long) com.apm.insight.nativecrash.b.c(str)) > com.apm.insight.nativecrash.a.g();
    }

    public final a a(Header header) {
        a("header", header.f());
        this.f6881b = header;
        return this;
    }

    public final a b(JSONObject jSONObject) {
        a(this.f6880a, jSONObject);
        return this;
    }

    public static void b(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null || jSONObject2.length() <= 0) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = jSONObject.opt(next);
                if (opt == null) {
                    jSONObject.put(next, jSONObject2.opt(next));
                } else if (opt instanceof JSONObject) {
                    b(jSONObject.getJSONObject(next), jSONObject2.getJSONObject(next));
                } else if (opt instanceof JSONArray) {
                    JSONArray optJSONArray = jSONObject2.optJSONArray(next);
                    if (optJSONArray != null) {
                        JSONArray jSONArray = (JSONArray) opt;
                        if (jSONArray.length() == 1 && (jSONArray.opt(0) instanceof JSONObject) && (optJSONArray.opt(0) instanceof JSONObject)) {
                            b(jSONArray.getJSONObject(0), optJSONArray.getJSONObject(0));
                        } else {
                            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                                jSONArray.put(optJSONArray.get(i10));
                            }
                        }
                    }
                } else {
                    jSONObject.put(next, jSONObject2.opt(next));
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public final a a(JSONObject jSONObject) {
        a("header", jSONObject);
        return this;
    }

    public static void a(JSONObject jSONObject, Map<? extends String, ? extends String> map) {
        if (map != null) {
            try {
                for (Map.Entry<? extends String, ? extends String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(JSONObject jSONObject, Throwable th2) {
        if (jSONObject.opt("npth_err_info") == null) {
            try {
                jSONObject.put("npth_err_info", m.a(th2));
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        for (int i10 = 0; i10 < 5; i10++) {
            if (jSONObject.opt("npth_err_info" + i10) == null) {
                try {
                    jSONObject.put("npth_err_info" + i10, m.a(th2));
                    return;
                } catch (Throwable unused2) {
                    return;
                }
            }
        }
    }

    public final a a(long j10) {
        try {
            a("app_start_time", Long.valueOf(j10));
            a("app_start_time_readable", (Object) new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.getDefault()).format(new Date(j10)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return this;
    }

    public final a a(com.apm.insight.runtime.a.b bVar) {
        a("activity_trace", bVar.g());
        a("activity_track", bVar.i());
        return this;
    }

    public final a a(Map<String, Integer> map) {
        JSONArray jSONArray = new JSONArray();
        if (map == null) {
            this.f6880a.put("plugin_info", jSONArray);
            return this;
        }
        for (String str : map.keySet()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("package_name", str);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, map.get(str));
            jSONArray.put(jSONObject);
        }
        this.f6880a.put("plugin_info", jSONArray);
        return this;
    }

    public final a b(String str, String str2) {
        Object opt = this.f6880a.opt("data");
        if (opt instanceof JSONArray) {
            a(((JSONArray) opt).optJSONObject(0), "custom", str, str2);
        } else {
            a(this.f6880a, "custom", str, str2);
        }
        return this;
    }

    public final a a(int i10, String str) {
        try {
            this.f6880a.put("miniapp_id", i10);
            this.f6880a.put("miniapp_version", str);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return this;
    }

    public final a a(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                jSONArray.put(str);
            }
            a("patch_info", (Object) jSONArray);
            return this;
        }
        a("patch_info", (Object) jSONArray);
        return this;
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        String str2;
        try {
            jSONObject.put("storage", jSONObject2);
        } catch (Throwable unused) {
        }
        long optLong = jSONObject2.optLong("inner_free");
        long optLong2 = jSONObject2.optLong("sdcard_free");
        long optLong3 = jSONObject2.optLong("inner_free_real");
        String str3 = "64M - ";
        if (optLong <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            str = "0 - 1K";
        } else if (optLong <= 65536) {
            str = "1K - 64K";
        } else if (optLong <= 524288) {
            str = "64K - 512K";
        } else if (optLong <= 1048576) {
            str = "512K - 1M";
        } else {
            str = optLong <= 67108864 ? "1M - 64M" : "64M - ";
        }
        if (optLong3 <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            str2 = "0 - 1K";
        } else if (optLong3 <= 65536) {
            str2 = "1K - 64K";
        } else if (optLong3 <= 524288) {
            str2 = "64K - 512K";
        } else if (optLong3 <= 1048576) {
            str2 = "512K - 1M";
        } else {
            str2 = optLong3 <= 67108864 ? "1M - 64M" : "64M - ";
        }
        if (optLong2 <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            str3 = "0 - 1K";
        } else if (optLong2 <= 65536) {
            str3 = "1K - 64K";
        } else if (optLong2 <= 524288) {
            str3 = "64K - 512K";
        } else if (optLong2 <= 1048576) {
            str3 = "512K - 1M";
        } else if (optLong2 <= 67108864) {
            str3 = "1M - 64M";
        }
        a(jSONObject, "filters", "inner_free", str);
        a(jSONObject, "filters", "inner_free_real", str2);
        a(jSONObject, "filters", "sdcard_free", str3);
    }

    public static void a(JSONObject jSONObject, String str, String str2, String str3) {
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            try {
                optJSONObject = new JSONObject();
                jSONObject.put(str, optJSONObject);
            } catch (Throwable unused) {
                return;
            }
        }
        optJSONObject.put(str2, str3);
    }

    public final void a(@NonNull String str, @Nullable Object obj) {
        try {
            this.f6880a.put(str, obj);
        } catch (Exception e10) {
            com.apm.insight.a.b((Throwable) e10);
        }
    }

    public final boolean a() {
        Object opt = this.f6880a.opt("data");
        return opt instanceof JSONArray ? !com.apm.insight.a.a(((JSONArray) opt).optJSONObject(0), "logcat") : !com.apm.insight.a.a(this.f6880a, "logcat");
    }

    private a a(String str, JSONArray jSONArray) {
        JSONObject optJSONObject = this.f6880a.optJSONObject("custom_long");
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
            a("custom_long", optJSONObject);
        }
        try {
            optJSONObject.put(str, jSONArray);
        } catch (JSONException unused) {
        }
        return this;
    }

    public final a a(String str, String str2) {
        Object opt = this.f6880a.opt("data");
        if (opt instanceof JSONArray) {
            a(((JSONArray) opt).optJSONObject(0), "filters", str, str2);
        } else {
            a(this.f6880a, "filters", str, str2);
        }
        return this;
    }
}
