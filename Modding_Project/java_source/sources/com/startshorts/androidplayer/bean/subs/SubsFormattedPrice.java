package com.startshorts.androidplayer.bean.subs;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsFormattedPrice.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsFormattedPrice {
    @NotNull
    private final String currencyCode;
    @NotNull
    private final String discountPrice;
    @NotNull
    private final String originPrice;

    public SubsFormattedPrice(@NotNull String originPrice, @NotNull String discountPrice, @NotNull String currencyCode) {
        Intrinsics.checkNotNullParameter(originPrice, "originPrice");
        Intrinsics.checkNotNullParameter(discountPrice, "discountPrice");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        this.originPrice = originPrice;
        this.discountPrice = discountPrice;
        this.currencyCode = currencyCode;
    }

    public static /* synthetic */ SubsFormattedPrice copy$default(SubsFormattedPrice subsFormattedPrice, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = subsFormattedPrice.originPrice;
        }
        if ((i10 & 2) != 0) {
            str2 = subsFormattedPrice.discountPrice;
        }
        if ((i10 & 4) != 0) {
            str3 = subsFormattedPrice.currencyCode;
        }
        return subsFormattedPrice.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.originPrice;
    }

    @NotNull
    public final String component2() {
        return this.discountPrice;
    }

    @NotNull
    public final String component3() {
        return this.currencyCode;
    }

    @NotNull
    public final SubsFormattedPrice copy(@NotNull String originPrice, @NotNull String discountPrice, @NotNull String currencyCode) {
        Intrinsics.checkNotNullParameter(originPrice, "originPrice");
        Intrinsics.checkNotNullParameter(discountPrice, "discountPrice");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        return new SubsFormattedPrice(originPrice, discountPrice, currencyCode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubsFormattedPrice)) {
            return false;
        }
        SubsFormattedPrice subsFormattedPrice = (SubsFormattedPrice) obj;
        if (Intrinsics.areEqual(this.originPrice, subsFormattedPrice.originPrice) && Intrinsics.areEqual(this.discountPrice, subsFormattedPrice.discountPrice) && Intrinsics.areEqual(this.currencyCode, subsFormattedPrice.currencyCode)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCurrencyCode() {
        return this.currencyCode;
    }

    @NotNull
    public final String getDiscountPrice() {
        return this.discountPrice;
    }

    @NotNull
    public final String getOriginPrice() {
        return this.originPrice;
    }

    public int hashCode() {
        return (((this.originPrice.hashCode() * 31) + this.discountPrice.hashCode()) * 31) + this.currencyCode.hashCode();
    }

    @NotNull
    public String toString() {
        return "SubsFormattedPrice(originPrice=" + this.originPrice + ", discountPrice=" + this.discountPrice + ", currencyCode=" + this.currencyCode + ')';
    }
}
