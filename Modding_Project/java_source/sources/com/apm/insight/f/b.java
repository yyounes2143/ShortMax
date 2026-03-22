package com.apm.insight.f;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.entity.c;
import com.apm.insight.k.g;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.m;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: EnsureReporter.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private String f6887a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f6888b;

    /* renamed from: c  reason: collision with root package name */
    private String f6889c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6890d;

    /* renamed from: e  reason: collision with root package name */
    private String f6891e;

    /* renamed from: f  reason: collision with root package name */
    private String f6892f;

    /* renamed from: g  reason: collision with root package name */
    private String f6893g;

    /* renamed from: h  reason: collision with root package name */
    private List<String> f6894h;

    public final JSONObject b() {
        return this.f6888b;
    }

    public final String c() {
        return this.f6889c;
    }

    public final String d() {
        return this.f6891e;
    }

    public final String e() {
        return this.f6892f;
    }

    public final String f() {
        return this.f6893g;
    }

    public final List<String> g() {
        return this.f6894h;
    }

    public static void a(final Throwable th2, final String str, @NonNull final String str2) {
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.f.b.1

                /* renamed from: c  reason: collision with root package name */
                private /* synthetic */ boolean f6897c = true;

                /* renamed from: d  reason: collision with root package name */
                private /* synthetic */ Map f6898d = null;

                @Override // java.lang.Runnable
                public final void run() {
                    b.a(null, th2, str, this.f6897c, null, "EnsureNotReachHere", str2);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void b(String str) {
        this.f6889c = str;
    }

    public final void c(String str) {
        this.f6891e = str;
    }

    public final void d(String str) {
        this.f6892f = str;
    }

    public final void e(String str) {
        this.f6893g = str;
    }

    public static void a(final Object obj, final Throwable th2, final String str, final String str2, @NonNull final String str3) {
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.f.b.2

                /* renamed from: d  reason: collision with root package name */
                private /* synthetic */ boolean f6903d = true;

                /* renamed from: e  reason: collision with root package name */
                private /* synthetic */ Map f6904e = null;

                @Override // java.lang.Runnable
                public final void run() {
                    b.a(obj, th2, str, this.f6903d, null, str2, str3);
                }
            });
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Object obj, Throwable th2, String str, boolean z10, Map<String, String> map, String str2, @NonNull String str3) {
        if (th2 == null) {
            return;
        }
        try {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            StackTraceElement stackTraceElement = stackTrace[0];
            if (stackTraceElement == null) {
                return;
            }
            String a10 = com.apm.insight.l.m.a(th2);
            if (TextUtils.isEmpty(a10)) {
                return;
            }
            c a11 = c.a(stackTraceElement, a10, str, Thread.currentThread().getName(), z10, str2, str3);
            if (obj != null) {
                a11.a("exception_line_num", (Object) com.apm.insight.entity.b.a(obj, th2, stackTrace));
            }
            a(null, a11);
            f.a().a(CrashType.ENSURE, a11);
            g.a(obj, a11);
            com.apm.insight.a.b((Object) "[reportException] ".concat(String.valueOf(str)));
        } catch (Throwable th3) {
            com.apm.insight.a.b(th3);
        }
    }

    public static void a(final StackTraceElement[] stackTraceElementArr, @Nullable final String str, final String str2) {
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.f.b.3

                /* renamed from: b  reason: collision with root package name */
                private /* synthetic */ int f6908b = 5;

                /* renamed from: e  reason: collision with root package name */
                private /* synthetic */ Map f6911e = null;

                @Override // java.lang.Runnable
                public final void run() {
                    b.a(stackTraceElementArr, this.f6908b, str, str2, "core_exception_monitor", (Map) null);
                }
            });
        } catch (Throwable unused) {
        }
    }

    private static void a(Map<String, String> map, c cVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (map != null) {
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
                cVar.a("custom", jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ void a(StackTraceElement[] stackTraceElementArr, int i10, String str, String str2, String str3, Map map) {
        StackTraceElement stackTraceElement;
        String sb2;
        if (stackTraceElementArr != null) {
            try {
                if (stackTraceElementArr.length > i10 + 1 && (stackTraceElement = stackTraceElementArr[i10]) != null) {
                    if (stackTraceElementArr.length <= 0) {
                        sb2 = null;
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        while (i10 < stackTraceElementArr.length) {
                            com.apm.insight.l.m.a(stackTraceElementArr[i10], sb3);
                            i10++;
                        }
                        sb2 = sb3.toString();
                    }
                    if (TextUtils.isEmpty(sb2)) {
                        return;
                    }
                    c a10 = c.a(stackTraceElement, sb2, str, Thread.currentThread().getName(), true, str2, str3);
                    a(null, a10);
                    f.a().a(CrashType.ENSURE, a10);
                    g.a(a10);
                    com.apm.insight.a.b((Object) "[report] ".concat(String.valueOf(str)));
                }
            } catch (Throwable th2) {
                com.apm.insight.a.b(th2);
            }
        }
    }

    public final String a() {
        return this.f6887a;
    }

    public final void a(String str) {
        this.f6887a = str;
    }

    public final void a(JSONObject jSONObject) {
        this.f6888b = jSONObject;
    }

    public final void a(boolean z10) {
        this.f6890d = z10;
    }

    public final void a(List<String> list) {
        this.f6894h = list;
    }
}
