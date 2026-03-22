package com.startshorts.androidplayer.bean.discount;

import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BestSubscriptionDiscountInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BestSubscriptionDiscountInfo implements Serializable {
    @Nullable
    private SubsSku subscriptionDiscountProduct;

    public BestSubscriptionDiscountInfo(@Nullable SubsSku subsSku) {
        this.subscriptionDiscountProduct = subsSku;
    }

    public static /* synthetic */ BestSubscriptionDiscountInfo copy$default(BestSubscriptionDiscountInfo bestSubscriptionDiscountInfo, SubsSku subsSku, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            subsSku = bestSubscriptionDiscountInfo.subscriptionDiscountProduct;
        }
        return bestSubscriptionDiscountInfo.copy(subsSku);
    }

    @Nullable
    public final SubsSku component1() {
        return this.subscriptionDiscountProduct;
    }

    @NotNull
    public final BestSubscriptionDiscountInfo copy(@Nullable SubsSku subsSku) {
        return new BestSubscriptionDiscountInfo(subsSku);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BestSubscriptionDiscountInfo) && Intrinsics.areEqual(this.subscriptionDiscountProduct, ((BestSubscriptionDiscountInfo) obj).subscriptionDiscountProduct)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final SubsSku getSubscriptionDiscountProduct() {
        return this.subscriptionDiscountProduct;
    }

    public int hashCode() {
        SubsSku subsSku = this.subscriptionDiscountProduct;
        if (subsSku == null) {
            return 0;
        }
        return subsSku.hashCode();
    }

    public final void setSubscriptionDiscountProduct(@Nullable SubsSku subsSku) {
        this.subscriptionDiscountProduct = subsSku;
    }

    @NotNull
    public String toString() {
        return "BestSubscriptionDiscountInfo(subscriptionDiscountProduct=" + this.subscriptionDiscountProduct + ')';
    }
}
