package com.google.firebase.crashlytics.internal.common;

import android.os.Looper;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: Utils.java */
/* loaded from: classes5.dex */
public final class v0 {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f20818a = f0.c("awaitEvenIfOnMainThread task continuation executor");

    @Deprecated
    public static <T> T b(Task<T> task) throws InterruptedException, TimeoutException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        task.continueWith(f20818a, new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.u0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                Object d10;
                d10 = v0.d(countDownLatch, task2);
                return d10;
            }
        });
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
        } else {
            countDownLatch.await(4000L, TimeUnit.MILLISECONDS);
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (!task.isCanceled()) {
            if (task.isComplete()) {
                throw new IllegalStateException(task.getException());
            }
            throw new TimeoutException();
        }
        throw new CancellationException("Task is already canceled");
    }

    public static boolean c(CountDownLatch countDownLatch, long j10, TimeUnit timeUnit) {
        boolean z10 = false;
        try {
            long nanos = timeUnit.toNanos(j10);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z10 = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z10) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object d(CountDownLatch countDownLatch, Task task) throws Exception {
        countDownLatch.countDown();
        return null;
    }
}
