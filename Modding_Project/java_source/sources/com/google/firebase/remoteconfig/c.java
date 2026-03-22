package com.google.firebase.remoteconfig;

import android.app.Application;
import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.s;
import com.google.firebase.remoteconfig.internal.t;
import com.google.firebase.remoteconfig.internal.v;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import x8.e;
/* compiled from: RemoteConfigComponent.java */
@KeepForSdk
/* loaded from: classes5.dex */
public class c implements h9.a {

    /* renamed from: j  reason: collision with root package name */
    private static final Clock f21332j = DefaultClock.getInstance();

    /* renamed from: k  reason: collision with root package name */
    private static final Random f21333k = new Random();

    /* renamed from: l  reason: collision with root package name */
    private static final Map<String, com.google.firebase.remoteconfig.a> f21334l = new HashMap();
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, com.google.firebase.remoteconfig.a> f21335a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f21336b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f21337c;

    /* renamed from: d  reason: collision with root package name */
    private final f f21338d;

    /* renamed from: e  reason: collision with root package name */
    private final e f21339e;

    /* renamed from: f  reason: collision with root package name */
    private final l7.b f21340f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final w8.b<n7.a> f21341g;

    /* renamed from: h  reason: collision with root package name */
    private final String f21342h;
    @GuardedBy("this")

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f21343i;

    /* compiled from: RemoteConfigComponent.java */
    /* loaded from: classes5.dex */
    private static class a implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private static final AtomicReference<a> f21344a = new AtomicReference<>();

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference<a> atomicReference = f21344a;
            if (atomicReference.get() == null) {
                a aVar = new a();
                if (androidx.compose.animation.core.a.a(atomicReference, null, aVar)) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(aVar);
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z10) {
            c.r(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, @o7.b ScheduledExecutorService scheduledExecutorService, f fVar, e eVar, l7.b bVar, w8.b<n7.a> bVar2) {
        this(context, scheduledExecutorService, fVar, eVar, bVar, bVar2, true);
    }

    private com.google.firebase.remoteconfig.internal.f f(String str, String str2) {
        return com.google.firebase.remoteconfig.internal.f.h(this.f21337c, t.c(this.f21336b, String.format("%s_%s_%s_%s.json", "frc", this.f21342h, str, str2)));
    }

    private n j(com.google.firebase.remoteconfig.internal.f fVar, com.google.firebase.remoteconfig.internal.f fVar2) {
        return new n(this.f21337c, fVar, fVar2);
    }

    @Nullable
    private static v k(f fVar, String str, w8.b<n7.a> bVar) {
        if (p(fVar) && str.equals("firebase")) {
            return new v(bVar);
        }
        return null;
    }

    private g9.e m(com.google.firebase.remoteconfig.internal.f fVar, com.google.firebase.remoteconfig.internal.f fVar2) {
        return new g9.e(fVar, g9.a.a(fVar, fVar2), this.f21337c);
    }

    @VisibleForTesting
    static s n(Context context, String str, String str2) {
        return new s(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    private static boolean o(f fVar, String str) {
        if (str.equals("firebase") && p(fVar)) {
            return true;
        }
        return false;
    }

    private static boolean p(f fVar) {
        return fVar.o().equals("[DEFAULT]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n7.a q() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void r(boolean z10) {
        synchronized (c.class) {
            for (com.google.firebase.remoteconfig.a aVar : f21334l.values()) {
                aVar.t(z10);
            }
        }
    }

    @Override // h9.a
    public void a(@NonNull String str, @NonNull i9.f fVar) {
        e(str).l().h(fVar);
    }

    @VisibleForTesting
    synchronized com.google.firebase.remoteconfig.a d(f fVar, String str, e eVar, l7.b bVar, Executor executor, com.google.firebase.remoteconfig.internal.f fVar2, com.google.firebase.remoteconfig.internal.f fVar3, com.google.firebase.remoteconfig.internal.f fVar4, ConfigFetchHandler configFetchHandler, n nVar, s sVar, g9.e eVar2) {
        try {
            if (!this.f21335a.containsKey(str)) {
                com.google.firebase.remoteconfig.a aVar = new com.google.firebase.remoteconfig.a(this.f21336b, fVar, eVar, o(fVar, str) ? bVar : null, executor, fVar2, fVar3, fVar4, configFetchHandler, nVar, sVar, l(fVar, eVar, configFetchHandler, fVar3, this.f21336b, str, sVar), eVar2);
                aVar.u();
                this.f21335a.put(str, aVar);
                f21334l.put(str, aVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f21335a.get(str);
    }

    @KeepForSdk
    @VisibleForTesting
    public synchronized com.google.firebase.remoteconfig.a e(String str) {
        com.google.firebase.remoteconfig.internal.f f10;
        com.google.firebase.remoteconfig.internal.f f11;
        com.google.firebase.remoteconfig.internal.f f12;
        s n10;
        n j10;
        try {
            f10 = f(str, "fetch");
            f11 = f(str, "activate");
            f12 = f(str, "defaults");
            n10 = n(this.f21336b, this.f21342h, str);
            j10 = j(f11, f12);
            final v k10 = k(this.f21338d, str, this.f21341g);
            if (k10 != null) {
                j10.b(new BiConsumer() { // from class: f9.k
                    @Override // com.google.android.gms.common.util.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        v.this.a((String) obj, (com.google.firebase.remoteconfig.internal.g) obj2);
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return d(this.f21338d, str, this.f21339e, this.f21340f, this.f21337c, f10, f11, f12, h(str, f10, n10), j10, n10, m(f11, f12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.firebase.remoteconfig.a g() {
        return e("firebase");
    }

    @VisibleForTesting
    synchronized ConfigFetchHandler h(String str, com.google.firebase.remoteconfig.internal.f fVar, s sVar) {
        e eVar;
        w8.b<n7.a> bVar;
        try {
            eVar = this.f21339e;
            if (p(this.f21338d)) {
                bVar = this.f21341g;
            } else {
                bVar = new w8.b() { // from class: f9.l
                    @Override // w8.b
                    public final Object get() {
                        n7.a q10;
                        q10 = com.google.firebase.remoteconfig.c.q();
                        return q10;
                    }
                };
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return new ConfigFetchHandler(eVar, bVar, this.f21337c, f21332j, f21333k, fVar, i(this.f21338d.p().b(), str, sVar), sVar, this.f21343i);
    }

    @VisibleForTesting
    ConfigFetchHttpClient i(String str, String str2, s sVar) {
        return new ConfigFetchHttpClient(this.f21336b, this.f21338d.p().c(), str, str2, sVar.c(), sVar.c());
    }

    synchronized o l(f fVar, e eVar, ConfigFetchHandler configFetchHandler, com.google.firebase.remoteconfig.internal.f fVar2, Context context, String str, s sVar) {
        return new o(fVar, eVar, configFetchHandler, fVar2, context, str, sVar, this.f21337c);
    }

    @VisibleForTesting
    protected c(Context context, ScheduledExecutorService scheduledExecutorService, f fVar, e eVar, l7.b bVar, w8.b<n7.a> bVar2, boolean z10) {
        this.f21335a = new HashMap();
        this.f21343i = new HashMap();
        this.f21336b = context;
        this.f21337c = scheduledExecutorService;
        this.f21338d = fVar;
        this.f21339e = eVar;
        this.f21340f = bVar;
        this.f21341g = bVar2;
        this.f21342h = fVar.p().c();
        a.b(context);
        if (z10) {
            Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.remoteconfig.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return c.this.g();
                }
            });
        }
    }
}
