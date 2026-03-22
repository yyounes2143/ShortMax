package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Long f33190a;

    public d(@Nullable Long l10) {
        this.f33190a = l10;
    }

    @Nullable
    public final Long a() {
        return this.f33190a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof d) && Intrinsics.areEqual(this.f33190a, ((d) obj).f33190a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        Long l10 = this.f33190a;
        if (l10 == null) {
            return 0;
        }
        return l10.hashCode();
    }

    @NotNull
    public String toString() {
        return "AppDirInfo(appDirSize=" + this.f33190a + ')';
    }
}
