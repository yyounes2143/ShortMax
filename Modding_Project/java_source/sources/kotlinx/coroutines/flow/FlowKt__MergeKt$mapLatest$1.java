package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R, T] */
/* compiled from: Merge.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", l = {213, 213}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class FlowKt__MergeKt$mapLatest$1<R, T> extends SuspendLambda implements at.n<kt.c<? super R>, T, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61562h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61563i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61564j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function2<T, rs.c<? super R>, Object> f61565k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__MergeKt$mapLatest$1(Function2<? super T, ? super rs.c<? super R>, ? extends Object> function2, rs.c<? super FlowKt__MergeKt$mapLatest$1> cVar) {
        super(3, cVar);
        this.f61565k = function2;
    }

    @Override // at.n
    /* renamed from: i */
    public final Object invoke(kt.c<? super R> cVar, T t10, rs.c<? super Unit> cVar2) {
        FlowKt__MergeKt$mapLatest$1 flowKt__MergeKt$mapLatest$1 = new FlowKt__MergeKt$mapLatest$1(this.f61565k, cVar2);
        flowKt__MergeKt$mapLatest$1.f61563i = cVar;
        flowKt__MergeKt$mapLatest$1.f61564j = t10;
        return flowKt__MergeKt$mapLatest$1.invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kt.c cVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61562h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            cVar = (kt.c) this.f61563i;
        } else {
            kotlin.f.b(obj);
            kt.c cVar2 = (kt.c) this.f61563i;
            Object obj2 = this.f61564j;
            this.f61563i = cVar2;
            this.f61562h = 1;
            obj = this.f61565k.invoke(obj2, this);
            cVar = cVar2;
            if (obj == f10) {
                return f10;
            }
        }
        this.f61563i = null;
        this.f61562h = 2;
        if (cVar.emit(obj, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
