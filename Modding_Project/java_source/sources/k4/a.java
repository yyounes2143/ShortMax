package k4;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GateKeeper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f60587a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f60588b;

    public a(@NotNull String name, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f60587a = name;
        this.f60588b = z10;
    }

    @NotNull
    public final String a() {
        return this.f60587a;
    }

    public final boolean b() {
        return this.f60588b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f60587a, aVar.f60587a) && this.f60588b == aVar.f60588b) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.f60587a.hashCode() * 31;
        boolean z10 = this.f60588b;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        return "GateKeeper(name=" + this.f60587a + ", value=" + this.f60588b + ')';
    }
}
