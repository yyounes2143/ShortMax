package n0;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealSizeResolver.kt */
@Metadata
/* loaded from: classes2.dex */
public final class e implements h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g f62719a;

    public e(@NotNull g gVar) {
        this.f62719a = gVar;
    }

    @Override // n0.h
    @Nullable
    public Object b(@NotNull rs.c<? super g> cVar) {
        return this.f62719a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof e) && Intrinsics.areEqual(this.f62719a, ((e) obj).f62719a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f62719a.hashCode();
    }
}
