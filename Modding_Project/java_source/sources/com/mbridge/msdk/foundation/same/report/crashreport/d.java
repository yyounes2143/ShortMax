package com.mbridge.msdk.foundation.same.report.crashreport;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.f;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AnrMonitorManager.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static long f27223a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnrMonitorManager.java */
    /* loaded from: classes5.dex */
    public static final class a implements com.mbridge.msdk.foundation.same.report.crashreport.a {

        /* compiled from: AnrMonitorManager.java */
        /* renamed from: com.mbridge.msdk.foundation.same.report.crashreport.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0374a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f27224a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ StackTraceElement[] f27225b;

            RunnableC0374a(String str, StackTraceElement[] stackTraceElementArr) {
                this.f27224a = str;
                this.f27225b = stackTraceElementArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.c(this.f27224a, this.f27225b);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(String str, StackTraceElement[] stackTraceElementArr) {
            try {
                d.b(str, stackTraceElementArr);
            } catch (Exception e10) {
                p0.b("AnrMonitorManager", "handler anr failed", e10);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.report.crashreport.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.same.report.crashreport.a
        public void a(String str, StackTraceElement[] stackTraceElementArr) {
            if (MBridgeConstans.DEBUG) {
                p0.a("AnrMonitorManager", "onAnrHappened: " + str);
            }
            if (d.b(str)) {
                long unused = d.f27223a = System.currentTimeMillis();
                com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new RunnableC0374a(str, stackTraceElementArr));
                return;
            }
            p0.a("AnrMonitorManager", "onAnrHappened: can track false");
        }
    }

    public static String b(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (stackTraceElement != null) {
                        sb2.append(stackTraceElement.toString());
                        sb2.append("\r\n");
                    }
                }
                return sb2.toString();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    private static JSONObject c(String str) throws JSONException {
        JSONObject a10 = b.a(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())));
        a10.put("crashinfo", str);
        return a10;
    }

    private static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.contains(MBridgeConstans.APPLICATION_STACK_COM_ANDROID) && !str.contains("com.google") && !str.contains("java.lang") && !str.contains(MBridgeConstans.APPLICATION_STACK_ANDROID_OS) && !str.contains(MBridgeConstans.APPLICATION_STACK_ANDROID_APP)) {
            return false;
        }
        return true;
    }

    public static String a(StackTraceElement[] stackTraceElementArr) {
        return c(stackTraceElementArr) ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL;
    }

    public static boolean c(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            try {
                ArrayList arrayList = new ArrayList();
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (stackTraceElement != null && !TextUtils.isEmpty(stackTraceElement.toString())) {
                        String stackTraceElement2 = stackTraceElement.toString();
                        if (!d(stackTraceElement2)) {
                            arrayList.add(stackTraceElement2);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return false;
                }
                return b((String) arrayList.get(0));
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("AnrMonitorManager", "isMBridgeFirst exception", e10);
                }
            }
        }
        return false;
    }

    private static int a() {
        try {
            int b10 = r0.a().b("anr_check_timeout", 5000);
            if (b10 <= 0) {
                return 5000;
            }
            return b10;
        } catch (Exception e10) {
            p0.b("AnrMonitorManager", "get anr check timeout failed", e10);
            return 5000;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, StackTraceElement[] stackTraceElementArr) throws JSONException {
        try {
            JSONObject c10 = c(str);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", c10.toString());
            jSONObject.put("crash_first_index_from_mtg", a(stackTraceElementArr));
            com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e("m_anr_report");
            eVar.a(jSONObject);
            eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
            eVar.b(0);
            eVar.a(1);
            f.a().b().c(eVar);
        } catch (JSONException e10) {
            p0.b("AnrMonitorManager", "reportANRByEventLibrary anr failed", e10);
        }
    }

    public static void c() {
        if (!b()) {
            p0.a("AnrMonitorManager", "anr monitor is not available");
            return;
        }
        try {
            c.a().a(a(), new a()).start();
        } catch (Exception e10) {
            p0.b("AnrMonitorManager", "start anr monitor failed", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            for (String str2 : b.a()) {
                if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static boolean b() {
        try {
            return r0.a().a("anr_monitor_available", false);
        } catch (Exception e10) {
            p0.b("AnrMonitorManager", "get anr monitor available failed", e10);
            return false;
        }
    }
}
