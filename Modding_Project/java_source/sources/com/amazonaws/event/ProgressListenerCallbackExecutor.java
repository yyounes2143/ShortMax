package com.amazonaws.event;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public class ProgressListenerCallbackExecutor {

    /* renamed from: b  reason: collision with root package name */
    static ExecutorService f4971b = b();

    /* renamed from: a  reason: collision with root package name */
    private final ProgressListener f4972a;

    public ProgressListenerCallbackExecutor(ProgressListener progressListener) {
        this.f4972a = progressListener;
    }

    static ExecutorService b() {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.3
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("android-sdk-progress-listener-callback-thread");
                thread.setDaemon(true);
                return thread;
            }
        });
    }

    public static ProgressListenerCallbackExecutor d(ProgressListener progressListener) {
        if (progressListener == null) {
            return null;
        }
        return new ProgressListenerCallbackExecutor(progressListener);
    }

    public void c(final ProgressEvent progressEvent) {
        if (this.f4972a == null) {
            return;
        }
        f4971b.submit(new Runnable() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.2
            @Override // java.lang.Runnable
            public void run() {
                ProgressListenerCallbackExecutor.this.f4972a.a(progressEvent);
            }
        });
    }
}
