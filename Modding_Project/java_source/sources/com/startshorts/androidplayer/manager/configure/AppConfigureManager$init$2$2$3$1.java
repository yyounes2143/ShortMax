package com.startshorts.androidplayer.manager.configure;

import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: AppConfigureManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2$3$1", f = "AppConfigureManager.kt", l = {105}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class AppConfigureManager$init$2$2$3$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42203h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ABTestConfig f42204i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigureManager$init$2$2$3$1(ABTestConfig aBTestConfig, c<? super AppConfigureManager$init$2$2$3$1> cVar) {
        super(2, cVar);
        this.f42204i = aBTestConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppConfigureManager$init$2$2$3$1(this.f42204i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AppConfigureManager$init$2$2$3$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f42203h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Function1<c<? super Boolean>, Object> activeAble = this.f42204i.getActiveAble();
            this.f42203h = 1;
            obj = activeAble.invoke(this);
            if (obj == f10) {
                return f10;
            }
        }
        if (((Boolean) obj).booleanValue()) {
            this.f42204i.setActivated(true);
            this.f42204i.getRunAfterActive().invoke();
        }
        return Unit.f60915a;
    }
}
