package y1;

import java.util.Currency;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InAppPurchase.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f70560a;

    /* renamed from: b  reason: collision with root package name */
    private final double f70561b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Currency f70562c;

    public a(@NotNull String eventName, double d10, @NotNull Currency currency) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.f70560a = eventName;
        this.f70561b = d10;
        this.f70562c = currency;
    }

    public final double a() {
        return this.f70561b;
    }

    @NotNull
    public final Currency b() {
        return this.f70562c;
    }

    @NotNull
    public final String c() {
        return this.f70560a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f70560a, aVar.f70560a) && Double.compare(this.f70561b, aVar.f70561b) == 0 && Intrinsics.areEqual(this.f70562c, aVar.f70562c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f70560a.hashCode() * 31) + Double.hashCode(this.f70561b)) * 31) + this.f70562c.hashCode();
    }

    @NotNull
    public String toString() {
        return "InAppPurchase(eventName=" + this.f70560a + ", amount=" + this.f70561b + ", currency=" + this.f70562c + ')';
    }
}
