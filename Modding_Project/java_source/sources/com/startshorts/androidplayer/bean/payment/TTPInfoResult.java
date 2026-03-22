package com.startshorts.androidplayer.bean.payment;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TTPInfoResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TTPInfoResult {
    @Nullable
    private final String currencyCode;
    @Nullable
    private final String orderNo;
    @Nullable
    private final Integer orderStatus;
    @Nullable
    private final String price;

    public TTPInfoResult(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.orderStatus = num;
        this.orderNo = str;
        this.currencyCode = str2;
        this.price = str3;
    }

    public static /* synthetic */ TTPInfoResult copy$default(TTPInfoResult tTPInfoResult, Integer num, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = tTPInfoResult.orderStatus;
        }
        if ((i10 & 2) != 0) {
            str = tTPInfoResult.orderNo;
        }
        if ((i10 & 4) != 0) {
            str2 = tTPInfoResult.currencyCode;
        }
        if ((i10 & 8) != 0) {
            str3 = tTPInfoResult.price;
        }
        return tTPInfoResult.copy(num, str, str2, str3);
    }

    @Nullable
    public final Integer component1() {
        return this.orderStatus;
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
    public final TTPInfoResult copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new TTPInfoResult(num, str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TTPInfoResult)) {
            return false;
        }
        TTPInfoResult tTPInfoResult = (TTPInfoResult) obj;
        if (Intrinsics.areEqual(this.orderStatus, tTPInfoResult.orderStatus) && Intrinsics.areEqual(this.orderNo, tTPInfoResult.orderNo) && Intrinsics.areEqual(this.currencyCode, tTPInfoResult.currencyCode) && Intrinsics.areEqual(this.price, tTPInfoResult.price)) {
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
    public final Integer getOrderStatus() {
        return this.orderStatus;
    }

    @Nullable
    public final String getPrice() {
        return this.price;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        Integer num = this.orderStatus;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
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
        return "TTPInfoResult(orderStatus=" + this.orderStatus + ", orderNo=" + this.orderNo + ", currencyCode=" + this.currencyCode + ", price=" + this.price + ')';
    }
}
