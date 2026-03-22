package kotlinx.coroutines.flow.internal;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Merge.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"})
/* loaded from: classes8.dex */
public final class ChannelFlowTransformLatest<T, R> extends ChannelFlowOperator<T, R> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final n<kt.c<? super R>, T, rs.c<? super Unit>, Object> f61732e;

    public /* synthetic */ ChannelFlowTransformLatest(n nVar, kt.b bVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVar, bVar, (i11 & 4) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext, (i11 & 8) != 0 ? -2 : i10, (i11 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<R> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new ChannelFlowTransformLatest(this.f61732e, this.f61728d, coroutineContext, i10, bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    @Nullable
    public Object q(@NotNull kt.c<? super R> cVar, @NotNull rs.c<? super Unit> cVar2) {
        Object f10 = i.f(new ChannelFlowTransformLatest$flowCollect$3(this, cVar, null), cVar2);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest(@NotNull n<? super kt.c<? super R>, ? super T, ? super rs.c<? super Unit>, ? extends Object> nVar, @NotNull kt.b<? extends T> bVar, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(bVar, coroutineContext, i10, bufferOverflow);
        this.f61732e = nVar;
    }
}
