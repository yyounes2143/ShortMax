package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
import zc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2", f = "PurchaseRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43379h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43380i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BatchUnlockEpisodeSku f43381j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ f f43382k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ GPayPriceInfo f43383l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2(String str, BatchUnlockEpisodeSku batchUnlockEpisodeSku, f fVar, GPayPriceInfo gPayPriceInfo, c<? super PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2> cVar) {
        super(2, cVar);
        this.f43380i = str;
        this.f43381j = batchUnlockEpisodeSku;
        this.f43382k = fVar;
        this.f43383l = gPayPriceInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2(this.f43380i, this.f43381j, this.f43382k, this.f43383l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f43379h == 0) {
            kotlin.f.b(obj);
            BillingRepo.f43237a.X(this.f43380i, this.f43381j, this.f43382k, this.f43383l);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
