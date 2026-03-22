package yr;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Attributes.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f71144a;

    public a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f71144a = name;
        if (name.length() != 0) {
            return;
        }
        throw new IllegalStateException("Name can't be blank");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a.class == obj.getClass() && Intrinsics.areEqual(this.f71144a, ((a) obj).f71144a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f71144a.hashCode();
    }

    @NotNull
    public String toString() {
        return "AttributeKey: " + this.f71144a;
    }
}
