package androidx.compose.runtime;

import androidx.compose.runtime.MonotonicFrameClock;
import gt.q0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MonotonicFrameClock.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class FallbackFrameClock implements MonotonicFrameClock {
    private static final long DefaultFrameDelay = 16;
    @NotNull
    public static final FallbackFrameClock INSTANCE = new FallbackFrameClock();

    private FallbackFrameClock() {
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) MonotonicFrameClock.DefaultImpls.fold(this, r10, function2);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) MonotonicFrameClock.DefaultImpls.get(this, bVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return MonotonicFrameClock.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return MonotonicFrameClock.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    @Nullable
    public <R> Object withFrameNanos(@NotNull Function1<? super Long, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
        return gt.e.g(q0.c(), new FallbackFrameClock$withFrameNanos$2(function1, null), cVar);
    }
}
