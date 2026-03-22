package com.moloco.sdk.acm;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f31939a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public String f31940b;

    /* renamed from: c  reason: collision with root package name */
    public long f31941c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f31942d;

    public h(@NotNull String appId, @NotNull String postAnalyticsUrl, long j10, @NotNull Map<String, String> clientOptions) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(postAnalyticsUrl, "postAnalyticsUrl");
        Intrinsics.checkNotNullParameter(clientOptions, "clientOptions");
        this.f31939a = appId;
        this.f31940b = postAnalyticsUrl;
        this.f31941c = j10;
        this.f31942d = clientOptions;
    }

    public final void a(long j10) {
        this.f31941c = j10;
    }

    public final void b(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f31940b = str;
    }

    @NotNull
    public final Map<String, String> c() {
        return this.f31942d;
    }

    @NotNull
    public final String d() {
        return this.f31940b;
    }

    public final long e() {
        return this.f31941c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (Intrinsics.areEqual(this.f31939a, hVar.f31939a) && Intrinsics.areEqual(this.f31940b, hVar.f31940b) && this.f31941c == hVar.f31941c && Intrinsics.areEqual(this.f31942d, hVar.f31942d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f31939a.hashCode() * 31) + this.f31940b.hashCode()) * 31) + Long.hashCode(this.f31941c)) * 31) + this.f31942d.hashCode();
    }

    @NotNull
    public String toString() {
        return "ACMConfig(appId=" + this.f31939a + ", postAnalyticsUrl=" + this.f31940b + ", requestPeriodSeconds=" + this.f31941c + ", clientOptions=" + this.f31942d + ')';
    }
}
