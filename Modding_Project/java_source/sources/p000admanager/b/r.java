package p000admanager.b;

import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.r  reason: invalid package */
/* loaded from: classes.dex */
public final class r extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Function0 f404h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Function0 function0, c cVar) {
        super(2, cVar);
        this.f404h = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new r(this.f404h, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new r(this.f404h, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        f.b(obj);
        this.f404h.invoke();
        return Unit.f60915a;
    }
}
