package kotlinx.coroutines;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Interruptible.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class InterruptibleKt$runInterruptible$2<T> extends SuspendLambda implements Function2<g0, rs.c<? super T>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61278h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61279i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function0<T> f61280j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InterruptibleKt$runInterruptible$2(Function0<? extends T> function0, rs.c<? super InterruptibleKt$runInterruptible$2> cVar) {
        super(2, cVar);
        this.f61280j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$2 = new InterruptibleKt$runInterruptible$2(this.f61280j, cVar);
        interruptibleKt$runInterruptible$2.f61279i = obj;
        return interruptibleKt$runInterruptible$2;
    }

    public final Object invoke(g0 g0Var, rs.c<? super T> cVar) {
        return ((InterruptibleKt$runInterruptible$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f61278h == 0) {
            kotlin.f.b(obj);
            d10 = InterruptibleKt.d(((g0) this.f61279i).getCoroutineContext(), this.f61280j);
            return d10;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
