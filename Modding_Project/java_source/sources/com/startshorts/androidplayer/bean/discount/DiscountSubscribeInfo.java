package com.startshorts.androidplayer.bean.discount;

import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscountSubscribeInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscountSubscribeInfo implements Serializable {
    @Nullable
    private String discountTitle;
    @Nullable
    private SubsSku subscribeSkuResponse;

    public DiscountSubscribeInfo(@Nullable String str, @Nullable SubsSku subsSku) {
        this.discountTitle = str;
        this.subscribeSkuResponse = subsSku;
    }

    public static /* synthetic */ DiscountSubscribeInfo copy$default(DiscountSubscribeInfo discountSubscribeInfo, String str, SubsSku subsSku, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = discountSubscribeInfo.discountTitle;
        }
        if ((i10 & 2) != 0) {
            subsSku = discountSubscribeInfo.subscribeSkuResponse;
        }
        return discountSubscribeInfo.copy(str, subsSku);
    }

    @Nullable
    public final String component1() {
        return this.discountTitle;
    }

    @Nullable
    public final SubsSku component2() {
        return this.subscribeSkuResponse;
    }

    @NotNull
    public final DiscountSubscribeInfo copy(@Nullable String str, @Nullable SubsSku subsSku) {
        return new DiscountSubscribeInfo(str, subsSku);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DiscountSubscribeInfo)) {
            return false;
        }
        DiscountSubscribeInfo discountSubscribeInfo = (DiscountSubscribeInfo) obj;
        if (Intrinsics.areEqual(this.discountTitle, discountSubscribeInfo.discountTitle) && Intrinsics.areEqual(this.subscribeSkuResponse, discountSubscribeInfo.subscribeSkuResponse)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getDiscountTitle() {
        return this.discountTitle;
    }

    @Nullable
    public final SubsSku getSubscribeSkuResponse() {
        return this.subscribeSkuResponse;
    }

    public int hashCode() {
        int hashCode;
        String str = this.discountTitle;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        SubsSku subsSku = this.subscribeSkuResponse;
        if (subsSku != null) {
            i10 = subsSku.hashCode();
        }
        return i11 + i10;
    }

    public final void setDiscountTitle(@Nullable String str) {
        this.discountTitle = str;
    }

    public final void setSubscribeSkuResponse(@Nullable SubsSku subsSku) {
        this.subscribeSkuResponse = subsSku;
    }

    @NotNull
    public String toString() {
        return "DiscountSubscribeInfo(discountTitle=" + this.discountTitle + ", subscribeSkuResponse=" + this.subscribeSkuResponse + ')';
    }
}
