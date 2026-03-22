package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MonotonicFrameClock.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMonotonicFrameClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonotonicFrameClock.kt\nandroidx/compose/runtime/MonotonicFrameClockKt\n*L\n1#1,131:1\n65#1:132\n*S KotlinDebug\n*F\n+ 1 MonotonicFrameClock.kt\nandroidx/compose/runtime/MonotonicFrameClockKt\n*L\n105#1:132\n*E\n"})
/* loaded from: classes.dex */
public final class MonotonicFrameClockKt {
    @NotNull
    public static final MonotonicFrameClock getMonotonicFrameClock(@NotNull CoroutineContext coroutineContext) {
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.get(MonotonicFrameClock.Key);
        if (monotonicFrameClock != null) {
            return monotonicFrameClock;
        }
        throw new IllegalStateException("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.");
    }

    @Nullable
    public static final <R> Object withFrameMillis(@NotNull MonotonicFrameClock monotonicFrameClock, @NotNull Function1<? super Long, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
        return monotonicFrameClock.withFrameNanos(new MonotonicFrameClockKt$withFrameMillis$2(function1), cVar);
    }

    private static final <R> Object withFrameMillis$$forInline(MonotonicFrameClock monotonicFrameClock, Function1<? super Long, ? extends R> function1, rs.c<? super R> cVar) {
        MonotonicFrameClockKt$withFrameMillis$2 monotonicFrameClockKt$withFrameMillis$2 = new MonotonicFrameClockKt$withFrameMillis$2(function1);
        InlineMarker.mark(0);
        Object withFrameNanos = monotonicFrameClock.withFrameNanos(monotonicFrameClockKt$withFrameMillis$2, cVar);
        InlineMarker.mark(1);
        return withFrameNanos;
    }

    @Nullable
    public static final <R> Object withFrameNanos(@NotNull Function1<? super Long, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
        return getMonotonicFrameClock(cVar.getContext()).withFrameNanos(function1, cVar);
    }

    @Nullable
    public static final <R> Object withFrameMillis(@NotNull Function1<? super Long, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
        return getMonotonicFrameClock(cVar.getContext()).withFrameNanos(new MonotonicFrameClockKt$withFrameMillis$2(function1), cVar);
    }

    @ExperimentalComposeApi
    public static /* synthetic */ void getMonotonicFrameClock$annotations(CoroutineContext coroutineContext) {
    }
}
