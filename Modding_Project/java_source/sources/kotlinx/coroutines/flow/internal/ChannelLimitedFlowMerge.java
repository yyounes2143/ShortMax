package kotlinx.coroutines.flow.internal;

import gt.g;
import gt.g0;
import jt.h;
import jt.i;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import lt.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Merge.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n1863#2,2:97\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n*L\n91#1:97,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ChannelLimitedFlowMerge<T> extends ChannelFlow<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Iterable<kt.b<T>> f61751d;

    public /* synthetic */ ChannelLimitedFlowMerge(Iterable iterable, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(iterable, (i11 & 2) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object f(@NotNull h<? super T> hVar, @NotNull rs.c<? super Unit> cVar) {
        m mVar = new m(hVar);
        for (kt.b<T> bVar : this.f61751d) {
            g.d(hVar, null, null, new ChannelLimitedFlowMerge$collectTo$2$1(bVar, mVar, null), 3, null);
        }
        return Unit.f60915a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new ChannelLimitedFlowMerge(this.f61751d, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public i<T> m(@NotNull g0 g0Var) {
        return ProduceKt.b(g0Var, this.f61703a, this.f61704b, k());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelLimitedFlowMerge(@NotNull Iterable<? extends kt.b<? extends T>> iterable, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f61751d = iterable;
    }
}
