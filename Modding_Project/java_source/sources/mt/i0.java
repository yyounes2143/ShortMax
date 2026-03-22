package mt;

import gt.s1;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadContext.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i0<T> implements s1<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f62673a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ThreadLocal<T> f62674b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final CoroutineContext.b<?> f62675c;

    public i0(T t10, @NotNull ThreadLocal<T> threadLocal) {
        this.f62673a = t10;
        this.f62674b = threadLocal;
        this.f62675c = new j0(threadLocal);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) s1.a.a(this, r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        if (Intrinsics.areEqual(getKey(), bVar)) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
            return this;
        }
        return null;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.b<?> getKey() {
        return this.f62675c;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        if (Intrinsics.areEqual(getKey(), bVar)) {
            return EmptyCoroutineContext.f61040a;
        }
        return this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return s1.a.b(this, coroutineContext);
    }

    @Override // gt.s1
    public void restoreThreadContext(@NotNull CoroutineContext coroutineContext, T t10) {
        this.f62674b.set(t10);
    }

    @NotNull
    public String toString() {
        return "ThreadLocal(value=" + this.f62673a + ", threadLocal = " + this.f62674b + ')';
    }

    @Override // gt.s1
    public T updateThreadContext(@NotNull CoroutineContext coroutineContext) {
        T t10 = this.f62674b.get();
        this.f62674b.set(this.f62673a);
        return t10;
    }
}
