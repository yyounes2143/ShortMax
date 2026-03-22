package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Zip.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", l = {29, 29}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class FlowKt__ZipKt$combine$1$1<R> extends SuspendLambda implements at.n<kt.c<? super R>, Object[], rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61632h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61633i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61634j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ at.n<T1, T2, rs.c<? super R>, Object> f61635k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combine$1$1(at.n<? super T1, ? super T2, ? super rs.c<? super R>, ? extends Object> nVar, rs.c<? super FlowKt__ZipKt$combine$1$1> cVar) {
        super(3, cVar);
        this.f61635k = nVar;
    }

    @Override // at.n
    /* renamed from: i */
    public final Object invoke(kt.c<? super R> cVar, Object[] objArr, rs.c<? super Unit> cVar2) {
        FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$1 = new FlowKt__ZipKt$combine$1$1(this.f61635k, cVar2);
        flowKt__ZipKt$combine$1$1.f61633i = cVar;
        flowKt__ZipKt$combine$1$1.f61634j = objArr;
        return flowKt__ZipKt$combine$1$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kt.c cVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61632h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            cVar = (kt.c) this.f61633i;
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            cVar = (kt.c) this.f61633i;
            Object[] objArr = (Object[]) this.f61634j;
            at.n<T1, T2, rs.c<? super R>, Object> nVar = this.f61635k;
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            this.f61633i = cVar;
            this.f61632h = 1;
            obj = nVar.invoke(obj2, obj3, this);
            if (obj == f10) {
                return f10;
            }
        }
        this.f61633i = null;
        this.f61632h = 2;
        if (cVar.emit(obj, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
