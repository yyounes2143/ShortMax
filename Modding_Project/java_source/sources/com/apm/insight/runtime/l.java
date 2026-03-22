package com.apm.insight.runtime;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import com.apm.insight.b.h;
import com.apm.insight.b.i;
import com.apm.insight.nativecrash.NativeImpl;
import java.io.File;
import java.util.Map;
/* compiled from: NpthCore.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f7208a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f7209b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7210c = false;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f7211d = false;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f7212e = false;

    /* renamed from: f  reason: collision with root package name */
    private static c f7213f = new c();

    /* renamed from: g  reason: collision with root package name */
    private static volatile boolean f7214g = false;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f7215h = false;

    public static c a() {
        return f7213f;
    }

    public static boolean b() {
        return f7209b;
    }

    public static boolean c() {
        return f7210c;
    }

    public static boolean d() {
        return f7211d;
    }

    public static boolean e() {
        return f7208a;
    }

    public static void f() {
        if (f7208a && !f7209b) {
            Context g10 = com.apm.insight.e.g();
            com.apm.insight.g.a a10 = com.apm.insight.g.a.a();
            a10.a(new com.apm.insight.i.b(g10));
            a10.b(new com.apm.insight.g.d(g10));
        }
    }

    public static void g() {
        if (f7208a) {
            com.apm.insight.b.f.a(com.apm.insight.e.g()).c();
            f7210c = true;
        }
    }

    public static boolean h() {
        if (f7208a && !f7211d) {
            boolean a10 = NativeImpl.a(com.apm.insight.e.g());
            f7211d = a10;
            if (!a10) {
                f7212e = true;
            }
        }
        return f7211d;
    }

    public static boolean i() {
        return com.apm.insight.b.c.c();
    }

    public static void j() {
        if (f7208a) {
            com.apm.insight.b.f.a(com.apm.insight.e.g()).d();
            f7210c = false;
        }
    }

    public static void k() {
        NativeImpl.c();
    }

    public static boolean l() {
        if (!com.apm.insight.g.a.b() && !NativeImpl.e()) {
            return false;
        }
        return true;
    }

    public static boolean m() {
        if (!com.apm.insight.g.a.c() && !NativeImpl.e()) {
            return false;
        }
        return true;
    }

    public static boolean n() {
        return com.apm.insight.g.a.b();
    }

    public static boolean o() {
        return f7215h;
    }

    public static void p() {
        f7215h = true;
    }

    static /* synthetic */ boolean r() {
        f7214g = true;
        return true;
    }

    public static synchronized void a(@NonNull Context context) {
        Application application;
        synchronized (l.class) {
            try {
                if (com.apm.insight.e.h() != null) {
                    application = com.apm.insight.e.h();
                } else if (context instanceof Application) {
                    application = (Application) context;
                    if (application.getBaseContext() == null) {
                        throw new IllegalArgumentException("The Application passed in when init has not been attached, please pass a attachBaseContext as param and call Npth.setApplication(Application) before init.");
                    }
                } else {
                    application = (Application) context.getApplicationContext();
                    if (application != null) {
                        if (application.getBaseContext() != null) {
                            context = application.getBaseContext();
                        }
                    } else {
                        throw new IllegalArgumentException("Can not get the Application instance since a baseContext was passed in when init, please call Npth.setApplication(Application) before init.");
                    }
                }
                a(application, context);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Deprecated
    public static void b(String str) {
        if (com.apm.insight.e.i().isReportErrorEnable()) {
            com.apm.insight.g.a.c(str);
        }
    }

    public static void c(String str) {
        NativeImpl.b(str);
    }

    public static void d(boolean z10) {
        com.apm.insight.e.d(z10);
    }

    static /* synthetic */ void e(boolean z10) {
        Context g10 = com.apm.insight.e.g();
        com.apm.insight.runtime.a.f.a();
        j.a();
        int b10 = NativeImpl.b();
        NativeImpl.d();
        if (f7212e) {
            com.apm.insight.c.a();
            com.apm.insight.b.a.a("NativeLibraryLoad faild");
        } else if (b10 < 0) {
            com.apm.insight.c.a();
            com.apm.insight.b.a.a("createCallbackThread faild");
        }
        com.apm.insight.e.a.a().a(g10);
        com.apm.insight.c.a();
        com.apm.insight.k.h.a(g10);
        if (z10) {
            com.apm.insight.b.f.a(g10).c();
            f7210c = z10;
        }
        com.apm.insight.k.g.a().b();
        NativeImpl.g();
        com.apm.insight.k.j.d();
        NativeImpl.k();
        n.a("afterNpthInitAsync", "noValue");
    }

    public static void c(boolean z10) {
        com.apm.insight.e.c(z10);
    }

    public static void b(h.a aVar) {
        com.apm.insight.k.e.a(aVar);
    }

    private static boolean c(Context context) {
        try {
            return new File(context.getApplicationInfo().nativeLibraryDir, "libapminsighta.so").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void b(long j10) {
        NativeImpl.b(j10);
    }

    public static void b(boolean z10) {
        com.apm.insight.e.b(z10);
    }

    private static boolean b(Context context) {
        try {
            return new File(com.apm.insight.l.j.j(context), "npth").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void b(ICrashCallback iCrashCallback, CrashType crashType) {
        f7213f.b(iCrashCallback, crashType);
    }

    public static void b(IOOMCallback iOOMCallback) {
        f7213f.b(iOOMCallback);
    }

    public static synchronized void a(@NonNull Application application, @NonNull Context context) {
        synchronized (l.class) {
            try {
                long uptimeMillis = SystemClock.uptimeMillis();
                if (f7208a) {
                    return;
                }
                f7208a = true;
                if (context != null && application != null) {
                    com.apm.insight.e.a(application, context);
                    if (!com.apm.insight.e.u() || (!b(application) && !c(application))) {
                        com.apm.insight.g.a a10 = com.apm.insight.g.a.a();
                        a10.a(new com.apm.insight.i.b(context));
                        a10.b(new com.apm.insight.g.d(context));
                        f7209b = true;
                        NativeImpl.a();
                        boolean a11 = NativeImpl.a(context);
                        f7211d = a11;
                        if (!a11) {
                            f7212e = true;
                        }
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            f7214g = true;
                            NativeImpl.i();
                        }
                        m.a().a(new Runnable() { // from class: com.apm.insight.runtime.l.2

                            /* renamed from: a  reason: collision with root package name */
                            private /* synthetic */ boolean f7218a = true;

                            @Override // java.lang.Runnable
                            public final void run() {
                                if (!l.f7214g) {
                                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apm.insight.runtime.l.2.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            l.r();
                                            NativeImpl.i();
                                        }
                                    });
                                }
                                l.e(this.f7218a);
                            }
                        }, 0L);
                        com.apm.insight.a.a((Object) ("Npth.init takes " + (SystemClock.uptimeMillis() - uptimeMillis) + " ms."));
                        return;
                    }
                    Log.e("apminsight", "Inner npth checked.");
                    return;
                }
                throw new IllegalArgumentException("context or Application must be not null.");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(final String str, final h.a aVar) {
        m.a().a(new Runnable() { // from class: com.apm.insight.runtime.l.1
            @Override // java.lang.Runnable
            public final void run() {
                if (com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                    com.apm.insight.b.d.a(str, aVar);
                }
            }
        });
    }

    public static void a(h.a aVar) {
        h.a(aVar);
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str);
    }

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable h.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str, map, map2, aVar);
    }

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @Nullable h.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str, map, map2, map3, aVar);
    }

    @Deprecated
    public static void a(@NonNull Throwable th2) {
        if (com.apm.insight.e.i().isReportErrorEnable()) {
            com.apm.insight.g.a.a(th2);
        }
    }

    public static void a(String str, i.a aVar, i.a aVar2) {
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            return;
        }
        com.apm.insight.a.a.a().a(str, aVar, aVar2);
    }

    public static void a(long j10) {
        NativeImpl.a(j10);
    }

    public static void a(@NonNull i.a aVar) {
        com.apm.insight.e.i().setEncryptImpl$22f2d42e(aVar);
    }

    public static void a(boolean z10) {
        com.apm.insight.e.a(z10);
    }

    public static void a(ICrashCallback iCrashCallback, CrashType crashType) {
        f7213f.a(iCrashCallback, crashType);
    }

    public static void a(IOOMCallback iOOMCallback) {
        f7213f.a(iOOMCallback);
    }
}
