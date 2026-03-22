package ac;

import com.bytedance.vodsetting.Module;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiResult.kt */
@Metadata
/* loaded from: classes5.dex */
public final class a<R> {
    @SerializedName(Module.ResponseKey.Code)
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Integer f380a;
    @SerializedName("msg")
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f381b;
    @SerializedName("data")
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private R f382c;

    @Nullable
    public final Integer a() {
        return this.f380a;
    }

    @Nullable
    public final R b() {
        return this.f382c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f380a, aVar.f380a) && Intrinsics.areEqual(this.f381b, aVar.f381b) && Intrinsics.areEqual(this.f382c, aVar.f382c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.f380a;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.f381b;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        R r10 = this.f382c;
        if (r10 != null) {
            i10 = r10.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "ApiResult(code=" + this.f380a + ", msg=" + this.f381b + ", data=" + this.f382c + ')';
    }
}
