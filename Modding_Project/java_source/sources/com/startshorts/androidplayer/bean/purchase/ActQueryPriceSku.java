package com.startshorts.androidplayer.bean.purchase;

import com.startshorts.androidplayer.repo.billing.BillingRepo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActQueryPriceSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActQueryPriceSku {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_IN_APP_PURCHASE = 1;
    public static final int TYPE_SUBSCRIPTION = 2;
    private final float discount;
    private boolean enableDiscountByGp;
    private final float firstAmount;
    private final boolean isFirstBuy;
    @NotNull
    private final String payAmount;
    @Nullable
    private String productId;
    @NotNull
    private final String skuId;
    private final int type;

    /* compiled from: ActQueryPriceSku.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ActQueryPriceSku(int i10, @NotNull String skuId, float f10, @NotNull String payAmount, float f11, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        Intrinsics.checkNotNullParameter(payAmount, "payAmount");
        this.type = i10;
        this.skuId = skuId;
        this.discount = f10;
        this.payAmount = payAmount;
        this.firstAmount = f11;
        this.isFirstBuy = z10;
        this.productId = str;
    }

    public static /* synthetic */ ActQueryPriceSku copy$default(ActQueryPriceSku actQueryPriceSku, int i10, String str, float f10, String str2, float f11, boolean z10, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = actQueryPriceSku.type;
        }
        if ((i11 & 2) != 0) {
            str = actQueryPriceSku.skuId;
        }
        String str4 = str;
        if ((i11 & 4) != 0) {
            f10 = actQueryPriceSku.discount;
        }
        float f12 = f10;
        if ((i11 & 8) != 0) {
            str2 = actQueryPriceSku.payAmount;
        }
        String str5 = str2;
        if ((i11 & 16) != 0) {
            f11 = actQueryPriceSku.firstAmount;
        }
        float f13 = f11;
        if ((i11 & 32) != 0) {
            z10 = actQueryPriceSku.isFirstBuy;
        }
        boolean z11 = z10;
        if ((i11 & 64) != 0) {
            str3 = actQueryPriceSku.productId;
        }
        return actQueryPriceSku.copy(i10, str4, f12, str5, f13, z11, str3);
    }

    public final int component1() {
        return this.type;
    }

    @NotNull
    public final String component2() {
        return this.skuId;
    }

    public final float component3() {
        return this.discount;
    }

    @NotNull
    public final String component4() {
        return this.payAmount;
    }

    public final float component5() {
        return this.firstAmount;
    }

    public final boolean component6() {
        return this.isFirstBuy;
    }

    @Nullable
    public final String component7() {
        return this.productId;
    }

    @NotNull
    public final ActQueryPriceSku copy(int i10, @NotNull String skuId, float f10, @NotNull String payAmount, float f11, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        Intrinsics.checkNotNullParameter(payAmount, "payAmount");
        return new ActQueryPriceSku(i10, skuId, f10, payAmount, f11, z10, str);
    }

    public final boolean enableDiscount() {
        return getEnableDiscountByGp();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActQueryPriceSku)) {
            return false;
        }
        ActQueryPriceSku actQueryPriceSku = (ActQueryPriceSku) obj;
        if (this.type == actQueryPriceSku.type && Intrinsics.areEqual(this.skuId, actQueryPriceSku.skuId) && Float.compare(this.discount, actQueryPriceSku.discount) == 0 && Intrinsics.areEqual(this.payAmount, actQueryPriceSku.payAmount) && Float.compare(this.firstAmount, actQueryPriceSku.firstAmount) == 0 && this.isFirstBuy == actQueryPriceSku.isFirstBuy && Intrinsics.areEqual(this.productId, actQueryPriceSku.productId)) {
            return true;
        }
        return false;
    }

    public final float getDiscount() {
        return this.discount;
    }

    public final boolean getEnableDiscountByGp() {
        if (BillingRepo.f43237a.C()) {
            return true;
        }
        return this.enableDiscountByGp;
    }

    public final float getFirstAmount() {
        return this.firstAmount;
    }

    @NotNull
    public final String getPayAmount() {
        return this.payAmount;
    }

    @Nullable
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    public final String getSkuId() {
        return this.skuId;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((((((((Integer.hashCode(this.type) * 31) + this.skuId.hashCode()) * 31) + Float.hashCode(this.discount)) * 31) + this.payAmount.hashCode()) * 31) + Float.hashCode(this.firstAmount)) * 31) + Boolean.hashCode(this.isFirstBuy)) * 31;
        String str = this.productId;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final boolean isFirstBuy() {
        return this.isFirstBuy;
    }

    public final boolean isSubscription() {
        if (this.type == 2) {
            return true;
        }
        return false;
    }

    public final void setEnableDiscountByGp(boolean z10) {
        this.enableDiscountByGp = z10;
    }

    public final void setProductId(@Nullable String str) {
        this.productId = str;
    }

    @NotNull
    public String toString() {
        return "ActQueryPriceSku(type=" + this.type + ", skuId=" + this.skuId + ", discount=" + this.discount + ", payAmount=" + this.payAmount + ", firstAmount=" + this.firstAmount + ", isFirstBuy=" + this.isFirstBuy + ", productId=" + this.productId + ')';
    }
}
