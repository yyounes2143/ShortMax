package com.startshorts.androidplayer.bean.order;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OtherOrderBodyRequest.kt */
@Metadata
/* loaded from: classes6.dex */
public final class OtherOrderBodyRequest {
    private final int businessType;
    @Nullable
    private final String countryCode;
    @Nullable
    private final String currencyUnit;
    @Nullable
    private final String episode;
    @Nullable
    private final String productId;
    @NotNull
    private final String requestSource;
    @Nullable
    private final String shortPlayId;
    @Nullable
    private final String skuId;
    @Nullable
    private final String skuModuleConfigId;
    @Nullable
    private final String userCode;

    public OtherOrderBodyRequest(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @NotNull String requestSource, @Nullable String str8) {
        Intrinsics.checkNotNullParameter(requestSource, "requestSource");
        this.businessType = i10;
        this.skuModuleConfigId = str;
        this.productId = str2;
        this.skuId = str3;
        this.shortPlayId = str4;
        this.episode = str5;
        this.userCode = str6;
        this.currencyUnit = str7;
        this.requestSource = requestSource;
        this.countryCode = str8;
    }

    public static /* synthetic */ OtherOrderBodyRequest copy$default(OtherOrderBodyRequest otherOrderBodyRequest, int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i11, Object obj) {
        int i12;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        if ((i11 & 1) != 0) {
            i12 = otherOrderBodyRequest.businessType;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            str10 = otherOrderBodyRequest.skuModuleConfigId;
        } else {
            str10 = str;
        }
        if ((i11 & 4) != 0) {
            str11 = otherOrderBodyRequest.productId;
        } else {
            str11 = str2;
        }
        if ((i11 & 8) != 0) {
            str12 = otherOrderBodyRequest.skuId;
        } else {
            str12 = str3;
        }
        if ((i11 & 16) != 0) {
            str13 = otherOrderBodyRequest.shortPlayId;
        } else {
            str13 = str4;
        }
        if ((i11 & 32) != 0) {
            str14 = otherOrderBodyRequest.episode;
        } else {
            str14 = str5;
        }
        if ((i11 & 64) != 0) {
            str15 = otherOrderBodyRequest.userCode;
        } else {
            str15 = str6;
        }
        if ((i11 & 128) != 0) {
            str16 = otherOrderBodyRequest.currencyUnit;
        } else {
            str16 = str7;
        }
        if ((i11 & 256) != 0) {
            str17 = otherOrderBodyRequest.requestSource;
        } else {
            str17 = str8;
        }
        if ((i11 & 512) != 0) {
            str18 = otherOrderBodyRequest.countryCode;
        } else {
            str18 = str9;
        }
        return otherOrderBodyRequest.copy(i12, str10, str11, str12, str13, str14, str15, str16, str17, str18);
    }

    public final int component1() {
        return this.businessType;
    }

    @Nullable
    public final String component10() {
        return this.countryCode;
    }

    @Nullable
    public final String component2() {
        return this.skuModuleConfigId;
    }

    @Nullable
    public final String component3() {
        return this.productId;
    }

    @Nullable
    public final String component4() {
        return this.skuId;
    }

    @Nullable
    public final String component5() {
        return this.shortPlayId;
    }

    @Nullable
    public final String component6() {
        return this.episode;
    }

    @Nullable
    public final String component7() {
        return this.userCode;
    }

    @Nullable
    public final String component8() {
        return this.currencyUnit;
    }

    @NotNull
    public final String component9() {
        return this.requestSource;
    }

    @NotNull
    public final OtherOrderBodyRequest copy(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @NotNull String requestSource, @Nullable String str8) {
        Intrinsics.checkNotNullParameter(requestSource, "requestSource");
        return new OtherOrderBodyRequest(i10, str, str2, str3, str4, str5, str6, str7, requestSource, str8);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OtherOrderBodyRequest)) {
            return false;
        }
        OtherOrderBodyRequest otherOrderBodyRequest = (OtherOrderBodyRequest) obj;
        if (this.businessType == otherOrderBodyRequest.businessType && Intrinsics.areEqual(this.skuModuleConfigId, otherOrderBodyRequest.skuModuleConfigId) && Intrinsics.areEqual(this.productId, otherOrderBodyRequest.productId) && Intrinsics.areEqual(this.skuId, otherOrderBodyRequest.skuId) && Intrinsics.areEqual(this.shortPlayId, otherOrderBodyRequest.shortPlayId) && Intrinsics.areEqual(this.episode, otherOrderBodyRequest.episode) && Intrinsics.areEqual(this.userCode, otherOrderBodyRequest.userCode) && Intrinsics.areEqual(this.currencyUnit, otherOrderBodyRequest.currencyUnit) && Intrinsics.areEqual(this.requestSource, otherOrderBodyRequest.requestSource) && Intrinsics.areEqual(this.countryCode, otherOrderBodyRequest.countryCode)) {
            return true;
        }
        return false;
    }

    public final int getBusinessType() {
        return this.businessType;
    }

    @Nullable
    public final String getCountryCode() {
        return this.countryCode;
    }

    @Nullable
    public final String getCurrencyUnit() {
        return this.currencyUnit;
    }

    @Nullable
    public final String getEpisode() {
        return this.episode;
    }

    @Nullable
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    public final String getRequestSource() {
        return this.requestSource;
    }

    @Nullable
    public final String getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getSkuId() {
        return this.skuId;
    }

    @Nullable
    public final String getSkuModuleConfigId() {
        return this.skuModuleConfigId;
    }

    @Nullable
    public final String getUserCode() {
        return this.userCode;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8 = Integer.hashCode(this.businessType) * 31;
        String str = this.skuModuleConfigId;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode8 + hashCode) * 31;
        String str2 = this.productId;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.skuId;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str4 = this.shortPlayId;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        String str5 = this.episode;
        if (str5 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str5.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        String str6 = this.userCode;
        if (str6 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str6.hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        String str7 = this.currencyUnit;
        if (str7 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str7.hashCode();
        }
        int hashCode9 = (((i16 + hashCode7) * 31) + this.requestSource.hashCode()) * 31;
        String str8 = this.countryCode;
        if (str8 != null) {
            i10 = str8.hashCode();
        }
        return hashCode9 + i10;
    }

    @NotNull
    public String toString() {
        return "OtherOrderBodyRequest(businessType=" + this.businessType + ", skuModuleConfigId=" + this.skuModuleConfigId + ", productId=" + this.productId + ", skuId=" + this.skuId + ", shortPlayId=" + this.shortPlayId + ", episode=" + this.episode + ", userCode=" + this.userCode + ", currencyUnit=" + this.currencyUnit + ", requestSource=" + this.requestSource + ", countryCode=" + this.countryCode + ')';
    }

    public /* synthetic */ OtherOrderBodyRequest(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, str2, str3, str4, str5, str6, str7, (i11 & 256) != 0 ? "native" : str8, str9);
    }
}
