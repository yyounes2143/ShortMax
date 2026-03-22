package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku;
import com.startshorts.androidplayer.bean.purchase.GPayExchangeCoinsResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.api.base.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import rs.c;
import zc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2", f = "PurchaseRemoteDS.kt", l = {78}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2 extends SuspendLambda implements Function1<c<? super ServerResult<GPayExchangeCoinsResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43336h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BatchUnlockEpisodeSku f43337i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ f f43338j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ GPayPriceInfo f43339k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2(BatchUnlockEpisodeSku batchUnlockEpisodeSku, f fVar, GPayPriceInfo gPayPriceInfo, c<? super PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2> cVar) {
        super(1, cVar);
        this.f43337i = batchUnlockEpisodeSku;
        this.f43338j = fVar;
        this.f43339k = gPayPriceInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2(this.f43337i, this.f43338j, this.f43339k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object f10 = a.f();
        int i10 = this.f43336h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.f.b(obj);
        k.a j10 = k.f41787a.j();
        int skuType = this.f43337i.getSkuType();
        String skuProductId = this.f43337i.getSkuProductId();
        String skuModelConfigId = this.f43337i.getSkuModelConfigId();
        if (skuModelConfigId == null) {
            skuModelConfigId = "";
        }
        int prizeId = this.f43337i.getPrizeId();
        String c10 = this.f43338j.c();
        String g10 = this.f43338j.g();
        String gpCurrencyCode = this.f43339k.getGpCurrencyCode();
        String gpPrice = this.f43339k.getGpPrice();
        int shortsId = this.f43337i.getShortsId();
        int dramaId = this.f43337i.getDramaId();
        int unlockingEpisodes = this.f43337i.getUnlockingEpisodes();
        String extra = this.f43337i.getExtra();
        if (extra == null) {
            str = "";
        } else {
            str = extra;
        }
        String e10 = p.f41802a.e();
        this.f43336h = 1;
        Object j11 = j10.j(skuType, skuProductId, skuModelConfigId, prizeId, c10, g10, gpCurrencyCode, gpPrice, shortsId, dramaId, unlockingEpisodes, str, e10, this);
        if (j11 == f10) {
            return f10;
        }
        return j11;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<GPayExchangeCoinsResult>> cVar) {
        return ((PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
