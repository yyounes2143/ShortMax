package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MonotonicFrameClock.kt */
@Metadata
/* loaded from: classes.dex */
public interface MonotonicFrameClock extends CoroutineContext.Element {
    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    /* compiled from: MonotonicFrameClock.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static <R> R fold(@NotNull MonotonicFrameClock monotonicFrameClock, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.a.a(monotonicFrameClock, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E get(@NotNull MonotonicFrameClock monotonicFrameClock, @NotNull CoroutineContext.b<E> bVar) {
            return (E) CoroutineContext.Element.a.b(monotonicFrameClock, bVar);
        }

        @Deprecated
        @NotNull
        public static CoroutineContext.b<?> getKey(@NotNull MonotonicFrameClock monotonicFrameClock) {
            return MonotonicFrameClock.super.getKey();
        }

        @NotNull
        public static CoroutineContext minusKey(@NotNull MonotonicFrameClock monotonicFrameClock, @NotNull CoroutineContext.b<?> bVar) {
            return CoroutineContext.Element.a.c(monotonicFrameClock, bVar);
        }

        @NotNull
        public static CoroutineContext plus(@NotNull MonotonicFrameClock monotonicFrameClock, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.a.d(monotonicFrameClock, coroutineContext);
        }
    }

    /* compiled from: MonotonicFrameClock.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.b<MonotonicFrameClock> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    /* synthetic */ Object fold(Object obj, @NotNull Function2 function2);

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    /* synthetic */ CoroutineContext.Element get(@NotNull CoroutineContext.b bVar);

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    default CoroutineContext.b<?> getKey() {
        return Key;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    /* synthetic */ CoroutineContext minusKey(@NotNull CoroutineContext.b bVar);

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    /* synthetic */ CoroutineContext plus(@NotNull CoroutineContext coroutineContext);

    @Nullable
    <R> Object withFrameNanos(@NotNull Function1<? super Long, ? extends R> function1, @NotNull rs.c<? super R> cVar);
}
