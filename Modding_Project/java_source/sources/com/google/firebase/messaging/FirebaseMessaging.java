package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.s0;
import com.google.firebase.messaging.w0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import v8.a;
/* loaded from: classes5.dex */
public class FirebaseMessaging {
    @GuardedBy("FirebaseMessaging.class")

    /* renamed from: n  reason: collision with root package name */
    private static w0 f21097n;
    @GuardedBy("FirebaseMessaging.class")
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    static ScheduledExecutorService f21099p;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.f f21100a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final v8.a f21101b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f21102c;

    /* renamed from: d  reason: collision with root package name */
    private final c0 f21103d;

    /* renamed from: e  reason: collision with root package name */
    private final s0 f21104e;

    /* renamed from: f  reason: collision with root package name */
    private final a f21105f;

    /* renamed from: g  reason: collision with root package name */
    private final Executor f21106g;

    /* renamed from: h  reason: collision with root package name */
    private final Executor f21107h;

    /* renamed from: i  reason: collision with root package name */
    private final Task<b1> f21108i;

    /* renamed from: j  reason: collision with root package name */
    private final h0 f21109j;
    @GuardedBy("this")

    /* renamed from: k  reason: collision with root package name */
    private boolean f21110k;

    /* renamed from: l  reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f21111l;

    /* renamed from: m  reason: collision with root package name */
    private static final long f21096m = TimeUnit.HOURS.toSeconds(8);
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    static w8.b<a5.i> f21098o = new w8.b() { // from class: com.google.firebase.messaging.q
        @Override // w8.b
        public final Object get() {
            a5.i F;
            F = FirebaseMessaging.F();
            return F;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private final t8.d f21112a;
        @GuardedBy("this")

        /* renamed from: b  reason: collision with root package name */
        private boolean f21113b;
        @Nullable
        @GuardedBy("this")

        /* renamed from: c  reason: collision with root package name */
        private t8.b<com.google.firebase.b> f21114c;
        @Nullable
        @GuardedBy("this")

        /* renamed from: d  reason: collision with root package name */
        private Boolean f21115d;

        a(t8.d dVar) {
            this.f21112a = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(t8.a aVar) {
            if (c()) {
                FirebaseMessaging.this.J();
            }
        }

        @Nullable
        private Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context l10 = FirebaseMessaging.this.f21100a.l();
            SharedPreferences sharedPreferences = l10.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = l10.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(l10.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void b() {
            try {
                if (this.f21113b) {
                    return;
                }
                Boolean e10 = e();
                this.f21115d = e10;
                if (e10 == null) {
                    t8.b<com.google.firebase.b> bVar = new t8.b() { // from class: com.google.firebase.messaging.z
                        @Override // t8.b
                        public final void a(t8.a aVar) {
                            FirebaseMessaging.a.this.d(aVar);
                        }
                    };
                    this.f21114c = bVar;
                    this.f21112a.b(com.google.firebase.b.class, bVar);
                }
                this.f21113b = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        synchronized boolean c() {
            boolean v10;
            try {
                b();
                Boolean bool = this.f21115d;
                if (bool != null) {
                    v10 = bool.booleanValue();
                } else {
                    v10 = FirebaseMessaging.this.f21100a.v();
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseMessaging(com.google.firebase.f fVar, @Nullable v8.a aVar, w8.b<e9.i> bVar, w8.b<HeartBeatInfo> bVar2, x8.e eVar, w8.b<a5.i> bVar3, t8.d dVar) {
        this(fVar, aVar, bVar, bVar2, eVar, bVar3, dVar, new h0(fVar.l()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(k());
        } catch (Exception e10) {
            taskCompletionSource.setException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(CloudMessage cloudMessage) {
        if (cloudMessage != null) {
            g0.y(cloudMessage.getIntent());
            t();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        if (w()) {
            J();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(b1 b1Var) {
        if (w()) {
            b1Var.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a5.i F() {
        return null;
    }

    private boolean H() {
        n0.c(this.f21102c);
        if (!n0.d(this.f21102c)) {
            return false;
        }
        if (this.f21100a.j(n7.a.class) != null) {
            return true;
        }
        if (!g0.a() || f21098o == null) {
            return false;
        }
        return true;
    }

    private synchronized void I() {
        if (!this.f21110k) {
            K(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        v8.a aVar = this.f21101b;
        if (aVar != null) {
            aVar.getToken();
        } else if (L(r())) {
            I();
        }
    }

    @NonNull
    @Keep
    static synchronized FirebaseMessaging getInstance(@NonNull com.google.firebase.f fVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = (FirebaseMessaging) fVar.j(FirebaseMessaging.class);
            Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    @NonNull
    public static synchronized FirebaseMessaging n() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = getInstance(com.google.firebase.f.m());
        }
        return firebaseMessaging;
    }

    @NonNull
    private static synchronized w0 o(Context context) {
        w0 w0Var;
        synchronized (FirebaseMessaging.class) {
            try {
                if (f21097n == null) {
                    f21097n = new w0(context);
                }
                w0Var = f21097n;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return w0Var;
    }

    private String p() {
        if ("[DEFAULT]".equals(this.f21100a.o())) {
            return "";
        }
        return this.f21100a.q();
    }

    @Nullable
    public static a5.i s() {
        return f21098o.get();
    }

    private void t() {
        this.f21103d.e().addOnSuccessListener(this.f21106g, new OnSuccessListener() { // from class: com.google.firebase.messaging.w
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirebaseMessaging.this.B((CloudMessage) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public void E() {
        n0.c(this.f21102c);
        p0.g(this.f21102c, this.f21103d, H());
        if (H()) {
            t();
        }
    }

    private void v(String str) {
        if ("[DEFAULT]".equals(this.f21100a.o())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Invoking onNewToken for app: " + this.f21100a.o());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra(BidResponsed.KEY_TOKEN, str);
            new m(this.f21102c).k(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task y(String str, w0.a aVar, String str2) throws Exception {
        o(this.f21102c).f(p(), str, str2, this.f21109j.a());
        if (aVar == null || !str2.equals(aVar.f21288a)) {
            v(str2);
        }
        return Tasks.forResult(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task z(final String str, final w0.a aVar) {
        return this.f21103d.f().onSuccessTask(this.f21107h, new SuccessContinuation() { // from class: com.google.firebase.messaging.y
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task y10;
                y10 = FirebaseMessaging.this.y(str, aVar, (String) obj);
                return y10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void G(boolean z10) {
        this.f21110k = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void K(long j10) {
        l(new x0(this, Math.min(Math.max(30L, 2 * j10), f21096m)), j10);
        this.f21110k = true;
    }

    @VisibleForTesting
    boolean L(@Nullable w0.a aVar) {
        if (aVar != null && !aVar.b(this.f21109j.a())) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String k() throws IOException {
        v8.a aVar = this.f21101b;
        if (aVar != null) {
            try {
                return (String) Tasks.await(aVar.a());
            } catch (InterruptedException | ExecutionException e10) {
                throw new IOException(e10);
            }
        }
        final w0.a r10 = r();
        if (!L(r10)) {
            return r10.f21288a;
        }
        final String c10 = h0.c(this.f21100a);
        try {
            return (String) Tasks.await(this.f21104e.b(c10, new s0.a() { // from class: com.google.firebase.messaging.x
                @Override // com.google.firebase.messaging.s0.a
                public final Task start() {
                    Task z10;
                    z10 = FirebaseMessaging.this.z(c10, r10);
                    return z10;
                }
            }));
        } catch (InterruptedException | ExecutionException e11) {
            throw new IOException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"ThreadPoolCreation"})
    public void l(Runnable runnable, long j10) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f21099p == null) {
                    f21099p = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                f21099p.schedule(runnable, j10, TimeUnit.SECONDS);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context m() {
        return this.f21102c;
    }

    @NonNull
    public Task<String> q() {
        v8.a aVar = this.f21101b;
        if (aVar != null) {
            return aVar.a();
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f21106g.execute(new Runnable() { // from class: com.google.firebase.messaging.v
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.A(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    @Nullable
    @VisibleForTesting
    w0.a r() {
        return o(this.f21102c).d(p(), h0.c(this.f21100a));
    }

    public boolean w() {
        return this.f21105f.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean x() {
        return this.f21109j.g();
    }

    FirebaseMessaging(com.google.firebase.f fVar, @Nullable v8.a aVar, w8.b<e9.i> bVar, w8.b<HeartBeatInfo> bVar2, x8.e eVar, w8.b<a5.i> bVar3, t8.d dVar, h0 h0Var) {
        this(fVar, aVar, bVar3, dVar, h0Var, new c0(fVar, h0Var, bVar, bVar2, eVar), n.f(), n.c(), n.b());
    }

    FirebaseMessaging(com.google.firebase.f fVar, @Nullable v8.a aVar, w8.b<a5.i> bVar, t8.d dVar, h0 h0Var, c0 c0Var, Executor executor, Executor executor2, Executor executor3) {
        this.f21110k = false;
        f21098o = bVar;
        this.f21100a = fVar;
        this.f21101b = aVar;
        this.f21105f = new a(dVar);
        Context l10 = fVar.l();
        this.f21102c = l10;
        p pVar = new p();
        this.f21111l = pVar;
        this.f21109j = h0Var;
        this.f21103d = c0Var;
        this.f21104e = new s0(executor);
        this.f21106g = executor2;
        this.f21107h = executor3;
        Context l11 = fVar.l();
        if (l11 instanceof Application) {
            ((Application) l11).registerActivityLifecycleCallbacks(pVar);
        } else {
            Log.w("FirebaseMessaging", "Context " + l11 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (aVar != null) {
            aVar.b(new a.InterfaceC0948a() { // from class: com.google.firebase.messaging.r
            });
        }
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.s
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.C();
            }
        });
        Task<b1> e10 = b1.e(this, h0Var, c0Var, l10, n.g());
        this.f21108i = e10;
        e10.addOnSuccessListener(executor2, new OnSuccessListener() { // from class: com.google.firebase.messaging.t
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirebaseMessaging.this.D((b1) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.u
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.E();
            }
        });
    }
}
