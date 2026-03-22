package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import mt.h0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChannelFlow.kt */
@Metadata
/* loaded from: classes8.dex */
public final class UndispatchedContextCollector<T> implements kt.c<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f61787a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Object f61788b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function2<T, rs.c<? super Unit>, Object> f61789c;

    public UndispatchedContextCollector(@NotNull kt.c<? super T> cVar, @NotNull CoroutineContext coroutineContext) {
        this.f61787a = coroutineContext;
        this.f61788b = h0.g(coroutineContext);
        this.f61789c = new UndispatchedContextCollector$emitRef$1(cVar, null);
    }

    @Override // kt.c
    @Nullable
    public Object emit(T t10, @NotNull rs.c<? super Unit> cVar) {
        Object b10 = a.b(this.f61787a, t10, this.f61788b, this.f61789c, cVar);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Unit.f60915a;
    }
}
