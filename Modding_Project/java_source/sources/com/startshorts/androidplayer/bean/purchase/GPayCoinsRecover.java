package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPayCoinsRecover.kt */
@Metadata
/* loaded from: classes6.dex */
public final class GPayCoinsRecover {
    @NotNull
    private final String currency;
    @Nullable
    private final String orderNo;
    @NotNull
    private final String price;
    @NotNull
    private final String purchaseData;
    private final int shortPlayId;
    @NotNull
    private final String signature;
    @NotNull
    private final String skuId;
    @Nullable
    private final String skuProductId;
    private final int skuType;

    public GPayCoinsRecover(int i10, @NotNull String skuId, @Nullable String str, @NotNull String purchaseData, @NotNull String signature, @Nullable String str2, @NotNull String currency, @NotNull String price, int i11) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        Intrinsics.checkNotNullParameter(purchaseData, "purchaseData");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(price, "price");
        this.skuType = i10;
        this.skuId = skuId;
        this.skuProductId = str;
        this.purchaseData = purchaseData;
        this.signature = signature;
        this.orderNo = str2;
        this.currency = currency;
        this.price = price;
        this.shortPlayId = i11;
    }

    public static /* synthetic */ GPayCoinsRecover copy$default(GPayCoinsRecover gPayCoinsRecover, int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i11, int i12, Object obj) {
        int i13;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        int i14;
        if ((i12 & 1) != 0) {
            i13 = gPayCoinsRecover.skuType;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            str8 = gPayCoinsRecover.skuId;
        } else {
            str8 = str;
        }
        if ((i12 & 4) != 0) {
            str9 = gPayCoinsRecover.skuProductId;
        } else {
            str9 = str2;
        }
        if ((i12 & 8) != 0) {
            str10 = gPayCoinsRecover.purchaseData;
        } else {
            str10 = str3;
        }
        if ((i12 & 16) != 0) {
            str11 = gPayCoinsRecover.signature;
        } else {
            str11 = str4;
        }
        if ((i12 & 32) != 0) {
            str12 = gPayCoinsRecover.orderNo;
        } else {
            str12 = str5;
        }
        if ((i12 & 64) != 0) {
            str13 = gPayCoinsRecover.currency;
        } else {
            str13 = str6;
        }
        if ((i12 & 128) != 0) {
            str14 = gPayCoinsRecover.price;
        } else {
            str14 = str7;
        }
        if ((i12 & 256) != 0) {
            i14 = gPayCoinsRecover.shortPlayId;
        } else {
            i14 = i11;
        }
        return gPayCoinsRecover.copy(i13, str8, str9, str10, str11, str12, str13, str14, i14);
    }

    public final int component1() {
        return this.skuType;
    }

    @NotNull
    public final String component2() {
        return this.skuId;
    }

    @Nullable
    public final String component3() {
        return this.skuProductId;
    }

    @NotNull
    public final String component4() {
        return this.purchaseData;
    }

    @NotNull
    public final String component5() {
        return this.signature;
    }

    @Nullable
    public final String component6() {
        return this.orderNo;
    }

    @NotNull
    public final String component7() {
        return this.currency;
    }

    @NotNull
    public final String component8() {
        return this.price;
    }

    public final int component9() {
        return this.shortPlayId;
    }

    @NotNull
    public final GPayCoinsRecover copy(int i10, @NotNull String skuId, @Nullable String str, @NotNull String purchaseData, @NotNull String signature, @Nullable String str2, @NotNull String currency, @NotNull String price, int i11) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        Intrinsics.checkNotNullParameter(purchaseData, "purchaseData");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(price, "price");
        return new GPayCoinsRecover(i10, skuId, str, purchaseData, signature, str2, currency, price, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GPayCoinsRecover)) {
            return false;
        }
        GPayCoinsRecover gPayCoinsRecover = (GPayCoinsRecover) obj;
        if (this.skuType == gPayCoinsRecover.skuType && Intrinsics.areEqual(this.skuId, gPayCoinsRecover.skuId) && Intrinsics.areEqual(this.skuProductId, gPayCoinsRecover.skuProductId) && Intrinsics.areEqual(this.purchaseData, gPayCoinsRecover.purchaseData) && Intrinsics.areEqual(this.signature, gPayCoinsRecover.signature) && Intrinsics.areEqual(this.orderNo, gPayCoinsRecover.orderNo) && Intrinsics.areEqual(this.currency, gPayCoinsRecover.currency) && Intrinsics.areEqual(this.price, gPayCoinsRecover.price) && this.shortPlayId == gPayCoinsRecover.shortPlayId) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCurrency() {
        return this.currency;
    }

    @Nullable
    public final String getOrderNo() {
        return this.orderNo;
    }

    @NotNull
    public final String getPrice() {
        return this.price;
    }

    @NotNull
    public final String getPurchaseData() {
        return this.purchaseData;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @NotNull
    public final String getSignature() {
        return this.signature;
    }

    @NotNull
    public final String getSkuId() {
        return this.skuId;
    }

    @Nullable
    public final String getSkuProductId() {
        return this.skuProductId;
    }

    public final int getSkuType() {
        return this.skuType;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((Integer.hashCode(this.skuType) * 31) + this.skuId.hashCode()) * 31;
        String str = this.skuProductId;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode3 = (((((hashCode2 + hashCode) * 31) + this.purchaseData.hashCode()) * 31) + this.signature.hashCode()) * 31;
        String str2 = this.orderNo;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return ((((((hashCode3 + i10) * 31) + this.currency.hashCode()) * 31) + this.price.hashCode()) * 31) + Integer.hashCode(this.shortPlayId);
    }

    public final boolean isExpansion() {
        if (this.skuType == 7) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return "GPayCoinsRecover(skuType=" + this.skuType + ", skuId=" + this.skuId + ", skuProductId=" + this.skuProductId + ", purchaseData=" + this.purchaseData + ", signature=" + this.signature + ", orderNo=" + this.orderNo + ", currency=" + this.currency + ", price=" + this.price + ", shortPlayId=" + this.shortPlayId + ')';
    }
}
