package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ChannelFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", l = {208}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class UndispatchedContextCollector$emitRef$1<T> extends SuspendLambda implements Function2<T, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61790h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61791i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61792j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UndispatchedContextCollector$emitRef$1(kt.c<? super T> cVar, rs.c<? super UndispatchedContextCollector$emitRef$1> cVar2) {
        super(2, cVar2);
        this.f61792j = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        UndispatchedContextCollector$emitRef$1 undispatchedContextCollector$emitRef$1 = new UndispatchedContextCollector$emitRef$1(this.f61792j, cVar);
        undispatchedContextCollector$emitRef$1.f61791i = obj;
        return undispatchedContextCollector$emitRef$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke2((UndispatchedContextCollector$emitRef$1<T>) obj, cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61790h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Object obj2 = this.f61791i;
            this.f61790h = 1;
            if (this.f61792j.emit(obj2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(T t10, rs.c<? super Unit> cVar) {
        return ((UndispatchedContextCollector$emitRef$1) create(t10, cVar)).invokeSuspend(Unit.f60915a);
    }
}
