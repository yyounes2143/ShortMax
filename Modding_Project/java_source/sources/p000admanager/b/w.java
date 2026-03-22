package p000admanager.b;

import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.w  reason: invalid package */
/* loaded from: classes.dex */
public final class w extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ boolean f423h;

    public w(c cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        w wVar = new w(cVar);
        wVar.f423h = ((Boolean) obj).booleanValue();
        return wVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        w wVar = new w((c) obj2);
        wVar.f423h = bool.booleanValue();
        return wVar.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        f.b(obj);
        return kotlin.coroutines.jvm.internal.a.a(this.f423h);
    }
}
