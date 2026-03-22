package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InfiniteAnimationPolicy.kt */
@Metadata
/* loaded from: classes.dex */
public interface InfiniteAnimationPolicy extends CoroutineContext.Element {
    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    /* compiled from: InfiniteAnimationPolicy.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static <R> R fold(@NotNull InfiniteAnimationPolicy infiniteAnimationPolicy, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) CoroutineContext.Element.a.a(infiniteAnimationPolicy, r10, operation);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E get(@NotNull InfiniteAnimationPolicy infiniteAnimationPolicy, @NotNull CoroutineContext.b<E> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return (E) CoroutineContext.Element.a.b(infiniteAnimationPolicy, key);
        }

        @Deprecated
        @NotNull
        public static CoroutineContext.b<?> getKey(@NotNull InfiniteAnimationPolicy infiniteAnimationPolicy) {
            return InfiniteAnimationPolicy.super.getKey();
        }

        @NotNull
        public static CoroutineContext minusKey(@NotNull InfiniteAnimationPolicy infiniteAnimationPolicy, @NotNull CoroutineContext.b<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return CoroutineContext.Element.a.c(infiniteAnimationPolicy, key);
        }

        @NotNull
        public static CoroutineContext plus(@NotNull InfiniteAnimationPolicy infiniteAnimationPolicy, @NotNull CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return CoroutineContext.Element.a.d(infiniteAnimationPolicy, context);
        }
    }

    /* compiled from: InfiniteAnimationPolicy.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.b<InfiniteAnimationPolicy> {
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

    @Nullable
    <R> Object onInfiniteOperation(@NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar);

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    /* synthetic */ CoroutineContext plus(@NotNull CoroutineContext coroutineContext);
}
