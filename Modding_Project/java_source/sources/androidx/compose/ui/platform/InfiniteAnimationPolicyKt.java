package androidx.compose.ui.platform;

import androidx.compose.runtime.MonotonicFrameClockKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InfiniteAnimationPolicy.kt */
@Metadata
/* loaded from: classes.dex */
public final class InfiniteAnimationPolicyKt {
    @Nullable
    public static final <R> Object withInfiniteAnimationFrameNanos(@NotNull Function1<? super Long, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
        InfiniteAnimationPolicy infiniteAnimationPolicy = (InfiniteAnimationPolicy) cVar.getContext().get(InfiniteAnimationPolicy.Key);
        if (infiniteAnimationPolicy == null) {
            return MonotonicFrameClockKt.withFrameNanos(function1, cVar);
        }
        return infiniteAnimationPolicy.onInfiniteOperation(new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(function1, null), cVar);
    }
}
