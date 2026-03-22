package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.bean.discount.BestSubscriptionDiscountInfo;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: HomeRetainDiscountSubProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.HomeRetainDiscountSubProcessor$process$2", f = "HomeRetainDiscountSubProcessor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class HomeRetainDiscountSubProcessor$process$2 extends SuspendLambda implements Function2<g0, rs.c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42381h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HomeRetainDiscountSubProcessor f42382i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ MainActivity f42383j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeRetainDiscountSubProcessor$process$2(HomeRetainDiscountSubProcessor homeRetainDiscountSubProcessor, MainActivity mainActivity, rs.c<? super HomeRetainDiscountSubProcessor$process$2> cVar) {
        super(2, cVar);
        this.f42382i = homeRetainDiscountSubProcessor;
        this.f42383j = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new HomeRetainDiscountSubProcessor$process$2(this.f42382i, this.f42383j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Boolean> cVar) {
        return ((HomeRetainDiscountSubProcessor$process$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42381h == 0) {
            kotlin.f.b(obj);
            if (!this.f42382i.c(this.f42383j)) {
                return kotlin.coroutines.jvm.internal.a.a(false);
            }
            BestSubscriptionDiscountInfo g10 = HomeRetainDiscountSubsPresent.f42741a.g();
            if (g10 != null) {
                MainActivity mainActivity = this.f42383j;
                SubsSku subscriptionDiscountProduct = g10.getSubscriptionDiscountProduct();
                if (subscriptionDiscountProduct != null) {
                    SubsExpansionManager.f42751a.y(mainActivity, subscriptionDiscountProduct, "discover");
                    return kotlin.coroutines.jvm.internal.a.a(true);
                }
            }
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
