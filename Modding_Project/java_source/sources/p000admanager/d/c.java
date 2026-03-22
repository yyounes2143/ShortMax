package p000admanager.d;

import e.t;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* renamed from: ad-manager.d.c  reason: invalid package */
/* loaded from: classes.dex */
public final class c extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ t f442h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(t tVar, rs.c cVar) {
        super(2, cVar);
        this.f442h = tVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c create(Object obj, rs.c cVar) {
        return new c(this.f442h, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new c(this.f442h, (rs.c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        f.b(obj);
        t tVar = this.f442h;
        int i10 = t.f50688q;
        tVar.a0();
        return Unit.f60915a;
    }
}
