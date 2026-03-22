package com.startshorts.androidplayer.manager.configure.abtest;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ABTestFactory.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory$createABTestConfig$1", f = "ABTestFactory.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ABTestFactory$createABTestConfig$1 extends SuspendLambda implements Function1<c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42258h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ABTestFactory$createABTestConfig$1(c<? super ABTestFactory$createABTestConfig$1> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ABTestFactory$createABTestConfig$1(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f42258h == 0) {
            f.b(obj);
            return kotlin.coroutines.jvm.internal.a.a(true);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super Boolean> cVar) {
        return ((ABTestFactory$createABTestConfig$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
