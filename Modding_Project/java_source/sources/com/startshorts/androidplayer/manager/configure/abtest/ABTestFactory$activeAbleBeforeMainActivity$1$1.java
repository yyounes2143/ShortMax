package com.startshorts.androidplayer.manager.configure.abtest;

import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import com.startshorts.androidplayer.log.Logger;
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
@d(c = "com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory$activeAbleBeforeMainActivity$1$1", f = "ABTestFactory.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ABTestFactory$activeAbleBeforeMainActivity$1$1 extends SuspendLambda implements Function1<c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42256h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ABTestConfig f42257i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ABTestFactory$activeAbleBeforeMainActivity$1$1(ABTestConfig aBTestConfig, c<? super ABTestFactory$activeAbleBeforeMainActivity$1$1> cVar) {
        super(1, cVar);
        this.f42257i = aBTestConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ABTestFactory$activeAbleBeforeMainActivity$1$1(this.f42257i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        a.f();
        if (this.f42256h == 0) {
            f.b(obj);
            if (fk.a.f51702a.a()) {
                Logger logger = Logger.f41511a;
                logger.e("ABTestFactory", this.f42257i.getAbTestKey() + " active ignore, MainActivity is exist already");
                z10 = false;
            } else {
                this.f42257i.initFixedABTestValue();
                z10 = true;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super Boolean> cVar) {
        return ((ABTestFactory$activeAbleBeforeMainActivity$1$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
