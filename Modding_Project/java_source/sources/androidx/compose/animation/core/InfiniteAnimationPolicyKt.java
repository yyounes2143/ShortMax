package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.platform.InfiniteAnimationPolicy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InfiniteAnimationPolicy.kt */
@Metadata
/* loaded from: classes.dex */
public final class InfiniteAnimationPolicyKt {
    @Nullable
    public static final <R> Object withInfiniteAnimationFrameMillis(@NotNull Function1<? super Long, ? extends R> function1, @NotNull c<? super R> cVar) {
        return withInfiniteAnimationFrameNanos(new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2(function1), cVar);
    }

    private static final <R> Object withInfiniteAnimationFrameMillis$$forInline(Function1<? super Long, ? extends R> function1, c<? super R> cVar) {
        InfiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2 infiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2 = new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2(function1);
        InlineMarker.mark(0);
        Object withInfiniteAnimationFrameNanos = withInfiniteAnimationFrameNanos(infiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2, cVar);
        InlineMarker.mark(1);
        return withInfiniteAnimationFrameNanos;
    }

    @Nullable
    public static final <R> Object withInfiniteAnimationFrameNanos(@NotNull Function1<? super Long, ? extends R> function1, @NotNull c<? super R> cVar) {
        InfiniteAnimationPolicy infiniteAnimationPolicy = (InfiniteAnimationPolicy) cVar.getContext().get(InfiniteAnimationPolicy.Key);
        if (infiniteAnimationPolicy == null) {
            return MonotonicFrameClockKt.withFrameNanos(function1, cVar);
        }
        return infiniteAnimationPolicy.onInfiniteOperation(new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(function1, null), cVar);
    }
}
