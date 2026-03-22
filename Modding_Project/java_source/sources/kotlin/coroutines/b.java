package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext.Element;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContextImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class b<B extends CoroutineContext.Element, E extends B> implements CoroutineContext.b<E> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function1<CoroutineContext.Element, E> f61041a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext.b<?> f61042b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.jvm.functions.Function1<? super kotlin.coroutines.CoroutineContext$Element, ? extends E extends B>, java.lang.Object, kotlin.jvm.functions.Function1<kotlin.coroutines.CoroutineContext$Element, E extends B>] */
    public b(@NotNull CoroutineContext.b<B> baseKey, @NotNull Function1<? super CoroutineContext.Element, ? extends E> safeCast) {
        Intrinsics.checkNotNullParameter(baseKey, "baseKey");
        Intrinsics.checkNotNullParameter(safeCast, "safeCast");
        this.f61041a = safeCast;
        this.f61042b = baseKey instanceof b ? (CoroutineContext.b<B>) ((b) baseKey).f61042b : baseKey;
    }

    public final boolean a(@NotNull CoroutineContext.b<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (key != this && this.f61042b != key) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lkotlin/coroutines/CoroutineContext$Element;)TE; */
    @Nullable
    public final CoroutineContext.Element b(@NotNull CoroutineContext.Element element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return (CoroutineContext.Element) this.f61041a.invoke(element);
    }
}
