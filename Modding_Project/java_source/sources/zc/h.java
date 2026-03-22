package zc;

import com.shorttv.aar.billing.bean.ErrorCode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProductDetailList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ErrorCode f71624a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f71625b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final List<Object> f71626c;

    public h(@NotNull ErrorCode errorCode, @NotNull String productType, @Nullable List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(productType, "productType");
        this.f71624a = errorCode;
        this.f71625b = productType;
        this.f71626c = list;
    }

    @Nullable
    public final List<Object> a() {
        return this.f71626c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f71624a == hVar.f71624a && Intrinsics.areEqual(this.f71625b, hVar.f71625b) && Intrinsics.areEqual(this.f71626c, hVar.f71626c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.f71624a.hashCode() * 31) + this.f71625b.hashCode()) * 31;
        List<Object> list = this.f71626c;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ProductDetailList(errorCode=" + this.f71624a + ", productType=" + this.f71625b + ", list=" + this.f71626c + ')';
    }
}
