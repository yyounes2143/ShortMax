package com.startshorts.androidplayer.manager.purchase;

import com.startshorts.androidplayer.bean.discount.BestSubscriptionDiscountInfo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: HomeRetainDiscountSubsPresent.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3", f = "HomeRetainDiscountSubsPresent.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42749h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BestSubscriptionDiscountInfo f42750i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3(BestSubscriptionDiscountInfo bestSubscriptionDiscountInfo, c<? super HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3> cVar) {
        super(2, cVar);
        this.f42750i = bestSubscriptionDiscountInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3(this.f42750i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f42749h == 0) {
            f.b(obj);
            HomeRetainDiscountSubsPresent.f42741a.f(this.f42750i);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
