package com.mbridge.msdk.foundation.same.report.crashreport;

import android.annotation.TargetApi;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
/* compiled from: AnrMonitor.java */
/* loaded from: classes5.dex */
public class c extends Thread {

    /* renamed from: e  reason: collision with root package name */
    private static volatile c f27214e;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f27215a;

    /* renamed from: b  reason: collision with root package name */
    private volatile b f27216b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.crashreport.a f27217c;

    /* renamed from: d  reason: collision with root package name */
    private int f27218d;

    /* compiled from: AnrMonitor.java */
    /* loaded from: classes5.dex */
    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private long f27219a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f27220b;

        /* renamed from: c  reason: collision with root package name */
        private long f27221c;

        private b() {
            this.f27219a = SystemClock.uptimeMillis();
        }

        void b() {
            this.f27220b = false;
            this.f27221c = SystemClock.uptimeMillis();
            c.this.f27215a.postAtFrontOfQueue(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this) {
                this.f27220b = true;
                this.f27219a = SystemClock.uptimeMillis();
            }
        }

        boolean a() {
            return !this.f27220b || this.f27219a - this.f27221c >= ((long) c.this.f27218d);
        }
    }

    private c() {
        super("AnrMonitor-Thread");
        this.f27215a = new Handler(Looper.getMainLooper());
        this.f27218d = 5000;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    @TargetApi(16)
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            if (!isInterrupted() && (this.f27216b == null || this.f27216b.f27220b)) {
                synchronized (this) {
                    try {
                        if (this.f27216b == null) {
                            this.f27216b = new b();
                        }
                        this.f27216b.b();
                        long j10 = this.f27218d;
                        long uptimeMillis = SystemClock.uptimeMillis();
                        while (j10 > 0) {
                            try {
                                wait(j10);
                            } catch (InterruptedException e10) {
                                Log.w("AnrMonitor", e10.toString());
                            }
                            j10 = this.f27218d - (SystemClock.uptimeMillis() - uptimeMillis);
                        }
                        if (!this.f27216b.a()) {
                            com.mbridge.msdk.foundation.same.report.crashreport.a aVar = this.f27217c;
                            if (aVar != null) {
                                aVar.a();
                            }
                        } else if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger() && this.f27217c != null) {
                            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                            this.f27217c.a(d.b(stackTrace), stackTrace);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else {
                try {
                    Thread.sleep(this.f27218d);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static c a() {
        if (f27214e == null) {
            synchronized (c.class) {
                try {
                    if (f27214e == null) {
                        f27214e = new c();
                    }
                } finally {
                }
            }
        }
        return f27214e;
    }

    public c a(int i10, com.mbridge.msdk.foundation.same.report.crashreport.a aVar) {
        this.f27218d = i10;
        this.f27217c = aVar;
        return this;
    }
}
