package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebSettings;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class Uc {

    /* renamed from: a  reason: collision with root package name */
    public static final Uc f24267a = new Uc();

    /* renamed from: b  reason: collision with root package name */
    public static Context f24268b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f24269c = "";

    /* renamed from: d  reason: collision with root package name */
    public static String f24270d;

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicBoolean f24271e;

    /* renamed from: f  reason: collision with root package name */
    public static final ms.i f24272f;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f24273g;

    /* renamed from: h  reason: collision with root package name */
    public static final ExecutorService f24274h;

    /* renamed from: i  reason: collision with root package name */
    public static int f24275i;

    static {
        String TAG = Uc.class.getSimpleName();
        f24271e = new AtomicBoolean();
        f24272f = kotlin.c.b(Tc.f24223a);
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        f24274h = Executors.newSingleThreadExecutor(new K5(TAG));
    }

    @Nullable
    public static final String b() {
        return f24270d;
    }

    public static /* synthetic */ void c() {
    }

    @Nullable
    public static final Context d() {
        return f24268b;
    }

    @NotNull
    public static final H7 f() {
        return (H7) f24272f.getValue();
    }

    @NotNull
    public static final String k() {
        Context applicationContext;
        String str = "";
        if (f24269c.length() == 0) {
            Context context = f24268b;
            if (context != null) {
                try {
                    applicationContext = context.getApplicationContext();
                } catch (Exception e10) {
                    try {
                        throw new Ee(e10.getMessage());
                    } catch (Ee e11) {
                        Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
                        S5 s52 = S5.f24132a;
                        C2947f2 event = new C2947f2(e11);
                        Intrinsics.checkNotNullParameter(event, "event");
                        S5.f24135d.a(event);
                        try {
                            String property = System.getProperty("http.agent");
                            if (property != null) {
                                str = property;
                            }
                            Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
                        } catch (Exception e12) {
                            Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
                            Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
                            S5 s53 = S5.f24132a;
                            S5.f24135d.a(AbstractC3221w5.a(e12, NotificationCompat.CATEGORY_EVENT));
                        }
                    } catch (Exception unused) {
                        Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
                    }
                }
            } else {
                applicationContext = null;
            }
            String defaultUserAgent = WebSettings.getDefaultUserAgent(applicationContext);
            Intrinsics.checkNotNull(defaultUserAgent);
            str = defaultUserAgent;
            f24269c = str;
        }
        return f24269c;
    }

    public static final boolean m() {
        return f24271e.get();
    }

    public static final boolean o() {
        return f24273g;
    }

    public static final boolean q() {
        if (f24275i == 2) {
            return true;
        }
        return false;
    }

    public static final void u() {
        f24268b = null;
        f24270d = null;
        f24275i = 0;
    }

    @VisibleForTesting(otherwise = 2)
    public final void a(int i10) {
        f24275i = i10;
    }

    @WorkerThread
    @Nullable
    public final String h() {
        Context context = f24268b;
        if (context == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a10 = B6.a(context, "coppa_store");
        Intrinsics.checkNotNullParameter("im_accid", "key");
        return a10.f23530a.getString("im_accid", null);
    }

    public final int i() {
        return f24275i;
    }

    public final void s() {
        f24270d = null;
        f24268b = null;
        f24275i = 3;
    }

    public final void t() {
        f24275i = 2;
    }

    public static final void a(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        f24274h.submit(runnable);
    }

    public static final void b(boolean z10) {
        f24273g = z10;
    }

    @VisibleForTesting(otherwise = 2)
    public static final void c(@Nullable Context context) {
        f24268b = context;
    }

    public static final void a(boolean z10) {
        f24271e.set(z10);
        if (z10) {
            f().b(new C2914d2(101, 6, (String) null));
        } else {
            f().b(new C2914d2(102, 6, (String) null));
        }
    }

    @UiThread
    public static final boolean b(@NotNull Context context, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        f24275i = 1;
        f24268b = context.getApplicationContext();
        f24271e.set(true);
        f24270d = accountId;
        return true;
    }

    @VisibleForTesting(otherwise = 2)
    public static final void c(@Nullable String str) {
        f24270d = str;
    }

    @WorkerThread
    public final void a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            F4.a(b(context));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
        }
    }

    @NotNull
    public final File b(@Nullable Context context) {
        return new File(context != null ? context.getFilesDir() : null, "im_cached_content");
    }

    @WorkerThread
    public final void b(@NotNull String primaryAccountId) {
        Intrinsics.checkNotNullParameter(primaryAccountId, "primaryAccountId");
        Context context = f24268b;
        if (context != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6.a(B6.a(context, "coppa_store"), "im_accid", primaryAccountId, false, 4, (Object) null);
        }
    }

    @WorkerThread
    public final void a() {
        Context context = f24268b;
        if (context != null) {
            File b10 = b(context);
            if (!b10.mkdir() && !b10.isDirectory()) {
                Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
            } else {
                Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
            }
        }
    }

    public final boolean a(@Nullable Context context, @Nullable String str) {
        if (context == null || str == null) {
            return false;
        }
        context.getPackageManager();
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                for (String str2 : strArr) {
                    if (Intrinsics.areEqual(str2, str)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Uc", "TAG");
            return false;
        }
    }

    public static /* synthetic */ void e() {
    }

    public static /* synthetic */ void g() {
    }

    public static /* synthetic */ void j() {
    }

    public static /* synthetic */ void l() {
    }

    public static /* synthetic */ void n() {
    }

    public static /* synthetic */ void p() {
    }

    public static /* synthetic */ void r() {
    }

    public static final void a(@Nullable Context context, @NotNull Application.ActivityLifecycleCallbacks lifecycleCallbacks) {
        Intrinsics.checkNotNullParameter(lifecycleCallbacks, "lifecycleCallbacks");
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            activity.getApplication().unregisterActivityLifecycleCallbacks(lifecycleCallbacks);
            activity.getApplication().registerActivityLifecycleCallbacks(lifecycleCallbacks);
        }
    }

    public final void a(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    @NotNull
    public final File a(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        a();
        File b10 = b(f24268b);
        int length = key.length() / 2;
        String substring = key.substring(0, length);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        String valueOf = String.valueOf(substring.hashCode() & Integer.MAX_VALUE);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(valueOf);
        String substring2 = key.substring(length);
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
        sb2.append(substring2.hashCode() & Integer.MAX_VALUE);
        return new File(b10, sb2.toString());
    }
}
