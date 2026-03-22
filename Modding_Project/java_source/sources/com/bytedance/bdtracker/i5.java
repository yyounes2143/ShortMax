package com.bytedance.bdtracker;

import android.util.Log;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
/* loaded from: classes3.dex */
public class i5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f12063a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12064b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12065c = Log.getStackTraceString(new RuntimeException("origin stacktrace"));

    public i5(Runnable runnable, String str) {
        this.f12063a = runnable;
        this.f12064b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f12063a.run();
        } catch (Throwable th2) {
            IAppLogLogger global = LoggerImpl.global();
            StringBuilder a10 = a.a("Thread:");
            a10.append(this.f12064b);
            a10.append(" exception\n");
            a10.append(this.f12065c);
            global.error(1, a10.toString(), th2, new Object[0]);
        }
    }
}
