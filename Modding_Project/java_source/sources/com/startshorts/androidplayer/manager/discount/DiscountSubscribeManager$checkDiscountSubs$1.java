package com.startshorts.androidplayer.manager.discount;

import com.startshorts.androidplayer.bean.discount.DiscountSubscribeInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.fragment.purchase.DiscountSubscribeDialog;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscountSubscribeManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager$checkDiscountSubs$1", f = "DiscountSubscribeManager.kt", l = {70}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class DiscountSubscribeManager$checkDiscountSubs$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42453h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseActivity f42454i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f42455j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f42456k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f42457l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscountSubscribeManager$checkDiscountSubs$1(BaseActivity baseActivity, String str, BaseEpisode baseEpisode, Function0<Unit> function0, c<? super DiscountSubscribeManager$checkDiscountSubs$1> cVar) {
        super(2, cVar);
        this.f42454i = baseActivity;
        this.f42455j = str;
        this.f42456k = baseEpisode;
        this.f42457l = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(DiscountSubscribeInfo discountSubscribeInfo, BaseActivity baseActivity, String str, BaseEpisode baseEpisode, Function0 function0, SubsSku subsSku) {
        int o10;
        if (subsSku != null) {
            discountSubscribeInfo.setSubscribeSkuResponse(subsSku);
            boolean enableDiscount = subsSku.enableDiscount();
            DiscountSubscribeManager discountSubscribeManager = DiscountSubscribeManager.f42447a;
            o10 = discountSubscribeManager.o(subsSku);
            discountSubscribeManager.v(discountSubscribeInfo);
            if (baseActivity.t() && o10 > 2 && enableDiscount) {
                DiscountSubscribeDialog a10 = DiscountSubscribeDialog.f46451n.a(str);
                a10.R(discountSubscribeInfo);
                a10.S(baseEpisode);
                a10.T(function0);
                a10.show(baseActivity.getSupportFragmentManager(), "DiscountSubscribeDialog");
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DiscountSubscribeManager$checkDiscountSubs$1(this.f42454i, this.f42455j, this.f42456k, this.f42457l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DiscountSubscribeManager$checkDiscountSubs$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object e10;
        final DiscountSubscribeInfo discountSubscribeInfo;
        SubsSku subscribeSkuResponse;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42453h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                e10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            DiscountSubscribeRepo discountSubscribeRepo = DiscountSubscribeRepo.f43891a;
            this.f42453h = 1;
            e10 = discountSubscribeRepo.e(this);
            if (e10 == f10) {
                return f10;
            }
        }
        final BaseActivity baseActivity = this.f42454i;
        final String str = this.f42455j;
        final BaseEpisode baseEpisode = this.f42456k;
        final Function0<Unit> function0 = this.f42457l;
        if (Result.j(e10) && (discountSubscribeInfo = (DiscountSubscribeInfo) e10) != null && (subscribeSkuResponse = discountSubscribeInfo.getSubscribeSkuResponse()) != null) {
            BillingRepo billingRepo = BillingRepo.f43237a;
            if (billingRepo.C()) {
                billingRepo.i0(CollectionsKt.t(subscribeSkuResponse));
            }
            Logger.f41511a.h("DiscountSubscribeManager", "connect");
            DiscountSubscribeManager.f42447a.m(subscribeSkuResponse, new Function1() { // from class: com.startshorts.androidplayer.manager.discount.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit j10;
                    j10 = DiscountSubscribeManager$checkDiscountSubs$1.j(DiscountSubscribeInfo.this, baseActivity, str, baseEpisode, function0, (SubsSku) obj2);
                    return j10;
                }
            });
        }
        return Unit.f60915a;
    }
}
