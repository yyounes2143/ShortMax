package kotlinx.coroutines.flow.internal;

import gt.a0;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.c;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import lt.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class ChannelFlowOperator<S, T> extends ChannelFlow<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    protected final kt.b<S> f61728d;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowOperator(@NotNull kt.b<? extends S> bVar, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f61728d = bVar;
    }

    static /* synthetic */ <S, T> Object n(ChannelFlowOperator<S, T> channelFlowOperator, kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
        if (channelFlowOperator.f61704b == -3) {
            CoroutineContext context = cVar2.getContext();
            CoroutineContext k10 = a0.k(context, channelFlowOperator.f61703a);
            if (Intrinsics.areEqual(k10, context)) {
                Object q10 = channelFlowOperator.q(cVar, cVar2);
                if (q10 == kotlin.coroutines.intrinsics.a.f()) {
                    return q10;
                }
                return Unit.f60915a;
            }
            c.b bVar = kotlin.coroutines.c.F8;
            if (Intrinsics.areEqual(k10.get(bVar), context.get(bVar))) {
                Object p10 = channelFlowOperator.p(cVar, k10, cVar2);
                if (p10 == kotlin.coroutines.intrinsics.a.f()) {
                    return p10;
                }
                return Unit.f60915a;
            }
        }
        Object collect = super.collect(cVar, cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    static /* synthetic */ <S, T> Object o(ChannelFlowOperator<S, T> channelFlowOperator, h<? super T> hVar, rs.c<? super Unit> cVar) {
        Object q10 = channelFlowOperator.q(new m(hVar), cVar);
        if (q10 == kotlin.coroutines.intrinsics.a.f()) {
            return q10;
        }
        return Unit.f60915a;
    }

    private final Object p(kt.c<? super T> cVar, CoroutineContext coroutineContext, rs.c<? super Unit> cVar2) {
        return a.c(coroutineContext, a.a(cVar, cVar2.getContext()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), cVar2, 4, null);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2) {
        return n(this, cVar, cVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object f(@NotNull h<? super T> hVar, @NotNull rs.c<? super Unit> cVar) {
        return o(this, hVar, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract Object q(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public String toString() {
        return this.f61728d + " -> " + super.toString();
    }
}
