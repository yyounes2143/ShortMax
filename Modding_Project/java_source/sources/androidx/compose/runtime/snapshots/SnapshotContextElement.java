package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotContextElement.kt */
@Metadata
/* loaded from: classes.dex */
public interface SnapshotContextElement extends CoroutineContext.Element {
    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    /* compiled from: SnapshotContextElement.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static <R> R fold(@NotNull SnapshotContextElement snapshotContextElement, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.a.a(snapshotContextElement, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E get(@NotNull SnapshotContextElement snapshotContextElement, @NotNull CoroutineContext.b<E> bVar) {
            return (E) CoroutineContext.Element.a.b(snapshotContextElement, bVar);
        }

        @NotNull
        public static CoroutineContext minusKey(@NotNull SnapshotContextElement snapshotContextElement, @NotNull CoroutineContext.b<?> bVar) {
            return CoroutineContext.Element.a.c(snapshotContextElement, bVar);
        }

        @NotNull
        public static CoroutineContext plus(@NotNull SnapshotContextElement snapshotContextElement, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.a.d(snapshotContextElement, coroutineContext);
        }
    }

    /* compiled from: SnapshotContextElement.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.b<SnapshotContextElement> {
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
    /* synthetic */ CoroutineContext.b getKey();

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    /* synthetic */ CoroutineContext minusKey(@NotNull CoroutineContext.b bVar);

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    /* synthetic */ CoroutineContext plus(@NotNull CoroutineContext coroutineContext);
}
