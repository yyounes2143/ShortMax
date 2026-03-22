package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.adjust.sdk.Constants;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.appevents.internal.AppLinkManager;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.i0;
import com.facebook.internal.o0;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FacebookSdk.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFacebookSdk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookSdk.kt\ncom/facebook/FacebookSdk\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1142:1\n1#2:1143\n*E\n"})
/* loaded from: classes3.dex */
public final class v {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Executor f16891d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static volatile String f16892e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static volatile String f16893f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static volatile String f16894g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static volatile Boolean f16895h;

    /* renamed from: j  reason: collision with root package name */
    private static volatile boolean f16897j;

    /* renamed from: k  reason: collision with root package name */
    private static boolean f16898k;

    /* renamed from: l  reason: collision with root package name */
    private static com.facebook.internal.h0<File> f16899l;

    /* renamed from: m  reason: collision with root package name */
    private static Context f16900m;

    /* renamed from: q  reason: collision with root package name */
    public static boolean f16904q;

    /* renamed from: r  reason: collision with root package name */
    public static boolean f16905r;

    /* renamed from: s  reason: collision with root package name */
    public static boolean f16906s;

    /* renamed from: x  reason: collision with root package name */
    private static boolean f16911x;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final v f16888a = new v();

    /* renamed from: b  reason: collision with root package name */
    private static final String f16889b = v.class.getCanonicalName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final HashSet<LoggingBehavior> f16890c = y0.g(LoggingBehavior.DEVELOPER_ERRORS);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static AtomicLong f16896i = new AtomicLong(65536);

    /* renamed from: n  reason: collision with root package name */
    private static int f16901n = 64206;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final ReentrantLock f16902o = new ReentrantLock();
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static String f16903p = o0.a();
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private static final AtomicBoolean f16907t = new AtomicBoolean(false);
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private static volatile String f16908u = "instagram.com";
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static volatile String f16909v = "facebook.com";
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private static a f16910w = new a() { // from class: com.facebook.m
        @Override // com.facebook.v.a
        public final GraphRequest a(AccessToken accessToken, String str, JSONObject jSONObject, GraphRequest.b bVar) {
            GraphRequest D;
            D = v.D(accessToken, str, jSONObject, bVar);
            return D;
        }
    };

    /* compiled from: FacebookSdk.kt */
    @Metadata
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface a {
        @NotNull
        GraphRequest a(@Nullable AccessToken accessToken, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable GraphRequest.b bVar);
    }

    /* compiled from: FacebookSdk.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
        void onInitialized();
    }

    private v() {
    }

    public static final boolean A(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        v0.l();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    public static final long B() {
        v0.l();
        return f16896i.get();
    }

    @NotNull
    public static final String C() {
        return "18.1.3";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GraphRequest D(AccessToken accessToken, String str, JSONObject jSONObject, GraphRequest.b bVar) {
        return GraphRequest.f14841n.A(accessToken, str, jSONObject, bVar);
    }

    public static final boolean E() {
        return f16897j;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final synchronized boolean F() {
        boolean z10;
        synchronized (v.class) {
            z10 = f16911x;
        }
        return z10;
    }

    public static final boolean G() {
        return f16907t.get();
    }

    public static final boolean H() {
        return f16898k;
    }

    public static final boolean I(@NotNull LoggingBehavior behavior) {
        boolean z10;
        Intrinsics.checkNotNullParameter(behavior, "behavior");
        HashSet<LoggingBehavior> hashSet = f16890c;
        synchronized (hashSet) {
            if (E()) {
                if (hashSet.contains(behavior)) {
                    z10 = true;
                }
            }
            z10 = false;
        }
        return z10;
    }

    public static final void J(@Nullable Context context) {
        if (context == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "try {\n                co…     return\n            }");
            if (applicationInfo.metaData == null) {
                return;
            }
            if (f16892e == null) {
                Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                if (obj instanceof String) {
                    String str = (String) obj;
                    Locale ROOT = Locale.ROOT;
                    Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
                    String lowerCase = str.toLowerCase(ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    if (StringsKt.V(lowerCase, "fb", false, 2, null)) {
                        String substring = str.substring(2);
                        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                        f16892e = substring;
                    } else {
                        f16892e = str;
                    }
                } else if (obj instanceof Number) {
                    throw new FacebookException("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                }
            }
            if (f16893f == null) {
                f16893f = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
            }
            if (f16894g == null) {
                f16894g = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
            }
            if (f16901n == 64206) {
                f16901n = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
            }
            if (f16895h == null) {
                f16895h = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    private final void K(Context context, String str) {
        try {
            if (o4.a.d(this)) {
                return;
            }
            try {
                com.facebook.internal.b e10 = com.facebook.internal.b.f16149f.e(context);
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                String str2 = str + "ping";
                long j10 = sharedPreferences.getLong(str2, 0L);
                try {
                    JSONObject a10 = AppEventsLoggerUtility.a(AppEventsLoggerUtility.GraphAPIActivityType.MOBILE_INSTALL_EVENT, e10, AppEventsLogger.f14941b.b(context), A(context), context);
                    String l10 = com.facebook.appevents.o.f15175c.l();
                    if (l10 != null) {
                        a10.put(Constants.INSTALL_REFERRER, l10);
                    }
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("%s/activities", Arrays.copyOf(new Object[]{str}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                    GraphRequest a11 = f16910w.a(null, format, a10, null);
                    if (j10 == 0 && a11.k().b() == null) {
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putLong(str2, System.currentTimeMillis());
                        edit.apply();
                        i0.a aVar = com.facebook.internal.i0.f16209e;
                        LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                        String TAG = f16889b;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        aVar.b(loggingBehavior, TAG, "MOBILE_APP_INSTALL has been logged");
                    }
                } catch (JSONException e11) {
                    throw new FacebookException("An error occurred while publishing install.", e11);
                }
            } catch (Exception e12) {
                u0.j0("Facebook-publish", e12);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @VisibleForTesting(otherwise = 3)
    public static final void L(@NotNull Context context, @NotNull final String applicationId) {
        if (o4.a.d(v.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            final Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                return;
            }
            if (!com.facebook.internal.o.d("app_events_killswitch", m(), false)) {
                u().execute(new Runnable() { // from class: com.facebook.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.M(applicationContext, applicationId);
                    }
                });
            }
            if (FeatureManager.g(FeatureManager.Feature.OnDeviceEventProcessing) && com.facebook.appevents.ondeviceprocessing.a.d()) {
                com.facebook.appevents.ondeviceprocessing.a.g(applicationId, "com.facebook.sdk.attributionTracking");
            }
        } catch (Throwable th2) {
            o4.a.b(th2, v.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(Context applicationContext, String applicationId) {
        Intrinsics.checkNotNullParameter(applicationContext, "$applicationContext");
        Intrinsics.checkNotNullParameter(applicationId, "$applicationId");
        f16888a.K(applicationContext, applicationId);
    }

    @ms.c
    public static final synchronized void N(@NotNull Context applicationContext) {
        synchronized (v.class) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            O(applicationContext, null);
        }
    }

    @ms.c
    public static final synchronized void O(@NotNull Context applicationContext, @Nullable final b bVar) {
        synchronized (v.class) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            AtomicBoolean atomicBoolean = f16907t;
            if (atomicBoolean.get()) {
                if (bVar != null) {
                    bVar.onInitialized();
                }
                return;
            }
            v0.e(applicationContext, false);
            v0.f(applicationContext, false);
            Context applicationContext2 = applicationContext.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext.applicationContext");
            f16900m = applicationContext2;
            AppEventsLogger.f14941b.b(applicationContext);
            Context context = f16900m;
            Context context2 = null;
            if (context == null) {
                Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
                context = null;
            }
            J(context);
            String str = f16892e;
            if (str != null && str.length() != 0) {
                String str2 = f16894g;
                if (str2 != null && str2.length() != 0) {
                    atomicBoolean.set(true);
                    if (o()) {
                        j();
                    }
                    Context context3 = f16900m;
                    if (context3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
                        context3 = null;
                    }
                    if ((context3 instanceof Application) && n0.f()) {
                        Context context4 = f16900m;
                        if (context4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
                            context4 = null;
                        }
                        a2.g.z((Application) context4, f16892e);
                    } else {
                        com.facebook.appevents.iap.f.i();
                    }
                    AppLinkManager a10 = AppLinkManager.f15115b.a();
                    if (a10 != null) {
                        Context context5 = f16900m;
                        if (context5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
                            context5 = null;
                        }
                        a10.i((Application) context5);
                    }
                    FetchedAppSettingsManager.h();
                    com.facebook.internal.l0.z();
                    BoltsMeasurementEventListener.a aVar = BoltsMeasurementEventListener.f16084b;
                    Context context6 = f16900m;
                    if (context6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
                    } else {
                        context2 = context6;
                    }
                    aVar.a(context2);
                    f16899l = new com.facebook.internal.h0<>(new Callable() { // from class: com.facebook.n
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            File P;
                            P = v.P();
                            return P;
                        }
                    });
                    FeatureManager.a(FeatureManager.Feature.Instrument, new FeatureManager.a() { // from class: com.facebook.o
                        @Override // com.facebook.internal.FeatureManager.a
                        public final void a(boolean z10) {
                            v.Q(z10);
                        }
                    });
                    FeatureManager.a(FeatureManager.Feature.AppEvents, new FeatureManager.a() { // from class: com.facebook.p
                        @Override // com.facebook.internal.FeatureManager.a
                        public final void a(boolean z10) {
                            v.R(z10);
                        }
                    });
                    FeatureManager.a(FeatureManager.Feature.ChromeCustomTabsPrefetching, new FeatureManager.a() { // from class: com.facebook.q
                        @Override // com.facebook.internal.FeatureManager.a
                        public final void a(boolean z10) {
                            v.S(z10);
                        }
                    });
                    FeatureManager.a(FeatureManager.Feature.IgnoreAppSwitchToLoggedOut, new FeatureManager.a() { // from class: com.facebook.r
                        @Override // com.facebook.internal.FeatureManager.a
                        public final void a(boolean z10) {
                            v.T(z10);
                        }
                    });
                    FeatureManager.a(FeatureManager.Feature.BypassAppSwitch, new FeatureManager.a() { // from class: com.facebook.s
                        @Override // com.facebook.internal.FeatureManager.a
                        public final void a(boolean z10) {
                            v.U(z10);
                        }
                    });
                    u().execute(new FutureTask(new Callable(bVar) { // from class: com.facebook.t
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            Void V;
                            V = v.V(null);
                            return V;
                        }
                    }));
                    return;
                }
                throw new FacebookException("A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk.");
            }
            throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File P() {
        Context context = f16900m;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
            context = null;
        }
        return context.getCacheDir();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(boolean z10) {
        if (z10) {
            l4.e.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(boolean z10) {
        if (z10) {
            com.facebook.appevents.f0.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(boolean z10) {
        if (z10) {
            f16904q = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(boolean z10) {
        if (z10) {
            f16905r = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(boolean z10) {
        if (z10) {
            f16906s = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void V(b bVar) {
        f.f15529f.e().j();
        e0.f15524d.a().d();
        if (AccessToken.f14731l.g()) {
            Profile.b bVar2 = Profile.f14870h;
            if (bVar2.b() == null) {
                bVar2.a();
            }
        }
        if (bVar != null) {
            bVar.onInitialized();
        }
        AppEventsLogger.a aVar = AppEventsLogger.f14941b;
        aVar.e(l(), f16892e);
        n0.n();
        Context applicationContext = l().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext().applicationContext");
        aVar.f(applicationContext).a();
        return null;
    }

    public static final void W(boolean z10) {
        n0.s(z10);
        if (z10) {
            j();
        }
    }

    public static final void j() {
        f16911x = true;
    }

    public static final boolean k() {
        return n0.d();
    }

    @NotNull
    public static final Context l() {
        v0.l();
        Context context = f16900m;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
            return null;
        }
        return context;
    }

    @NotNull
    public static final String m() {
        v0.l();
        String str = f16892e;
        if (str != null) {
            return str;
        }
        throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
    }

    @Nullable
    public static final String n() {
        v0.l();
        return f16893f;
    }

    public static final boolean o() {
        return n0.e();
    }

    public static final boolean p() {
        return n0.f();
    }

    @Nullable
    public static final File q() {
        v0.l();
        com.facebook.internal.h0<File> h0Var = f16899l;
        if (h0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cacheDir");
            h0Var = null;
        }
        return h0Var.c();
    }

    public static final int r() {
        v0.l();
        return f16901n;
    }

    @NotNull
    public static final String s() {
        v0.l();
        String str = f16894g;
        if (str != null) {
            return str;
        }
        throw new FacebookException("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
    }

    public static final boolean t() {
        return n0.g();
    }

    @NotNull
    public static final Executor u() {
        ReentrantLock reentrantLock = f16902o;
        reentrantLock.lock();
        try {
            if (f16891d == null) {
                f16891d = AsyncTask.THREAD_POOL_EXECUTOR;
            }
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
            Executor executor = f16891d;
            if (executor != null) {
                return executor;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @NotNull
    public static final String v() {
        return f16909v;
    }

    @NotNull
    public static final String w() {
        return "fb.gg";
    }

    @NotNull
    public static final String x() {
        String str = f16889b;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("getGraphApiVersion: %s", Arrays.copyOf(new Object[]{f16903p}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        u0.k0(str, format);
        return f16903p;
    }

    @NotNull
    public static final String y() {
        String str;
        AccessToken e10 = AccessToken.f14731l.e();
        if (e10 != null) {
            str = e10.h();
        } else {
            str = null;
        }
        return u0.F(str);
    }

    @NotNull
    public static final String z() {
        return f16908u;
    }
}
