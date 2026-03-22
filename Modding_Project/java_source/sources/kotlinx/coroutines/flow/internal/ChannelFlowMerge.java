package kotlinx.coroutines.flow.internal;

import gt.g0;
import jt.h;
import jt.i;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.r;
import lt.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Merge.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ChannelFlowMerge<T> extends ChannelFlow<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final kt.b<kt.b<T>> f61713d;

    /* renamed from: e  reason: collision with root package name */
    private final int f61714e;

    public /* synthetic */ ChannelFlowMerge(kt.b bVar, int i10, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, i10, (i12 & 4) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext, (i12 & 8) != 0 ? -2 : i11, (i12 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected String c() {
        return "concurrency=" + this.f61714e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object f(@NotNull h<? super T> hVar, @NotNull rs.c<? super Unit> cVar) {
        Object collect = this.f61713d.collect(new ChannelFlowMerge$collectTo$2((r) cVar.getContext().get(r.G8), kotlinx.coroutines.sync.d.b(this.f61714e, 0, 2, null), hVar, new m(hVar)), cVar);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new ChannelFlowMerge(this.f61713d, this.f61714e, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public i<T> m(@NotNull g0 g0Var) {
        return ProduceKt.b(g0Var, this.f61703a, this.f61704b, k());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowMerge(@NotNull kt.b<? extends kt.b<? extends T>> bVar, int i10, @NotNull CoroutineContext coroutineContext, int i11, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i11, bufferOverflow);
        this.f61713d = bVar;
        this.f61714e = i10;
    }
}
