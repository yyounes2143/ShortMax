package com.startshorts.androidplayer.manager.configure.ad;

import com.startshorts.androidplayer.bean.ad.AdScene;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseAdUnitIdConfigure.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure$updateByActiveTime$1", f = "BaseAdUnitIdConfigure.kt", l = {61}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class BaseAdUnitIdConfigure$updateByActiveTime$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42303h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseAdUnitIdConfigure f42304i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AdScene f42305j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdUnitIdConfigure$updateByActiveTime$1(BaseAdUnitIdConfigure baseAdUnitIdConfigure, AdScene adScene, rs.c<? super BaseAdUnitIdConfigure$updateByActiveTime$1> cVar) {
        super(2, cVar);
        this.f42304i = baseAdUnitIdConfigure;
        this.f42305j = adScene;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new BaseAdUnitIdConfigure$updateByActiveTime$1(this.f42304i, this.f42305j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((BaseAdUnitIdConfigure$updateByActiveTime$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        me.a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42303h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            BaseAdUnitIdConfigure baseAdUnitIdConfigure = this.f42304i;
            aVar = baseAdUnitIdConfigure.f42298c;
            this.f42303h = 1;
            if (baseAdUnitIdConfigure.q(aVar.a(), new AdScene[]{this.f42305j}, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
