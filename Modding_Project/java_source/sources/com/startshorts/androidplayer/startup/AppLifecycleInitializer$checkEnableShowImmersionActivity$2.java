package com.startshorts.androidplayer.startup;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: AppLifecycleInitializer.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.startup.AppLifecycleInitializer$checkEnableShowImmersionActivity$2", f = "AppLifecycleInitializer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AppLifecycleInitializer$checkEnableShowImmersionActivity$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44834h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLifecycleInitializer$checkEnableShowImmersionActivity$2(c<? super AppLifecycleInitializer$checkEnableShowImmersionActivity$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppLifecycleInitializer$checkEnableShowImmersionActivity$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AppLifecycleInitializer$checkEnableShowImmersionActivity$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44834h == 0) {
            f.b(obj);
            fk.a.j(fk.a.f51702a, false, false, 2, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
