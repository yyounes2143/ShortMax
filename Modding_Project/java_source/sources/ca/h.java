package ca;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes5.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f3405a;

    /* renamed from: b  reason: collision with root package name */
    private long f3406b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f3407c;

    public h(@NotNull String precisionType, long j10, @NotNull String currencyCode) {
        Intrinsics.checkNotNullParameter(precisionType, "precisionType");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        this.f3405a = precisionType;
        this.f3406b = j10;
        this.f3407c = currencyCode;
    }

    @NotNull
    public final String a() {
        return this.f3407c;
    }

    @NotNull
    public final String b() {
        return this.f3405a;
    }

    public final long c() {
        return this.f3406b;
    }

    public final void d(long j10) {
        this.f3406b = j10;
    }

    @NotNull
    public String toString() {
        return "EcpmValue(precisionType=" + this.f3405a + ", valueMicros=" + this.f3406b + ", currencyCode='" + this.f3407c + "')";
    }
}
