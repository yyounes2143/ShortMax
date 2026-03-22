package com.applovin.impl.sdk;

import android.os.Process;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.v4;
import java.lang.Thread;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class AppLovinExceptionHandler implements Thread.UncaughtExceptionHandler {

    /* renamed from: e  reason: collision with root package name */
    private static final AppLovinExceptionHandler f9487e = new AppLovinExceptionHandler();

    /* renamed from: a  reason: collision with root package name */
    private final Set f9488a = new HashSet(2);

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f9489b = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f9490c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f9491d;

    private String a(Throwable th2, int i10) {
        StackTraceElement[] stackTrace = th2.getStackTrace();
        return TextUtils.join("\n", (StackTraceElement[]) Arrays.copyOf(stackTrace, Math.min(i10, stackTrace.length)));
    }

    public static AppLovinExceptionHandler shared() {
        return f9487e;
    }

    public void addSdk(k kVar) {
        if (this.f9488a.contains(kVar)) {
            return;
        }
        this.f9488a.add(kVar);
    }

    public void enable() {
        if (this.f9489b.compareAndSet(false, true)) {
            this.f9491d = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        if (this.f9490c.getAndSet(true)) {
            Process.killProcess(Process.myPid());
            System.exit(1);
            return;
        }
        long j10 = 500;
        for (k kVar : this.f9488a) {
            kVar.O();
            if (o.a()) {
                kVar.O().a("AppLovinExceptionHandler", "Detected unhandled exception");
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("top_main_method", th2.toString());
            Integer num = (Integer) kVar.a(v4.f10384w6);
            if (num.intValue() > 0) {
                hashMap.put("details", a(th2, num.intValue()));
            }
            kVar.E().d(com.applovin.impl.c2.C0, hashMap);
            kVar.G().trackEventSynchronously("paused");
            j10 = ((Long) kVar.a(v4.f10293l3)).longValue();
        }
        try {
            Thread.sleep(j10);
        } catch (InterruptedException unused) {
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f9491d;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th2);
            return;
        }
        Process.killProcess(Process.myPid());
        System.exit(1);
    }
}
