package com.apm.insight.k;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.apm.insight.runtime.m;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
/* compiled from: NpthConfigFetcher.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static File f7043a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f7044b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7045c = false;

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, String> f7046d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return f7044b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return f7045c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        if (f7044b) {
            return;
        }
        f7045c = true;
        File file = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/configCrash/configFile");
        if (!file.exists()) {
            return;
        }
        try {
            com.apm.insight.runtime.a.a(new JSONArray(com.apm.insight.l.f.a(file, "\n")), false);
            f7044b = true;
        } catch (Throwable unused) {
            com.apm.insight.runtime.a.a((JSONArray) null, false);
        }
    }

    public static void d() {
        c();
        if (g()) {
            a.a();
        }
    }

    public static void e() {
        m.a().a(new Runnable() { // from class: com.apm.insight.k.j.1
            @Override // java.lang.Runnable
            public final void run() {
                if (j.g()) {
                    a.a();
                }
            }
        });
    }

    public static void f() {
        Map<String, String> map = f7046d;
        if (map != null) {
            map.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g() {
        File h10 = h();
        try {
            Map<String, String> map = f7046d;
            if (map == null) {
                map = com.apm.insight.l.f.c(h10);
            }
            f7046d = map;
            if (map == null) {
                f7046d = new HashMap();
                return true;
            } else if (map.size() < com.apm.insight.entity.b.c()) {
                return true;
            } else {
                for (String str : com.apm.insight.entity.b.d()) {
                    if (!f7046d.containsKey(str)) {
                        return true;
                    }
                }
                long currentTimeMillis = System.currentTimeMillis();
                boolean z10 = false;
                for (Map.Entry<String, String> entry : f7046d.entrySet()) {
                    if (currentTimeMillis - Long.decode(entry.getValue()).longValue() > com.apm.insight.runtime.d.d(entry.getKey())) {
                        z10 = true;
                    }
                }
                if (z10) {
                    com.apm.insight.a.a((Object) "config should be updated");
                } else {
                    com.apm.insight.a.a((Object) "config should not be updated");
                }
                return z10;
            }
        } catch (Throwable th2) {
            Log.e("npth", NotificationCompat.CATEGORY_ERROR, th2);
            return true;
        }
    }

    @NonNull
    private static File h() {
        if (f7043a == null) {
            f7043a = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/configCrash/configInvalid");
        }
        return f7043a;
    }

    public static void a(JSONArray jSONArray) {
        try {
            com.apm.insight.l.f.a(new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/configCrash/configFile"), jSONArray);
        } catch (IOException unused) {
        }
        try {
            com.apm.insight.l.f.a(h(), f7046d);
        } catch (Throwable unused2) {
        }
    }

    public static void a(String str) {
        if (f7046d == null) {
            f7046d = new HashMap();
        }
        f7046d.put(str, String.valueOf(System.currentTimeMillis()));
    }
}
