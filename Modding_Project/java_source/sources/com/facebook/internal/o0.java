package com.facebook.internal;

import java.util.Arrays;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: ServerProtocol.kt */
@Metadata
/* loaded from: classes3.dex */
public final class o0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final o0 f16270a = new o0();

    /* renamed from: b  reason: collision with root package name */
    private static final String f16271b = o0.class.getName();

    private o0() {
    }

    @NotNull
    public static final String a() {
        return "v16.0";
    }

    @NotNull
    public static final String b() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("m.%s", Arrays.copyOf(new Object[]{com.facebook.v.v()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public static final String c() {
        return "CONNECTION_FAILURE";
    }

    @NotNull
    public static final Collection<String> d() {
        return CollectionsKt.q("service_disabled", "AndroidAuthKillSwitchException");
    }

    @NotNull
    public static final Collection<String> e() {
        return CollectionsKt.q("access_denied", "OAuthAccessDeniedException");
    }

    @NotNull
    public static final String f() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("https://graph.%s", Arrays.copyOf(new Object[]{com.facebook.v.v()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public static final String g() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%s", Arrays.copyOf(new Object[]{com.facebook.v.w()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public static final String h() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("https://graph.%s", Arrays.copyOf(new Object[]{com.facebook.v.y()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public static final String i(@NotNull String subdomain) {
        Intrinsics.checkNotNullParameter(subdomain, "subdomain");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("https://graph.%s", Arrays.copyOf(new Object[]{subdomain}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public static final String j() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("https://graph-video.%s", Arrays.copyOf(new Object[]{com.facebook.v.y()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public static final String k() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("m.%s", Arrays.copyOf(new Object[]{com.facebook.v.z()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }
}
