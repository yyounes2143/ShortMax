package com.startshorts.androidplayer.bean.subs;

import com.startshorts.androidplayer.bean.purchase.CoinSku;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ad2PayResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Ad2PayConfig {
    @Nullable
    private final String currencySymbol;
    private final int cycle;
    private final int interval;
    @Nullable
    private final String originalPrice;
    @Nullable
    private final Integer productType;
    @Nullable
    private final CoinSku skuResp;
    @Nullable
    private final SubsSku subscribeResp;

    public Ad2PayConfig(@Nullable String str, int i10, int i11, @Nullable Integer num, @Nullable String str2, @Nullable CoinSku coinSku, @Nullable SubsSku subsSku) {
        this.currencySymbol = str;
        this.cycle = i10;
        this.interval = i11;
        this.productType = num;
        this.originalPrice = str2;
        this.skuResp = coinSku;
        this.subscribeResp = subsSku;
    }

    public static /* synthetic */ Ad2PayConfig copy$default(Ad2PayConfig ad2PayConfig, String str, int i10, int i11, Integer num, String str2, CoinSku coinSku, SubsSku subsSku, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = ad2PayConfig.currencySymbol;
        }
        if ((i12 & 2) != 0) {
            i10 = ad2PayConfig.cycle;
        }
        int i13 = i10;
        if ((i12 & 4) != 0) {
            i11 = ad2PayConfig.interval;
        }
        int i14 = i11;
        if ((i12 & 8) != 0) {
            num = ad2PayConfig.productType;
        }
        Integer num2 = num;
        if ((i12 & 16) != 0) {
            str2 = ad2PayConfig.originalPrice;
        }
        String str3 = str2;
        if ((i12 & 32) != 0) {
            coinSku = ad2PayConfig.skuResp;
        }
        CoinSku coinSku2 = coinSku;
        if ((i12 & 64) != 0) {
            subsSku = ad2PayConfig.subscribeResp;
        }
        return ad2PayConfig.copy(str, i13, i14, num2, str3, coinSku2, subsSku);
    }

    @Nullable
    public final String component1() {
        return this.currencySymbol;
    }

    public final int component2() {
        return this.cycle;
    }

    public final int component3() {
        return this.interval;
    }

    @Nullable
    public final Integer component4() {
        return this.productType;
    }

    @Nullable
    public final String component5() {
        return this.originalPrice;
    }

    @Nullable
    public final CoinSku component6() {
        return this.skuResp;
    }

    @Nullable
    public final SubsSku component7() {
        return this.subscribeResp;
    }

    @NotNull
    public final Ad2PayConfig copy(@Nullable String str, int i10, int i11, @Nullable Integer num, @Nullable String str2, @Nullable CoinSku coinSku, @Nullable SubsSku subsSku) {
        return new Ad2PayConfig(str, i10, i11, num, str2, coinSku, subsSku);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ad2PayConfig)) {
            return false;
        }
        Ad2PayConfig ad2PayConfig = (Ad2PayConfig) obj;
        if (Intrinsics.areEqual(this.currencySymbol, ad2PayConfig.currencySymbol) && this.cycle == ad2PayConfig.cycle && this.interval == ad2PayConfig.interval && Intrinsics.areEqual(this.productType, ad2PayConfig.productType) && Intrinsics.areEqual(this.originalPrice, ad2PayConfig.originalPrice) && Intrinsics.areEqual(this.skuResp, ad2PayConfig.skuResp) && Intrinsics.areEqual(this.subscribeResp, ad2PayConfig.subscribeResp)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    public final int getCycle() {
        return this.cycle;
    }

    public final int getInterval() {
        return this.interval;
    }

    @Nullable
    public final String getOriginalPrice() {
        return this.originalPrice;
    }

    @Nullable
    public final Integer getProductType() {
        return this.productType;
    }

    @Nullable
    public final CoinSku getSkuResp() {
        return this.skuResp;
    }

    @Nullable
    public final SubsSku getSubscribeResp() {
        return this.subscribeResp;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        String str = this.currencySymbol;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode5 = ((((hashCode * 31) + Integer.hashCode(this.cycle)) * 31) + Integer.hashCode(this.interval)) * 31;
        Integer num = this.productType;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i11 = (hashCode5 + hashCode2) * 31;
        String str2 = this.originalPrice;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i12 = (i11 + hashCode3) * 31;
        CoinSku coinSku = this.skuResp;
        if (coinSku == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = coinSku.hashCode();
        }
        int i13 = (i12 + hashCode4) * 31;
        SubsSku subsSku = this.subscribeResp;
        if (subsSku != null) {
            i10 = subsSku.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public String toString() {
        return "Ad2PayConfig(currencySymbol=" + this.currencySymbol + ", cycle=" + this.cycle + ", interval=" + this.interval + ", productType=" + this.productType + ", originalPrice=" + this.originalPrice + ", skuResp=" + this.skuResp + ", subscribeResp=" + this.subscribeResp + ')';
    }

    public /* synthetic */ Ad2PayConfig(String str, int i10, int i11, Integer num, String str2, CoinSku coinSku, SubsSku subsSku, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i12 & 2) != 0 ? 1 : i10, (i12 & 4) != 0 ? 1 : i11, num, str2, coinSku, subsSku);
    }
}
