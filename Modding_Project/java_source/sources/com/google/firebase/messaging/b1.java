package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicsSubscriber.java */
/* loaded from: classes5.dex */
public class b1 {

    /* renamed from: i  reason: collision with root package name */
    private static final long f21149i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: a  reason: collision with root package name */
    private final Context f21150a;

    /* renamed from: b  reason: collision with root package name */
    private final h0 f21151b;

    /* renamed from: c  reason: collision with root package name */
    private final c0 f21152c;

    /* renamed from: d  reason: collision with root package name */
    private final FirebaseMessaging f21153d;

    /* renamed from: f  reason: collision with root package name */
    private final ScheduledExecutorService f21155f;

    /* renamed from: h  reason: collision with root package name */
    private final z0 f21157h;
    @GuardedBy("pendingOperations")

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> f21154e = new ArrayMap();
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    private boolean f21156g = false;

    private b1(FirebaseMessaging firebaseMessaging, h0 h0Var, z0 z0Var, c0 c0Var, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.f21153d = firebaseMessaging;
        this.f21151b = h0Var;
        this.f21157h = z0Var;
        this.f21152c = c0Var;
        this.f21150a = context;
        this.f21155f = scheduledExecutorService;
    }

    @WorkerThread
    private static <T> void b(Task<T> task) throws IOException {
        try {
            Tasks.await(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException(e11);
            }
            throw ((IOException) cause);
        } catch (TimeoutException e12) {
            e = e12;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    @WorkerThread
    private void c(String str) throws IOException {
        b(this.f21152c.m(this.f21153d.k(), str));
    }

    @WorkerThread
    private void d(String str) throws IOException {
        b(this.f21152c.n(this.f21153d.k(), str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public static Task<b1> e(final FirebaseMessaging firebaseMessaging, final h0 h0Var, final c0 c0Var, final Context context, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.a1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b1 i10;
                i10 = b1.i(context, scheduledExecutorService, firebaseMessaging, h0Var, c0Var);
                return i10;
            }
        });
    }

    static boolean g() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b1 i(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, h0 h0Var, c0 c0Var) throws Exception {
        return new b1(firebaseMessaging, h0Var, z0.a(context, scheduledExecutorService), c0Var, context, scheduledExecutorService);
    }

    private void j(y0 y0Var) {
        synchronized (this.f21154e) {
            try {
                String e10 = y0Var.e();
                if (!this.f21154e.containsKey(e10)) {
                    return;
                }
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.f21154e.get(e10);
                TaskCompletionSource<Void> poll = arrayDeque.poll();
                if (poll != null) {
                    poll.setResult(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f21154e.remove(e10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void n() {
        if (!h()) {
            q(0L);
        }
    }

    boolean f() {
        if (this.f21157h.b() != null) {
            return true;
        }
        return false;
    }

    synchronized boolean h() {
        return this.f21156g;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c A[Catch: IOException -> 0x001f, TryCatch #0 {IOException -> 0x001f, blocks: (B:3:0x0003, B:20:0x0033, B:22:0x0039, B:23:0x0053, B:25:0x0060, B:26:0x007c, B:28:0x0089, B:8:0x0015, B:13:0x0022), top: B:44:0x0003 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean k(com.google.firebase.messaging.y0 r7) throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "FirebaseMessaging"
            r1 = 0
            java.lang.String r2 = r7.b()     // Catch: java.io.IOException -> L1f
            int r3 = r2.hashCode()     // Catch: java.io.IOException -> L1f
            r4 = 83
            r5 = 1
            if (r3 == r4) goto L22
            r4 = 85
            if (r3 == r4) goto L15
            goto L2c
        L15:
            java.lang.String r3 = "U"
            boolean r2 = r2.equals(r3)     // Catch: java.io.IOException -> L1f
            if (r2 == 0) goto L2c
            r2 = r5
            goto L2d
        L1f:
            r7 = move-exception
            goto La5
        L22:
            java.lang.String r3 = "S"
            boolean r2 = r2.equals(r3)     // Catch: java.io.IOException -> L1f
            if (r2 == 0) goto L2c
            r2 = r1
            goto L2d
        L2c:
            r2 = -1
        L2d:
            java.lang.String r3 = " succeeded."
            if (r2 == 0) goto L7c
            if (r2 == r5) goto L53
            boolean r2 = g()     // Catch: java.io.IOException -> L1f
            if (r2 == 0) goto La4
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L1f
            r2.<init>()     // Catch: java.io.IOException -> L1f
            java.lang.String r3 = "Unknown topic operation"
            r2.append(r3)     // Catch: java.io.IOException -> L1f
            r2.append(r7)     // Catch: java.io.IOException -> L1f
            java.lang.String r7 = "."
            r2.append(r7)     // Catch: java.io.IOException -> L1f
            java.lang.String r7 = r2.toString()     // Catch: java.io.IOException -> L1f
            android.util.Log.d(r0, r7)     // Catch: java.io.IOException -> L1f
            goto La4
        L53:
            java.lang.String r2 = r7.c()     // Catch: java.io.IOException -> L1f
            r6.d(r2)     // Catch: java.io.IOException -> L1f
            boolean r2 = g()     // Catch: java.io.IOException -> L1f
            if (r2 == 0) goto La4
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L1f
            r2.<init>()     // Catch: java.io.IOException -> L1f
            java.lang.String r4 = "Unsubscribe from topic: "
            r2.append(r4)     // Catch: java.io.IOException -> L1f
            java.lang.String r7 = r7.c()     // Catch: java.io.IOException -> L1f
            r2.append(r7)     // Catch: java.io.IOException -> L1f
            r2.append(r3)     // Catch: java.io.IOException -> L1f
            java.lang.String r7 = r2.toString()     // Catch: java.io.IOException -> L1f
            android.util.Log.d(r0, r7)     // Catch: java.io.IOException -> L1f
            goto La4
        L7c:
            java.lang.String r2 = r7.c()     // Catch: java.io.IOException -> L1f
            r6.c(r2)     // Catch: java.io.IOException -> L1f
            boolean r2 = g()     // Catch: java.io.IOException -> L1f
            if (r2 == 0) goto La4
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L1f
            r2.<init>()     // Catch: java.io.IOException -> L1f
            java.lang.String r4 = "Subscribe to topic: "
            r2.append(r4)     // Catch: java.io.IOException -> L1f
            java.lang.String r7 = r7.c()     // Catch: java.io.IOException -> L1f
            r2.append(r7)     // Catch: java.io.IOException -> L1f
            r2.append(r3)     // Catch: java.io.IOException -> L1f
            java.lang.String r7 = r2.toString()     // Catch: java.io.IOException -> L1f
            android.util.Log.d(r0, r7)     // Catch: java.io.IOException -> L1f
        La4:
            return r5
        La5:
            java.lang.String r2 = "SERVICE_NOT_AVAILABLE"
            java.lang.String r3 = r7.getMessage()
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto Ld7
            java.lang.String r2 = "INTERNAL_SERVER_ERROR"
            java.lang.String r3 = r7.getMessage()
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto Ld7
            java.lang.String r2 = "TOO_MANY_SUBSCRIBERS"
            java.lang.String r3 = r7.getMessage()
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto Lca
            goto Ld7
        Lca:
            java.lang.String r2 = r7.getMessage()
            if (r2 != 0) goto Ld6
            java.lang.String r7 = "Topic operation failed without exception message. Will retry Topic operation."
            android.util.Log.e(r0, r7)
            return r1
        Ld6:
            throw r7
        Ld7:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Topic operation failed: "
            r2.append(r3)
            java.lang.String r7 = r7.getMessage()
            r2.append(r7)
            java.lang.String r7 = ". Will retry Topic operation."
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            android.util.Log.e(r0, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.b1.k(com.google.firebase.messaging.y0):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(Runnable runnable, long j10) {
        this.f21155f.schedule(runnable, j10, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void m(boolean z10) {
        this.f21156g = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        if (f()) {
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001a, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (g() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean p() throws java.io.IOException {
        /*
            r2 = this;
        L0:
            monitor-enter(r2)
            com.google.firebase.messaging.z0 r0 = r2.f21157h     // Catch: java.lang.Throwable -> L17
            com.google.firebase.messaging.y0 r0 = r0.b()     // Catch: java.lang.Throwable -> L17
            if (r0 != 0) goto L1c
            boolean r0 = g()     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto L19
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "topic sync succeeded"
            android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L17
            goto L19
        L17:
            r0 = move-exception
            goto L2e
        L19:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L17
            r0 = 1
            return r0
        L1c:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L17
            boolean r1 = r2.k(r0)
            if (r1 != 0) goto L25
            r0 = 0
            return r0
        L25:
            com.google.firebase.messaging.z0 r1 = r2.f21157h
            r1.d(r0)
            r2.j(r0)
            goto L0
        L2e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L17
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.b1.p():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(long j10) {
        l(new c1(this, this.f21150a, this.f21151b, Math.min(Math.max(30L, 2 * j10), f21149i)), j10);
        m(true);
    }
}
