package p000admanager.c;

import ca.b;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.d;
/* renamed from: ad-manager.c.c  reason: invalid package */
/* loaded from: classes.dex */
public final class c extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f428h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ b f429i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b bVar, rs.c cVar) {
        super(2, cVar);
        this.f429i = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c create(Object obj, rs.c cVar) {
        return new c(this.f429i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new c(this.f429i, (rs.c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        d dVar;
        Object f10 = a.f();
        int i10 = this.f428h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            dVar = da.f.f50276j;
            b bVar = this.f429i;
            this.f428h = 1;
            if (dVar.emit(bVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
