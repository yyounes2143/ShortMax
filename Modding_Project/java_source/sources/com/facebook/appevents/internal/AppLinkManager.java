package com.facebook.appevents.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.facebook.v;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: AppLinkManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AppLinkManager {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f15115b = new a(null);
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static volatile AppLinkManager f15116c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f15117a;

    /* compiled from: AppLinkManager.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAppLinkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLinkManager.kt\ncom/facebook/appevents/internal/AppLinkManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AppLinkManager a() {
            AppLinkManager a10 = AppLinkManager.a();
            if (a10 == null) {
                synchronized (this) {
                    if (!v.G()) {
                        return null;
                    }
                    a10 = AppLinkManager.a();
                    if (a10 == null) {
                        a10 = new AppLinkManager(null);
                        AppLinkManager.b(a10);
                    }
                }
            }
            return a10;
        }

        private a() {
        }
    }

    /* compiled from: AppLinkManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            AppLinkManager a10 = AppLinkManager.f15115b.a();
            if (a10 != null) {
                a10.g(activity);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            AppLinkManager a10 = AppLinkManager.f15115b.a();
            if (a10 != null) {
                a10.g(activity);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }
    }

    public /* synthetic */ AppLinkManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final /* synthetic */ AppLinkManager a() {
        if (o4.a.d(AppLinkManager.class)) {
            return null;
        }
        try {
            return f15116c;
        } catch (Throwable th2) {
            o4.a.b(th2, AppLinkManager.class);
            return null;
        }
    }

    public static final /* synthetic */ void b(AppLinkManager appLinkManager) {
        if (o4.a.d(AppLinkManager.class)) {
            return;
        }
        try {
            f15116c = appLinkManager;
        } catch (Throwable th2) {
            o4.a.b(th2, AppLinkManager.class);
        }
    }

    private final SharedPreferences f() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Object value = this.f15117a.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-preferences>(...)");
            return (SharedPreferences) value;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public final String c(@NotNull Intent intent) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            Bundle bundleExtra = intent.getBundleExtra("al_applink_data");
            if (bundleExtra == null) {
                return null;
            }
            return bundleExtra.getString("campaign_ids");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public final String d(@NotNull Uri uri) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(uri, "uri");
            String queryParameter = uri.getQueryParameter("al_applink_data");
            if (queryParameter == null) {
                return null;
            }
            try {
                return new JSONObject(queryParameter).getString("campaign_ids");
            } catch (Exception unused) {
                Log.d("AppLinkManager", "Fail to parse Applink data from Uri");
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public final String e(@NotNull String key) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(key, "key");
            return f().getString(key, null);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public final void g(@NotNull Activity activity) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Uri data = activity.getIntent().getData();
            if (data == null) {
                return;
            }
            Intent intent = activity.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "activity.intent");
            h(data, intent);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void h(@NotNull Uri uri, @NotNull Intent intent) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(intent, "intent");
            String d10 = d(uri);
            if (d10 == null) {
                d10 = c(intent);
            }
            if (d10 != null) {
                f().edit().putString("campaign_ids", d10).apply();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void i(@NotNull Application application) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(application, "application");
            application.registerActivityLifecycleCallbacks(new b());
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private AppLinkManager() {
        this.f15117a = c.b(new Function0<SharedPreferences>() { // from class: com.facebook.appevents.internal.AppLinkManager$preferences$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                return v.l().getSharedPreferences("com.facebook.sdk.APPLINK_INFO", 0);
            }
        });
    }
}
