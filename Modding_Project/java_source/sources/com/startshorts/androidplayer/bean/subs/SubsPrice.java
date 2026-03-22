package com.startshorts.androidplayer.bean.subs;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsPrice.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsPrice {
    private final int billingCycleCount;
    @NotNull
    private final String discountCurrencyCode;
    @NotNull
    private final String discountPrice;
    private final long discountPriceAmountMicros;
    @NotNull
    private final String originCurrencyCode;
    @NotNull
    private final String originPrice;
    private final long originPriceAmountMicros;

    public SubsPrice(@NotNull String originCurrencyCode, @NotNull String originPrice, long j10, @NotNull String discountCurrencyCode, @NotNull String discountPrice, long j11, int i10) {
        Intrinsics.checkNotNullParameter(originCurrencyCode, "originCurrencyCode");
        Intrinsics.checkNotNullParameter(originPrice, "originPrice");
        Intrinsics.checkNotNullParameter(discountCurrencyCode, "discountCurrencyCode");
        Intrinsics.checkNotNullParameter(discountPrice, "discountPrice");
        this.originCurrencyCode = originCurrencyCode;
        this.originPrice = originPrice;
        this.originPriceAmountMicros = j10;
        this.discountCurrencyCode = discountCurrencyCode;
        this.discountPrice = discountPrice;
        this.discountPriceAmountMicros = j11;
        this.billingCycleCount = i10;
    }

    public static /* synthetic */ SubsPrice copy$default(SubsPrice subsPrice, String str, String str2, long j10, String str3, String str4, long j11, int i10, int i11, Object obj) {
        String str5;
        String str6;
        long j12;
        String str7;
        String str8;
        long j13;
        int i12;
        if ((i11 & 1) != 0) {
            str5 = subsPrice.originCurrencyCode;
        } else {
            str5 = str;
        }
        if ((i11 & 2) != 0) {
            str6 = subsPrice.originPrice;
        } else {
            str6 = str2;
        }
        if ((i11 & 4) != 0) {
            j12 = subsPrice.originPriceAmountMicros;
        } else {
            j12 = j10;
        }
        if ((i11 & 8) != 0) {
            str7 = subsPrice.discountCurrencyCode;
        } else {
            str7 = str3;
        }
        if ((i11 & 16) != 0) {
            str8 = subsPrice.discountPrice;
        } else {
            str8 = str4;
        }
        if ((i11 & 32) != 0) {
            j13 = subsPrice.discountPriceAmountMicros;
        } else {
            j13 = j11;
        }
        if ((i11 & 64) != 0) {
            i12 = subsPrice.billingCycleCount;
        } else {
            i12 = i10;
        }
        return subsPrice.copy(str5, str6, j12, str7, str8, j13, i12);
    }

    @NotNull
    public final String component1() {
        return this.originCurrencyCode;
    }

    @NotNull
    public final String component2() {
        return this.originPrice;
    }

    public final long component3() {
        return this.originPriceAmountMicros;
    }

    @NotNull
    public final String component4() {
        return this.discountCurrencyCode;
    }

    @NotNull
    public final String component5() {
        return this.discountPrice;
    }

    public final long component6() {
        return this.discountPriceAmountMicros;
    }

    public final int component7() {
        return this.billingCycleCount;
    }

    @NotNull
    public final SubsPrice copy(@NotNull String originCurrencyCode, @NotNull String originPrice, long j10, @NotNull String discountCurrencyCode, @NotNull String discountPrice, long j11, int i10) {
        Intrinsics.checkNotNullParameter(originCurrencyCode, "originCurrencyCode");
        Intrinsics.checkNotNullParameter(originPrice, "originPrice");
        Intrinsics.checkNotNullParameter(discountCurrencyCode, "discountCurrencyCode");
        Intrinsics.checkNotNullParameter(discountPrice, "discountPrice");
        return new SubsPrice(originCurrencyCode, originPrice, j10, discountCurrencyCode, discountPrice, j11, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubsPrice)) {
            return false;
        }
        SubsPrice subsPrice = (SubsPrice) obj;
        if (Intrinsics.areEqual(this.originCurrencyCode, subsPrice.originCurrencyCode) && Intrinsics.areEqual(this.originPrice, subsPrice.originPrice) && this.originPriceAmountMicros == subsPrice.originPriceAmountMicros && Intrinsics.areEqual(this.discountCurrencyCode, subsPrice.discountCurrencyCode) && Intrinsics.areEqual(this.discountPrice, subsPrice.discountPrice) && this.discountPriceAmountMicros == subsPrice.discountPriceAmountMicros && this.billingCycleCount == subsPrice.billingCycleCount) {
            return true;
        }
        return false;
    }

    public final int getBillingCycleCount() {
        return this.billingCycleCount;
    }

    @NotNull
    public final String getDiscountCurrencyCode() {
        return this.discountCurrencyCode;
    }

    @NotNull
    public final String getDiscountPrice() {
        return this.discountPrice;
    }

    public final long getDiscountPriceAmountMicros() {
        return this.discountPriceAmountMicros;
    }

    @NotNull
    public final String getOriginCurrencyCode() {
        return this.originCurrencyCode;
    }

    @NotNull
    public final String getOriginPrice() {
        return this.originPrice;
    }

    public final long getOriginPriceAmountMicros() {
        return this.originPriceAmountMicros;
    }

    public int hashCode() {
        return (((((((((((this.originCurrencyCode.hashCode() * 31) + this.originPrice.hashCode()) * 31) + Long.hashCode(this.originPriceAmountMicros)) * 31) + this.discountCurrencyCode.hashCode()) * 31) + this.discountPrice.hashCode()) * 31) + Long.hashCode(this.discountPriceAmountMicros)) * 31) + Integer.hashCode(this.billingCycleCount);
    }

    @NotNull
    public String toString() {
        return "SubsPrice(originCurrencyCode=" + this.originCurrencyCode + ", originPrice=" + this.originPrice + ", originPriceAmountMicros=" + this.originPriceAmountMicros + ", discountCurrencyCode=" + this.discountCurrencyCode + ", discountPrice=" + this.discountPrice + ", discountPriceAmountMicros=" + this.discountPriceAmountMicros + ", billingCycleCount=" + this.billingCycleCount + ')';
    }
}
