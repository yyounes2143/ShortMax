package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Distinct.kt */
@Metadata
/* loaded from: classes8.dex */
final class DistinctFlowImpl<T> implements kt.b<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kt.b<T> f61410a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Function1<T, Object> f61411b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Function2<Object, Object, Boolean> f61412c;

    /* JADX WARN: Multi-variable type inference failed */
    public DistinctFlowImpl(@NotNull kt.b<? extends T> bVar, @NotNull Function1<? super T, ? extends Object> function1, @NotNull Function2<Object, Object, Boolean> function2) {
        this.f61410a = bVar;
        this.f61411b = function1;
        this.f61412c = function2;
    }

    @Override // kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = (T) lt.i.f62309a;
        Object collect = this.f61410a.collect(new DistinctFlowImpl$collect$2(this, objectRef, cVar), cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }
}
