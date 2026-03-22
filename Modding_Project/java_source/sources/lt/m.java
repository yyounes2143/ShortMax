package lt;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SendingCollector.kt */
@Metadata
/* loaded from: classes8.dex */
public final class m<T> implements kt.c<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kotlinx.coroutines.channels.h<T> f62313a;

    /* JADX WARN: Multi-variable type inference failed */
    public m(@NotNull kotlinx.coroutines.channels.h<? super T> hVar) {
        this.f62313a = hVar;
    }

    @Override // kt.c
    @Nullable
    public Object emit(T t10, @NotNull rs.c<? super Unit> cVar) {
        Object p10 = this.f62313a.p(t10, cVar);
        if (p10 == kotlin.coroutines.intrinsics.a.f()) {
            return p10;
        }
        return Unit.f60915a;
    }
}
