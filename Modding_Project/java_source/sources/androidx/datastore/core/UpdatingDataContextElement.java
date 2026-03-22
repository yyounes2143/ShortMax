package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DataStoreImpl.kt */
@Metadata
/* loaded from: classes2.dex */
public final class UpdatingDataContextElement implements CoroutineContext.Element {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String NESTED_UPDATE_ERROR_MESSAGE = "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.";
    @NotNull
    private final DataStoreImpl<?> instance;
    @Nullable
    private final UpdatingDataContextElement parent;

    /* compiled from: DataStoreImpl.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {

        /* compiled from: DataStoreImpl.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Key implements CoroutineContext.b<UpdatingDataContextElement> {
            @NotNull
            public static final Key INSTANCE = new Key();

            private Key() {
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getNESTED_UPDATE_ERROR_MESSAGE$datastore_core_release() {
            return UpdatingDataContextElement.NESTED_UPDATE_ERROR_MESSAGE;
        }

        private Companion() {
        }
    }

    public UpdatingDataContextElement(@Nullable UpdatingDataContextElement updatingDataContextElement, @NotNull DataStoreImpl<?> instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.parent = updatingDataContextElement;
        this.instance = instance;
    }

    public final void checkNotUpdating(@NotNull DataStore<?> candidate) {
        Intrinsics.checkNotNullParameter(candidate, "candidate");
        if (this.instance != candidate) {
            UpdatingDataContextElement updatingDataContextElement = this.parent;
            if (updatingDataContextElement != null) {
                updatingDataContextElement.checkNotUpdating(candidate);
                return;
            }
            return;
        }
        throw new IllegalStateException(NESTED_UPDATE_ERROR_MESSAGE.toString());
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) CoroutineContext.Element.a.a(this, r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) CoroutineContext.Element.a.b(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.b<?> getKey() {
        return Companion.Key.INSTANCE;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return CoroutineContext.Element.a.c(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return CoroutineContext.Element.a.d(this, coroutineContext);
    }
}
