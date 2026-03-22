package com.moloco.sdk.internal.services.init;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33410a;

    public a(@NotNull String appKey) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        this.f33410a = appKey;
    }

    @NotNull
    public final String a() {
        return this.f33410a;
    }

    @NotNull
    public final String b() {
        return this.f33410a + "___v1";
    }

    @NotNull
    public final List<String> c() {
        return CollectionsKt.n();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof a) && Intrinsics.areEqual(this.f33410a, ((a) obj).f33410a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f33410a.hashCode();
    }

    @NotNull
    public String toString() {
        return "CacheKey(appKey=" + this.f33410a + ')';
    }
}
