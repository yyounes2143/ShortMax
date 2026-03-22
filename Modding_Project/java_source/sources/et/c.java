package et;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: measureTime.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f51553a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51554b;

    public /* synthetic */ c(Object obj, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, j10);
    }

    public final T a() {
        return this.f51553a;
    }

    public final long b() {
        return this.f51554b;
    }

    public final T c() {
        return this.f51553a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (Intrinsics.areEqual(this.f51553a, cVar.f51553a) && kotlin.time.b.l(this.f51554b, cVar.f51554b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        T t10 = this.f51553a;
        if (t10 == null) {
            hashCode = 0;
        } else {
            hashCode = t10.hashCode();
        }
        return (hashCode * 31) + kotlin.time.b.y(this.f51554b);
    }

    @NotNull
    public String toString() {
        return "TimedValue(value=" + this.f51553a + ", duration=" + ((Object) kotlin.time.b.K(this.f51554b)) + ')';
    }

    private c(T t10, long j10) {
        this.f51553a = t10;
        this.f51554b = j10;
    }
}
