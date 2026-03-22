package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.u0;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UserSettingsManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class n0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n0 f16711a = new n0();

    /* renamed from: b  reason: collision with root package name */
    private static final String f16712b = n0.class.getName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f16713c = new AtomicBoolean(false);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f16714d = new AtomicBoolean(false);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final a f16715e = new a(true, "com.facebook.sdk.AutoInitEnabled");
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final a f16716f = new a(true, "com.facebook.sdk.AutoLogAppEventsEnabled");
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final a f16717g = new a(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final a f16718h = new a(false, "auto_event_setup_enabled");
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final a f16719i = new a(true, "com.facebook.sdk.MonitorEnabled");

    /* renamed from: j  reason: collision with root package name */
    private static SharedPreferences f16720j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UserSettingsManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f16721a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private String f16722b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Boolean f16723c;

        /* renamed from: d  reason: collision with root package name */
        private long f16724d;

        public a(boolean z10, @NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.f16721a = z10;
            this.f16722b = key;
        }

        public final boolean a() {
            return this.f16721a;
        }

        @NotNull
        public final String b() {
            return this.f16722b;
        }

        public final long c() {
            return this.f16724d;
        }

        @Nullable
        public final Boolean d() {
            return this.f16723c;
        }

        public final boolean e() {
            Boolean bool = this.f16723c;
            if (bool != null) {
                return bool.booleanValue();
            }
            return this.f16721a;
        }

        public final void f(long j10) {
            this.f16724d = j10;
        }

        public final void g(@Nullable Boolean bool) {
            this.f16723c = bool;
        }
    }

    private n0() {
    }

    private final boolean b() {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            Map<String, Boolean> g10 = FetchedAppSettingsManager.g();
            if (g10 != null && !g10.isEmpty()) {
                Boolean bool = g10.get("auto_log_app_events_enabled");
                Boolean bool2 = g10.get("auto_log_app_events_default");
                if (bool != null) {
                    return bool.booleanValue();
                }
                Boolean c10 = c();
                if (c10 != null) {
                    return c10.booleanValue();
                }
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
                return true;
            }
            return f16716f.e();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final Boolean c() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Boolean q10 = q();
            if (q10 != null) {
                return q10;
            }
            Boolean l10 = l();
            if (l10 == null) {
                return null;
            }
            return l10;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final boolean d() {
        if (o4.a.d(n0.class)) {
            return false;
        }
        try {
            f16711a.j();
            return f16717g.e();
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
            return false;
        }
    }

    public static final boolean e() {
        if (o4.a.d(n0.class)) {
            return false;
        }
        try {
            f16711a.j();
            return f16715e.e();
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
            return false;
        }
    }

    public static final boolean f() {
        if (o4.a.d(n0.class)) {
            return false;
        }
        try {
            n0 n0Var = f16711a;
            n0Var.j();
            return n0Var.b();
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
            return false;
        }
    }

    public static final boolean g() {
        if (o4.a.d(n0.class)) {
            return false;
        }
        try {
            f16711a.j();
            return f16718h.e();
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
            return false;
        }
    }

    private final void h() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            a aVar = f16718h;
            r(aVar);
            final long currentTimeMillis = System.currentTimeMillis();
            if (aVar.d() != null && currentTimeMillis - aVar.c() < 604800000) {
                return;
            }
            aVar.g(null);
            aVar.f(0L);
            if (!f16714d.compareAndSet(false, true)) {
                return;
            }
            v.u().execute(new Runnable() { // from class: com.facebook.m0
                @Override // java.lang.Runnable
                public final void run() {
                    n0.i(currentTimeMillis);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(long j10) {
        com.facebook.internal.p u10;
        String str;
        if (o4.a.d(n0.class)) {
            return;
        }
        try {
            if (f16717g.e() && (u10 = FetchedAppSettingsManager.u(v.m(), false)) != null && u10.d()) {
                com.facebook.internal.b e10 = com.facebook.internal.b.f16149f.e(v.l());
                if (e10 != null && e10.h() != null) {
                    str = e10.h();
                } else {
                    str = null;
                }
                if (str != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("advertiser_id", str);
                    bundle.putString("fields", "auto_event_setup_enabled");
                    GraphRequest x10 = GraphRequest.f14841n.x(null, MBridgeConstans.DYNAMIC_VIEW_WX_APP, null);
                    x10.H(bundle);
                    JSONObject c10 = x10.k().c();
                    if (c10 != null) {
                        a aVar = f16718h;
                        aVar.g(Boolean.valueOf(c10.optBoolean("auto_event_setup_enabled", false)));
                        aVar.f(j10);
                        f16711a.u(aVar);
                    }
                }
            }
            f16714d.set(false);
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
        }
    }

    private final void j() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (!v.G() || !f16713c.compareAndSet(false, true)) {
                return;
            }
            SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getApplicationContext()\n…GS, Context.MODE_PRIVATE)");
            f16720j = sharedPreferences;
            k(f16716f, f16717g, f16715e);
            h();
            p();
            o();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void k(a... aVarArr) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            for (a aVar : aVarArr) {
                if (aVar == f16718h) {
                    h();
                } else if (aVar.d() == null) {
                    r(aVar);
                    if (aVar.d() == null) {
                        m(aVar);
                    }
                } else {
                    u(aVar);
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final Boolean l() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            t();
            try {
                Context l10 = v.l();
                ApplicationInfo applicationInfo = l10.getPackageManager().getApplicationInfo(l10.getPackageName(), 128);
                Intrinsics.checkNotNullExpressionValue(applicationInfo, "ctx.packageManager.getAp…ageManager.GET_META_DATA)");
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    a aVar = f16716f;
                    if (bundle.containsKey(aVar.b())) {
                        return Boolean.valueOf(applicationInfo.metaData.getBoolean(aVar.b()));
                    }
                }
            } catch (PackageManager.NameNotFoundException e10) {
                u0.j0(f16712b, e10);
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final void m(a aVar) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            t();
            try {
                Context l10 = v.l();
                ApplicationInfo applicationInfo = l10.getPackageManager().getApplicationInfo(l10.getPackageName(), 128);
                Intrinsics.checkNotNullExpressionValue(applicationInfo, "ctx.packageManager.getAp…ageManager.GET_META_DATA)");
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null && bundle.containsKey(aVar.b())) {
                    aVar.g(Boolean.valueOf(applicationInfo.metaData.getBoolean(aVar.b(), aVar.a())));
                }
            } catch (PackageManager.NameNotFoundException e10) {
                u0.j0(f16712b, e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final void n() {
        if (o4.a.d(n0.class)) {
            return;
        }
        try {
            Context l10 = v.l();
            ApplicationInfo applicationInfo = l10.getPackageManager().getApplicationInfo(l10.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "ctx.packageManager.getAp…ageManager.GET_META_DATA)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null && bundle.getBoolean("com.facebook.sdk.AutoAppLinkEnabled", false)) {
                com.facebook.appevents.h0 h0Var = new com.facebook.appevents.h0(l10);
                Bundle bundle2 = new Bundle();
                if (!u0.V()) {
                    bundle2.putString("SchemeWarning", "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                    Log.w(f16712b, "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                }
                h0Var.d("fb_auto_applink", bundle2);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
        }
    }

    private final void o() {
        int i10;
        int i11;
        ApplicationInfo applicationInfo;
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (!f16713c.get() || !v.G()) {
                return;
            }
            Context l10 = v.l();
            int i12 = 0;
            int e10 = f16715e.e() | ((f16716f.e() ? 1 : 0) << 1) | ((f16717g.e() ? 1 : 0) << 2) | ((f16719i.e() ? 1 : 0) << 3);
            SharedPreferences sharedPreferences = f16720j;
            SharedPreferences sharedPreferences2 = null;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("userSettingPref");
                sharedPreferences = null;
            }
            int i13 = sharedPreferences.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
            if (i13 != e10) {
                SharedPreferences sharedPreferences3 = f16720j;
                if (sharedPreferences3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("userSettingPref");
                } else {
                    sharedPreferences2 = sharedPreferences3;
                }
                sharedPreferences2.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", e10).apply();
                try {
                    applicationInfo = l10.getPackageManager().getApplicationInfo(l10.getPackageName(), 128);
                    Intrinsics.checkNotNullExpressionValue(applicationInfo, "ctx.packageManager.getAp…ageManager.GET_META_DATA)");
                } catch (PackageManager.NameNotFoundException unused) {
                    i10 = 0;
                }
                if (applicationInfo.metaData != null) {
                    String[] strArr = {"com.facebook.sdk.AutoInitEnabled", "com.facebook.sdk.AutoLogAppEventsEnabled", "com.facebook.sdk.AdvertiserIDCollectionEnabled", "com.facebook.sdk.MonitorEnabled"};
                    boolean[] zArr = {true, true, true, true};
                    i11 = 0;
                    i10 = 0;
                    while (i12 < 4) {
                        try {
                            i10 |= (applicationInfo.metaData.containsKey(strArr[i12]) ? 1 : 0) << i12;
                            i11 |= (applicationInfo.metaData.getBoolean(strArr[i12], zArr[i12]) ? 1 : 0) << i12;
                            i12++;
                        } catch (PackageManager.NameNotFoundException unused2) {
                            i12 = i11;
                            i11 = i12;
                            i12 = i10;
                            com.facebook.appevents.h0 h0Var = new com.facebook.appevents.h0(l10);
                            Bundle bundle = new Bundle();
                            bundle.putInt("usage", i12);
                            bundle.putInt("initial", i11);
                            bundle.putInt("previous", i13);
                            bundle.putInt("current", e10);
                            h0Var.b(bundle);
                        }
                    }
                    i12 = i10;
                    com.facebook.appevents.h0 h0Var2 = new com.facebook.appevents.h0(l10);
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("usage", i12);
                    bundle2.putInt("initial", i11);
                    bundle2.putInt("previous", i13);
                    bundle2.putInt("current", e10);
                    h0Var2.b(bundle2);
                }
                i11 = 0;
                com.facebook.appevents.h0 h0Var22 = new com.facebook.appevents.h0(l10);
                Bundle bundle22 = new Bundle();
                bundle22.putInt("usage", i12);
                bundle22.putInt("initial", i11);
                bundle22.putInt("previous", i13);
                bundle22.putInt("current", e10);
                h0Var22.b(bundle22);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void p() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Context l10 = v.l();
            ApplicationInfo applicationInfo = l10.getPackageManager().getApplicationInfo(l10.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "ctx.packageManager.getAp…ageManager.GET_META_DATA)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                if (!bundle.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled")) {
                    Log.w(f16712b, "You haven't set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
                }
                if (!d()) {
                    Log.w(f16712b, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you're sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results.");
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private static final Boolean q() {
        String str = "";
        if (o4.a.d(n0.class)) {
            return null;
        }
        try {
            f16711a.t();
            try {
                SharedPreferences sharedPreferences = f16720j;
                if (sharedPreferences == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("userSettingPref");
                    sharedPreferences = null;
                }
                String string = sharedPreferences.getString(f16716f.b(), "");
                if (string != null) {
                    str = string;
                }
                if (str.length() > 0) {
                    return Boolean.valueOf(new JSONObject(str).getBoolean(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                }
            } catch (JSONException e10) {
                u0.j0(f16712b, e10);
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
            return null;
        }
    }

    private final void r(a aVar) {
        String str = "";
        if (o4.a.d(this)) {
            return;
        }
        try {
            t();
            try {
                SharedPreferences sharedPreferences = f16720j;
                if (sharedPreferences == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("userSettingPref");
                    sharedPreferences = null;
                }
                String string = sharedPreferences.getString(aVar.b(), "");
                if (string != null) {
                    str = string;
                }
                if (str.length() > 0) {
                    JSONObject jSONObject = new JSONObject(str);
                    aVar.g(Boolean.valueOf(jSONObject.getBoolean(AppMeasurementSdk.ConditionalUserProperty.VALUE)));
                    aVar.f(jSONObject.getLong("last_timestamp"));
                }
            } catch (JSONException e10) {
                u0.j0(f16712b, e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final void s(boolean z10) {
        if (o4.a.d(n0.class)) {
            return;
        }
        try {
            a aVar = f16715e;
            aVar.g(Boolean.valueOf(z10));
            aVar.f(System.currentTimeMillis());
            if (f16713c.get()) {
                f16711a.u(aVar);
            } else {
                f16711a.j();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, n0.class);
        }
    }

    private final void t() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (f16713c.get()) {
                return;
            }
            throw new FacebookSdkNotInitializedException("The UserSettingManager has not been initialized successfully");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void u(a aVar) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            t();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, aVar.d());
                jSONObject.put("last_timestamp", aVar.c());
                SharedPreferences sharedPreferences = f16720j;
                if (sharedPreferences == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("userSettingPref");
                    sharedPreferences = null;
                }
                sharedPreferences.edit().putString(aVar.b(), jSONObject.toString()).apply();
                o();
            } catch (Exception e10) {
                u0.j0(f16712b, e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
