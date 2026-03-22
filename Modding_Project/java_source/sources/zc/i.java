package zc;

import com.shorttv.aar.billing.bean.ErrorCode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryProductDetailsResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ErrorCode f71627a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final List<Object> f71628b;

    public i(@NotNull ErrorCode code, @Nullable List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.f71627a = code;
        this.f71628b = list;
    }

    @NotNull
    public final ErrorCode a() {
        return this.f71627a;
    }

    @Nullable
    public final List<Object> b() {
        return this.f71628b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f71627a == iVar.f71627a && Intrinsics.areEqual(this.f71628b, iVar.f71628b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f71627a.hashCode() * 31;
        List<Object> list = this.f71628b;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "QueryProductDetailsResult(code=" + this.f71627a + ", details=" + this.f71628b + ')';
    }
}
