package com.google.firebase.appcheck.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseException;
import com.google.firebase.f;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import p7.e;
import r7.a;
import u8.h;
/* compiled from: DefaultFirebaseAppCheck.java */
/* loaded from: classes5.dex */
public class b extends p7.e {

    /* renamed from: a  reason: collision with root package name */
    private final f f20356a;

    /* renamed from: b  reason: collision with root package name */
    private final w8.b<h> f20357b;

    /* renamed from: c  reason: collision with root package name */
    private final List<s7.a> f20358c;

    /* renamed from: d  reason: collision with root package name */
    private final List<e.a> f20359d;

    /* renamed from: e  reason: collision with root package name */
    private final StorageHelper f20360e;

    /* renamed from: f  reason: collision with root package name */
    private final e f20361f;

    /* renamed from: g  reason: collision with root package name */
    private final Executor f20362g;

    /* renamed from: h  reason: collision with root package name */
    private final Executor f20363h;

    /* renamed from: i  reason: collision with root package name */
    private final Executor f20364i;

    /* renamed from: j  reason: collision with root package name */
    private final Task<Void> f20365j;

    /* renamed from: k  reason: collision with root package name */
    private final r7.a f20366k;

    /* renamed from: l  reason: collision with root package name */
    private p7.b f20367l;

    /* renamed from: m  reason: collision with root package name */
    private p7.a f20368m;

    /* renamed from: n  reason: collision with root package name */
    private p7.c f20369n;

    /* renamed from: o  reason: collision with root package name */
    private Task<p7.c> f20370o;

    public b(@NonNull f fVar, @NonNull w8.b<h> bVar, @o7.d Executor executor, @o7.c Executor executor2, @o7.a Executor executor3, @o7.b ScheduledExecutorService scheduledExecutorService) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(bVar);
        this.f20356a = fVar;
        this.f20357b = bVar;
        this.f20358c = new ArrayList();
        this.f20359d = new ArrayList();
        this.f20360e = new StorageHelper(fVar.l(), fVar.q());
        this.f20361f = new e(fVar.l(), this, executor2, scheduledExecutorService);
        this.f20362g = executor;
        this.f20363h = executor2;
        this.f20364i = executor3;
        this.f20365j = v(executor3);
        this.f20366k = new a.C0914a();
    }

    private boolean n() {
        p7.c cVar = this.f20369n;
        if (cVar != null && cVar.a() - this.f20366k.currentTimeMillis() > PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task p(p7.c cVar) throws Exception {
        x(cVar);
        for (e.a aVar : this.f20359d) {
            aVar.a(cVar);
        }
        q7.b c10 = q7.b.c(cVar);
        for (s7.a aVar2 : this.f20358c) {
            aVar2.a(c10);
        }
        return Tasks.forResult(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task q(boolean z10, Task task) throws Exception {
        if (!z10 && n()) {
            return Tasks.forResult(this.f20369n);
        }
        if (this.f20368m == null) {
            return Tasks.forException(new FirebaseException("No AppCheckProvider installed."));
        }
        Task<p7.c> task2 = this.f20370o;
        if (task2 == null || task2.isComplete() || this.f20370o.isCanceled()) {
            this.f20370o = l();
        }
        return this.f20370o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task r(Task task) throws Exception {
        if (task.isSuccessful()) {
            return Tasks.forResult(q7.b.c((p7.c) task.getResult()));
        }
        return Tasks.forResult(q7.b.d(new FirebaseException(task.getException().getMessage(), task.getException())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task s(boolean z10, Task task) throws Exception {
        if (!z10 && n()) {
            return Tasks.forResult(q7.b.c(this.f20369n));
        }
        if (this.f20368m == null) {
            return Tasks.forResult(q7.b.d(new FirebaseException("No AppCheckProvider installed.")));
        }
        Task<p7.c> task2 = this.f20370o;
        if (task2 == null || task2.isComplete() || this.f20370o.isCanceled()) {
            this.f20370o = l();
        }
        return this.f20370o.continueWithTask(this.f20363h, new Continuation() { // from class: q7.f
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task3) {
                Task r10;
                r10 = com.google.firebase.appcheck.internal.b.r(task3);
                return r10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(TaskCompletionSource taskCompletionSource) {
        p7.c d10 = this.f20360e.d();
        if (d10 != null) {
            w(d10);
        }
        taskCompletionSource.setResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(p7.c cVar) {
        this.f20360e.e(cVar);
    }

    private Task<Void> v(@NonNull Executor executor) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new Runnable() { // from class: q7.c
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.appcheck.internal.b.this.t(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    private void x(@NonNull final p7.c cVar) {
        this.f20364i.execute(new Runnable() { // from class: q7.h
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.appcheck.internal.b.this.u(cVar);
            }
        });
        w(cVar);
        this.f20361f.d(cVar);
    }

    @Override // s7.b
    @NonNull
    public Task<p7.d> a(final boolean z10) {
        return this.f20365j.continueWithTask(this.f20363h, new Continuation() { // from class: q7.e
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task s10;
                s10 = com.google.firebase.appcheck.internal.b.this.s(z10, task);
                return s10;
            }
        });
    }

    @Override // p7.e
    @NonNull
    public Task<p7.c> b(final boolean z10) {
        return this.f20365j.continueWithTask(this.f20363h, new Continuation() { // from class: q7.d
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task q10;
                q10 = com.google.firebase.appcheck.internal.b.this.q(z10, task);
                return q10;
            }
        });
    }

    @Override // p7.e
    public void e(@NonNull p7.b bVar) {
        o(bVar, this.f20356a.v());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<p7.c> l() {
        return this.f20368m.getToken().onSuccessTask(this.f20362g, new SuccessContinuation() { // from class: q7.g
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task p10;
                p10 = com.google.firebase.appcheck.internal.b.this.p((p7.c) obj);
                return p10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public w8.b<h> m() {
        return this.f20357b;
    }

    public void o(@NonNull p7.b bVar, boolean z10) {
        Preconditions.checkNotNull(bVar);
        this.f20367l = bVar;
        this.f20368m = bVar.a(this.f20356a);
        this.f20361f.e(z10);
    }

    @VisibleForTesting
    void w(@NonNull p7.c cVar) {
        this.f20369n = cVar;
    }
}
