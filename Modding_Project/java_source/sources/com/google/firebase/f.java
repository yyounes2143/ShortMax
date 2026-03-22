package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import w7.n;
import w7.t;
/* compiled from: FirebaseApp.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: k  reason: collision with root package name */
    private static final Object f20978k = new Object();
    @GuardedBy("LOCK")

    /* renamed from: l  reason: collision with root package name */
    static final Map<String, f> f20979l = new ArrayMap();

    /* renamed from: a  reason: collision with root package name */
    private final Context f20980a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20981b;

    /* renamed from: c  reason: collision with root package name */
    private final m f20982c;

    /* renamed from: d  reason: collision with root package name */
    private final w7.n f20983d;

    /* renamed from: g  reason: collision with root package name */
    private final t<b9.a> f20986g;

    /* renamed from: h  reason: collision with root package name */
    private final w8.b<com.google.firebase.heartbeatinfo.a> f20987h;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f20984e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f20985f = new AtomicBoolean();

    /* renamed from: i  reason: collision with root package name */
    private final List<a> f20988i = new CopyOnWriteArrayList();

    /* renamed from: j  reason: collision with root package name */
    private final List<g> f20989j = new CopyOnWriteArrayList();

    /* compiled from: FirebaseApp.java */
    @KeepForSdk
    /* loaded from: classes5.dex */
    public interface a {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirebaseApp.java */
    @TargetApi(14)
    /* loaded from: classes5.dex */
    public static class b implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private static AtomicReference<b> f20990a = new AtomicReference<>();

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f20990a.get() == null) {
                    b bVar = new b();
                    if (androidx.compose.animation.core.a.a(f20990a, null, bVar)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(bVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z10) {
            synchronized (f.f20978k) {
                try {
                    Iterator it = new ArrayList(f.f20979l.values()).iterator();
                    while (it.hasNext()) {
                        f fVar = (f) it.next();
                        if (fVar.f20984e.get()) {
                            fVar.A(z10);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirebaseApp.java */
    @TargetApi(24)
    /* loaded from: classes5.dex */
    public static class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<c> f20991b = new AtomicReference<>();

        /* renamed from: a  reason: collision with root package name */
        private final Context f20992a;

        public c(Context context) {
            this.f20992a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (f20991b.get() == null) {
                c cVar = new c(context);
                if (androidx.compose.animation.core.a.a(f20991b, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.f20992a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (f.f20978k) {
                try {
                    for (f fVar : f.f20979l.values()) {
                        fVar.r();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            c();
        }
    }

    protected f(final Context context, String str, m mVar) {
        this.f20980a = (Context) Preconditions.checkNotNull(context);
        this.f20981b = Preconditions.checkNotEmpty(str);
        this.f20982c = (m) Preconditions.checkNotNull(mVar);
        n b10 = FirebaseInitProvider.b();
        n9.c.b("Firebase");
        n9.c.b("ComponentDiscovery");
        List<w8.b<ComponentRegistrar>> b11 = w7.f.c(context, ComponentDiscoveryService.class).b();
        n9.c.a();
        n9.c.b("Runtime");
        n.b g10 = w7.n.m(UiExecutor.INSTANCE).d(b11).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(w7.c.s(context, Context.class, new Class[0])).b(w7.c.s(this, f.class, new Class[0])).b(w7.c.s(mVar, m.class, new Class[0])).g(new n9.b());
        if (UserManagerCompat.isUserUnlocked(context) && FirebaseInitProvider.c()) {
            g10.b(w7.c.s(b10, n.class, new Class[0]));
        }
        w7.n e10 = g10.e();
        this.f20983d = e10;
        n9.c.a();
        this.f20986g = new t<>(new w8.b() { // from class: com.google.firebase.d
            @Override // w8.b
            public final Object get() {
                b9.a x10;
                x10 = f.this.x(context);
                return x10;
            }
        });
        this.f20987h = e10.e(com.google.firebase.heartbeatinfo.a.class);
        g(new a() { // from class: com.google.firebase.e
            @Override // com.google.firebase.f.a
            public final void onBackgroundStateChanged(boolean z10) {
                f.this.y(z10);
            }
        });
        n9.c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(boolean z10) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (a aVar : this.f20988i) {
            aVar.onBackgroundStateChanged(z10);
        }
    }

    private void i() {
        Preconditions.checkState(!this.f20985f.get(), "FirebaseApp was deleted");
    }

    private static List<String> k() {
        ArrayList arrayList = new ArrayList();
        synchronized (f20978k) {
            try {
                for (f fVar : f20979l.values()) {
                    arrayList.add(fVar.o());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    public static f m() {
        f fVar;
        synchronized (f20978k) {
            try {
                fVar = f20979l.get("[DEFAULT]");
                if (fVar != null) {
                    fVar.f20987h.get().l();
                } else {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @NonNull
    public static f n(@NonNull String str) {
        f fVar;
        List<String> k10;
        String str2;
        synchronized (f20978k) {
            try {
                fVar = f20979l.get(z(str));
                if (fVar != null) {
                    fVar.f20987h.get().l();
                } else {
                    if (k().isEmpty()) {
                        str2 = "";
                    } else {
                        str2 = "Available app names: " + TextUtils.join(", ", k10);
                    }
                    throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
                }
            } finally {
            }
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (!UserManagerCompat.isUserUnlocked(this.f20980a)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + o());
            c.b(this.f20980a);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + o());
        this.f20983d.p(w());
        this.f20987h.get().l();
    }

    @Nullable
    public static f s(@NonNull Context context) {
        synchronized (f20978k) {
            try {
                if (f20979l.containsKey("[DEFAULT]")) {
                    return m();
                }
                m a10 = m.a(context);
                if (a10 == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return t(context, a10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    public static f t(@NonNull Context context, @NonNull m mVar) {
        return u(context, mVar, "[DEFAULT]");
    }

    @NonNull
    public static f u(@NonNull Context context, @NonNull m mVar, @NonNull String str) {
        f fVar;
        b.b(context);
        String z10 = z(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f20978k) {
            Map<String, f> map = f20979l;
            Preconditions.checkState(!map.containsKey(z10), "FirebaseApp name " + z10 + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            fVar = new f(context, z10, mVar);
            map.put(z10, fVar);
        }
        fVar.r();
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ b9.a x(Context context) {
        return new b9.a(context, q(), (t8.c) this.f20983d.a(t8.c.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(boolean z10) {
        if (!z10) {
            this.f20987h.get().l();
        }
    }

    private static String z(@NonNull String str) {
        return str.trim();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        return this.f20981b.equals(((f) obj).o());
    }

    @KeepForSdk
    public void g(a aVar) {
        i();
        if (this.f20984e.get() && BackgroundDetector.getInstance().isInBackground()) {
            aVar.onBackgroundStateChanged(true);
        }
        this.f20988i.add(aVar);
    }

    @KeepForSdk
    public void h(@NonNull g gVar) {
        i();
        Preconditions.checkNotNull(gVar);
        this.f20989j.add(gVar);
    }

    public int hashCode() {
        return this.f20981b.hashCode();
    }

    @KeepForSdk
    public <T> T j(Class<T> cls) {
        i();
        return (T) this.f20983d.a(cls);
    }

    @NonNull
    public Context l() {
        i();
        return this.f20980a;
    }

    @NonNull
    public String o() {
        i();
        return this.f20981b;
    }

    @NonNull
    public m p() {
        i();
        return this.f20982c;
    }

    @KeepForSdk
    public String q() {
        return Base64Utils.encodeUrlSafeNoPadding(o().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(p().c().getBytes(Charset.defaultCharset()));
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.f20981b).add("options", this.f20982c).toString();
    }

    @KeepForSdk
    public boolean v() {
        i();
        return this.f20986g.get().b();
    }

    @KeepForSdk
    @VisibleForTesting
    public boolean w() {
        return "[DEFAULT]".equals(o());
    }
}
