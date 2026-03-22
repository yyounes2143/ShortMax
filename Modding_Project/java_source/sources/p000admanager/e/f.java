package p000admanager.e;

import fa.c;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* renamed from: ad-manager.e.f  reason: invalid package */
/* loaded from: classes.dex */
public final class f extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ c f519h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(c cVar, rs.c cVar2) {
        super(2, cVar2);
        this.f519h = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c create(Object obj, rs.c cVar) {
        return new f(this.f519h, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new f(this.f519h, (rs.c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        kotlin.f.b(obj);
        this.f519h.Z();
        return Unit.f60915a;
    }
}
