package com.moloco.sdk.internal.services.events;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f33382a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f33383b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f33384c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f33385d;

    public e(boolean z10, boolean z11, @NotNull String appForegroundUrl, @NotNull String appBackgroundUrl) {
        Intrinsics.checkNotNullParameter(appForegroundUrl, "appForegroundUrl");
        Intrinsics.checkNotNullParameter(appBackgroundUrl, "appBackgroundUrl");
        this.f33382a = z10;
        this.f33383b = z11;
        this.f33384c = appForegroundUrl;
        this.f33385d = appBackgroundUrl;
    }

    @NotNull
    public final String a() {
        return this.f33385d;
    }

    @NotNull
    public final String b() {
        return this.f33384c;
    }

    public final boolean c() {
        return this.f33382a;
    }

    public final boolean d() {
        return this.f33383b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f33382a == eVar.f33382a && this.f33383b == eVar.f33383b && Intrinsics.areEqual(this.f33384c, eVar.f33384c) && Intrinsics.areEqual(this.f33385d, eVar.f33385d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.f33382a) * 31) + Boolean.hashCode(this.f33383b)) * 31) + this.f33384c.hashCode()) * 31) + this.f33385d.hashCode();
    }

    @NotNull
    public String toString() {
        return "UserEventConfig(eventReportingEnabled=" + this.f33382a + ", userTrackingEnabled=" + this.f33383b + ", appForegroundUrl=" + this.f33384c + ", appBackgroundUrl=" + this.f33385d + ')';
    }
}
