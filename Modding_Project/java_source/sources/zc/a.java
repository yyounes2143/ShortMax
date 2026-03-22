package zc;

import com.shorttv.aar.billing.bean.ErrorCode;
import com.shorttv.aar.billing.bean.ErrorType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BillingError.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ErrorType f71560a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ErrorCode f71561b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f71562c;

    public a(@NotNull ErrorType errType, @NotNull ErrorCode errCode, @Nullable String str) {
        Intrinsics.checkNotNullParameter(errType, "errType");
        Intrinsics.checkNotNullParameter(errCode, "errCode");
        this.f71560a = errType;
        this.f71561b = errCode;
        this.f71562c = str;
    }

    @NotNull
    public final ErrorCode a() {
        return this.f71561b;
    }

    @Nullable
    public final String b() {
        return this.f71562c;
    }

    @NotNull
    public final ErrorType c() {
        return this.f71560a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f71560a == aVar.f71560a && this.f71561b == aVar.f71561b && Intrinsics.areEqual(this.f71562c, aVar.f71562c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.f71560a.hashCode() * 31) + this.f71561b.hashCode()) * 31;
        String str = this.f71562c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "BillingError(errType=" + this.f71560a + ", errCode=" + this.f71561b + ", errMsg=" + this.f71562c + ')';
    }
}
