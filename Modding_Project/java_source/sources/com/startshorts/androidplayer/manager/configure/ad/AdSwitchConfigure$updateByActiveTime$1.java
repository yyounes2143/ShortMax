package com.startshorts.androidplayer.manager.configure.ad;

import com.startshorts.androidplayer.bean.ad.AdScene;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdSwitchConfigure.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$updateByActiveTime$1", f = "AdSwitchConfigure.kt", l = {36}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdSwitchConfigure$updateByActiveTime$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42276h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AdScene f42277i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSwitchConfigure$updateByActiveTime$1(AdScene adScene, rs.c<? super AdSwitchConfigure$updateByActiveTime$1> cVar) {
        super(2, cVar);
        this.f42277i = adScene;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AdSwitchConfigure$updateByActiveTime$1(this.f42277i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AdSwitchConfigure$updateByActiveTime$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        me.a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42276h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            AdSwitchConfigure adSwitchConfigure = AdSwitchConfigure.f42267a;
            aVar = AdSwitchConfigure.f42270d;
            this.f42276h = 1;
            if (adSwitchConfigure.i(aVar.a(), new AdScene[]{this.f42277i}, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
