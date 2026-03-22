package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookSdkNotInitializedException;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Validate.kt */
@Metadata
@SourceDebugExtension({"SMAP\nValidate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Validate.kt\ncom/facebook/internal/Validate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"})
/* loaded from: classes3.dex */
public final class v0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final v0 f16326a = new v0();

    /* renamed from: b  reason: collision with root package name */
    private static final String f16327b = v0.class.getName();

    private v0() {
    }

    public static final <T> void a(@NotNull Collection<? extends T> container, @NotNull String name) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        for (T t10 : container) {
            if (t10 == null) {
                throw new NullPointerException("Container '" + name + "' cannot contain null values");
            }
        }
    }

    @NotNull
    public static final String b() {
        String m10 = com.facebook.v.m();
        if (m10 != null) {
            return m10;
        }
        throw new IllegalStateException("No App ID found, please set the App ID.");
    }

    @NotNull
    public static final String c() {
        String s10 = com.facebook.v.s();
        if (s10 != null) {
            return s10;
        }
        throw new IllegalStateException("No Client Token found, please set the Client Token. Please follow https://developers.facebook.com/docs/android/getting-started/#client-access-token to get the token and fill it in AndroidManifest.xml");
    }

    public static final boolean d(@NotNull Context context, @NotNull String redirectURI) {
        List<ResolveInfo> list;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(redirectURI, "redirectURI");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse(redirectURI));
            list = packageManager.queryIntentActivities(intent, 64);
        } else {
            list = null;
        }
        if (list == null) {
            return false;
        }
        boolean z10 = false;
        for (ResolveInfo resolveInfo : list) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!Intrinsics.areEqual(activityInfo.name, "com.facebook.CustomTabActivity") || !Intrinsics.areEqual(activityInfo.packageName, context.getPackageName())) {
                return false;
            }
            z10 = true;
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    @android.annotation.SuppressLint({"WrongConstant"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void e(@org.jetbrains.annotations.NotNull android.content.Context r3, boolean r4) {
        /*
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            android.content.pm.PackageManager r0 = r3.getPackageManager()
            if (r0 == 0) goto L18
            android.content.ComponentName r1 = new android.content.ComponentName
            java.lang.String r2 = "com.facebook.FacebookActivity"
            r1.<init>(r3, r2)
            r3 = 1
            android.content.pm.ActivityInfo r3 = r0.getActivityInfo(r1, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L18
            goto L19
        L18:
            r3 = 0
        L19:
            if (r3 != 0) goto L2b
            java.lang.String r3 = "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."
            if (r4 != 0) goto L25
            java.lang.String r4 = com.facebook.internal.v0.f16327b
            android.util.Log.w(r4, r3)
            goto L2b
        L25:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            r4.<init>(r3)
            throw r4
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.v0.e(android.content.Context, boolean):void");
    }

    public static final void f(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            if (!z10) {
                Log.w(f16327b, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
                return;
            }
            throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    public static final void g(@NotNull String arg, @NotNull String name) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        Intrinsics.checkNotNullParameter(name, "name");
        if (arg.length() > 0) {
            return;
        }
        throw new IllegalArgumentException(("Argument '" + name + "' cannot be empty").toString());
    }

    public static final <T> void h(@NotNull Collection<? extends T> container, @NotNull String name) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        if (!container.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException(("Container '" + name + "' cannot be empty").toString());
    }

    public static final <T> void i(@NotNull Collection<? extends T> container, @NotNull String name) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        a(container, name);
        h(container, name);
    }

    public static final void j(@Nullable Object obj, @NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (obj != null) {
            return;
        }
        throw new NullPointerException("Argument '" + name + "' cannot be null");
    }

    @NotNull
    public static final String k(@Nullable String str, @NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (str != null && str.length() > 0) {
            return str;
        }
        throw new IllegalArgumentException(("Argument '" + name + "' cannot be null or empty").toString());
    }

    public static final void l() {
        if (com.facebook.v.G()) {
            return;
        }
        throw new FacebookSdkNotInitializedException("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
    }
}
