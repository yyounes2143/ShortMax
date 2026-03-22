package lt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e implements CoroutineContext {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ CoroutineContext f62306a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Throwable f62307b;

    public e(@NotNull Throwable th2, @NotNull CoroutineContext coroutineContext) {
        this.f62306a = coroutineContext;
        this.f62307b = th2;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) this.f62306a.fold(r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) this.f62306a.get(bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return this.f62306a.minusKey(bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return this.f62306a.plus(coroutineContext);
    }
}
