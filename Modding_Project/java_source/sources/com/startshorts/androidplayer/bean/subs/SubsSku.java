package com.startshorts.androidplayer.bean.subs;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import fk.u;
import java.util.ArrayList;
import java.util.List;
import jk.g;
import jk.k;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.e;
/* compiled from: SubsSku.kt */
@Metadata
/* loaded from: classes6.dex */
public class SubsSku extends SelectableItem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int HIGHLIGHT = 1;
    public static final int NOT_HIGHLIGHT = 0;
    @NotNull
    public static final String SCENE_ACT = "4";
    @NotNull
    public static final String SCENE_AD_2_PAY = "6";
    @NotNull
    public static final String SCENE_COINS_2_SUB = "5";
    @NotNull
    public static final String SCENE_SUBS_DETAIL = "1";
    @NotNull
    public static final String SCENE_TOP_UP = "3";
    @NotNull
    public static final String SCENE_UNLOCK_EPISODE_DIALOG = "2";
    public static final int TYPE_ANNUAL = 4;
    public static final int TYPE_ANNUAL_PRO = 7;
    public static final int TYPE_DAY_TO_WEEK = 2;
    public static final int TYPE_MONTHLY = 2;
    public static final int TYPE_MONTHLY_PRO = 6;
    public static final int TYPE_WEEKLY = 1;
    public static final int TYPE_WEEKLY_PRO = 5;
    @Nullable
    private String activityId;
    @Nullable
    private String activityName;
    @Nullable
    private Integer bonus;
    private int coins;
    @Nullable
    private String countryCode;
    @Nullable
    private Integer cycleTransitionType;
    @Nullable
    private String discountPriceText;
    @Nullable
    private Long discountTime;
    private boolean enableDiscountByGp;
    private long expireTime;
    private float firstAmount;
    private boolean inSubscription;
    private boolean isFirstBuy;
    @Nullable
    private Integer isHighlight;
    private boolean isLowestSku;
    @Nullable
    private String offerToken;
    private boolean openPromotionalOffer;
    @Nullable
    private String originPriceText;
    private float payAmount;
    @Nullable
    private SkuPaymentMethod payment;
    @Nullable
    private List<? extends SkuPaymentMethod> productExtendList;
    private int retainLevel;
    private int retentionTime;
    @Nullable
    private Object skuDetails;
    @Nullable
    private String subscript;
    private int subscriptionId;
    private int weight;
    @NotNull
    private String ev = "";
    @NotNull
    private String h5JsonParam = "";
    @NotNull
    private String skuId = "";
    @NotNull
    private String campaignTemplateId = "";
    @NotNull
    private String subTemplateId = "";
    @NotNull
    private String productId = "";
    private int type = -1;
    @NotNull
    private String source = "";
    private int receiveType = -1;

    /* compiled from: SubsSku.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getCardName(int i10) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return u.f51776a.d(R$string.profile_subscription_view_unsupport_product);
                                }
                                return u.f51776a.d(R$string.profile_subscription_view_annual_pro_card);
                            }
                            return u.f51776a.d(R$string.profile_subscription_view_monthly_pro_card);
                        }
                        return u.f51776a.d(R$string.profile_subscription_view_weekly_pro_card);
                    }
                    return u.f51776a.d(R$string.profile_subscription_view_annual_card);
                }
                return u.f51776a.d(R$string.profile_subscription_view_monthly_card);
            }
            return u.f51776a.d(R$string.profile_subscription_view_weekly_card);
        }

        private Companion() {
        }
    }

    public static /* synthetic */ SubsSku copy$default(SubsSku subsSku, String str, Integer num, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                str = null;
            }
            if ((i10 & 2) != 0) {
                num = null;
            }
            return subsSku.copy(str, num);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
    }

    @NotNull
    public final SubsSku copy(@Nullable String str, @Nullable Integer num) {
        int i10;
        List<? extends SkuPaymentMethod> list;
        SubsSku subsSku = new SubsSku();
        subsSku.type = this.type;
        subsSku.weight = this.weight;
        subsSku.originPriceText = getOriginPriceText();
        subsSku.discountPriceText = getDiscountPriceText();
        subsSku.skuDetails = this.skuDetails;
        subsSku.coins = this.coins;
        subsSku.bonus = this.bonus;
        subsSku.payAmount = this.payAmount;
        subsSku.firstAmount = this.firstAmount;
        if (str == null) {
            str = this.source;
        }
        subsSku.source = str;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = this.receiveType;
        }
        subsSku.receiveType = i10;
        subsSku.subscript = this.subscript;
        subsSku.enableDiscountByGp = getEnableDiscountByGp();
        subsSku.offerToken = this.offerToken;
        subsSku.inSubscription = this.inSubscription;
        subsSku.isFirstBuy = this.isFirstBuy;
        subsSku.activityId = this.activityId;
        subsSku.activityName = this.activityName;
        subsSku.subscriptionId = this.subscriptionId;
        subsSku.expireTime = this.expireTime;
        subsSku.discountTime = this.discountTime;
        subsSku.payment = this.payment;
        List<? extends SkuPaymentMethod> list2 = this.productExtendList;
        if (list2 != null) {
            list = CollectionsKt.d1(list2);
        } else {
            list = null;
        }
        subsSku.productExtendList = list;
        subsSku.skuId = this.skuId;
        subsSku.campaignTemplateId = this.campaignTemplateId;
        subsSku.subTemplateId = this.subTemplateId;
        subsSku.productId = this.productId;
        subsSku.setSort(getSort());
        subsSku.setItemStyle(getItemStyle());
        subsSku.isHighlight = this.isHighlight;
        subsSku.openPromotionalOffer = this.openPromotionalOffer;
        subsSku.ev = this.ev;
        subsSku.h5JsonParam = this.h5JsonParam;
        subsSku.cycleTransitionType = this.cycleTransitionType;
        return subsSku;
    }

    public final boolean enableDiscount() {
        if (BillingRepo.f43237a.C()) {
            if (!getEnableDiscountByGp() || !this.isFirstBuy) {
                return false;
            }
            float f10 = this.firstAmount;
            if (f10 == 0.0f || f10 == this.payAmount) {
                return false;
            }
        } else if (!getEnableDiscountByGp() || !this.isFirstBuy) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String formatDiscountTxt() {
        e eVar;
        int i10;
        SubsPrice j10;
        if (!enableDiscount()) {
            return "";
        }
        Object obj = this.skuDetails;
        if (obj instanceof e) {
            eVar = (e) obj;
        } else {
            eVar = null;
        }
        if (eVar != null && (j10 = k.j(eVar)) != null) {
            i10 = j10.getBillingCycleCount();
        } else {
            i10 = 0;
        }
        if (i10 <= 0) {
            return "";
        }
        int i11 = this.type;
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
                return u.f51776a.e(R$string.year_coupons_unit, Integer.valueOf(i10));
            }
            return u.f51776a.e(R$string.month_coupons_unit, Integer.valueOf(i10));
        }
        return u.f51776a.e(R$string.week_coupons_unit, Integer.valueOf(i10));
    }

    @NotNull
    public final String formatRenewPrice() {
        e eVar;
        int i10;
        SubsPrice j10;
        String originPriceText = getOriginPriceText();
        String discountPriceText = getDiscountPriceText();
        if (originPriceText != null && originPriceText.length() != 0) {
            if (enableDiscount()) {
                Object obj = this.skuDetails;
                if (obj instanceof e) {
                    eVar = (e) obj;
                } else {
                    eVar = null;
                }
                boolean z10 = false;
                if (eVar != null && (j10 = k.j(eVar)) != null) {
                    i10 = j10.getBillingCycleCount();
                } else {
                    i10 = 0;
                }
                int i11 = this.type;
                if (i11 == 1 || i11 == 5) {
                    z10 = true;
                }
                if (i10 > 1 && z10 && discountPriceText != null && discountPriceText.length() != 0) {
                    return u.f51776a.e(R$string.subs_type_view_renew_per_week_new, Integer.valueOf(i10), getDiscountPriceText(), getOriginPriceText());
                }
            }
            int i12 = this.type;
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 4) {
                        if (i12 != 5) {
                            if (i12 != 6) {
                                if (i12 != 7) {
                                    return originPriceText;
                                }
                            }
                        }
                    }
                    return u.f51776a.e(R$string.subs_type_view_renew_per_year, originPriceText);
                }
                return u.f51776a.e(R$string.subs_type_view_renew_per_month, originPriceText);
            }
            return u.f51776a.e(R$string.subs_type_view_renew_per_week, originPriceText);
        }
        return "";
    }

    @NotNull
    public final String formateDiscountTitle() {
        int i10 = this.type;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 != 6) {
                            if (i10 != 7) {
                                return "";
                            }
                        }
                    }
                }
                return u.f51776a.d(R$string.year_membership_coupon);
            }
            return u.f51776a.d(R$string.month_membership_coupon);
        }
        return u.f51776a.d(R$string.week_membership_coupon);
    }

    @Nullable
    public final String getActivityId() {
        return this.activityId;
    }

    @Nullable
    public final String getActivityName() {
        return this.activityName;
    }

    @Nullable
    public final Integer getBonus() {
        return this.bonus;
    }

    @NotNull
    public final String getCampaignTemplateId() {
        return this.campaignTemplateId;
    }

    public final int getCoins() {
        return this.coins;
    }

    @Nullable
    public final String getCountryCode() {
        return this.countryCode;
    }

    @Nullable
    public final Integer getCycleTransitionType() {
        return this.cycleTransitionType;
    }

    @Nullable
    public final String getDiscountPriceText() {
        String str = this.discountPriceText;
        if (str != null && str.length() != 0) {
            return this.discountPriceText;
        }
        if (this.firstAmount == 0.0f) {
            return "";
        }
        return "US$ " + this.firstAmount;
    }

    @Nullable
    public final Long getDiscountTime() {
        return this.discountTime;
    }

    public final boolean getEnableDiscountByGp() {
        if (BillingRepo.f43237a.C()) {
            return true;
        }
        return this.enableDiscountByGp;
    }

    @NotNull
    public final String getEv() {
        return this.ev;
    }

    public final long getExpireTime() {
        return this.expireTime;
    }

    public final float getFirstAmount() {
        return this.firstAmount;
    }

    public final int getFlavorPayCycleCount() {
        e eVar;
        SubsPrice j10;
        if (!enableDiscount()) {
            return 0;
        }
        Object obj = this.skuDetails;
        if (obj instanceof e) {
            eVar = (e) obj;
        } else {
            eVar = null;
        }
        if (eVar == null || (j10 = k.j(eVar)) == null) {
            return 0;
        }
        return j10.getBillingCycleCount();
    }

    @NotNull
    public final String getH5JsonParam() {
        return this.h5JsonParam;
    }

    public final boolean getInSubscription() {
        return this.inSubscription;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String getItemId() {
        return this.productId;
    }

    @Nullable
    public final String getOfferToken() {
        return this.offerToken;
    }

    public final boolean getOpenPromotionalOffer() {
        return this.openPromotionalOffer;
    }

    @Nullable
    public final String getOriginPriceText() {
        String str = this.originPriceText;
        if (str != null && str.length() != 0) {
            return this.originPriceText;
        }
        if (this.payAmount == 0.0f) {
            return "";
        }
        return "US$ " + this.payAmount;
    }

    public final int getPaddingTop(boolean z10) {
        if (z10) {
            return g.a(-3.0f);
        }
        return 0;
    }

    public final float getPayAmount() {
        return this.payAmount;
    }

    @NotNull
    public String getPayPendingSubsSku() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(AccountRepo.f43052a.t0());
        arrayList.add(this.productId);
        arrayList.add(Float.valueOf(this.payAmount));
        arrayList.add(this.source);
        arrayList.add(Integer.valueOf(this.receiveType));
        arrayList.add(Integer.valueOf(this.coins));
        arrayList.add(this.bonus);
        return new Regex("\\s").replace(arrayList.toString(), "");
    }

    @Nullable
    public final SkuPaymentMethod getPayment() {
        return this.payment;
    }

    @Nullable
    public final List<SkuPaymentMethod> getProductExtendList() {
        return this.productExtendList;
    }

    @NotNull
    public final String getProductId() {
        return this.productId;
    }

    public final int getReceiveType() {
        return this.receiveType;
    }

    public final int getRetainLevel() {
        return this.retainLevel;
    }

    public final int getRetentionTime() {
        return this.retentionTime;
    }

    @Nullable
    public final Object getSkuDetails() {
        return this.skuDetails;
    }

    @NotNull
    public final String getSkuId() {
        return this.skuId;
    }

    @NotNull
    public final String getSource() {
        return this.source;
    }

    @NotNull
    public final String getSubTemplateId() {
        return this.subTemplateId;
    }

    @Nullable
    public final String getSubscript() {
        return this.subscript;
    }

    public final int getSubscriptionId() {
        return this.subscriptionId;
    }

    public final int getType() {
        return this.type;
    }

    public final int getWeight() {
        return this.weight;
    }

    public final boolean isDayToWeekSub() {
        Integer num = this.cycleTransitionType;
        if (num != null && num.intValue() == 2) {
            return true;
        }
        return false;
    }

    public final boolean isFirstBuy() {
        return this.isFirstBuy;
    }

    @Nullable
    public final Integer isHighlight() {
        return this.isHighlight;
    }

    public final boolean isLowestSku() {
        return this.isLowestSku;
    }

    public final boolean isPro() {
        int i10 = this.type;
        if (5 > i10 || i10 >= 8) {
            return false;
        }
        return true;
    }

    public final void setActivityId(@Nullable String str) {
        this.activityId = str;
    }

    public final void setActivityName(@Nullable String str) {
        this.activityName = str;
    }

    public final void setBonus(@Nullable Integer num) {
        this.bonus = num;
    }

    public final void setCampaignTemplateId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.campaignTemplateId = str;
    }

    public final void setCoins(int i10) {
        this.coins = i10;
    }

    public final void setCountryCode(@Nullable String str) {
        this.countryCode = str;
    }

    public final void setCycleTransitionType(@Nullable Integer num) {
        this.cycleTransitionType = num;
    }

    public final void setDiscountPriceText(@Nullable String str) {
        this.discountPriceText = str;
    }

    public final void setDiscountTime(@Nullable Long l10) {
        this.discountTime = l10;
    }

    public final void setEnableDiscountByGp(boolean z10) {
        this.enableDiscountByGp = z10;
    }

    public final void setEv(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ev = str;
    }

    public final void setExpireTime(long j10) {
        this.expireTime = j10;
    }

    public final void setFirstAmount(float f10) {
        this.firstAmount = f10;
    }

    public final void setFirstBuy(boolean z10) {
        this.isFirstBuy = z10;
    }

    public final void setH5JsonParam(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.h5JsonParam = str;
    }

    public final void setHighlight(@Nullable Integer num) {
        this.isHighlight = num;
    }

    public final void setInSubscription(boolean z10) {
        this.inSubscription = z10;
    }

    public final void setLowestSku(boolean z10) {
        this.isLowestSku = z10;
    }

    public final void setOfferToken(@Nullable String str) {
        this.offerToken = str;
    }

    public final void setOpenPromotionalOffer(boolean z10) {
        this.openPromotionalOffer = z10;
    }

    public final void setOriginPriceText(@Nullable String str) {
        this.originPriceText = str;
    }

    public final void setPayAmount(float f10) {
        this.payAmount = f10;
    }

    public final void setPayment(@Nullable SkuPaymentMethod skuPaymentMethod) {
        this.payment = skuPaymentMethod;
    }

    public final void setProductExtendList(@Nullable List<? extends SkuPaymentMethod> list) {
        this.productExtendList = list;
    }

    public final void setProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productId = str;
    }

    public final void setReceiveType(int i10) {
        this.receiveType = i10;
    }

    public final void setRetainLevel(int i10) {
        this.retainLevel = i10;
    }

    public final void setRetentionTime(int i10) {
        this.retentionTime = i10;
    }

    public final void setSkuDetails(@Nullable Object obj) {
        this.skuDetails = obj;
    }

    public final void setSkuId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.skuId = str;
    }

    public final void setSource(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.source = str;
    }

    public final void setSubTemplateId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subTemplateId = str;
    }

    public final void setSubscript(@Nullable String str) {
        this.subscript = str;
    }

    public final void setSubscriptionId(int i10) {
        this.subscriptionId = i10;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public final void setWeight(int i10) {
        this.weight = i10;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "SubsSku(activityId=" + this.activityId + ", skuId='" + this.skuId + "', campaign_template_id='" + this.campaignTemplateId + "', sub_template_id='" + this.subTemplateId + "', productId='" + this.productId + "', type=" + this.type + ", weight=" + this.weight + ", originPriceText=" + getOriginPriceText() + ", discountPriceText=" + getDiscountPriceText() + ", skuDetails=" + this.skuDetails + ", coins=" + this.coins + ", bonus=" + this.bonus + ", payAmount=" + this.payAmount + ", firstAmount=" + this.firstAmount + ", source='" + this.source + "', receiveType=" + this.receiveType + ", subscript=" + this.subscript + ", enableDiscountByGp=" + getEnableDiscountByGp() + ", offerToken=" + this.offerToken + ", inSubscription=" + this.inSubscription + ", isFirstBuy=" + this.isFirstBuy + ", activityName=" + this.activityName + ", countryCode=" + this.countryCode + ", subscriptionId=" + this.subscriptionId + ", expireTime=" + this.expireTime + ", discountTime=" + this.discountTime + ", productExtendList=" + this.productExtendList + ", payment=" + this.payment + ", isHighlight=" + this.isHighlight + " , ev=" + this.ev + " ,h5JsonParam=" + this.h5JsonParam + " , openPromotionalOffer=" + this.openPromotionalOffer + "，retainLevel=" + this.retainLevel + ')';
    }

    /* renamed from: isHighlight  reason: collision with other method in class */
    public final boolean m4706isHighlight() {
        Integer num = this.isHighlight;
        return num != null && num.intValue() == 1;
    }
}
