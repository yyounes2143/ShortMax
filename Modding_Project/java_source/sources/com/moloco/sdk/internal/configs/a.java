package com.moloco.sdk.internal.configs;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32088a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32089b;

    public a(@NotNull String reportingUrl, int i10) {
        Intrinsics.checkNotNullParameter(reportingUrl, "reportingUrl");
        this.f32088a = reportingUrl;
        this.f32089b = i10;
    }

    public final int a() {
        return this.f32089b;
    }

    @NotNull
    public final String b() {
        return this.f32088a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f32088a, aVar.f32088a) && this.f32089b == aVar.f32089b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f32088a.hashCode() * 31) + Integer.hashCode(this.f32089b);
    }

    @NotNull
    public String toString() {
        return "OperationalMetricsConfig(reportingUrl=" + this.f32088a + ", pollingIntervalSeconds=" + this.f32089b + ')';
    }
}
