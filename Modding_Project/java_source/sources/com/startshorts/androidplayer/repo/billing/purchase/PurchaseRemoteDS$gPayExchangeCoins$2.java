package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayExchangeCoinsResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
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
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$2", f = "PurchaseRemoteDS.kt", l = {51}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$gPayExchangeCoins$2 extends SuspendLambda implements Function1<c<? super ServerResult<GPayExchangeCoinsResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43348h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CoinSku f43349i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ f f43350j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ GPayPriceInfo f43351k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f43352l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$gPayExchangeCoins$2(CoinSku coinSku, f fVar, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode, c<? super PurchaseRemoteDS$gPayExchangeCoins$2> cVar) {
        super(1, cVar);
        this.f43349i = coinSku;
        this.f43350j = fVar;
        this.f43351k = gPayPriceInfo;
        this.f43352l = baseEpisode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PurchaseRemoteDS$gPayExchangeCoins$2(this.f43349i, this.f43350j, this.f43351k, this.f43352l, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Integer num;
        Integer num2;
        Object f10 = a.f();
        int i10 = this.f43348h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.f.b(obj);
        k.a j10 = k.f41787a.j();
        int skuType = this.f43349i.getSkuType();
        String skuProductId = this.f43349i.getSkuProductId();
        String skuModelConfigId = this.f43349i.getSkuModelConfigId();
        String str = "";
        if (skuModelConfigId == null) {
            skuModelConfigId = "";
        }
        String activitySkuConfigId = this.f43349i.getActivitySkuConfigId();
        if (activitySkuConfigId != null) {
            str = activitySkuConfigId;
        }
        boolean isExpansion = this.f43349i.isExpansion();
        int prizeId = this.f43349i.getPrizeId();
        String c10 = this.f43350j.c();
        String g10 = this.f43350j.g();
        String gpCurrencyCode = this.f43351k.getGpCurrencyCode();
        String gpPrice = this.f43351k.getGpPrice();
        BaseEpisode baseEpisode = this.f43352l;
        if (baseEpisode != null) {
            num = kotlin.coroutines.jvm.internal.a.d(baseEpisode.getShortPlayId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f43352l;
        if (baseEpisode2 != null) {
            num2 = kotlin.coroutines.jvm.internal.a.d(baseEpisode2.getEpisodeNum());
        } else {
            num2 = null;
        }
        String e10 = p.f41802a.e();
        this.f43348h = 1;
        Object f12 = j10.f1(skuType, skuProductId, skuModelConfigId, str, isExpansion, prizeId, c10, g10, gpCurrencyCode, gpPrice, num, num2, e10, this);
        if (f12 == f10) {
            return f10;
        }
        return f12;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<GPayExchangeCoinsResult>> cVar) {
        return ((PurchaseRemoteDS$gPayExchangeCoins$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
