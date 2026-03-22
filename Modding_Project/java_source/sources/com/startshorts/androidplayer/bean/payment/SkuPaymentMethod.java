package com.startshorts.androidplayer.bean.payment;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import fk.u;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.e;
/* compiled from: SkuPaymentMethod.kt */
@Metadata
/* loaded from: classes6.dex */
public class SkuPaymentMethod extends SelectableItem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int LABEL_SKU_TYPE_COIN = 2;
    public static final int LABEL_SKU_TYPE_SUB = 1;
    public static final int PAY_TYPE_APPLE_PAY = 2;
    public static final int PAY_TYPE_GOOGLE_PAY = 1;
    public static final int PAY_TYPE_HW = 12;
    public static final int PAY_TYPE_OTHER = 99;
    public static final int PAY_TYPE_PAYPAL = 4;
    public static final int PAY_TYPE_STRIPE = 5;
    public static final int PAY_TYPE_XM = 11;
    @Nullable
    private final Integer bonus;
    @Nullable
    private final Integer coins;
    @Nullable
    private final String countryCode;
    @Nullable
    private final String currency;
    @Nullable
    private final String currencyUnit;
    @Nullable
    private final Integer discountPercent;
    private int discountPeriodNum;
    @Nullable
    private String discountPriceText;
    @Nullable
    private final Float firstAmount;
    @Nullable
    private final Boolean isFirstBuy;
    @Nullable
    private Integer labelDiscountPercent;
    @Nullable
    private final String labelIcon;
    @Nullable
    private Integer labelSkuType;
    @Nullable
    private final String logoGoldIcon;
    @Nullable
    private final String logoIcon;
    @Nullable
    private final String logoWhiteIcon;
    @Nullable
    private String originPriceText;
    @Nullable
    private final Float payAmount;
    @Nullable
    private final Integer payType;
    @Nullable
    private String payTypeName;
    @Nullable
    private final String planId;
    @Nullable
    private final Float pricePerDay;
    @Nullable
    private String productId;
    @Nullable
    private String rememberPaymentTip;
    @Nullable
    private String skuId;

    /* compiled from: SkuPaymentMethod.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String formatCycleCount(int i10, int i11) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            if (i11 != 6) {
                                if (i11 != 7) {
                                    return "";
                                }
                            }
                        }
                    }
                    return u.f51776a.e(R$string.sub_expansion_new_dialog_cycle_count_year, Integer.valueOf(i10));
                }
                return u.f51776a.e(R$string.sub_expansion_new_dialog_cycle_count_month, Integer.valueOf(i10));
            }
            return u.f51776a.e(R$string.sub_expansion_new_dialog_cycle_count_week, Integer.valueOf(i10));
        }

        private Companion() {
        }
    }

    public SkuPaymentMethod() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 8388607, null);
    }

    public static /* synthetic */ SkuPaymentMethod copy$default(SkuPaymentMethod skuPaymentMethod, String str, Integer num, Float f10, Float f11, Integer num2, Integer num3, String str2, String str3, String str4, String str5, Boolean bool, Integer num4, String str6, String str7, Float f12, Integer num5, Integer num6, String str8, String str9, int i10, Object obj) {
        String str10;
        Integer num7;
        Float f13;
        Float f14;
        Integer num8;
        Integer num9;
        String str11;
        String str12;
        String str13;
        String str14;
        Boolean bool2;
        Integer num10;
        String str15;
        String str16;
        Float f15;
        Integer num11;
        Integer num12;
        String str17;
        String str18;
        if (obj == null) {
            if ((i10 & 1) != 0) {
                str10 = skuPaymentMethod.skuId;
            } else {
                str10 = str;
            }
            if ((i10 & 2) != 0) {
                num7 = skuPaymentMethod.payType;
            } else {
                num7 = num;
            }
            if ((i10 & 4) != 0) {
                f13 = skuPaymentMethod.payAmount;
            } else {
                f13 = f10;
            }
            if ((i10 & 8) != 0) {
                f14 = skuPaymentMethod.firstAmount;
            } else {
                f14 = f11;
            }
            if ((i10 & 16) != 0) {
                num8 = skuPaymentMethod.bonus;
            } else {
                num8 = num2;
            }
            if ((i10 & 32) != 0) {
                num9 = skuPaymentMethod.coins;
            } else {
                num9 = num3;
            }
            if ((i10 & 64) != 0) {
                str11 = skuPaymentMethod.logoIcon;
            } else {
                str11 = str2;
            }
            if ((i10 & 128) != 0) {
                str12 = skuPaymentMethod.logoWhiteIcon;
            } else {
                str12 = str3;
            }
            if ((i10 & 256) != 0) {
                str13 = skuPaymentMethod.logoGoldIcon;
            } else {
                str13 = str4;
            }
            if ((i10 & 512) != 0) {
                str14 = skuPaymentMethod.labelIcon;
            } else {
                str14 = str5;
            }
            if ((i10 & 1024) != 0) {
                bool2 = skuPaymentMethod.isFirstBuy;
            } else {
                bool2 = bool;
            }
            if ((i10 & 2048) != 0) {
                num10 = skuPaymentMethod.discountPercent;
            } else {
                num10 = num4;
            }
            if ((i10 & 4096) != 0) {
                str15 = skuPaymentMethod.currency;
            } else {
                str15 = str6;
            }
            if ((i10 & 8192) != 0) {
                str16 = skuPaymentMethod.currencyUnit;
            } else {
                str16 = str7;
            }
            String str19 = str16;
            if ((i10 & 16384) != 0) {
                f15 = skuPaymentMethod.pricePerDay;
            } else {
                f15 = f12;
            }
            Float f16 = f15;
            if ((i10 & 32768) != 0) {
                num11 = skuPaymentMethod.labelDiscountPercent;
            } else {
                num11 = num5;
            }
            Integer num13 = num11;
            if ((i10 & 65536) != 0) {
                num12 = skuPaymentMethod.labelSkuType;
            } else {
                num12 = num6;
            }
            if ((i10 & 131072) != 0) {
                str17 = skuPaymentMethod.getOriginPriceText();
            } else {
                str17 = str8;
            }
            if ((i10 & 262144) != 0) {
                str18 = skuPaymentMethod.getDiscountPriceText();
            } else {
                str18 = str9;
            }
            return skuPaymentMethod.copy(str10, num7, f13, f14, num8, num9, str11, str12, str13, str14, bool2, num10, str15, str19, f16, num13, num12, str17, str18);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
    }

    public static /* synthetic */ String formatRenewPrice$default(SkuPaymentMethod skuPaymentMethod, Integer num, Boolean bool, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                bool = null;
            }
            return skuPaymentMethod.formatRenewPrice(num, bool);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: formatRenewPrice");
    }

    @NotNull
    public final SkuPaymentMethod copy(@Nullable String str, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Boolean bool, @Nullable Integer num4, @Nullable String str6, @Nullable String str7, @Nullable Float f12, @Nullable Integer num5, @Nullable Integer num6, @Nullable String str8, @Nullable String str9) {
        SkuPaymentMethod skuPaymentMethod = new SkuPaymentMethod(str, null, num, f10, f11, num2, num3, str2, str3, str4, str5, null, bool, num4, null, str6, str7, f12, null, null, null, null, 0, 8144898, null);
        skuPaymentMethod.labelDiscountPercent = num5;
        skuPaymentMethod.labelSkuType = num6;
        skuPaymentMethod.originPriceText = str8;
        skuPaymentMethod.discountPriceText = str9;
        return skuPaymentMethod;
    }

    @NotNull
    public final String formatRenewPrice(@Nullable Integer num, @Nullable Boolean bool) {
        float f10;
        float f11;
        Float f12 = this.firstAmount;
        if (f12 != null) {
            f10 = f12.floatValue();
        } else {
            f10 = 0.0f;
        }
        Float f13 = this.payAmount;
        if (f13 != null) {
            f11 = f13.floatValue();
        } else {
            f11 = 0.0f;
        }
        Integer num2 = this.payType;
        int a10 = e.f65327a.a();
        if ((num2 == null || num2.intValue() != a10) && f10 > 0.0f && f10 < f11 && ((num != null && num.intValue() == 5) || (num != null && num.intValue() == 1))) {
            if (AccountRepo.f43052a.I0() && Intrinsics.areEqual(bool, Boolean.TRUE)) {
                return u.f51776a.e(R$string.subs_type_view_renew_day_2_week, String.valueOf(getDiscountPriceText()), String.valueOf(getOriginPriceText()));
            }
            int i10 = this.discountPeriodNum;
            if (i10 > 1) {
                return u.f51776a.e(R$string.subs_type_view_renew_per_week_new, Integer.valueOf(i10), String.valueOf(getDiscountPriceText()), String.valueOf(getOriginPriceText()));
            }
        }
        if ((num == null || num.intValue() != 1) && (num == null || num.intValue() != 5)) {
            if ((num == null || num.intValue() != 2) && (num == null || num.intValue() != 6)) {
                if ((num == null || num.intValue() != 4) && (num == null || num.intValue() != 7)) {
                    return String.valueOf(f11);
                }
                return u.f51776a.e(R$string.subs_type_view_renew_per_year, String.valueOf(getOriginPriceText()));
            }
            return u.f51776a.e(R$string.subs_type_view_renew_per_month, String.valueOf(getOriginPriceText()));
        }
        return u.f51776a.e(R$string.subs_type_view_renew_per_week, String.valueOf(getOriginPriceText()));
    }

    @Nullable
    public final Integer getBonus() {
        return this.bonus;
    }

    @Nullable
    public final Integer getCoins() {
        return this.coins;
    }

    @Nullable
    public final String getCountryCode() {
        return this.countryCode;
    }

    @Nullable
    public final String getCurrency() {
        return this.currency;
    }

    @Nullable
    public final String getCurrencyUnit() {
        return this.currencyUnit;
    }

    @Nullable
    public final Integer getDiscountPercent() {
        return this.discountPercent;
    }

    public final int getDiscountPeriodNum() {
        return this.discountPeriodNum;
    }

    @Nullable
    public final String getDiscountPriceText() {
        String str = this.discountPriceText;
        if (str != null && str.length() != 0) {
            return this.discountPriceText;
        }
        if (Intrinsics.areEqual(this.firstAmount, 0.0f)) {
            return "";
        }
        if (this.currencyUnit != null) {
            return this.currencyUnit + this.firstAmount;
        }
        return this.currency + "$ " + this.firstAmount;
    }

    @Nullable
    public final Float getFirstAmount() {
        return this.firstAmount;
    }

    @Nullable
    public final Integer getLabelDiscountPercent() {
        return this.labelDiscountPercent;
    }

    @Nullable
    public final String getLabelIcon() {
        return this.labelIcon;
    }

    @Nullable
    public final Integer getLabelSkuType() {
        return this.labelSkuType;
    }

    @Nullable
    public final String getLogoGoldIcon() {
        return this.logoGoldIcon;
    }

    @Nullable
    public final String getLogoIcon() {
        return this.logoIcon;
    }

    @Nullable
    public final String getLogoWhiteIcon() {
        return this.logoWhiteIcon;
    }

    @Nullable
    public final String getOriginPriceText() {
        String str = this.originPriceText;
        if (str != null && str.length() != 0) {
            return this.originPriceText;
        }
        if (Intrinsics.areEqual(this.payAmount, 0.0f)) {
            return "";
        }
        if (this.currencyUnit != null) {
            return this.currencyUnit + this.payAmount;
        }
        return this.currency + "$ " + this.payAmount;
    }

    @Nullable
    public final Float getPayAmount() {
        return this.payAmount;
    }

    @Nullable
    public final Integer getPayType() {
        return this.payType;
    }

    @Nullable
    public final String getPayTypeName() {
        return this.payTypeName;
    }

    @Nullable
    public final String getPlanId() {
        return this.planId;
    }

    @Nullable
    public final Float getPricePerDay() {
        return this.pricePerDay;
    }

    @Nullable
    public final String getProductId() {
        return this.productId;
    }

    @Nullable
    public final String getRememberPaymentTip() {
        return this.rememberPaymentTip;
    }

    @Nullable
    public final String getSkuId() {
        return this.skuId;
    }

    @Nullable
    public final Boolean isFirstBuy() {
        return this.isFirstBuy;
    }

    public final boolean isShowDiscountPrice() {
        float f10;
        if (Intrinsics.areEqual(this.isFirstBuy, Boolean.TRUE)) {
            Float f11 = this.firstAmount;
            if (f11 != null) {
                f10 = f11.floatValue();
            } else {
                f10 = 0.0f;
            }
            if (f10 > 0.0f) {
                return true;
            }
        }
        return false;
    }

    public final void setDiscountPeriodNum(int i10) {
        this.discountPeriodNum = i10;
    }

    public final void setDiscountPriceText(@Nullable String str) {
        this.discountPriceText = str;
    }

    public final void setLabelDiscountPercent(@Nullable Integer num) {
        this.labelDiscountPercent = num;
    }

    public final void setLabelSkuType(@Nullable Integer num) {
        this.labelSkuType = num;
    }

    public final void setOriginPriceText(@Nullable String str) {
        this.originPriceText = str;
    }

    public final void setPayTypeName(@Nullable String str) {
        this.payTypeName = str;
    }

    public final void setProductId(@Nullable String str) {
        this.productId = str;
    }

    public final void setRememberPaymentTip(@Nullable String str) {
        this.rememberPaymentTip = str;
    }

    public final void setSkuId(@Nullable String str) {
        this.skuId = str;
    }

    public /* synthetic */ SkuPaymentMethod(String str, String str2, Integer num, Float f10, Float f11, Integer num2, Integer num3, String str3, String str4, String str5, String str6, String str7, Boolean bool, Integer num4, String str8, String str9, String str10, Float f12, String str11, Integer num5, Integer num6, String str12, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? Integer.valueOf(e.f65327a.a()) : num, (i11 & 8) != 0 ? Float.valueOf(0.0f) : f10, (i11 & 16) != 0 ? Float.valueOf(0.0f) : f11, (i11 & 32) != 0 ? 0 : num2, (i11 & 64) != 0 ? 0 : num3, (i11 & 128) != 0 ? null : str3, (i11 & 256) != 0 ? null : str4, (i11 & 512) != 0 ? null : str5, (i11 & 1024) != 0 ? null : str6, (i11 & 2048) != 0 ? null : str7, (i11 & 4096) != 0 ? Boolean.FALSE : bool, (i11 & 8192) != 0 ? null : num4, (i11 & 16384) != 0 ? null : str8, (i11 & 32768) != 0 ? null : str9, (i11 & 65536) != 0 ? null : str10, (i11 & 131072) != 0 ? Float.valueOf(0.0f) : f12, (i11 & 262144) != 0 ? null : str11, (i11 & 524288) != 0 ? null : num5, (i11 & 1048576) != 0 ? null : num6, (i11 & 2097152) != 0 ? null : str12, (i11 & 4194304) != 0 ? 0 : i10);
    }

    public SkuPaymentMethod(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Boolean bool, @Nullable Integer num4, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable Float f12, @Nullable String str11, @Nullable Integer num5, @Nullable Integer num6, @Nullable String str12, int i10) {
        this.skuId = str;
        this.productId = str2;
        this.payType = num;
        this.payAmount = f10;
        this.firstAmount = f11;
        this.bonus = num2;
        this.coins = num3;
        this.logoIcon = str3;
        this.logoWhiteIcon = str4;
        this.logoGoldIcon = str5;
        this.labelIcon = str6;
        this.payTypeName = str7;
        this.isFirstBuy = bool;
        this.discountPercent = num4;
        this.countryCode = str8;
        this.currency = str9;
        this.currencyUnit = str10;
        this.pricePerDay = f12;
        this.planId = str11;
        this.labelDiscountPercent = num5;
        this.labelSkuType = num6;
        this.rememberPaymentTip = str12;
        this.discountPeriodNum = i10;
    }
}
