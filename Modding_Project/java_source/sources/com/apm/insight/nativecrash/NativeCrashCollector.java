package com.apm.insight.nativecrash;

import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.Npth;
import com.apm.insight.e;
import com.apm.insight.l.m;
import com.apm.insight.runtime.a.c;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.j;
import com.apm.insight.runtime.l;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class NativeCrashCollector {
    public static int a() {
        return 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if ("main".equalsIgnoreCase(str)) {
            return m.a(Looper.getMainLooper().getThread().getStackTrace());
        }
        ThreadGroup threadGroup = Looper.getMainLooper().getThread().getThreadGroup();
        int activeCount = threadGroup.activeCount();
        Thread[] threadArr = new Thread[activeCount + (activeCount / 2)];
        int enumerate = threadGroup.enumerate(threadArr);
        for (int i10 = 0; i10 < enumerate; i10++) {
            String name = threadArr[i10].getName();
            if (!TextUtils.isEmpty(name) && (name.equals(str) || name.startsWith(str) || name.endsWith(str))) {
                return m.a(threadArr[i10].getStackTrace());
            }
        }
        try {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                String name2 = entry.getKey().getName();
                if (!name2.equals(str)) {
                    if (!name2.startsWith(str)) {
                        if (name2.endsWith(str)) {
                        }
                    }
                }
                return m.a(entry.getValue());
            }
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
        return "";
    }

    @Keep
    public static void onNativeCrash(final String str) {
        final long currentTimeMillis = System.currentTimeMillis();
        com.apm.insight.a.a((Object) "[onNativeCrash] enter");
        try {
            com.apm.insight.k.b.a().b();
            final File e10 = com.apm.insight.l.j.e(new File(com.apm.insight.l.j.a(), e.f()));
            com.apm.insight.entity.a a10 = f.a().a(CrashType.NATIVE, new c.a() { // from class: com.apm.insight.nativecrash.NativeCrashCollector.1
                @Override // com.apm.insight.runtime.a.c.a
                public final com.apm.insight.entity.a a(int i10, com.apm.insight.entity.a aVar) {
                    String str2 = "true";
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 == 4) {
                                    com.apm.insight.l.a.a(e.g(), aVar.c());
                                }
                            } else if (com.apm.insight.runtime.a.d()) {
                                aVar.a("all_thread_stacks", m.b(str));
                                aVar.a("has_all_thread_stack", "true");
                            }
                        } else {
                            if (e.x()) {
                                JSONArray b10 = com.apm.insight.b.f.b().b();
                                long uptimeMillis = SystemClock.uptimeMillis();
                                JSONObject a11 = com.apm.insight.b.f.b().a(uptimeMillis).a();
                                JSONArray a12 = com.apm.insight.b.j.a(uptimeMillis);
                                aVar.a("history_message", (Object) b10);
                                aVar.a("current_message", a11);
                                aVar.a("pending_messages", (Object) a12);
                            }
                            aVar.a("disable_looper_monitor", String.valueOf(com.apm.insight.runtime.a.c()));
                            aVar.a("npth_force_apm_crash", String.valueOf(com.apm.insight.c.a.a()));
                        }
                    } else {
                        String str3 = str;
                        if (str3 != null && str3.length() != 0) {
                            aVar.a("java_data", (Object) NativeCrashCollector.b(str));
                        }
                        if (!Npth.hasCrashWhenNativeCrash()) {
                            str2 = "false";
                        }
                        aVar.a("crash_after_crash", str2);
                    }
                    return aVar;
                }

                @Override // com.apm.insight.runtime.a.c.a
                public final com.apm.insight.entity.a b(int i10, com.apm.insight.entity.a aVar) {
                    try {
                        JSONObject c10 = aVar.c();
                        if (c10.length() > 0) {
                            com.apm.insight.l.f.a(new File(e10.getAbsolutePath() + '.' + i10), c10);
                        }
                    } catch (IOException e11) {
                        com.apm.insight.c.a();
                        j.a(e11, "NPTH_CATCH");
                    }
                    if (i10 == 0) {
                        com.apm.insight.a.a.a();
                        com.apm.insight.a.a.a();
                        CrashType crashType = CrashType.LAUNCH;
                        e.f();
                    }
                    return aVar;
                }
            });
            JSONObject c10 = a10.c();
            if (c10 != null && c10.length() != 0) {
                long currentTimeMillis2 = System.currentTimeMillis();
                long j10 = currentTimeMillis2 - currentTimeMillis;
                try {
                    c10.put("java_end", currentTimeMillis2);
                    a10.b("crash_cost", String.valueOf(j10));
                    a10.a("crash_cost", String.valueOf(j10 / 1000));
                } catch (Throwable unused) {
                }
                File file = new File(e10.getAbsolutePath() + ".tmp");
                com.apm.insight.l.f.a(file, c10);
                file.renameTo(e10);
            }
        } catch (Throwable th2) {
            try {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
                try {
                    if (!l.a().d().isEmpty()) {
                        File file2 = new File(com.apm.insight.l.j.a(), e.f());
                        c cVar = new c(file2);
                        cVar.b(file2);
                        a(cVar.c(), cVar.a(), str);
                    }
                } catch (Throwable unused2) {
                    a("", null, str);
                }
            } finally {
                try {
                    if (!l.a().d().isEmpty()) {
                        File file3 = new File(com.apm.insight.l.j.a(), e.f());
                        c cVar2 = new c(file3);
                        cVar2.b(file3);
                        a(cVar2.c(), cVar2.a(), str);
                    }
                } catch (Throwable unused3) {
                    a("", null, str);
                }
            }
        }
    }

    private static void a(String str, String str2, String str3) {
        for (ICrashCallback iCrashCallback : l.a().d()) {
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(CrashType.NATIVE, str, str3, str2);
                } else {
                    iCrashCallback.onCrash(CrashType.NATIVE, str, null);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
        }
    }
}
