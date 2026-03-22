package com.startshorts.androidplayer.startup;

import gt.g0;
import kf.b;
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
@d(c = "com.startshorts.androidplayer.startup.AppLifecycleInitializer$checkEnableShowImmersionActivity$3", f = "AppLifecycleInitializer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AppLifecycleInitializer$checkEnableShowImmersionActivity$3 extends SuspendLambda implements Function2<g0, c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44835h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLifecycleInitializer$checkEnableShowImmersionActivity$3(c<? super AppLifecycleInitializer$checkEnableShowImmersionActivity$3> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppLifecycleInitializer$checkEnableShowImmersionActivity$3(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Boolean> cVar) {
        return ((AppLifecycleInitializer$checkEnableShowImmersionActivity$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44835h == 0) {
            f.b(obj);
            return kotlin.coroutines.jvm.internal.a.a(b.f60715a.b());
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
