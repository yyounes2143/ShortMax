package zc;

import com.shorttv.aar.billing.core.SubscriptionUpdateMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubscriptionUpdateData.kt */
@Metadata
/* loaded from: classes6.dex */
public final class k {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f71632a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SubscriptionUpdateMode f71633b;

    public k(@Nullable String str, @NotNull SubscriptionUpdateMode updateMode) {
        Intrinsics.checkNotNullParameter(updateMode, "updateMode");
        this.f71632a = str;
        this.f71633b = updateMode;
    }

    @Nullable
    public final String a() {
        return this.f71632a;
    }

    @NotNull
    public final SubscriptionUpdateMode b() {
        return this.f71633b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (Intrinsics.areEqual(this.f71632a, kVar.f71632a) && this.f71633b == kVar.f71633b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f71632a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return (hashCode * 31) + this.f71633b.hashCode();
    }

    @NotNull
    public String toString() {
        return "SubscriptionUpdateData(oldToken=" + this.f71632a + ", updateMode=" + this.f71633b + ')';
    }
}
