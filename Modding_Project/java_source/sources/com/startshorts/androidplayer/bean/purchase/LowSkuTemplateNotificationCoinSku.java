package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
/* compiled from: LowSkuTemplateNotificationCoinSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LowSkuTemplateNotificationCoinSku extends CoinSku {
    private int skuType = 1000;

    @Override // com.startshorts.androidplayer.bean.purchase.CoinSku
    public int getSkuType() {
        return this.skuType;
    }

    @Override // com.startshorts.androidplayer.bean.purchase.CoinSku
    public void setSkuType(int i10) {
        this.skuType = i10;
    }
}
