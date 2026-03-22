package com.startshorts.androidplayer.bean.order;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OtherOrderResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class OtherOrderResult {
    @Nullable
    private final String currencyCode;
    @Nullable
    private final String orderNo;
    @Nullable
    private final String price;
    @Nullable
    private final OtherOrderResp thirdResp;

    public OtherOrderResult() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ OtherOrderResult copy$default(OtherOrderResult otherOrderResult, OtherOrderResp otherOrderResp, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            otherOrderResp = otherOrderResult.thirdResp;
        }
        if ((i10 & 2) != 0) {
            str = otherOrderResult.orderNo;
        }
        if ((i10 & 4) != 0) {
            str2 = otherOrderResult.currencyCode;
        }
        if ((i10 & 8) != 0) {
            str3 = otherOrderResult.price;
        }
        return otherOrderResult.copy(otherOrderResp, str, str2, str3);
    }

    @Nullable
    public final OtherOrderResp component1() {
        return this.thirdResp;
    }

    @Nullable
    public final String component2() {
        return this.orderNo;
    }

    @Nullable
    public final String component3() {
        return this.currencyCode;
    }

    @Nullable
    public final String component4() {
        return this.price;
    }

    @NotNull
    public final OtherOrderResult copy(@Nullable OtherOrderResp otherOrderResp, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new OtherOrderResult(otherOrderResp, str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OtherOrderResult)) {
            return false;
        }
        OtherOrderResult otherOrderResult = (OtherOrderResult) obj;
        if (Intrinsics.areEqual(this.thirdResp, otherOrderResult.thirdResp) && Intrinsics.areEqual(this.orderNo, otherOrderResult.orderNo) && Intrinsics.areEqual(this.currencyCode, otherOrderResult.currencyCode) && Intrinsics.areEqual(this.price, otherOrderResult.price)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCurrencyCode() {
        return this.currencyCode;
    }

    @Nullable
    public final String getOrderNo() {
        return this.orderNo;
    }

    @Nullable
    public final String getPrice() {
        return this.price;
    }

    @Nullable
    public final OtherOrderResp getThirdResp() {
        return this.thirdResp;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        OtherOrderResp otherOrderResp = this.thirdResp;
        int i10 = 0;
        if (otherOrderResp == null) {
            hashCode = 0;
        } else {
            hashCode = otherOrderResp.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.orderNo;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.currencyCode;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str3 = this.price;
        if (str3 != null) {
            i10 = str3.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public String toString() {
        return "OtherOrderResult(thirdResp=" + this.thirdResp + ", orderNo=" + this.orderNo + ", currencyCode=" + this.currencyCode + ", price=" + this.price + ')';
    }

    public OtherOrderResult(@Nullable OtherOrderResp otherOrderResp, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.thirdResp = otherOrderResp;
        this.orderNo = str;
        this.currencyCode = str2;
        this.price = str3;
    }

    public /* synthetic */ OtherOrderResult(OtherOrderResp otherOrderResp, String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : otherOrderResp, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : str3);
    }
}
