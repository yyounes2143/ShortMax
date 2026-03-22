package com.google.firebase.crashlytics.internal.concurrency;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: CrashlyticsWorker.java */
/* loaded from: classes5.dex */
public class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f20848a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f20849b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private Task<?> f20850c = Tasks.forResult(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ExecutorService executorService) {
        this.f20848a = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task d(Runnable runnable, Task task) throws Exception {
        runnable.run();
        return Tasks.forResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task e(Callable callable, Task task) throws Exception {
        return (Task) callable.call();
    }

    public ExecutorService c() {
        return this.f20848a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f20848a.execute(runnable);
    }

    public Task<Void> f(final Runnable runnable) {
        Task continueWithTask;
        synchronized (this.f20849b) {
            continueWithTask = this.f20850c.continueWithTask(this.f20848a, new Continuation() { // from class: c8.d
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    Task d10;
                    d10 = com.google.firebase.crashlytics.internal.concurrency.a.d(runnable, task);
                    return d10;
                }
            });
            this.f20850c = continueWithTask;
        }
        return continueWithTask;
    }

    public <T> Task<T> g(final Callable<Task<T>> callable) {
        Task task;
        synchronized (this.f20849b) {
            task = (Task<T>) this.f20850c.continueWithTask(this.f20848a, new Continuation() { // from class: c8.c
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    Task e10;
                    e10 = com.google.firebase.crashlytics.internal.concurrency.a.e(callable, task2);
                    return e10;
                }
            });
            this.f20850c = task;
        }
        return task;
    }
}
