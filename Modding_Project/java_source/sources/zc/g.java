package zc;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Product.kt */
@Metadata
/* loaded from: classes6.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f71622a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f71623b;

    public g(@NotNull String productType, @NotNull List<String> productIds) {
        Intrinsics.checkNotNullParameter(productType, "productType");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        this.f71622a = productType;
        this.f71623b = productIds;
    }

    @NotNull
    public final List<String> a() {
        return this.f71623b;
    }

    @NotNull
    public final String b() {
        return this.f71622a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (Intrinsics.areEqual(this.f71622a, gVar.f71622a) && Intrinsics.areEqual(this.f71623b, gVar.f71623b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f71622a.hashCode() * 31) + this.f71623b.hashCode();
    }

    @NotNull
    public String toString() {
        return "Product(productType=" + this.f71622a + ", productIds=" + this.f71623b + ')';
    }
}
