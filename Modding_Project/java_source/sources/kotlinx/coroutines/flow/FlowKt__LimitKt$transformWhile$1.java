package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Limit.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1", f = "Limit.kt", l = {152}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,141:1\n124#2,17:142\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1\n*L\n117#1:142,17\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__LimitKt$transformWhile$1<R> extends SuspendLambda implements Function2<kt.c<? super R>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61544h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61545i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ kt.b<T> f61546j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ at.n<kt.c<? super R>, T, rs.c<? super Boolean>, Object> f61547k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$transformWhile$1(kt.b<? extends T> bVar, at.n<? super kt.c<? super R>, ? super T, ? super rs.c<? super Boolean>, ? extends Object> nVar, rs.c<? super FlowKt__LimitKt$transformWhile$1> cVar) {
        super(2, cVar);
        this.f61546j = bVar;
        this.f61547k = nVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowKt__LimitKt$transformWhile$1 flowKt__LimitKt$transformWhile$1 = new FlowKt__LimitKt$transformWhile$1(this.f61546j, this.f61547k, cVar);
        flowKt__LimitKt$transformWhile$1.f61545i = obj;
        return flowKt__LimitKt$transformWhile$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((kt.c) ((kt.c) obj), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61544h;
        if (i10 != 0) {
            if (i10 == 1) {
                flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = (FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1) this.f61545i;
                try {
                    kotlin.f.b(obj);
                } catch (AbortFlowException e10) {
                    e = e10;
                    lt.f.a(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                    t.k(getContext());
                    return Unit.f60915a;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            kt.b<T> bVar = this.f61546j;
            FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12 = new FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1(this.f61547k, (kt.c) this.f61545i);
            try {
                this.f61545i = flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12;
                this.f61544h = 1;
                if (bVar.collect(flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12, this) == f10) {
                    return f10;
                }
            } catch (AbortFlowException e11) {
                e = e11;
                flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12;
                lt.f.a(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                t.k(getContext());
                return Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }

    public final Object invoke(kt.c<? super R> cVar, rs.c<? super Unit> cVar2) {
        return ((FlowKt__LimitKt$transformWhile$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
