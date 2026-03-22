package com.inmobi.media;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class Vc {

    /* renamed from: a  reason: collision with root package name */
    public static final Vc f24316a = new Vc();

    /* renamed from: b  reason: collision with root package name */
    public static String f24317b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f24318c = "dir";

    public static final void a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f24318c = str;
    }

    public static /* synthetic */ void b() {
    }

    @VisibleForTesting
    @NotNull
    public static final String c() {
        return "10.8.7";
    }

    @Nullable
    public static final String d() {
        return f24318c;
    }

    @Nullable
    public static final String f() {
        return f24317b;
    }

    public static final void b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f24317b = str;
    }

    @NotNull
    public static final String a() {
        if (!TextUtils.isEmpty("")) {
            return "pr-SAND-10.8.7-20250730-";
        }
        return "pr-SAND-10.8.7-20250730";
    }

    public final boolean b(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a10 = B6.a(context, "sdk_version_store");
        Intrinsics.checkNotNullParameter("db_deletion_failed", "key");
        return a10.f23530a.getBoolean("db_deletion_failed", false);
    }

    @Nullable
    public final String a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a10 = B6.a(context, "sdk_version_store");
        Intrinsics.checkNotNullParameter("sdk_version", "key");
        return a10.f23530a.getString("sdk_version", null);
    }

    public final void a(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6.a(B6.a(context, "sdk_version_store"), "sdk_version", str, false, 4, (Object) null);
    }

    public final void a(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6.a(B6.a(context, "sdk_version_store"), "db_deletion_failed", z10, false, 4, (Object) null);
    }

    public static /* synthetic */ void e() {
    }

    public static /* synthetic */ void g() {
    }
}
