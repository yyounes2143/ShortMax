package com.moloco.sdk.acm;

import android.content.Context;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f31830a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f31831b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Context f31832c;

    /* renamed from: d  reason: collision with root package name */
    private final long f31833d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f31834e;

    public d(@NotNull String appId, @NotNull String postAnalyticsUrl, @NotNull Context context, long j10, @NotNull Map<String, String> clientOptions) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(postAnalyticsUrl, "postAnalyticsUrl");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clientOptions, "clientOptions");
        this.f31830a = appId;
        this.f31831b = postAnalyticsUrl;
        this.f31832c = context;
        this.f31833d = j10;
        this.f31834e = clientOptions;
    }

    @NotNull
    public final String a() {
        return this.f31830a;
    }

    @NotNull
    public final Map<String, String> b() {
        return this.f31834e;
    }

    @NotNull
    public final Context c() {
        return this.f31832c;
    }

    @NotNull
    public final String d() {
        return this.f31831b;
    }

    public final long e() {
        return this.f31833d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (Intrinsics.areEqual(this.f31830a, dVar.f31830a) && Intrinsics.areEqual(this.f31831b, dVar.f31831b) && Intrinsics.areEqual(this.f31832c, dVar.f31832c) && this.f31833d == dVar.f31833d && Intrinsics.areEqual(this.f31834e, dVar.f31834e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f31830a.hashCode() * 31) + this.f31831b.hashCode()) * 31) + this.f31832c.hashCode()) * 31) + Long.hashCode(this.f31833d)) * 31) + this.f31834e.hashCode();
    }

    @NotNull
    public String toString() {
        return "InitConfig(appId=" + this.f31830a + ", postAnalyticsUrl=" + this.f31831b + ", context=" + this.f31832c + ", requestPeriodSeconds=" + this.f31833d + ", clientOptions=" + this.f31834e + ')';
    }
}
