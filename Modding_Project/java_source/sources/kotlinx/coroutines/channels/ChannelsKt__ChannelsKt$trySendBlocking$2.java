package kotlinx.coroutines.channels;

import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: Channels.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", l = {39}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
/* loaded from: classes8.dex */
final class ChannelsKt__ChannelsKt$trySendBlocking$2 extends SuspendLambda implements Function2<g0, rs.c<? super a<? extends Unit>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61370h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61371i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ h<E> f61372j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ E f61373k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__ChannelsKt$trySendBlocking$2(h<? super E> hVar, E e10, rs.c<? super ChannelsKt__ChannelsKt$trySendBlocking$2> cVar) {
        super(2, cVar);
        this.f61372j = hVar;
        this.f61373k = e10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        ChannelsKt__ChannelsKt$trySendBlocking$2 channelsKt__ChannelsKt$trySendBlocking$2 = new ChannelsKt__ChannelsKt$trySendBlocking$2(this.f61372j, this.f61373k, cVar);
        channelsKt__ChannelsKt$trySendBlocking$2.f61371i = obj;
        return channelsKt__ChannelsKt$trySendBlocking$2;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(g0 g0Var, rs.c<? super a<Unit>> cVar) {
        return ((ChannelsKt__ChannelsKt$trySendBlocking$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        Object a10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61370h;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                g0 g0Var = (g0) this.f61371i;
                h<E> hVar = this.f61372j;
                E e10 = this.f61373k;
                Result.a aVar = Result.f60901b;
                this.f61370h = 1;
                if (hVar.p(e10, this) == f10) {
                    return f10;
                }
            }
            d10 = Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.j(d10)) {
            a10 = a.f61379b.c(Unit.f60915a);
        } else {
            a10 = a.f61379b.a(Result.g(d10));
        }
        return a.b(a10);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super a<? extends Unit>> cVar) {
        return invoke2(g0Var, (rs.c<? super a<Unit>>) cVar);
    }
}
