package com.startshorts.androidplayer.manager.purchase;

import com.startshorts.androidplayer.bean.discount.BestSubscriptionDiscountInfo;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HomeRetainDiscountSubsPresent.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1", f = "HomeRetainDiscountSubsPresent.kt", l = {86}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42747h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1(c<? super HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object b10;
        Object f10 = a.f();
        int i10 = this.f42747h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                b10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            DiscountSubscribeRepo discountSubscribeRepo = DiscountSubscribeRepo.f43891a;
            this.f42747h = 1;
            b10 = discountSubscribeRepo.b(this);
            if (b10 == f10) {
                return f10;
            }
        }
        if (Result.j(b10)) {
            BestSubscriptionDiscountInfo bestSubscriptionDiscountInfo = (BestSubscriptionDiscountInfo) b10;
            if (bestSubscriptionDiscountInfo == null) {
                g.d(HomeRetainDiscountSubsPresent.f42741a.j(), null, null, new HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$1(null), 3, null);
                HomeRetainDiscountSubsPresent.f42742b = false;
                return Unit.f60915a;
            }
            SubsSku subscriptionDiscountProduct = bestSubscriptionDiscountInfo.getSubscriptionDiscountProduct();
            if (subscriptionDiscountProduct != null) {
                subscriptionDiscountProduct.setReceiveType(AccountRepo.f43052a.p0());
            }
            BillingRepo billingRepo = BillingRepo.f43237a;
            if (billingRepo.C() && subscriptionDiscountProduct != null) {
                billingRepo.i0(CollectionsKt.t(subscriptionDiscountProduct));
            }
            g.d(HomeRetainDiscountSubsPresent.f42741a.j(), null, null, new HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3(bestSubscriptionDiscountInfo, null), 3, null);
            HomeRetainDiscountSubsPresent.f42742b = false;
        }
        if (Result.g(b10) != null) {
            HomeRetainDiscountSubsPresent.f42742b = false;
        }
        return Unit.f60915a;
    }
}
