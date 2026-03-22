package p000admanager.b;

import ca.g;
import gt.g0;
import gt.p;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.q  reason: invalid package */
/* loaded from: classes.dex */
public final class q extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f403h;

    public q(c cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new q(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new q((c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        p pVar;
        p pVar2;
        Object f10 = a.f();
        int i10 = this.f403h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            pVar = g.f3404b;
            if (!pVar.isCompleted()) {
                pVar2 = g.f3404b;
                this.f403h = 1;
                if (pVar2.await(this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
