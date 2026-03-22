package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.c;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContext.kt */
@Metadata
/* loaded from: classes8.dex */
public interface CoroutineContext {

    /* compiled from: CoroutineContext.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Element extends CoroutineContext {

        /* compiled from: CoroutineContext.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class a {
            public static <R> R a(@NotNull Element element, R r10, @NotNull Function2<? super R, ? super Element, ? extends R> operation) {
                Intrinsics.checkNotNullParameter(operation, "operation");
                return operation.invoke(r10, element);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Nullable
            public static <E extends Element> E b(@NotNull Element element, @NotNull b<E> key) {
                Intrinsics.checkNotNullParameter(key, "key");
                if (Intrinsics.areEqual(element.getKey(), key)) {
                    Intrinsics.checkNotNull(element, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                    return element;
                }
                return null;
            }

            @NotNull
            public static CoroutineContext c(@NotNull Element element, @NotNull b<?> key) {
                Intrinsics.checkNotNullParameter(key, "key");
                if (Intrinsics.areEqual(element.getKey(), key)) {
                    return EmptyCoroutineContext.f61040a;
                }
                return element;
            }

            @NotNull
            public static CoroutineContext d(@NotNull Element element, @NotNull CoroutineContext context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return a.b(element, context);
            }
        }

        @Override // kotlin.coroutines.CoroutineContext
        <R> R fold(R r10, @NotNull Function2<? super R, ? super Element, ? extends R> function2);

        @Override // kotlin.coroutines.CoroutineContext
        @Nullable
        <E extends Element> E get(@NotNull b<E> bVar);

        @NotNull
        b<?> getKey();

        @Override // kotlin.coroutines.CoroutineContext
        @NotNull
        CoroutineContext minusKey(@NotNull b<?> bVar);
    }

    /* compiled from: CoroutineContext.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static CoroutineContext b(@NotNull CoroutineContext coroutineContext, @NotNull CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (context != EmptyCoroutineContext.f61040a) {
                return (CoroutineContext) context.fold(coroutineContext, new Function2() { // from class: rs.e
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        CoroutineContext c10;
                        c10 = CoroutineContext.a.c((CoroutineContext) obj, (CoroutineContext.Element) obj2);
                        return c10;
                    }
                });
            }
            return coroutineContext;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static CoroutineContext c(CoroutineContext acc, Element element) {
            CombinedContext combinedContext;
            Intrinsics.checkNotNullParameter(acc, "acc");
            Intrinsics.checkNotNullParameter(element, "element");
            CoroutineContext minusKey = acc.minusKey(element.getKey());
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f61040a;
            if (minusKey != emptyCoroutineContext) {
                c.b bVar = c.F8;
                c cVar = (c) minusKey.get(bVar);
                if (cVar == null) {
                    combinedContext = new CombinedContext(minusKey, element);
                } else {
                    CoroutineContext minusKey2 = minusKey.minusKey(bVar);
                    if (minusKey2 == emptyCoroutineContext) {
                        return new CombinedContext(element, cVar);
                    }
                    combinedContext = new CombinedContext(new CombinedContext(minusKey2, element), cVar);
                }
                return combinedContext;
            }
            return element;
        }
    }

    /* compiled from: CoroutineContext.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface b<E extends Element> {
    }

    <R> R fold(R r10, @NotNull Function2<? super R, ? super Element, ? extends R> function2);

    @Nullable
    <E extends Element> E get(@NotNull b<E> bVar);

    @NotNull
    CoroutineContext minusKey(@NotNull b<?> bVar);

    @NotNull
    CoroutineContext plus(@NotNull CoroutineContext coroutineContext);
}
