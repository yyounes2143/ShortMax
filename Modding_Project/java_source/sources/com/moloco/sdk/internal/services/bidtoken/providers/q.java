package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33232a;

    /* renamed from: b  reason: collision with root package name */
    public final long f33233b;

    /* renamed from: c  reason: collision with root package name */
    public final long f33234c;

    /* renamed from: d  reason: collision with root package name */
    public final int f33235d;

    /* renamed from: e  reason: collision with root package name */
    public final int f33236e;

    /* renamed from: f  reason: collision with root package name */
    public final int f33237f;

    /* renamed from: g  reason: collision with root package name */
    public final int f33238g;

    /* renamed from: h  reason: collision with root package name */
    public final int f33239h;

    public q(@NotNull String sessionId, long j10, long j11, int i10, int i11, int i12, int i13, int i14) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.f33232a = sessionId;
        this.f33233b = j10;
        this.f33234c = j11;
        this.f33235d = i10;
        this.f33236e = i11;
        this.f33237f = i12;
        this.f33238g = i13;
        this.f33239h = i14;
    }

    public final int a() {
        return this.f33235d;
    }

    public final int b() {
        return this.f33238g;
    }

    public final long c() {
        return this.f33234c;
    }

    public final int d() {
        return this.f33236e;
    }

    public final int e() {
        return this.f33237f;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (Intrinsics.areEqual(this.f33232a, qVar.f33232a) && this.f33233b == qVar.f33233b && this.f33234c == qVar.f33234c && this.f33235d == qVar.f33235d && this.f33236e == qVar.f33236e && this.f33237f == qVar.f33237f && this.f33238g == qVar.f33238g && this.f33239h == qVar.f33239h) {
            return true;
        }
        return false;
    }

    public final int f() {
        return this.f33239h;
    }

    @NotNull
    public final String g() {
        return this.f33232a;
    }

    public final long h() {
        return this.f33233b;
    }

    public int hashCode() {
        return (((((((((((((this.f33232a.hashCode() * 31) + Long.hashCode(this.f33233b)) * 31) + Long.hashCode(this.f33234c)) * 31) + Integer.hashCode(this.f33235d)) * 31) + Integer.hashCode(this.f33236e)) * 31) + Integer.hashCode(this.f33237f)) * 31) + Integer.hashCode(this.f33238g)) * 31) + Integer.hashCode(this.f33239h);
    }

    public final boolean i() {
        if (this.f33232a.length() > 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return "IlrdSignal(sessionId=" + this.f33232a + ", sessionStartTs=" + this.f33233b + ", lastImpressionTs=" + this.f33234c + ", bannerImpressionCount=" + this.f33235d + ", mrecImpressionCount=" + this.f33236e + ", nativeImpressionCount=" + this.f33237f + ", interstitialImpressionCount=" + this.f33238g + ", rewardedImpressionCount=" + this.f33239h + ')';
    }
}
