package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.a0;
/* compiled from: Delay.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", l = {226}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,407:1\n14#2:408\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n*L\n226#1:408\n*E\n"})
/* loaded from: classes8.dex */
final class FlowKt__DelayKt$debounceInternal$1$3$1 extends SuspendLambda implements Function1<rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61450h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61451i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f61452j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1$3$1(kt.c<? super T> cVar, Ref.ObjectRef<Object> objectRef, rs.c<? super FlowKt__DelayKt$debounceInternal$1$3$1> cVar2) {
        super(1, cVar2);
        this.f61451i = cVar;
        this.f61452j = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new FlowKt__DelayKt$debounceInternal$1$3$1(this.f61451i, this.f61452j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61450h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            kt.c<T> cVar = this.f61451i;
            a0 a0Var = lt.i.f62309a;
            Object obj2 = this.f61452j.element;
            if (obj2 == a0Var) {
                obj2 = null;
            }
            this.f61450h = 1;
            if (cVar.emit(obj2, this) == f10) {
                return f10;
            }
        }
        this.f61452j.element = null;
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(rs.c<? super Unit> cVar) {
        return ((FlowKt__DelayKt$debounceInternal$1$3$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
