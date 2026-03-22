package com.startshorts.androidplayer.ui.fragment.discover;

import com.startshorts.androidplayer.bean.subs.QuerySubsSkuResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverTabFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$loadSubscribeDiscountData$1", f = "DiscoverTabFragment.kt", l = {319, 326}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverTabFragment$loadSubscribeDiscountData$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f45995h;

    /* renamed from: i  reason: collision with root package name */
    int f45996i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverTabFragment f45997j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverTabFragment$loadSubscribeDiscountData$1(DiscoverTabFragment discoverTabFragment, rs.c<? super DiscoverTabFragment$loadSubscribeDiscountData$1> cVar) {
        super(2, cVar);
        this.f45997j = discoverTabFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverTabFragment$loadSubscribeDiscountData$1(this.f45997j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverTabFragment$loadSubscribeDiscountData$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object o10;
        QuerySubsSkuResult querySubsSkuResult;
        List<SubsSku> productList;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f45996i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            o10 = ((Result) obj).n();
        } else {
            kotlin.f.b(obj);
            SubsRepo subsRepo = SubsRepo.f43486a;
            this.f45996i = 1;
            o10 = subsRepo.o(this);
            if (o10 == f10) {
                return f10;
            }
        }
        DiscoverTabFragment discoverTabFragment = this.f45997j;
        if (Result.j(o10) && (querySubsSkuResult = (QuerySubsSkuResult) o10) != null && (productList = querySubsSkuResult.getProductList()) != null) {
            discoverTabFragment.G = productList;
            discoverTabFragment.v0();
        }
        DiscoverTabFragment discoverTabFragment2 = this.f45997j;
        if (Result.g(o10) != null) {
            gt.j1 c10 = gt.q0.c();
            DiscoverTabFragment$loadSubscribeDiscountData$1$2$1 discoverTabFragment$loadSubscribeDiscountData$1$2$1 = new DiscoverTabFragment$loadSubscribeDiscountData$1$2$1(discoverTabFragment2, null);
            this.f45995h = o10;
            this.f45996i = 2;
            if (gt.e.g(c10, discoverTabFragment$loadSubscribeDiscountData$1$2$1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
