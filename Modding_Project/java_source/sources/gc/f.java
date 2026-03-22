package gc;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Header.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f52320a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f52321b;

    public f(@NotNull String name, @NotNull String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f52320a = name;
        this.f52321b = value;
    }

    @NotNull
    public final String a() {
        return this.f52320a;
    }

    @NotNull
    public final String b() {
        return this.f52321b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (Intrinsics.areEqual(this.f52320a, fVar.f52320a) && Intrinsics.areEqual(this.f52321b, fVar.f52321b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f52320a.hashCode() * 31) + this.f52321b.hashCode();
    }

    @NotNull
    public String toString() {
        return "Header(name=" + this.f52320a + ", value=" + this.f52321b + ')';
    }
}
