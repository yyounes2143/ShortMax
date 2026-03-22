package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import androidx.browser.customtabs.CustomTabsService;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomTabUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f16186a = new e();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f16187b = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};

    private e() {
    }

    @Nullable
    public static final String a() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            Context l10 = com.facebook.v.l();
            List<ResolveInfo> queryIntentServices = l10.getPackageManager().queryIntentServices(new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION), 0);
            Intrinsics.checkNotNullExpressionValue(queryIntentServices, "context.packageManager.q…ervices(serviceIntent, 0)");
            HashSet r12 = kotlin.collections.n.r1(f16187b);
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null && r12.contains(serviceInfo.packageName)) {
                    return serviceInfo.packageName;
                }
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    @NotNull
    public static final String b() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return "fbconnect://cct." + com.facebook.v.l().getPackageName();
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    @NotNull
    public static final String c(@NotNull String developerDefinedRedirectURI) {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(developerDefinedRedirectURI, "developerDefinedRedirectURI");
            if (v0.d(com.facebook.v.l(), developerDefinedRedirectURI)) {
                return developerDefinedRedirectURI;
            }
            if (v0.d(com.facebook.v.l(), b())) {
                return b();
            }
            return "";
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }
}
