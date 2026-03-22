package com.moloco.sdk.internal.services.init;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.g0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0<Init$SDKInitResponse, i> f33419a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f33420b;

    public c(@NotNull g0<Init$SDKInitResponse, i> sdkInitResult, @NotNull String fetchType) {
        Intrinsics.checkNotNullParameter(sdkInitResult, "sdkInitResult");
        Intrinsics.checkNotNullParameter(fetchType, "fetchType");
        this.f33419a = sdkInitResult;
        this.f33420b = fetchType;
    }

    @NotNull
    public final String a() {
        return this.f33420b;
    }

    @NotNull
    public final g0<Init$SDKInitResponse, i> b() {
        return this.f33419a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (Intrinsics.areEqual(this.f33419a, cVar.f33419a) && Intrinsics.areEqual(this.f33420b, cVar.f33420b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f33419a.hashCode() * 31) + this.f33420b.hashCode();
    }

    @NotNull
    public String toString() {
        return "FetchState(sdkInitResult=" + this.f33419a + ", fetchType=" + this.f33420b + ')';
    }
}
