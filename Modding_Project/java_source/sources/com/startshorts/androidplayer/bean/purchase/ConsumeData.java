package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConsumeData.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ConsumeData {
    @NotNull
    private String productType;
    @NotNull
    private String purchaseToken;

    public ConsumeData(@NotNull String productType, @NotNull String purchaseToken) {
        Intrinsics.checkNotNullParameter(productType, "productType");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        this.productType = productType;
        this.purchaseToken = purchaseToken;
    }

    public static /* synthetic */ ConsumeData copy$default(ConsumeData consumeData, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = consumeData.productType;
        }
        if ((i10 & 2) != 0) {
            str2 = consumeData.purchaseToken;
        }
        return consumeData.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.productType;
    }

    @NotNull
    public final String component2() {
        return this.purchaseToken;
    }

    @NotNull
    public final ConsumeData copy(@NotNull String productType, @NotNull String purchaseToken) {
        Intrinsics.checkNotNullParameter(productType, "productType");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        return new ConsumeData(productType, purchaseToken);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConsumeData)) {
            return false;
        }
        ConsumeData consumeData = (ConsumeData) obj;
        if (Intrinsics.areEqual(this.productType, consumeData.productType) && Intrinsics.areEqual(this.purchaseToken, consumeData.purchaseToken)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getProductType() {
        return this.productType;
    }

    @NotNull
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public int hashCode() {
        return (this.productType.hashCode() * 31) + this.purchaseToken.hashCode();
    }

    public final void setProductType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productType = str;
    }

    public final void setPurchaseToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purchaseToken = str;
    }

    @NotNull
    public String toString() {
        return "ConsumeData(productType=" + this.productType + ", purchaseToken=" + this.purchaseToken + ')';
    }
}
