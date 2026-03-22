package p000admanager.b;

import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.u  reason: invalid package */
/* loaded from: classes.dex */
public final class u extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ boolean f416h;

    public u(c cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        u uVar = new u(cVar);
        uVar.f416h = ((Boolean) obj).booleanValue();
        return uVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        u uVar = new u((c) obj2);
        uVar.f416h = bool.booleanValue();
        return uVar.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        f.b(obj);
        return kotlin.coroutines.jvm.internal.a.a(this.f416h);
    }
}
