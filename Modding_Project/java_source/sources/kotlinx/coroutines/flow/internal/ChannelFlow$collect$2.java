package kotlinx.coroutines.flow.internal;

import gt.g0;
import jt.i;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChannelFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {119}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class ChannelFlow$collect$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61706h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61707i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61708j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ChannelFlow<T> f61709k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlow$collect$2(kt.c<? super T> cVar, ChannelFlow<T> channelFlow, rs.c<? super ChannelFlow$collect$2> cVar2) {
        super(2, cVar2);
        this.f61708j = cVar;
        this.f61709k = channelFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        ChannelFlow$collect$2 channelFlow$collect$2 = new ChannelFlow$collect$2(this.f61708j, this.f61709k, cVar);
        channelFlow$collect$2.f61707i = obj;
        return channelFlow$collect$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ChannelFlow$collect$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61706h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            kt.c<T> cVar = this.f61708j;
            i m10 = this.f61709k.m((g0) this.f61707i);
            this.f61706h = 1;
            if (kotlinx.coroutines.flow.c.t(cVar, m10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
