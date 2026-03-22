package com.startshorts.androidplayer.manager.crash;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.crash.CrashManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import java.lang.Thread;
import java.util.concurrent.ConcurrentHashMap;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.d;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qe.a;
import ud.b;
/* compiled from: CrashManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CrashManager {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f42350b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f42351c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f42352d;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CrashManager f42349a = new CrashManager();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final i f42353e = c.b(new Function0() { // from class: te.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap k10;
            k10 = CrashManager.k();
            return k10;
        }
    });

    /* compiled from: CrashManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class QuitCockroachException extends RuntimeException {
        public QuitCockroachException(@Nullable String str) {
            super(str);
        }
    }

    private CrashManager() {
    }

    private final boolean f(String str) {
        if (str != null && str.length() != 0) {
            try {
                for (String str2 : v.r(a.f65321a.value().getInterceptCrashesType())) {
                    if (str2.length() > 0 && StringsKt.b0(str, str2, false, 2, null)) {
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private final ConcurrentHashMap<String, Integer> h() {
        return (ConcurrentHashMap) f42353e.getValue();
    }

    private final String i(Throwable th2) {
        try {
            return d.c(th2);
        } catch (Exception unused) {
            return "";
        }
    }

    private final void j(String str, Throwable th2, String str2) {
        int i10;
        g("interceptCrash -> threadName(" + str + ") stackTrace(" + str2 + ')');
        hk.c cVar = hk.c.f52893a;
        String message = th2.getMessage();
        if (message == null) {
            message = str2;
        }
        String a10 = cVar.a(message);
        Integer num = h().get(a10);
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        if (i10 < 2) {
            h().put(a10, Integer.valueOf(i10 + 1));
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString(CrashHianalyticsData.THREAD_NAME, str);
            bundle.putString("err_msg", th2.getMessage());
            bundle.putString(CrashHianalyticsData.STACK_TRACE, str2);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "app_crash", bundle, 0L, 4, null);
        }
        if ((th2 instanceof UnsatisfiedLinkError) && StringsKt.b0(str2, "libimagepipeline.so", false, 2, null)) {
            g("fresco exception -> " + th2.getMessage());
            b.f68412a.O3(true);
        } else if (StringsKt.b0(str2, "android.app.RemoteServiceException", false, 2, null) && StringsKt.b0(str2, "Bad notification", false, 2, null)) {
            g("push exception -> " + th2.getMessage());
            b.f68412a.A4(true);
        } else if (StringsKt.b0(str2, "OutOfMemoryError", false, 2, null)) {
            kk.a.a().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap k() {
        return new ConcurrentHashMap();
    }

    private final void l(int i10) {
        if (i10 != 1) {
            if (i10 == 2) {
                m();
                return;
            }
            return;
        }
        n();
    }

    private final void m() {
        if (!f42352d) {
            return;
        }
        f42352d = false;
        Logger.f41511a.h("CrashManager", "turn off ChildThreadInterceptCrash");
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = f42350b;
        if (uncaughtExceptionHandler != null) {
            Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        }
    }

    private final void n() {
        if (!f42351c) {
            return;
        }
        f42351c = false;
        Logger.f41511a.h("CrashManager", "turn off MainThreadInterceptCrash");
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: te.c
            @Override // java.lang.Runnable
            public final void run() {
                CrashManager.o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o() {
        throw new QuitCockroachException("Quit Cockroach.....");
    }

    private final void p(int i10) {
        if (i10 != 1) {
            if (i10 == 2) {
                q();
                return;
            }
            return;
        }
        s();
    }

    private final void q() {
        if (f42352d) {
            return;
        }
        f42352d = true;
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            Logger.f41511a.h("CrashManager", "turn on ChildThreadInterceptCrash");
            f42350b = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: te.b
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th2) {
                    CrashManager.r(defaultUncaughtExceptionHandler, thread, th2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread t10, Throwable e10) {
        Intrinsics.checkNotNullParameter(t10, "t");
        Intrinsics.checkNotNullParameter(e10, "e");
        CrashManager crashManager = f42349a;
        String i10 = crashManager.i(e10);
        if (f42352d && crashManager.f(i10)) {
            String name = t10.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            crashManager.j(name, e10, i10);
            return;
        }
        uncaughtExceptionHandler.uncaughtException(t10, e10);
    }

    private final void s() {
        if (f42351c) {
            return;
        }
        f42351c = true;
        Logger.f41511a.h("CrashManager", "turn on MainThreadInterceptCrash");
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: te.d
            @Override // java.lang.Runnable
            public final void run() {
                CrashManager.t();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t() {
        while (true) {
            try {
                Looper.loop();
            } catch (Throwable th2) {
                if (th2 instanceof QuitCockroachException) {
                    return;
                }
                CrashManager crashManager = f42349a;
                String i10 = crashManager.i(th2);
                if (f42351c && crashManager.f(i10)) {
                    crashManager.j("MainThread", th2, i10);
                } else {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = f42350b;
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(Looper.getMainLooper().getThread(), th2);
                    }
                }
            }
        }
    }

    public final void e() {
        a aVar = a.f65321a;
        if (aVar.value().getInterceptMainThreadCrashes()) {
            p(1);
        } else {
            l(1);
        }
        if (aVar.value().getInterceptChildThreadCrashes()) {
            p(2);
        } else {
            l(2);
        }
    }

    public final void g(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e("CrashManager", error);
    }
}
