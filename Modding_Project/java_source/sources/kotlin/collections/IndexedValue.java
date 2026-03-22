package kotlin.collections;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IndexedValue.kt */
@Metadata
/* loaded from: classes8.dex */
public final class IndexedValue<T> {

    /* renamed from: a  reason: collision with root package name */
    private final int f60927a;

    /* renamed from: b  reason: collision with root package name */
    private final T f60928b;

    public IndexedValue(int i10, T t10) {
        this.f60927a = i10;
        this.f60928b = t10;
    }

    public final int a() {
        return this.f60927a;
    }

    public final T b() {
        return this.f60928b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndexedValue)) {
            return false;
        }
        IndexedValue indexedValue = (IndexedValue) obj;
        if (this.f60927a == indexedValue.f60927a && Intrinsics.areEqual(this.f60928b, indexedValue.f60928b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.f60927a) * 31;
        T t10 = this.f60928b;
        if (t10 == null) {
            hashCode = 0;
        } else {
            hashCode = t10.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "IndexedValue(index=" + this.f60927a + ", value=" + this.f60928b + ')';
    }
}
