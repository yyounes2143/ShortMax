package a2;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RestrictTo;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.i0;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityLifecycleTracker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActivityLifecycleTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLifecycleTracker.kt\ncom/facebook/appevents/internal/ActivityLifecycleTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n1#2:270\n*E\n"})
/* loaded from: classes3.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f63a = new g();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f64b;

    /* renamed from: c  reason: collision with root package name */
    private static final ScheduledExecutorService f65c;

    /* renamed from: d  reason: collision with root package name */
    private static final ScheduledExecutorService f66d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static volatile ScheduledFuture<?> f67e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Object f68f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final AtomicInteger f69g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static volatile l f70h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final AtomicBoolean f71i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static String f72j;

    /* renamed from: k  reason: collision with root package name */
    private static long f73k;

    /* renamed from: l  reason: collision with root package name */
    private static int f74l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static WeakReference<Activity> f75m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static String f76n;

    /* compiled from: ActivityLifecycleTracker.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Application.ActivityLifecycleCallbacks {
        a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, g.f64b, "onActivityCreated");
            h.a();
            g.q(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, g.f64b, "onActivityDestroyed");
            g.f63a.s(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, g.f64b, "onActivityPaused");
            h.a();
            g.f63a.t(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, g.f64b, "onActivityResumed");
            h.a();
            g.w(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(outState, "outState");
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, g.f64b, "onActivitySaveInstanceState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            g.f74l++;
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, g.f64b, "onActivityStarted");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, g.f64b, "onActivityStopped");
            AppEventsLogger.f14941b.g();
            g.f74l--;
        }
    }

    static {
        String canonicalName = g.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "com.facebook.appevents.internal.ActivityLifecycleTracker";
        }
        f64b = canonicalName;
        f65c = Executors.newSingleThreadScheduledExecutor();
        f66d = Executors.newSingleThreadScheduledExecutor();
        f68f = new Object();
        f69g = new AtomicInteger(0);
        f71i = new AtomicBoolean(false);
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(boolean z10) {
        if (z10) {
            s1.e.f();
        } else {
            s1.e.e();
        }
    }

    private final void l() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (f68f) {
            try {
                if (f67e != null && (scheduledFuture = f67e) != null) {
                    scheduledFuture.cancel(false);
                }
                f67e = null;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public static final Activity m() {
        WeakReference<Activity> weakReference = f75m;
        if (weakReference == null || weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Nullable
    public static final UUID n() {
        l lVar;
        if (f70h == null || (lVar = f70h) == null) {
            return null;
        }
        return lVar.d();
    }

    private final int o() {
        p f10 = FetchedAppSettingsManager.f(v.m());
        if (f10 == null) {
            return j.a();
        }
        return f10.v();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean p() {
        if (f74l == 0) {
            return true;
        }
        return false;
    }

    public static final void q(@Nullable Activity activity) {
        f65c.execute(new Runnable() { // from class: a2.e
            @Override // java.lang.Runnable
            public final void run() {
                g.r();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r() {
        if (f70h == null) {
            f70h = l.f89g.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(Activity activity) {
        s1.e.j(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(Activity activity) {
        AtomicInteger atomicInteger = f69g;
        if (atomicInteger.decrementAndGet() < 0) {
            atomicInteger.set(0);
            Log.w(f64b, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
        }
        l();
        final long currentTimeMillis = System.currentTimeMillis();
        final String u10 = u0.u(activity);
        s1.e.k(activity);
        f65c.execute(new Runnable() { // from class: a2.d
            @Override // java.lang.Runnable
            public final void run() {
                g.u(currentTimeMillis, u10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(final long j10, final String activityName) {
        Intrinsics.checkNotNullParameter(activityName, "$activityName");
        if (f70h == null) {
            f70h = new l(Long.valueOf(j10), null, null, 4, null);
        }
        l lVar = f70h;
        if (lVar != null) {
            lVar.k(Long.valueOf(j10));
        }
        if (f69g.get() <= 0) {
            Runnable runnable = new Runnable() { // from class: a2.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.v(j10, activityName);
                }
            };
            synchronized (f68f) {
                f67e = f65c.schedule(runnable, f63a.o(), TimeUnit.SECONDS);
                Unit unit = Unit.f60915a;
            }
        }
        long j11 = f73k;
        long j12 = 0;
        if (j11 > 0) {
            j12 = (j10 - j11) / 1000;
        }
        i.i(activityName, j12);
        l lVar2 = f70h;
        if (lVar2 != null) {
            lVar2.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(long j10, String activityName) {
        Intrinsics.checkNotNullParameter(activityName, "$activityName");
        if (f70h == null) {
            f70h = new l(Long.valueOf(j10), null, null, 4, null);
        }
        if (f69g.get() <= 0) {
            m.d(activityName, f70h, f72j);
            l.f89g.a();
            f70h = null;
        }
        synchronized (f68f) {
            f67e = null;
            Unit unit = Unit.f60915a;
        }
    }

    public static final void w(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        f75m = new WeakReference<>(activity);
        f69g.incrementAndGet();
        f63a.l();
        final long currentTimeMillis = System.currentTimeMillis();
        f73k = currentTimeMillis;
        final String u10 = u0.u(activity);
        s1.e.l(activity);
        q1.b.d(activity);
        e2.e.h(activity);
        String str = f76n;
        if (str != null && StringsKt.b0(str, "ProxyBillingActivity", false, 2, null) && !Intrinsics.areEqual(u10, "ProxyBillingActivity")) {
            f66d.execute(new Runnable() { // from class: a2.b
                @Override // java.lang.Runnable
                public final void run() {
                    g.x();
                }
            });
        }
        final Context applicationContext = activity.getApplicationContext();
        f65c.execute(new Runnable() { // from class: a2.c
            @Override // java.lang.Runnable
            public final void run() {
                g.y(currentTimeMillis, u10, applicationContext);
            }
        });
        f76n = u10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x() {
        com.facebook.appevents.iap.g.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(long j10, String activityName, Context appContext) {
        Long l10;
        l lVar;
        Intrinsics.checkNotNullParameter(activityName, "$activityName");
        l lVar2 = f70h;
        if (lVar2 != null) {
            l10 = lVar2.e();
        } else {
            l10 = null;
        }
        if (f70h == null) {
            f70h = new l(Long.valueOf(j10), null, null, 4, null);
            String str = f72j;
            Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
            m.b(activityName, null, str, appContext);
        } else if (l10 != null) {
            long longValue = j10 - l10.longValue();
            if (longValue > f63a.o() * 1000) {
                m.d(activityName, f70h, f72j);
                String str2 = f72j;
                Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
                m.b(activityName, null, str2, appContext);
                f70h = new l(Long.valueOf(j10), null, null, 4, null);
            } else if (longValue > 1000 && (lVar = f70h) != null) {
                lVar.h();
            }
        }
        l lVar3 = f70h;
        if (lVar3 != null) {
            lVar3.k(Long.valueOf(j10));
        }
        l lVar4 = f70h;
        if (lVar4 != null) {
            lVar4.m();
        }
    }

    public static final void z(@NotNull Application application, @Nullable String str) {
        Intrinsics.checkNotNullParameter(application, "application");
        if (!f71i.compareAndSet(false, true)) {
            return;
        }
        FeatureManager.a(FeatureManager.Feature.CodelessEvents, new FeatureManager.a() { // from class: a2.a
            @Override // com.facebook.internal.FeatureManager.a
            public final void a(boolean z10) {
                g.A(z10);
            }
        });
        f72j = str;
        application.registerActivityLifecycleCallbacks(new a());
    }
}
