package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.j1;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: WithinAppServiceConnection.java */
/* loaded from: classes5.dex */
class j1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Context f21212a;

    /* renamed from: b  reason: collision with root package name */
    private final Intent f21213b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f21214c;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<a> f21215d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private g1 f21216e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private boolean f21217f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WithinAppServiceConnection.java */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f21218a;

        /* renamed from: b  reason: collision with root package name */
        private final TaskCompletionSource<Void> f21219b = new TaskCompletionSource<>();

        a(Intent intent) {
            this.f21218a = intent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            Log.w("FirebaseMessaging", "Service took too long to process intent: " + this.f21218a.getAction() + " finishing.");
            d();
        }

        void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable() { // from class: com.google.firebase.messaging.h1
                @Override // java.lang.Runnable
                public final void run() {
                    j1.a.this.f();
                }
            }, 20L, TimeUnit.SECONDS);
            e().addOnCompleteListener(scheduledExecutorService, new OnCompleteListener() { // from class: com.google.firebase.messaging.i1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    schedule.cancel(false);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            this.f21219b.trySetResult(null);
        }

        Task<Void> e() {
            return this.f21219b.getTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(Context context, String str) {
        this(context, str, a());
    }

    @SuppressLint({"ThreadPoolCreation"})
    private static ScheduledThreadPoolExecutor a() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        return scheduledThreadPoolExecutor;
    }

    @GuardedBy("this")
    private void b() {
        while (!this.f21215d.isEmpty()) {
            this.f21215d.poll().d();
        }
    }

    private synchronized void c() {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "flush queue called");
            }
            while (!this.f21215d.isEmpty()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "found intent to be delivered");
                }
                g1 g1Var = this.f21216e;
                if (g1Var != null && g1Var.isBinderAlive()) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                    }
                    this.f21216e.c(this.f21215d.poll());
                } else {
                    e();
                    return;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @GuardedBy("this")
    private void e() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("binder is dead. start connection? ");
            sb2.append(!this.f21217f);
            Log.d("FirebaseMessaging", sb2.toString());
        }
        if (this.f21217f) {
            return;
        }
        this.f21217f = true;
        try {
        } catch (SecurityException e10) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e10);
        }
        if (ConnectionTracker.getInstance().bindService(this.f21212a, this.f21213b, this, 65)) {
            return;
        }
        Log.e("FirebaseMessaging", "binding to the service failed");
        this.f21217f = false;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Task<Void> d(Intent intent) {
        a aVar;
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
            }
            aVar = new a(intent);
            aVar.c(this.f21214c);
            this.f21215d.add(aVar);
            c();
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar.e();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "onServiceConnected: " + componentName);
            }
            this.f21217f = false;
            if (!(iBinder instanceof g1)) {
                Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
                b();
                return;
            }
            this.f21216e = (g1) iBinder;
            c();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: " + componentName);
        }
        c();
    }

    @VisibleForTesting
    j1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f21215d = new ArrayDeque();
        this.f21217f = false;
        Context applicationContext = context.getApplicationContext();
        this.f21212a = applicationContext;
        this.f21213b = new Intent(str).setPackage(applicationContext.getPackageName());
        this.f21214c = scheduledExecutorService;
    }
}
