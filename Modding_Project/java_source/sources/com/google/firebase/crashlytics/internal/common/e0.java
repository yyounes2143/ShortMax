package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: DataCollectionArbiter.java */
/* loaded from: classes5.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f20703a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.firebase.f f20704b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f20705c;

    /* renamed from: d  reason: collision with root package name */
    TaskCompletionSource<Void> f20706d;

    /* renamed from: e  reason: collision with root package name */
    boolean f20707e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f20708f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Boolean f20709g;

    /* renamed from: h  reason: collision with root package name */
    private final TaskCompletionSource<Void> f20710h;

    public e0(com.google.firebase.f fVar) {
        Object obj = new Object();
        this.f20705c = obj;
        this.f20706d = new TaskCompletionSource<>();
        this.f20707e = false;
        this.f20708f = false;
        this.f20710h = new TaskCompletionSource<>();
        Context l10 = fVar.l();
        this.f20704b = fVar;
        this.f20703a = CommonUtils.q(l10);
        Boolean b10 = b();
        this.f20709g = b10 == null ? a(l10) : b10;
        synchronized (obj) {
            try {
                if (d()) {
                    this.f20706d.trySetResult(null);
                    this.f20707e = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    private Boolean a(Context context) {
        Boolean g10 = g(context);
        if (g10 == null) {
            this.f20708f = false;
            return null;
        }
        this.f20708f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(g10));
    }

    @Nullable
    private Boolean b() {
        if (this.f20703a.contains("firebase_crashlytics_collection_enabled")) {
            this.f20708f = false;
            return Boolean.valueOf(this.f20703a.getBoolean("firebase_crashlytics_collection_enabled", true));
        }
        return null;
    }

    private boolean e() {
        try {
            return this.f20704b.v();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    private void f(boolean z10) {
        String str;
        String str2;
        if (z10) {
            str = "ENABLED";
        } else {
            str = "DISABLED";
        }
        if (this.f20709g == null) {
            str2 = "global Firebase setting";
        } else if (this.f20708f) {
            str2 = "firebase_crashlytics_collection_enabled manifest flag";
        } else {
            str2 = "API";
        }
        z7.g.f().b(String.format("Crashlytics automatic data collection %s by %s.", str, str2));
    }

    @Nullable
    private static Boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            z7.g.f().e("Could not read data collection permission from manifest", e10);
            return null;
        }
    }

    @SuppressLint({"ApplySharedPref"})
    private static void i(SharedPreferences sharedPreferences, Boolean bool) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (bool != null) {
            edit.putBoolean("firebase_crashlytics_collection_enabled", bool.booleanValue());
        } else {
            edit.remove("firebase_crashlytics_collection_enabled");
        }
        edit.apply();
    }

    public void c(boolean z10) {
        if (z10) {
            this.f20710h.trySetResult(null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    public synchronized boolean d() {
        boolean e10;
        try {
            Boolean bool = this.f20709g;
            if (bool != null) {
                e10 = bool.booleanValue();
            } else {
                e10 = e();
            }
            f(e10);
        } catch (Throwable th2) {
            throw th2;
        }
        return e10;
    }

    public synchronized void h(@Nullable Boolean bool) {
        Boolean a10;
        if (bool != null) {
            try {
                this.f20708f = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (bool != null) {
            a10 = bool;
        } else {
            a10 = a(this.f20704b.l());
        }
        this.f20709g = a10;
        i(this.f20703a, bool);
        synchronized (this.f20705c) {
            if (d()) {
                if (!this.f20707e) {
                    this.f20706d.trySetResult(null);
                    this.f20707e = true;
                }
            } else if (this.f20707e) {
                this.f20706d = new TaskCompletionSource<>();
                this.f20707e = false;
            }
        }
    }

    public Task<Void> j() {
        Task<Void> task;
        synchronized (this.f20705c) {
            task = this.f20706d.getTask();
        }
        return task;
    }

    public Task<Void> k() {
        return c8.b.c(this.f20710h.getTask(), j());
    }
}
