package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final long f33160a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33161b;

    /* renamed from: c  reason: collision with root package name */
    public final long f33162c;

    public l(long j10, int i10, long j11) {
        this.f33160a = j10;
        this.f33161b = i10;
        this.f33162c = j11;
    }

    public final long a() {
        return this.f33162c;
    }

    public final int b() {
        return this.f33161b;
    }

    public final long c() {
        return this.f33160a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f33160a == lVar.f33160a && this.f33161b == lVar.f33161b && this.f33162c == lVar.f33162c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Long.hashCode(this.f33160a) * 31) + Integer.hashCode(this.f33161b)) * 31) + Long.hashCode(this.f33162c);
    }

    @NotNull
    public String toString() {
        return "BidTokenHttpRequestInfo(requestTimeoutMillis=" + this.f33160a + ", fetchRetryMax=" + this.f33161b + ", fetchRetryDelayMillis=" + this.f33162c + ')';
    }
}
