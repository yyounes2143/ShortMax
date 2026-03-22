package j9;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionEvent.kt */
@Metadata
/* loaded from: classes5.dex */
public final class h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f60307a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f60308b;

    /* renamed from: c  reason: collision with root package name */
    private final int f60309c;

    /* renamed from: d  reason: collision with root package name */
    private final long f60310d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final d f60311e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final String f60312f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final String f60313g;

    public h0(@NotNull String sessionId, @NotNull String firstSessionId, int i10, long j10, @NotNull d dataCollectionStatus, @NotNull String firebaseInstallationId, @NotNull String firebaseAuthenticationToken) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(firstSessionId, "firstSessionId");
        Intrinsics.checkNotNullParameter(dataCollectionStatus, "dataCollectionStatus");
        Intrinsics.checkNotNullParameter(firebaseInstallationId, "firebaseInstallationId");
        Intrinsics.checkNotNullParameter(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        this.f60307a = sessionId;
        this.f60308b = firstSessionId;
        this.f60309c = i10;
        this.f60310d = j10;
        this.f60311e = dataCollectionStatus;
        this.f60312f = firebaseInstallationId;
        this.f60313g = firebaseAuthenticationToken;
    }

    @NotNull
    public final d a() {
        return this.f60311e;
    }

    public final long b() {
        return this.f60310d;
    }

    @NotNull
    public final String c() {
        return this.f60313g;
    }

    @NotNull
    public final String d() {
        return this.f60312f;
    }

    @NotNull
    public final String e() {
        return this.f60308b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return false;
        }
        h0 h0Var = (h0) obj;
        if (Intrinsics.areEqual(this.f60307a, h0Var.f60307a) && Intrinsics.areEqual(this.f60308b, h0Var.f60308b) && this.f60309c == h0Var.f60309c && this.f60310d == h0Var.f60310d && Intrinsics.areEqual(this.f60311e, h0Var.f60311e) && Intrinsics.areEqual(this.f60312f, h0Var.f60312f) && Intrinsics.areEqual(this.f60313g, h0Var.f60313g)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String f() {
        return this.f60307a;
    }

    public final int g() {
        return this.f60309c;
    }

    public int hashCode() {
        return (((((((((((this.f60307a.hashCode() * 31) + this.f60308b.hashCode()) * 31) + Integer.hashCode(this.f60309c)) * 31) + Long.hashCode(this.f60310d)) * 31) + this.f60311e.hashCode()) * 31) + this.f60312f.hashCode()) * 31) + this.f60313g.hashCode();
    }

    @NotNull
    public String toString() {
        return "SessionInfo(sessionId=" + this.f60307a + ", firstSessionId=" + this.f60308b + ", sessionIndex=" + this.f60309c + ", eventTimestampUs=" + this.f60310d + ", dataCollectionStatus=" + this.f60311e + ", firebaseInstallationId=" + this.f60312f + ", firebaseAuthenticationToken=" + this.f60313g + ')';
    }
}
