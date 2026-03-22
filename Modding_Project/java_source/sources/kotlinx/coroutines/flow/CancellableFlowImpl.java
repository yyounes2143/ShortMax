package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Context.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CancellableFlowImpl<T> implements kt.a<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kt.b<T> f61405a;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableFlowImpl(@NotNull kt.b<? extends T> bVar) {
        this.f61405a = bVar;
    }

    @Override // kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2) {
        Object collect = this.f61405a.collect(new CancellableFlowImpl$collect$2(cVar), cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }
}
