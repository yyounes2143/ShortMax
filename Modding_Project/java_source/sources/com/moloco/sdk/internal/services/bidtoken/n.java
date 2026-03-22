package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33175a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f33176b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final h f33177c;

    public n(@NotNull String bidToken, @NotNull String publicKey, @NotNull h bidTokenConfig) {
        Intrinsics.checkNotNullParameter(bidToken, "bidToken");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(bidTokenConfig, "bidTokenConfig");
        this.f33175a = bidToken;
        this.f33176b = publicKey;
        this.f33177c = bidTokenConfig;
    }

    @NotNull
    public final String a() {
        return this.f33175a;
    }

    @NotNull
    public final h b() {
        return this.f33177c;
    }

    @NotNull
    public final String c() {
        return this.f33176b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (Intrinsics.areEqual(this.f33175a, nVar.f33175a) && Intrinsics.areEqual(this.f33176b, nVar.f33176b) && Intrinsics.areEqual(this.f33177c, nVar.f33177c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f33175a.hashCode() * 31) + this.f33176b.hashCode()) * 31) + this.f33177c.hashCode();
    }

    @NotNull
    public String toString() {
        return "BidTokenResponseComponents(bidToken=" + this.f33175a + ", publicKey=" + this.f33176b + ", bidTokenConfig=" + this.f33177c + ')';
    }
}
