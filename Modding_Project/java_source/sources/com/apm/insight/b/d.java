package com.apm.insight.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.b.h;
import com.apm.insight.l.m;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ANRUtils.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f6753a = null;

    /* renamed from: b  reason: collision with root package name */
    private static long f6754b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f6755c = false;

    /* renamed from: d  reason: collision with root package name */
    private static FileObserver f6756d;

    /* renamed from: e  reason: collision with root package name */
    private static ActivityManager.ProcessErrorStateInfo f6757e;

    public static boolean b() {
        return f6755c;
    }

    public static void c() {
        f6757e = null;
    }

    public static void a(final String str, final h.a aVar) {
        FileObserver fileObserver = f6756d;
        if (fileObserver != null) {
            fileObserver.stopWatching();
        }
        FileObserver fileObserver2 = new FileObserver(str) { // from class: com.apm.insight.b.d.1
            @Override // android.os.FileObserver
            public final void onEvent(int i10, @Nullable String str2) {
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        String unused = d.f6753a = aVar.a();
                    } catch (Throwable th2) {
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                    }
                }
            }
        };
        f6756d = fileObserver2;
        fileObserver2.startWatching();
    }

    public static JSONObject a() throws JSONException {
        try {
            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("thread_number", 1);
            jSONObject.put("mainStackFromTrace", m.a(stackTrace));
            return jSONObject;
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        if (SystemClock.uptimeMillis() - f6754b < 5000) {
            return null;
        }
        try {
            ActivityManager.ProcessErrorStateInfo a10 = com.apm.insight.l.a.a(context);
            if (a10 != null && Process.myPid() == a10.pid) {
                ActivityManager.ProcessErrorStateInfo processErrorStateInfo = f6757e;
                if (processErrorStateInfo != null && String.valueOf(processErrorStateInfo.condition).equals(String.valueOf(a10.condition)) && String.valueOf(processErrorStateInfo.processName).equals(String.valueOf(a10.processName)) && String.valueOf(processErrorStateInfo.pid).equals(String.valueOf(a10.pid)) && String.valueOf(processErrorStateInfo.uid).equals(String.valueOf(a10.uid)) && String.valueOf(processErrorStateInfo.tag).equals(String.valueOf(a10.tag)) && String.valueOf(processErrorStateInfo.shortMsg).equals(String.valueOf(a10.shortMsg)) && String.valueOf(processErrorStateInfo.longMsg).equals(String.valueOf(a10.longMsg))) {
                    return null;
                }
                f6757e = a10;
                f6753a = null;
                f6754b = SystemClock.uptimeMillis();
                f6755c = false;
                if (!com.apm.insight.e.t()) {
                    return "|------------- processErrorStateInfo--------------|\ndisable anr info\n\"-----------------------end----------------------------\"";
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("|------------- processErrorStateInfo--------------|\n");
                sb2.append("condition: " + a10.condition + "\n");
                sb2.append("processName: " + a10.processName + "\n");
                sb2.append("pid: " + a10.pid + "\n");
                sb2.append("uid: " + a10.uid + "\n");
                sb2.append("tag: " + a10.tag + "\n");
                sb2.append("shortMsg : " + a10.shortMsg + "\n");
                sb2.append("longMsg : " + a10.longMsg + "\n");
                sb2.append("-----------------------end----------------------------");
                return sb2.toString();
            }
        } catch (Throwable unused) {
        }
        String str = f6753a;
        if (str != null) {
            f6755c = true;
            f6753a = null;
            f6754b = SystemClock.uptimeMillis();
            return str;
        }
        return null;
    }
}
