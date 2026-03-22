package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class k<T> extends AbstractFlow<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function2<kt.c<? super T>, rs.c<? super Unit>, Object> f61799a;

    /* JADX WARN: Multi-variable type inference failed */
    public k(@NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        this.f61799a = function2;
    }

    @Override // kotlinx.coroutines.flow.AbstractFlow
    @Nullable
    public Object c(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2) {
        Object invoke = this.f61799a.invoke(cVar, cVar2);
        if (invoke == kotlin.coroutines.intrinsics.a.f()) {
            return invoke;
        }
        return Unit.f60915a;
    }
}
