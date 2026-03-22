package lt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d<T> extends ChannelFlowOperator<T, T> {
    public /* synthetic */ d(kt.b bVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, (i11 & 2) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext, (i11 & 4) != 0 ? -3 : i10, (i11 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new d(this.f61728d, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public kt.b<T> j() {
        return (kt.b<T>) this.f61728d;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    @Nullable
    protected Object q(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2) {
        Object collect = this.f61728d.collect(cVar, cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    public d(@NotNull kt.b<? extends T> bVar, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(bVar, coroutineContext, i10, bufferOverflow);
    }
}
