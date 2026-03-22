package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f33143a;

    public h(boolean z10) {
        this.f33143a = z10;
    }

    public final boolean a() {
        return this.f33143a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof h) && this.f33143a == ((h) obj).f33143a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Boolean.hashCode(this.f33143a);
    }

    @NotNull
    public String toString() {
        return "BidTokenConfig(dbtEnabled=" + this.f33143a + ')';
    }
}
