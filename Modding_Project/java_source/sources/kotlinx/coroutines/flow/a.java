package kotlinx.coroutines.flow;

import gt.g0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/ChannelAsFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,158:1\n1#2:159\n*E\n"})
/* loaded from: classes8.dex */
public final class a<T> extends ChannelFlow<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61693f = AtomicIntegerFieldUpdater.newUpdater(a.class, "consumed$volatile");
    private volatile /* synthetic */ int consumed$volatile;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final jt.i<T> f61694d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f61695e;

    public /* synthetic */ a(jt.i iVar, boolean z10, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, z10, (i11 & 4) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext, (i11 & 8) != 0 ? -3 : i10, (i11 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    private final void o() {
        if (this.f61695e && f61693f.getAndSet(this, 1) == 1) {
            throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once");
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected String c() {
        return "channel=" + this.f61694d;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2) {
        Object d10;
        if (this.f61704b == -3) {
            o();
            d10 = FlowKt__ChannelsKt.d(cVar, this.f61694d, this.f61695e, cVar2);
            if (d10 == kotlin.coroutines.intrinsics.a.f()) {
                return d10;
            }
            return Unit.f60915a;
        }
        Object collect = super.collect(cVar, cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object f(@NotNull jt.h<? super T> hVar, @NotNull rs.c<? super Unit> cVar) {
        Object d10;
        d10 = FlowKt__ChannelsKt.d(new lt.m(hVar), this.f61694d, this.f61695e, cVar);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            return d10;
        }
        return Unit.f60915a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new a(this.f61694d, this.f61695e, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public kt.b<T> j() {
        return new a(this.f61694d, this.f61695e, null, 0, null, 28, null);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public jt.i<T> m(@NotNull g0 g0Var) {
        o();
        if (this.f61704b == -3) {
            return this.f61694d;
        }
        return super.m(g0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@NotNull jt.i<? extends T> iVar, boolean z10, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f61694d = iVar;
        this.f61695e = z10;
    }
}
