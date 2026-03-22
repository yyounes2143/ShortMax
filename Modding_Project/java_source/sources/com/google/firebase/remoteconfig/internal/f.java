package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: ConfigCacheClient.java */
@AnyThread
/* loaded from: classes5.dex */
public class f {
    @GuardedBy("ConfigCacheClient.class")

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, f> f21392d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private static final Executor f21393e = new androidx.credentials.a();

    /* renamed from: a  reason: collision with root package name */
    private final Executor f21394a;

    /* renamed from: b  reason: collision with root package name */
    private final t f21395b;
    @Nullable
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private Task<g> f21396c = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConfigCacheClient.java */
    /* loaded from: classes5.dex */
    public static class b<TResult> implements OnSuccessListener<TResult>, OnFailureListener, OnCanceledListener {

        /* renamed from: a  reason: collision with root package name */
        private final CountDownLatch f21397a;

        private b() {
            this.f21397a = new CountDownLatch(1);
        }

        public boolean a(long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f21397a.await(j10, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public void onCanceled() {
            this.f21397a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(@NonNull Exception exc) {
            this.f21397a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(TResult tresult) {
            this.f21397a.countDown();
        }
    }

    private f(Executor executor, t tVar) {
        this.f21394a = executor;
        this.f21395b = tVar;
    }

    private static <TResult> TResult c(Task<TResult> task, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        b bVar = new b();
        Executor executor = f21393e;
        task.addOnSuccessListener(executor, bVar);
        task.addOnFailureListener(executor, bVar);
        task.addOnCanceledListener(executor, bVar);
        if (bVar.a(j10, timeUnit)) {
            if (task.isSuccessful()) {
                return task.getResult();
            }
            throw new ExecutionException(task.getException());
        }
        throw new TimeoutException("Task await timed out.");
    }

    public static synchronized f h(Executor executor, t tVar) {
        f fVar;
        synchronized (f.class) {
            try {
                String b10 = tVar.b();
                Map<String, f> map = f21392d;
                if (!map.containsKey(b10)) {
                    map.put(b10, new f(executor, tVar));
                }
                fVar = map.get(b10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void i(g gVar) throws Exception {
        return this.f21395b.e(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task j(boolean z10, g gVar, Void r32) throws Exception {
        if (z10) {
            m(gVar);
        }
        return Tasks.forResult(gVar);
    }

    private synchronized void m(g gVar) {
        this.f21396c = Tasks.forResult(gVar);
    }

    public void d() {
        synchronized (this) {
            this.f21396c = Tasks.forResult(null);
        }
        this.f21395b.a();
    }

    public synchronized Task<g> e() {
        try {
            Task<g> task = this.f21396c;
            if (task != null) {
                if (task.isComplete() && !this.f21396c.isSuccessful()) {
                }
            }
            Executor executor = this.f21394a;
            final t tVar = this.f21395b;
            Objects.requireNonNull(tVar);
            this.f21396c = Tasks.call(executor, new Callable() { // from class: com.google.firebase.remoteconfig.internal.c
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return t.this.d();
                }
            });
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f21396c;
    }

    @Nullable
    public g f() {
        return g(5L);
    }

    @Nullable
    @VisibleForTesting
    g g(long j10) {
        synchronized (this) {
            try {
                Task<g> task = this.f21396c;
                if (task != null && task.isSuccessful()) {
                    return this.f21396c.getResult();
                }
                try {
                    return (g) c(e(), j10, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e10) {
                    Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e10);
                    return null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Task<g> k(g gVar) {
        return l(gVar, true);
    }

    public Task<g> l(final g gVar, final boolean z10) {
        return Tasks.call(this.f21394a, new Callable() { // from class: com.google.firebase.remoteconfig.internal.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void i10;
                i10 = f.this.i(gVar);
                return i10;
            }
        }).onSuccessTask(this.f21394a, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.e
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task j10;
                j10 = f.this.j(z10, gVar, (Void) obj);
                return j10;
            }
        });
    }
}
