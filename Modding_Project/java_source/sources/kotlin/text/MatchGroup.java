package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Regex.kt */
@Metadata
/* loaded from: classes8.dex */
public final class MatchGroup {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f61164a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final IntRange f61165b;

    public MatchGroup(@NotNull String value, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(range, "range");
        this.f61164a = value;
        this.f61165b = range;
    }

    @NotNull
    public final String a() {
        return this.f61164a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MatchGroup)) {
            return false;
        }
        MatchGroup matchGroup = (MatchGroup) obj;
        if (Intrinsics.areEqual(this.f61164a, matchGroup.f61164a) && Intrinsics.areEqual(this.f61165b, matchGroup.f61165b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f61164a.hashCode() * 31) + this.f61165b.hashCode();
    }

    @NotNull
    public String toString() {
        return "MatchGroup(value=" + this.f61164a + ", range=" + this.f61165b + ')';
    }
}
