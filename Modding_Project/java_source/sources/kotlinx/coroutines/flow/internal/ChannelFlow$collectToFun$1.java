package kotlinx.coroutines.flow.internal;

import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ChannelFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {56}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class ChannelFlow$collectToFun$1<T> extends SuspendLambda implements Function2<h<? super T>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61710h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61711i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ChannelFlow<T> f61712j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collectToFun$1(ChannelFlow<T> channelFlow, rs.c<? super ChannelFlow$collectToFun$1> cVar) {
        super(2, cVar);
        this.f61712j = channelFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        ChannelFlow$collectToFun$1 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this.f61712j, cVar);
        channelFlow$collectToFun$1.f61711i = obj;
        return channelFlow$collectToFun$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((h) ((h) obj), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61710h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ChannelFlow<T> channelFlow = this.f61712j;
            this.f61710h = 1;
            if (channelFlow.f((h) this.f61711i, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    public final Object invoke(h<? super T> hVar, rs.c<? super Unit> cVar) {
        return ((ChannelFlow$collectToFun$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
