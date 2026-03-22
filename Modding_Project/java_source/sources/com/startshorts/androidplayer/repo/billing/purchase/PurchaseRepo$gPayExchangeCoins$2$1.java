package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$gPayExchangeCoins$2$1", f = "PurchaseRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRepo$gPayExchangeCoins$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43403h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43404i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ GPayExchangePremiumResult.RechargeUserInfo f43405j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$gPayExchangeCoins$2$1(String str, GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo, c<? super PurchaseRepo$gPayExchangeCoins$2$1> cVar) {
        super(2, cVar);
        this.f43404i = str;
        this.f43405j = rechargeUserInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseRepo$gPayExchangeCoins$2$1(this.f43404i, this.f43405j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseRepo$gPayExchangeCoins$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f43403h == 0) {
            f.b(obj);
            BillingRepo.f43237a.c0(this.f43404i, this.f43405j);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
