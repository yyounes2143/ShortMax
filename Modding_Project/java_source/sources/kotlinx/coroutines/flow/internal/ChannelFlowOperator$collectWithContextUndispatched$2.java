package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ChannelFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", l = {148}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class ChannelFlowOperator$collectWithContextUndispatched$2<T> extends SuspendLambda implements Function2<kt.c<? super T>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61729h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61730i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ChannelFlowOperator<S, T> f61731j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowOperator$collectWithContextUndispatched$2(ChannelFlowOperator<S, T> channelFlowOperator, rs.c<? super ChannelFlowOperator$collectWithContextUndispatched$2> cVar) {
        super(2, cVar);
        this.f61731j = channelFlowOperator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        ChannelFlowOperator$collectWithContextUndispatched$2 channelFlowOperator$collectWithContextUndispatched$2 = new ChannelFlowOperator$collectWithContextUndispatched$2(this.f61731j, cVar);
        channelFlowOperator$collectWithContextUndispatched$2.f61730i = obj;
        return channelFlowOperator$collectWithContextUndispatched$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((kt.c) ((kt.c) obj), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61729h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ChannelFlowOperator<S, T> channelFlowOperator = this.f61731j;
            this.f61729h = 1;
            if (channelFlowOperator.q((kt.c) this.f61730i, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    public final Object invoke(kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
        return ((ChannelFlowOperator$collectWithContextUndispatched$2) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
