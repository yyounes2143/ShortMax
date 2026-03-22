package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: ExecutorUtils.java */
/* loaded from: classes5.dex */
public final class f0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutorUtils.java */
    /* loaded from: classes5.dex */
    public class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20714a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AtomicLong f20715b;

        /* compiled from: ExecutorUtils.java */
        /* renamed from: com.google.firebase.crashlytics.internal.common.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0304a extends d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f20716a;

            C0304a(Runnable runnable) {
                this.f20716a = runnable;
            }

            @Override // com.google.firebase.crashlytics.internal.common.d
            public void s() {
                this.f20716a.run();
            }
        }

        a(String str, AtomicLong atomicLong) {
            this.f20714a = str;
            this.f20715b = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(new C0304a(runnable));
            newThread.setName(this.f20714a + this.f20715b.getAndIncrement());
            return newThread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutorUtils.java */
    /* loaded from: classes5.dex */
    public class b extends d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20718a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ExecutorService f20719b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f20720c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TimeUnit f20721d;

        b(String str, ExecutorService executorService, long j10, TimeUnit timeUnit) {
            this.f20718a = str;
            this.f20719b = executorService;
            this.f20720c = j10;
            this.f20721d = timeUnit;
        }

        @Override // com.google.firebase.crashlytics.internal.common.d
        public void s() {
            try {
                z7.g f10 = z7.g.f();
                f10.b("Executing shutdown hook for " + this.f20718a);
                this.f20719b.shutdown();
                if (!this.f20719b.awaitTermination(this.f20720c, this.f20721d)) {
                    z7.g f11 = z7.g.f();
                    f11.b(this.f20718a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                    this.f20719b.shutdownNow();
                }
            } catch (InterruptedException unused) {
                z7.g.f().b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f20718a));
                this.f20719b.shutdownNow();
            }
        }
    }

    private static void a(String str, ExecutorService executorService) {
        b(str, executorService, 2L, TimeUnit.SECONDS);
    }

    @SuppressLint({"ThreadPoolCreation"})
    private static void b(String str, ExecutorService executorService, long j10, TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        b bVar = new b(str, executorService, j10, timeUnit);
        runtime.addShutdownHook(new Thread(bVar, "Crashlytics Shutdown Hook for " + str));
    }

    public static ExecutorService c(String str) {
        ExecutorService e10 = e(d(str), new ThreadPoolExecutor.DiscardPolicy());
        a(str, e10);
        return e10;
    }

    public static ThreadFactory d(String str) {
        return new a(str, new AtomicLong(1L));
    }

    @SuppressLint({"ThreadPoolCreation"})
    private static ExecutorService e(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }
}
