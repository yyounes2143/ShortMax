package com.startshorts.androidplayer.bean.search;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RedeemCodeVip.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RedeemCodeVip {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int REDEMPTION_MEMBER_CANNOT_CLAIM = 32000;
    public static final int REDEMPTION_MEMBER_CODE_ALREADY_USED = 32001;
    @Nullable
    private final String code;
    @Nullable
    private final String msg;
    @Nullable
    private final String redemptionCode;
    @Nullable
    private final String skuId;
    @Nullable
    private final String subscriptionProductType;

    /* compiled from: RedeemCodeVip.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RedeemCodeVip(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.redemptionCode = str;
        this.skuId = str2;
        this.subscriptionProductType = str3;
        this.msg = str4;
        this.code = str5;
    }

    public static /* synthetic */ RedeemCodeVip copy$default(RedeemCodeVip redeemCodeVip, String str, String str2, String str3, String str4, String str5, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = redeemCodeVip.redemptionCode;
        }
        if ((i10 & 2) != 0) {
            str2 = redeemCodeVip.skuId;
        }
        String str6 = str2;
        if ((i10 & 4) != 0) {
            str3 = redeemCodeVip.subscriptionProductType;
        }
        String str7 = str3;
        if ((i10 & 8) != 0) {
            str4 = redeemCodeVip.msg;
        }
        String str8 = str4;
        if ((i10 & 16) != 0) {
            str5 = redeemCodeVip.code;
        }
        return redeemCodeVip.copy(str, str6, str7, str8, str5);
    }

    @Nullable
    public final String component1() {
        return this.redemptionCode;
    }

    @Nullable
    public final String component2() {
        return this.skuId;
    }

    @Nullable
    public final String component3() {
        return this.subscriptionProductType;
    }

    @Nullable
    public final String component4() {
        return this.msg;
    }

    @Nullable
    public final String component5() {
        return this.code;
    }

    @NotNull
    public final RedeemCodeVip copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        return new RedeemCodeVip(str, str2, str3, str4, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RedeemCodeVip)) {
            return false;
        }
        RedeemCodeVip redeemCodeVip = (RedeemCodeVip) obj;
        if (Intrinsics.areEqual(this.redemptionCode, redeemCodeVip.redemptionCode) && Intrinsics.areEqual(this.skuId, redeemCodeVip.skuId) && Intrinsics.areEqual(this.subscriptionProductType, redeemCodeVip.subscriptionProductType) && Intrinsics.areEqual(this.msg, redeemCodeVip.msg) && Intrinsics.areEqual(this.code, redeemCodeVip.code)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    @Nullable
    public final String getMsg() {
        return this.msg;
    }

    @Nullable
    public final String getRedemptionCode() {
        return this.redemptionCode;
    }

    @Nullable
    public final String getSkuId() {
        return this.skuId;
    }

    @Nullable
    public final String getSubscriptionProductType() {
        return this.subscriptionProductType;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        String str = this.redemptionCode;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.skuId;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.subscriptionProductType;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str4 = this.msg;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        String str5 = this.code;
        if (str5 != null) {
            i10 = str5.hashCode();
        }
        return i14 + i10;
    }

    @NotNull
    public String toString() {
        return "RedeemCodeVip(redemptionCode=" + this.redemptionCode + ", skuId=" + this.skuId + ", subscriptionProductType=" + this.subscriptionProductType + ", msg=" + this.msg + ", code=" + this.code + ')';
    }
}
