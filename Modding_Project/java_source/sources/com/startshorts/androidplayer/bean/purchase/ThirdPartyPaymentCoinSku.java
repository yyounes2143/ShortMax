package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThirdPartyPaymentCoinSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ThirdPartyPaymentCoinSku extends CoinSku {
    @Nullable
    private ThirdPartyPaymentSkuResult result;
    private int skuType;

    public ThirdPartyPaymentCoinSku() {
        this(null, 1, null);
    }

    @Nullable
    public final ThirdPartyPaymentSkuResult getResult() {
        return this.result;
    }

    @Override // com.startshorts.androidplayer.bean.purchase.CoinSku
    public int getSkuType() {
        return this.skuType;
    }

    public final void setResult(@Nullable ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult) {
        this.result = thirdPartyPaymentSkuResult;
    }

    @Override // com.startshorts.androidplayer.bean.purchase.CoinSku
    public void setSkuType(int i10) {
        this.skuType = i10;
    }

    public ThirdPartyPaymentCoinSku(@Nullable ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult) {
        this.result = thirdPartyPaymentSkuResult;
        this.skuType = 999;
    }

    public /* synthetic */ ThirdPartyPaymentCoinSku(ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : thirdPartyPaymentSkuResult);
    }
}
