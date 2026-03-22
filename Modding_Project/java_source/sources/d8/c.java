package d8;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventMetadata.kt */
@Metadata
/* loaded from: classes5.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f50212a;

    /* renamed from: b  reason: collision with root package name */
    private final long f50213b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f50214c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(@NotNull String sessionId, long j10) {
        this(sessionId, j10, null, 4, null);
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
    }

    @NotNull
    public final Map<String, String> a() {
        return this.f50214c;
    }

    @NotNull
    public final String b() {
        return this.f50212a;
    }

    public final long c() {
        return this.f50213b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (Intrinsics.areEqual(this.f50212a, cVar.f50212a) && this.f50213b == cVar.f50213b && Intrinsics.areEqual(this.f50214c, cVar.f50214c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f50212a.hashCode() * 31) + Long.hashCode(this.f50213b)) * 31) + this.f50214c.hashCode();
    }

    @NotNull
    public String toString() {
        return "EventMetadata(sessionId=" + this.f50212a + ", timestamp=" + this.f50213b + ", additionalCustomKeys=" + this.f50214c + ')';
    }

    public c(@NotNull String sessionId, long j10, @NotNull Map<String, String> additionalCustomKeys) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(additionalCustomKeys, "additionalCustomKeys");
        this.f50212a = sessionId;
        this.f50213b = j10;
        this.f50214c = additionalCustomKeys;
    }

    public /* synthetic */ c(String str, long j10, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10, (i10 & 4) != 0 ? p0.i() : map);
    }
}
