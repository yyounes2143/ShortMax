package j9;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionEvent.kt */
@Metadata
/* loaded from: classes5.dex */
public final class y {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f60347a;

    /* renamed from: b  reason: collision with root package name */
    private final int f60348b;

    /* renamed from: c  reason: collision with root package name */
    private final int f60349c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f60350d;

    public y(@NotNull String processName, int i10, int i11, boolean z10) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        this.f60347a = processName;
        this.f60348b = i10;
        this.f60349c = i11;
        this.f60350d = z10;
    }

    public final int a() {
        return this.f60349c;
    }

    public final int b() {
        return this.f60348b;
    }

    @NotNull
    public final String c() {
        return this.f60347a;
    }

    public final boolean d() {
        return this.f60350d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        if (Intrinsics.areEqual(this.f60347a, yVar.f60347a) && this.f60348b == yVar.f60348b && this.f60349c == yVar.f60349c && this.f60350d == yVar.f60350d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f60347a.hashCode() * 31) + Integer.hashCode(this.f60348b)) * 31) + Integer.hashCode(this.f60349c)) * 31) + Boolean.hashCode(this.f60350d);
    }

    @NotNull
    public String toString() {
        return "ProcessDetails(processName=" + this.f60347a + ", pid=" + this.f60348b + ", importance=" + this.f60349c + ", isDefaultProcess=" + this.f60350d + ')';
    }
}
