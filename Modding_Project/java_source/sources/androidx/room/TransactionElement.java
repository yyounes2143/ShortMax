package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomDatabase.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class TransactionElement implements CoroutineContext.Element {
    @NotNull
    public static final Key Key = new Key(null);
    @NotNull
    private final kotlin.coroutines.c transactionDispatcher;

    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Key implements CoroutineContext.b<TransactionElement> {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Key() {
        }
    }

    public TransactionElement(@NotNull kotlin.coroutines.c transactionDispatcher) {
        Intrinsics.checkNotNullParameter(transactionDispatcher, "transactionDispatcher");
        this.transactionDispatcher = transactionDispatcher;
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
    public CoroutineContext.b<TransactionElement> getKey() {
        return Key;
    }

    @NotNull
    public final kotlin.coroutines.c getTransactionDispatcher$room_runtime() {
        return this.transactionDispatcher;
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
