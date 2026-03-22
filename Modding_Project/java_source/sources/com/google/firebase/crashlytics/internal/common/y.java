package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: CrashlyticsCore.java */
/* loaded from: classes5.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private final Context f20823a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.firebase.f f20824b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f20825c;

    /* renamed from: f  reason: collision with root package name */
    private z f20828f;

    /* renamed from: g  reason: collision with root package name */
    private z f20829g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f20830h;

    /* renamed from: i  reason: collision with root package name */
    private o f20831i;

    /* renamed from: j  reason: collision with root package name */
    private final i0 f20832j;

    /* renamed from: k  reason: collision with root package name */
    private final h8.g f20833k;
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    public final b8.b f20834l;

    /* renamed from: m  reason: collision with root package name */
    private final a8.a f20835m;

    /* renamed from: n  reason: collision with root package name */
    private final l f20836n;

    /* renamed from: o  reason: collision with root package name */
    private final z7.a f20837o;

    /* renamed from: p  reason: collision with root package name */
    private final z7.l f20838p;

    /* renamed from: q  reason: collision with root package name */
    private final CrashlyticsWorkers f20839q;

    /* renamed from: e  reason: collision with root package name */
    private final long f20827e = System.currentTimeMillis();

    /* renamed from: d  reason: collision with root package name */
    private final n0 f20826d = new n0();

    public y(com.google.firebase.f fVar, i0 i0Var, z7.a aVar, e0 e0Var, b8.b bVar, a8.a aVar2, h8.g gVar, l lVar, z7.l lVar2, CrashlyticsWorkers crashlyticsWorkers) {
        this.f20824b = fVar;
        this.f20825c = e0Var;
        this.f20823a = fVar.l();
        this.f20832j = i0Var;
        this.f20837o = aVar;
        this.f20834l = bVar;
        this.f20835m = aVar2;
        this.f20833k = gVar;
        this.f20836n = lVar;
        this.f20838p = lVar2;
        this.f20839q = crashlyticsWorkers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(String str) {
        this.f20831i.Y(str);
    }

    private void i() {
        try {
            this.f20830h = Boolean.TRUE.equals((Boolean) this.f20839q.f20844a.c().submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.common.t
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Boolean t10;
                    t10 = y.this.t();
                    return t10;
                }
            }).get(3L, TimeUnit.SECONDS));
        } catch (Exception unused) {
            this.f20830h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void v(j8.b bVar) {
        CrashlyticsWorkers.c();
        E();
        try {
            try {
                this.f20834l.a(new b8.a() { // from class: com.google.firebase.crashlytics.internal.common.w
                    @Override // b8.a
                    public final void a(String str) {
                        y.this.B(str);
                    }
                });
                this.f20831i.U();
            } catch (Exception e10) {
                z7.g.f().e("Crashlytics encountered a problem during asynchronous initialization.", e10);
            }
            if (bVar.a().f20855b.f20862a) {
                if (!this.f20831i.A(bVar)) {
                    z7.g.f().k("Previous sessions could not be finalized.");
                }
                this.f20831i.Z(bVar.b());
                D();
                return;
            }
            z7.g.f().b("Collection of crash reports disabled in Crashlytics settings.");
            throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
        } catch (Throwable th2) {
            D();
            throw th2;
        }
    }

    private void p(final j8.b bVar) {
        Future<?> submit = this.f20839q.f20844a.c().submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.v
            @Override // java.lang.Runnable
            public final void run() {
                y.this.v(bVar);
            }
        });
        z7.g.f().b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            z7.g.f().e("Crashlytics was interrupted during initialization.", e10);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e11) {
            z7.g.f().e("Crashlytics encountered a problem during initialization.", e11);
        } catch (TimeoutException e12) {
            z7.g.f().e("Crashlytics timed out during initialization.", e12);
        }
    }

    public static String q() {
        return "20.0.3";
    }

    static boolean r(String str, boolean z10) {
        if (!z10) {
            z7.g.f().i("Configured not to require a build ID.");
            return true;
        } else if (!TextUtils.isEmpty(str)) {
            return true;
        } else {
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean t() throws Exception {
        return Boolean.valueOf(this.f20831i.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(long j10, String str) {
        this.f20831i.d0(j10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(final long j10, final String str) {
        this.f20839q.f20845b.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.x
            @Override // java.lang.Runnable
            public final void run() {
                y.this.w(j10, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(Throwable th2, Map map) {
        this.f20831i.c0(Thread.currentThread(), th2, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(String str, String str2) {
        this.f20831i.W(str, str2);
    }

    public void B(final String str) {
        final long currentTimeMillis = System.currentTimeMillis() - this.f20827e;
        this.f20839q.f20844a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.u
            @Override // java.lang.Runnable
            public final void run() {
                y.this.x(currentTimeMillis, str);
            }
        });
    }

    public void C(@NonNull final Throwable th2, @NonNull final Map<String, String> map) {
        this.f20839q.f20844a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.s
            @Override // java.lang.Runnable
            public final void run() {
                y.this.y(th2, map);
            }
        });
    }

    void D() {
        CrashlyticsWorkers.c();
        try {
            if (!this.f20828f.d()) {
                z7.g.f().k("Initialization marker file was not properly removed.");
            }
        } catch (Exception e10) {
            z7.g.f().e("Problem encountered deleting Crashlytics initialization marker.", e10);
        }
    }

    void E() {
        CrashlyticsWorkers.c();
        this.f20828f.a();
        z7.g.f().i("Initialization marker file was created.");
    }

    public boolean F(a aVar, j8.b bVar) {
        if (r(aVar.f20675b, CommonUtils.i(this.f20823a, "com.crashlytics.RequireBuildId", true))) {
            String c10 = new h().c();
            try {
                this.f20829g = new z("crash_marker", this.f20833k);
                this.f20828f = new z("initialization_marker", this.f20833k);
                d8.p pVar = new d8.p(c10, this.f20833k, this.f20839q);
                d8.f fVar = new d8.f(this.f20833k);
                k8.a aVar2 = new k8.a(1024, new k8.c(10));
                this.f20838p.c(pVar);
                this.f20831i = new o(this.f20823a, this.f20832j, this.f20825c, this.f20833k, this.f20829g, aVar, pVar, fVar, s0.j(this.f20823a, this.f20832j, this.f20833k, aVar, fVar, pVar, aVar2, bVar, this.f20826d, this.f20836n, this.f20839q), this.f20837o, this.f20835m, this.f20836n, this.f20839q);
                boolean m10 = m();
                i();
                this.f20831i.y(c10, Thread.getDefaultUncaughtExceptionHandler(), bVar);
                if (m10 && CommonUtils.d(this.f20823a)) {
                    z7.g.f().b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                    p(bVar);
                    return false;
                }
                z7.g.f().b("Successfully configured exception handler.");
                return true;
            } catch (Exception e10) {
                z7.g.f().e("Crashlytics was not started due to an exception during initialization", e10);
                this.f20831i = null;
                return false;
            }
        }
        throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
    }

    public Task<Void> G() {
        return this.f20831i.V();
    }

    public void H(@Nullable Boolean bool) {
        this.f20825c.h(bool);
    }

    public void I(final String str, final String str2) {
        this.f20839q.f20844a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.r
            @Override // java.lang.Runnable
            public final void run() {
                y.this.z(str, str2);
            }
        });
    }

    public void J(final String str) {
        this.f20839q.f20844a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.q
            @Override // java.lang.Runnable
            public final void run() {
                y.this.A(str);
            }
        });
    }

    @NonNull
    public Task<Boolean> j() {
        return this.f20831i.n();
    }

    public Task<Void> k() {
        return this.f20831i.s();
    }

    public boolean l() {
        return this.f20830h;
    }

    boolean m() {
        return this.f20828f.c();
    }

    public Task<Void> o(final j8.b bVar) {
        return this.f20839q.f20844a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.p
            @Override // java.lang.Runnable
            public final void run() {
                y.this.u(bVar);
            }
        });
    }

    public boolean s() {
        return this.f20825c.d();
    }
}
