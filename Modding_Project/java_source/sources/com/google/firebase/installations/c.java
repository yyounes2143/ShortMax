package com.google.firebase.installations;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import w7.t;
/* compiled from: FirebaseInstallations.java */
/* loaded from: classes5.dex */
public class c implements x8.e {

    /* renamed from: m  reason: collision with root package name */
    private static final Object f21019m = new Object();

    /* renamed from: n  reason: collision with root package name */
    private static final ThreadFactory f21020n = new a();

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.f f21021a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.firebase.installations.remote.c f21022b;

    /* renamed from: c  reason: collision with root package name */
    private final PersistedInstallation f21023c;

    /* renamed from: d  reason: collision with root package name */
    private final h f21024d;

    /* renamed from: e  reason: collision with root package name */
    private final t<z8.a> f21025e;

    /* renamed from: f  reason: collision with root package name */
    private final x8.g f21026f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f21027g;

    /* renamed from: h  reason: collision with root package name */
    private final ExecutorService f21028h;

    /* renamed from: i  reason: collision with root package name */
    private final Executor f21029i;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private String f21030j;
    @GuardedBy("FirebaseInstallations.this")

    /* renamed from: k  reason: collision with root package name */
    private Set<y8.a> f21031k;
    @GuardedBy("lock")

    /* renamed from: l  reason: collision with root package name */
    private final List<g> f21032l;

    /* compiled from: FirebaseInstallations.java */
    /* loaded from: classes5.dex */
    class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f21033a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        @SuppressLint({"ThreadPoolCreation"})
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f21033a.getAndIncrement())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseInstallations.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f21034a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f21035b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f21035b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21035b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21035b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f21034a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21034a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"ThreadPoolCreation"})
    public c(final com.google.firebase.f fVar, @NonNull w8.b<u8.h> bVar, @NonNull ExecutorService executorService, @NonNull Executor executor) {
        this(executorService, executor, fVar, new com.google.firebase.installations.remote.c(fVar.l(), bVar), new PersistedInstallation(fVar), h.c(), new t(new w8.b() { // from class: x8.a
            @Override // w8.b
            public final Object get() {
                z8.a y10;
                y10 = com.google.firebase.installations.c.y(com.google.firebase.f.this);
                return y10;
            }
        }), new x8.g());
    }

    private String A(com.google.firebase.installations.local.b bVar) {
        if ((!this.f21021a.o().equals("CHIME_ANDROID_SDK") && !this.f21021a.w()) || !bVar.m()) {
            return this.f21026f.a();
        }
        String f10 = o().f();
        if (TextUtils.isEmpty(f10)) {
            return this.f21026f.a();
        }
        return f10;
    }

    private com.google.firebase.installations.local.b B(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        String str;
        if (bVar.d() != null && bVar.d().length() == 11) {
            str = o().i();
        } else {
            str = null;
        }
        InstallationResponse d10 = this.f21022b.d(l(), bVar.d(), t(), m(), str);
        int i10 = b.f21034a[d10.e().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return bVar.q("BAD CONFIG");
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        return bVar.s(d10.c(), d10.d(), this.f21024d.b(), d10.b().c(), d10.b().d());
    }

    private void C(Exception exc) {
        synchronized (this.f21027g) {
            try {
                Iterator<g> it = this.f21032l.iterator();
                while (it.hasNext()) {
                    if (it.next().a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void D(com.google.firebase.installations.local.b bVar) {
        synchronized (this.f21027g) {
            try {
                Iterator<g> it = this.f21032l.iterator();
                while (it.hasNext()) {
                    if (it.next().b(bVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private synchronized void E(String str) {
        this.f21030j = str;
    }

    private synchronized void F(com.google.firebase.installations.local.b bVar, com.google.firebase.installations.local.b bVar2) {
        if (this.f21031k.size() != 0 && !TextUtils.equals(bVar.d(), bVar2.d())) {
            for (y8.a aVar : this.f21031k) {
                aVar.a(bVar2.d());
            }
        }
    }

    private Task<f> f() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new d(this.f21024d, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private Task<String> g() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new e(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private void h(g gVar) {
        synchronized (this.f21027g) {
            this.f21032l.add(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void v(boolean r3) {
        /*
            r2 = this;
            com.google.firebase.installations.local.b r0 = r2.r()
            boolean r1 = r0.i()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L1d
            if (r1 != 0) goto L24
            boolean r1 = r0.l()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L1d
            if (r1 == 0) goto L11
            goto L24
        L11:
            if (r3 != 0) goto L1f
            com.google.firebase.installations.h r3 = r2.f21024d     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L1d
            boolean r3 = r3.f(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L1d
            if (r3 == 0) goto L1c
            goto L1f
        L1c:
            return
        L1d:
            r3 = move-exception
            goto L61
        L1f:
            com.google.firebase.installations.local.b r3 = r2.k(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L1d
            goto L28
        L24:
            com.google.firebase.installations.local.b r3 = r2.B(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L1d
        L28:
            r2.u(r3)
            r2.F(r0, r3)
            boolean r0 = r3.k()
            if (r0 == 0) goto L3b
            java.lang.String r0 = r3.d()
            r2.E(r0)
        L3b:
            boolean r0 = r3.i()
            if (r0 == 0) goto L4c
            com.google.firebase.installations.FirebaseInstallationsException r3 = new com.google.firebase.installations.FirebaseInstallationsException
            com.google.firebase.installations.FirebaseInstallationsException$Status r0 = com.google.firebase.installations.FirebaseInstallationsException.Status.BAD_CONFIG
            r3.<init>(r0)
            r2.C(r3)
            goto L60
        L4c:
            boolean r0 = r3.j()
            if (r0 == 0) goto L5d
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r3.<init>(r0)
            r2.C(r3)
            goto L60
        L5d:
            r2.D(r3)
        L60:
            return
        L61:
            r2.C(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.c.v(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void x(final boolean z10) {
        com.google.firebase.installations.local.b s10 = s();
        if (z10) {
            s10 = s10.p();
        }
        D(s10);
        this.f21029i.execute(new Runnable() { // from class: x8.d
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.v(z10);
            }
        });
    }

    private com.google.firebase.installations.local.b k(@NonNull com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        TokenResult e10 = this.f21022b.e(l(), bVar.d(), t(), bVar.f());
        int i10 = b.f21035b[e10.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    E(null);
                    return bVar.r();
                }
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
            }
            return bVar.q("BAD CONFIG");
        }
        return bVar.o(e10.c(), e10.d(), this.f21024d.b());
    }

    private synchronized String n() {
        return this.f21030j;
    }

    private z8.a o() {
        return this.f21025e.get();
    }

    @NonNull
    public static c p() {
        return q(com.google.firebase.f.m());
    }

    @NonNull
    public static c q(@NonNull com.google.firebase.f fVar) {
        boolean z10;
        if (fVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "Null is not a valid value of FirebaseApp.");
        return (c) fVar.j(x8.e.class);
    }

    private com.google.firebase.installations.local.b r() {
        com.google.firebase.installations.local.b d10;
        synchronized (f21019m) {
            try {
                com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f21021a.l(), "generatefid.lock");
                d10 = this.f21023c.d();
                if (a10 != null) {
                    a10.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d10;
    }

    private com.google.firebase.installations.local.b s() {
        com.google.firebase.installations.local.b d10;
        synchronized (f21019m) {
            try {
                com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f21021a.l(), "generatefid.lock");
                d10 = this.f21023c.d();
                if (d10.j()) {
                    d10 = this.f21023c.b(d10.t(A(d10)));
                }
                if (a10 != null) {
                    a10.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d10;
    }

    private void u(com.google.firebase.installations.local.b bVar) {
        synchronized (f21019m) {
            try {
                com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f21021a.l(), "generatefid.lock");
                this.f21023c.b(bVar);
                if (a10 != null) {
                    a10.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
        x(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ z8.a y(com.google.firebase.f fVar) {
        return new z8.a(fVar);
    }

    private void z() {
        Preconditions.checkNotEmpty(m(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(t(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(l(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(h.h(m()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(h.g(l()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @Override // x8.e
    @NonNull
    public Task<f> a(final boolean z10) {
        z();
        Task<f> f10 = f();
        this.f21028h.execute(new Runnable() { // from class: x8.c
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.x(z10);
            }
        });
        return f10;
    }

    @Override // x8.e
    @NonNull
    public Task<String> getId() {
        z();
        String n10 = n();
        if (n10 != null) {
            return Tasks.forResult(n10);
        }
        Task<String> g10 = g();
        this.f21028h.execute(new Runnable() { // from class: x8.b
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.w();
            }
        });
        return g10;
    }

    @Nullable
    String l() {
        return this.f21021a.p().b();
    }

    @VisibleForTesting
    String m() {
        return this.f21021a.p().c();
    }

    @Nullable
    String t() {
        return this.f21021a.p().e();
    }

    @SuppressLint({"ThreadPoolCreation"})
    c(ExecutorService executorService, Executor executor, com.google.firebase.f fVar, com.google.firebase.installations.remote.c cVar, PersistedInstallation persistedInstallation, h hVar, t<z8.a> tVar, x8.g gVar) {
        this.f21027g = new Object();
        this.f21031k = new HashSet();
        this.f21032l = new ArrayList();
        this.f21021a = fVar;
        this.f21022b = cVar;
        this.f21023c = persistedInstallation;
        this.f21024d = hVar;
        this.f21025e = tVar;
        this.f21026f = gVar;
        this.f21028h = executorService;
        this.f21029i = executor;
    }
}
