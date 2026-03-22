package mt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mt.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConcurrentLinkedList.kt */
@Metadata
/* loaded from: classes8.dex */
public final class y<S extends x<S>> {
    @NotNull
    public static final S b(Object obj) {
        if (obj != b.f62656a) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
            return (S) obj;
        }
        throw new IllegalStateException("Does not contain segment");
    }

    public static final boolean c(Object obj) {
        if (obj == b.f62656a) {
            return true;
        }
        return false;
    }

    @NotNull
    public static <S extends x<S>> Object a(@Nullable Object obj) {
        return obj;
    }
}
