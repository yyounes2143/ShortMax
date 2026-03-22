package com.startshorts.androidplayer.bean.purchase;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.List;
import jk.v;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoinSku.kt */
@Metadata
/* loaded from: classes6.dex */
public class CoinSku extends SelectableItem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_BATCH_SKU = 10;
    public static final int TYPE_BLACK_FRIDAY = 8;
    public static final int TYPE_EXPANSION = 7;
    public static final int TYPE_LIMITED_TIME_SALE = 12;
    public static final int TYPE_LOW_SKU_TEMPLATE_NOTIFICATION = 1000;
    public static final int TYPE_MAIN_SKU = 0;
    public static final int TYPE_THIRD_PARTY_PAYMENT = 999;
    @Nullable
    private String activityId;
    @Nullable
    private String activityName;
    private float activityPrice;
    @Nullable
    private String activitySkuConfigId;
    private int coins;
    @Nullable
    private String coinsUnit;
    private float disRate;
    private long expirationTime;
    @Nullable
    private String giveCoinsUnit;
    @Nullable
    private Integer isHighlight;
    @Nullable
    private Integer keepGiveCoins;
    @Nullable
    private String originPriceText;
    private float originalPrice;
    @Nullable
    private SkuPaymentMethod payment;
    @Nullable
    private String priceText;
    private int prizeId;
    @Nullable
    private List<? extends SkuPaymentMethod> productExtendList;
    @Nullable
    private Integer productGiveCoins;
    private float recharge;
    private long retentionSeconds;
    @Nullable
    private Object skuDetails;
    @Nullable
    private String skuModelConfigId;
    @Nullable
    private String subscript;
    @NotNull
    private String ev = "";
    @NotNull
    private String h5JsonParam = "";
    @NotNull
    private String campaignTemplateId = "";
    private int skuType = -1;
    @NotNull
    private String skuProductId = "";
    @NotNull
    private String userId = "";
    @NotNull
    private String gpSkuId = "";
    @NotNull
    private String skuModelId = "";

    /* compiled from: CoinSku.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final CoinSku copy() {
        List<? extends SkuPaymentMethod> list;
        CoinSku coinSku = new CoinSku();
        coinSku.setSkuType(getSkuType());
        coinSku.skuModelConfigId = this.skuModelConfigId;
        coinSku.activitySkuConfigId = this.activitySkuConfigId;
        coinSku.coins = this.coins;
        coinSku.coinsUnit = this.coinsUnit;
        coinSku.productGiveCoins = this.productGiveCoins;
        coinSku.giveCoinsUnit = this.giveCoinsUnit;
        coinSku.subscript = this.subscript;
        coinSku.recharge = this.recharge;
        coinSku.priceText = getPriceText();
        coinSku.originPriceText = getOriginPriceText();
        coinSku.skuDetails = this.skuDetails;
        coinSku.keepGiveCoins = this.keepGiveCoins;
        coinSku.retentionSeconds = getRetentionSeconds();
        coinSku.expirationTime = this.expirationTime;
        coinSku.originalPrice = this.originalPrice;
        coinSku.activityPrice = this.activityPrice;
        coinSku.disRate = this.disRate;
        coinSku.prizeId = this.prizeId;
        coinSku.activityId = this.activityId;
        coinSku.activityName = this.activityName;
        coinSku.skuModelId = this.skuModelId;
        coinSku.payment = this.payment;
        List<? extends SkuPaymentMethod> list2 = this.productExtendList;
        if (list2 != null) {
            list = CollectionsKt.d1(list2);
        } else {
            list = null;
        }
        coinSku.productExtendList = list;
        coinSku.skuProductId = this.skuProductId;
        coinSku.userId = this.userId;
        coinSku.gpSkuId = this.gpSkuId;
        coinSku.setSort(getSort());
        coinSku.setItemStyle(getItemStyle());
        coinSku.isHighlight = this.isHighlight;
        coinSku.ev = this.ev;
        coinSku.h5JsonParam = this.h5JsonParam;
        coinSku.campaignTemplateId = this.campaignTemplateId;
        return coinSku;
    }

    @Nullable
    public final String getActivityId() {
        return this.activityId;
    }

    @Nullable
    public final String getActivityName() {
        return this.activityName;
    }

    public final float getActivityPrice() {
        return this.activityPrice;
    }

    @Nullable
    public final String getActivitySkuConfigId() {
        return this.activitySkuConfigId;
    }

    @NotNull
    public final String getCampaignTemplateId() {
        return this.campaignTemplateId;
    }

    public final int getCoins() {
        return this.coins;
    }

    @Nullable
    public final String getCoinsUnit() {
        return this.coinsUnit;
    }

    public final float getDisRate() {
        return this.disRate;
    }

    @NotNull
    public final String getEv() {
        return this.ev;
    }

    public final long getExpirationTime() {
        return this.expirationTime;
    }

    @Nullable
    public final String getGiveCoinsUnit() {
        return this.giveCoinsUnit;
    }

    @NotNull
    public final String getGpSkuId() {
        return this.gpSkuId;
    }

    @NotNull
    public final String getH5JsonParam() {
        return this.h5JsonParam;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String getItemId() {
        return this.skuProductId;
    }

    @Nullable
    public final Integer getKeepGiveCoins() {
        return this.keepGiveCoins;
    }

    @Nullable
    public final String getOriginPriceText() {
        String str = this.originPriceText;
        if (str != null && str.length() != 0) {
            return this.originPriceText;
        }
        if (this.originalPrice == 0.0f) {
            return "";
        }
        return "US$ " + this.originalPrice;
    }

    public final float getOriginalPrice() {
        return this.originalPrice;
    }

    @NotNull
    public String getPayPendingCoinSku() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(getSkuType()));
        arrayList.add(this.skuProductId);
        arrayList.add(this.skuModelConfigId);
        arrayList.add(Integer.valueOf(this.prizeId));
        arrayList.add(Float.valueOf(this.recharge));
        if (this instanceof ShortDiscountSku) {
            arrayList.add(Integer.valueOf(((ShortDiscountSku) this).getShortPlayId()));
        }
        arrayList.add(AccountRepo.f43052a.t0());
        return new Regex("\\s").replace(arrayList.toString(), "");
    }

    @Nullable
    public final SkuPaymentMethod getPayment() {
        return this.payment;
    }

    @Nullable
    public final String getPriceText() {
        String str = this.priceText;
        if (str != null && str.length() != 0) {
            return this.priceText;
        }
        if (getSkuType() == 8) {
            if (this.activityPrice != 0.0f) {
                return "US$ " + this.activityPrice;
            }
        } else if (this.recharge != 0.0f) {
            return "US$ " + this.recharge;
        }
        return "";
    }

    public final int getPrizeId() {
        return this.prizeId;
    }

    @Nullable
    public final List<SkuPaymentMethod> getProductExtendList() {
        return this.productExtendList;
    }

    @Nullable
    public final Integer getProductGiveCoins() {
        return this.productGiveCoins;
    }

    public final float getRecharge() {
        return this.recharge;
    }

    public final long getRetentionSeconds() {
        if (getSkuType() == 8) {
            long K = DeviceUtil.f48146a.K();
            long j10 = this.expirationTime;
            if (j10 < K) {
                return 0L;
            }
            return (j10 - K) / 1000;
        }
        return this.retentionSeconds;
    }

    @Nullable
    public final Object getSkuDetails() {
        return this.skuDetails;
    }

    @Nullable
    public final String getSkuModelConfigId() {
        return this.skuModelConfigId;
    }

    @NotNull
    public final String getSkuModelId() {
        return this.skuModelId;
    }

    @NotNull
    public final String getSkuProductId() {
        return this.skuProductId;
    }

    public int getSkuType() {
        return this.skuType;
    }

    @Nullable
    public final String getSubscript() {
        return this.subscript;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public final boolean isExpansion() {
        if (getSkuType() == 7) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer isHighlight() {
        return this.isHighlight;
    }

    public final boolean isSubscriptValid() {
        String str;
        String str2 = this.subscript;
        if (str2 == null || str2.length() == 0) {
            return false;
        }
        String str3 = this.subscript;
        if (str3 != null) {
            str = v.i(str3);
        } else {
            str = null;
        }
        if (Intrinsics.areEqual(str, "0%") || Intrinsics.areEqual(str, "+0%")) {
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

    public final void setActivityPrice(float f10) {
        this.activityPrice = f10;
    }

    public final void setActivitySkuConfigId(@Nullable String str) {
        this.activitySkuConfigId = str;
    }

    public final void setCampaignTemplateId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.campaignTemplateId = str;
    }

    public final void setCoins(int i10) {
        this.coins = i10;
    }

    public final void setCoinsUnit(@Nullable String str) {
        this.coinsUnit = str;
    }

    public final void setDisRate(float f10) {
        this.disRate = f10;
    }

    public final void setEv(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ev = str;
    }

    public final void setExpirationTime(long j10) {
        this.expirationTime = j10;
    }

    public final void setGiveCoinsUnit(@Nullable String str) {
        this.giveCoinsUnit = str;
    }

    public final void setGpSkuId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gpSkuId = str;
    }

    public final void setH5JsonParam(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.h5JsonParam = str;
    }

    public final void setHighlight(@Nullable Integer num) {
        this.isHighlight = num;
    }

    public final void setKeepGiveCoins(@Nullable Integer num) {
        this.keepGiveCoins = num;
    }

    public final void setOriginPriceText(@Nullable String str) {
        this.originPriceText = str;
    }

    public final void setOriginalPrice(float f10) {
        this.originalPrice = f10;
    }

    public final void setPayment(@Nullable SkuPaymentMethod skuPaymentMethod) {
        this.payment = skuPaymentMethod;
    }

    public final void setPriceText(@Nullable String str) {
        this.priceText = str;
    }

    public final void setPrizeId(int i10) {
        this.prizeId = i10;
    }

    public final void setProductExtendList(@Nullable List<? extends SkuPaymentMethod> list) {
        this.productExtendList = list;
    }

    public final void setProductGiveCoins(@Nullable Integer num) {
        this.productGiveCoins = num;
    }

    public final void setRecharge(float f10) {
        this.recharge = f10;
    }

    public final void setRetentionSeconds(long j10) {
        this.retentionSeconds = j10;
    }

    public final void setSkuDetails(@Nullable Object obj) {
        this.skuDetails = obj;
    }

    public final void setSkuModelConfigId(@Nullable String str) {
        this.skuModelConfigId = str;
    }

    public final void setSkuModelId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.skuModelId = str;
    }

    public final void setSkuProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.skuProductId = str;
    }

    public void setSkuType(int i10) {
        this.skuType = i10;
    }

    public final void setSubscript(@Nullable String str) {
        this.subscript = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "CoinSku(originPriceText=" + getOriginPriceText() + ", skuType=" + getSkuType() + ",userId=" + this.userId + ",  skuModelConfigId=" + this.skuModelConfigId + ", activitySkuConfigId=" + this.activitySkuConfigId + ", skuProductId='" + this.skuProductId + "', gpSkuId='" + this.gpSkuId + "', coins=" + this.coins + ", coinsUnit=" + this.coinsUnit + ", productGiveCoins=" + this.productGiveCoins + ", giveCoinsUnit=" + this.giveCoinsUnit + ", subscript=" + this.subscript + ", recharge=" + this.recharge + ", priceText=" + getPriceText() + ", skuDetails=" + this.skuDetails + ", keepGiveCoins=" + this.keepGiveCoins + ", retentionSeconds=" + getRetentionSeconds() + ", expirationTime=" + this.expirationTime + ", originalPrice=" + this.originalPrice + ", activityPrice=" + this.activityPrice + ", disRate=" + this.disRate + ", prizeId=" + this.prizeId + ", activityId=" + this.activityId + ", activityName=" + this.activityName + ", skuModelId=" + this.skuModelId + ", productExtendList=" + this.productExtendList + ", payment=" + this.payment + ", sort=" + getSort() + ", itemStyle=" + getItemStyle() + ", isHighlight=" + this.isHighlight + " ,ev=" + this.ev + " ,h5JsonParam=" + this.h5JsonParam + " ,campaign_template_id=" + this.campaignTemplateId + ')';
    }
}
