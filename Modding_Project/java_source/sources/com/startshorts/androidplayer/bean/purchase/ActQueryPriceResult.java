package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActQueryPriceResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActQueryPriceResult {
    @NotNull
    private final String discountPrice;
    @NotNull
    private final String originPrice;
    @NotNull
    private final String renewPrice;
    @NotNull
    private final String skuId;

    public ActQueryPriceResult(@NotNull String skuId, @NotNull String originPrice, @NotNull String discountPrice, @NotNull String renewPrice) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        Intrinsics.checkNotNullParameter(originPrice, "originPrice");
        Intrinsics.checkNotNullParameter(discountPrice, "discountPrice");
        Intrinsics.checkNotNullParameter(renewPrice, "renewPrice");
        this.skuId = skuId;
        this.originPrice = originPrice;
        this.discountPrice = discountPrice;
        this.renewPrice = renewPrice;
    }

    public static /* synthetic */ ActQueryPriceResult copy$default(ActQueryPriceResult actQueryPriceResult, String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = actQueryPriceResult.skuId;
        }
        if ((i10 & 2) != 0) {
            str2 = actQueryPriceResult.originPrice;
        }
        if ((i10 & 4) != 0) {
            str3 = actQueryPriceResult.discountPrice;
        }
        if ((i10 & 8) != 0) {
            str4 = actQueryPriceResult.renewPrice;
        }
        return actQueryPriceResult.copy(str, str2, str3, str4);
    }

    @NotNull
    public final String component1() {
        return this.skuId;
    }

    @NotNull
    public final String component2() {
        return this.originPrice;
    }

    @NotNull
    public final String component3() {
        return this.discountPrice;
    }

    @NotNull
    public final String component4() {
        return this.renewPrice;
    }

    @NotNull
    public final ActQueryPriceResult copy(@NotNull String skuId, @NotNull String originPrice, @NotNull String discountPrice, @NotNull String renewPrice) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        Intrinsics.checkNotNullParameter(originPrice, "originPrice");
        Intrinsics.checkNotNullParameter(discountPrice, "discountPrice");
        Intrinsics.checkNotNullParameter(renewPrice, "renewPrice");
        return new ActQueryPriceResult(skuId, originPrice, discountPrice, renewPrice);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActQueryPriceResult)) {
            return false;
        }
        ActQueryPriceResult actQueryPriceResult = (ActQueryPriceResult) obj;
        if (Intrinsics.areEqual(this.skuId, actQueryPriceResult.skuId) && Intrinsics.areEqual(this.originPrice, actQueryPriceResult.originPrice) && Intrinsics.areEqual(this.discountPrice, actQueryPriceResult.discountPrice) && Intrinsics.areEqual(this.renewPrice, actQueryPriceResult.renewPrice)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDiscountPrice() {
        return this.discountPrice;
    }

    @NotNull
    public final String getOriginPrice() {
        return this.originPrice;
    }

    @NotNull
    public final String getRenewPrice() {
        return this.renewPrice;
    }

    @NotNull
    public final String getSkuId() {
        return this.skuId;
    }

    public int hashCode() {
        return (((((this.skuId.hashCode() * 31) + this.originPrice.hashCode()) * 31) + this.discountPrice.hashCode()) * 31) + this.renewPrice.hashCode();
    }

    @NotNull
    public String toString() {
        return "ActQueryPriceResult(skuId=" + this.skuId + ", originPrice=" + this.originPrice + ", discountPrice=" + this.discountPrice + ", renewPrice=" + this.renewPrice + ')';
    }
}
