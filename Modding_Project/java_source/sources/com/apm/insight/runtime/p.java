package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* compiled from: ThreadWithHandler.java */
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private final HandlerThread f7238a;

    /* renamed from: d  reason: collision with root package name */
    private volatile Handler f7241d;

    /* renamed from: b  reason: collision with root package name */
    private final Queue<c> f7239b = new ConcurrentLinkedQueue();

    /* renamed from: c  reason: collision with root package name */
    private final Queue<Message> f7240c = new ConcurrentLinkedQueue();

    /* renamed from: e  reason: collision with root package name */
    private final Object f7242e = new Object();

    /* compiled from: ThreadWithHandler.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            while (!p.this.f7240c.isEmpty()) {
                if (p.this.f7241d != null) {
                    try {
                        p.this.f7241d.sendMessageAtFrontOfQueue((Message) p.this.f7240c.poll());
                    } catch (Throwable unused) {
                    }
                }
            }
            while (!p.this.f7239b.isEmpty()) {
                c cVar = (c) p.this.f7239b.poll();
                if (p.this.f7241d != null) {
                    try {
                        p.this.f7241d.sendMessageAtTime(cVar.f7247a, cVar.f7248b);
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
    }

    /* compiled from: ThreadWithHandler.java */
    /* loaded from: classes2.dex */
    class b extends HandlerThread {

        /* renamed from: a  reason: collision with root package name */
        private volatile int f7244a;

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f7245b;

        b(String str) {
            super(str);
            this.f7244a = 0;
            this.f7245b = false;
        }

        @Override // android.os.HandlerThread
        protected final void onLooperPrepared() {
            super.onLooperPrepared();
            synchronized (p.this.f7242e) {
                p.this.f7241d = new Handler();
            }
            p.this.f7241d.post(new a());
            while (true) {
                try {
                    Looper.loop();
                } catch (Throwable th2) {
                    try {
                        com.apm.insight.b.f.a(com.apm.insight.e.g()).a().c();
                        if (this.f7244a < 5) {
                            com.apm.insight.c.a();
                            j.a(th2, "NPTH_CATCH");
                        } else if (!this.f7245b) {
                            this.f7245b = true;
                            com.apm.insight.c.a();
                            j.a(new RuntimeException(), "NPTH_ERR_MAX");
                        }
                        this.f7244a++;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ThreadWithHandler.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        Message f7247a;

        /* renamed from: b  reason: collision with root package name */
        long f7248b;

        c(Message message, long j10) {
            this.f7247a = message;
            this.f7248b = j10;
        }
    }

    static {
        new Object() { // from class: com.apm.insight.runtime.p.1
        };
        new Object() { // from class: com.apm.insight.runtime.p.2
        };
    }

    public p(String str) {
        this.f7238a = new b(str);
    }

    public final void b() {
        this.f7238a.start();
    }

    public final HandlerThread c() {
        return this.f7238a;
    }

    private Message b(Runnable runnable) {
        return Message.obtain(this.f7241d, runnable);
    }

    @Nullable
    public final Handler a() {
        return this.f7241d;
    }

    private boolean b(Message message, long j10) {
        if (this.f7241d == null) {
            synchronized (this.f7242e) {
                try {
                    if (this.f7241d == null) {
                        this.f7239b.add(new c(message, j10));
                        return true;
                    }
                } finally {
                }
            }
        }
        try {
            return this.f7241d.sendMessageAtTime(message, j10);
        } catch (Throwable unused) {
            return true;
        }
    }

    public final boolean a(Runnable runnable) {
        return a(b(runnable), 0L);
    }

    public final boolean a(Runnable runnable, long j10) {
        return a(b(runnable), j10);
    }

    private boolean a(Message message, long j10) {
        if (j10 < 0) {
            j10 = 0;
        }
        return b(message, SystemClock.uptimeMillis() + j10);
    }
}
