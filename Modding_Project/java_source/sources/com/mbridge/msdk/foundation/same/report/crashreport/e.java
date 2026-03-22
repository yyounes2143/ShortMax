package com.mbridge.msdk.foundation.same.report.crashreport;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONObject;
/* compiled from: MBridgeUncaughtExceptionHandler.java */
/* loaded from: classes5.dex */
public class e implements Thread.UncaughtExceptionHandler {

    /* renamed from: d  reason: collision with root package name */
    private static volatile e f27227d;

    /* renamed from: a  reason: collision with root package name */
    private final String f27228a = "CrashHandlerUtil";

    /* renamed from: b  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f27229b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<Context> f27230c;

    private e(Context context) {
        this.f27230c = new WeakReference<>(context);
    }

    public static e a(Context context) {
        if (f27227d == null) {
            synchronized (e.class) {
                try {
                    if (f27227d == null) {
                        f27227d = new e(context);
                    }
                } finally {
                }
            }
        }
        return f27227d;
    }

    private void b(Thread thread, Throwable th2) {
        try {
            List<String> a10 = b.a();
            StackTraceElement[] stackTrace = th2.getStackTrace();
            StringBuilder sb2 = new StringBuilder();
            String str = th2.getClass() + ": " + th2.getMessage();
            sb2.append(str);
            sb2.append("\n");
            boolean a11 = a(a10, str);
            int i10 = 0;
            for (int i11 = 0; i11 < stackTrace.length; i11++) {
                String stackTraceElement = stackTrace[i11].toString();
                if (a(a10, stackTraceElement)) {
                    a11 = true;
                    if (i11 == 0) {
                        i10 = 1;
                    }
                }
                sb2.append(stackTraceElement);
                sb2.append("\n");
            }
            if (a11 && sb2.length() >= 1) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000052");
                jSONObject.put("crash_first_index_from_mtg", i10);
                JSONObject a12 = a(String.valueOf(System.currentTimeMillis()));
                a12.put("crashinfo", sb2.toString());
                jSONObject.put("exception", a12);
                if (jSONObject.length() > 0) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
                try {
                    Thread.sleep(500L);
                    return;
                } catch (InterruptedException e10) {
                    p0.b("CrashHandlerUtil", e10.getMessage());
                    return;
                }
            }
            a(thread, th2);
        } catch (Throwable th3) {
            a(thread, th2);
            p0.b("CrashHandlerUtil", th3.getMessage());
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        if (th2 != null) {
            try {
                b(thread, th2);
            } catch (Throwable th3) {
                p0.b("CrashHandlerUtil", th3.getMessage());
            }
        }
        a(thread, th2);
    }

    public void a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        this.f27229b = defaultUncaughtExceptionHandler;
        if (defaultUncaughtExceptionHandler instanceof e) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f27230c.get() == null) {
                return jSONObject;
            }
            float f10 = (float) ((Runtime.getRuntime().totalMemory() * 1.0d) / 1048576.0d);
            jSONObject.put("max_memory", String.valueOf((float) ((Runtime.getRuntime().maxMemory() * 1.0d) / 1048576.0d)));
            jSONObject.put("memoryby_app", String.valueOf(f10));
            jSONObject.put("remaining_memory", (float) ((Runtime.getRuntime().freeMemory() * 1.0d) / 1048576.0d));
            jSONObject.put("crashtime", str);
            return jSONObject;
        } catch (Throwable th2) {
            p0.b("CrashHandlerUtil", th2.getMessage());
            return jSONObject;
        }
    }

    private boolean a(List<String> list, String str) {
        if (list != null && !list.isEmpty() && !TextUtils.isEmpty(str)) {
            for (String str2 : list) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void a(Thread thread, Throwable th2) {
        try {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f27229b;
            if (uncaughtExceptionHandler != null) {
                if (!(uncaughtExceptionHandler instanceof e)) {
                    uncaughtExceptionHandler.uncaughtException(thread, th2);
                }
            } else {
                Process.killProcess(Process.myPid());
                System.exit(1);
            }
        } catch (Throwable th3) {
            p0.b("CrashHandlerUtil", th3.getMessage());
        }
    }
}
