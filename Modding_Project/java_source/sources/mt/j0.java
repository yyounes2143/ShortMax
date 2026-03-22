package mt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadContext.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j0 implements CoroutineContext.b<i0<?>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal<?> f62676a;

    public j0(@NotNull ThreadLocal<?> threadLocal) {
        this.f62676a = threadLocal;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof j0) && Intrinsics.areEqual(this.f62676a, ((j0) obj).f62676a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f62676a.hashCode();
    }

    @NotNull
    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f62676a + ')';
    }
}
