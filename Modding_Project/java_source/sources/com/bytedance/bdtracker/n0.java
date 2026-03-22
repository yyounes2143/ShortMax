package com.bytedance.bdtracker;

import android.os.Process;
import androidx.annotation.NonNull;
import com.bytedance.applog.exception.AppCrashType;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.b;
import com.bytedance.bdtracker.l0;
import java.lang.Thread;
import java.util.Collections;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class n0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: b  reason: collision with root package name */
    public static volatile n0 f12245b;

    /* renamed from: a  reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f12246a = Thread.getDefaultUncaughtExceptionHandler();

    /* loaded from: classes3.dex */
    public class a implements b.e {
        public a(n0 n0Var) {
        }

        @Override // com.bytedance.bdtracker.b.e
        public boolean a(d dVar) {
            if (dVar.getInitConfig() != null && AppCrashType.hasJavaCrashType(dVar.getInitConfig().getTrackCrashType())) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public class b implements b.d {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ b.e f12247a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ b4 f12248b;

        public b(n0 n0Var, b.e eVar, b4 b4Var) {
            this.f12247a = eVar;
            this.f12248b = b4Var;
        }

        @Override // com.bytedance.bdtracker.b.d
        public void a(d dVar) {
            if (this.f12247a.a(dVar)) {
                dVar.receive(this.f12248b);
                dVar.flush();
            }
        }
    }

    public n0() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static synchronized void a() {
        synchronized (n0.class) {
            if (f12245b == null) {
                f12245b = new n0();
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th2) {
        StackTraceElement[] stackTrace;
        long currentTimeMillis = System.currentTimeMillis();
        a aVar = new a(this);
        if (!com.bytedance.bdtracker.b.a(aVar)) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f12246a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th2);
                return;
            }
            try {
                Process.killProcess(Process.myPid());
                System.exit(10);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("$is_backstage", !w.f12480b);
            jSONObject.put("$event_time", currentTimeMillis);
            jSONObject.put("$crash_thread", thread.getName());
            jSONObject.put("$crash_process", l0.b.b());
            StringBuilder sb2 = new StringBuilder();
            for (Throwable th3 = th2; th3 != null; th3 = th3.getCause()) {
                sb2.append(th3.toString());
                for (StackTraceElement stackTraceElement : th3.getStackTrace()) {
                    sb2.append("\n\tat ");
                    sb2.append(stackTraceElement);
                }
            }
            jSONObject.put("$detailed_stack", sb2.toString());
        } catch (Throwable th4) {
            LoggerImpl.global().error(Collections.singletonList("ExceptionHandler"), "Collect crash params failed", th4, new Object[0]);
        }
        com.bytedance.bdtracker.b.a(new b(this, aVar, new b4("$crash", jSONObject)));
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f12246a;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th2);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }
}
