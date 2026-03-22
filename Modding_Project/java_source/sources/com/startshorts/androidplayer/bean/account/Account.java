package com.startshorts.androidplayer.bean.account;

import android.content.Context;
import android.text.TextUtils;
import androidx.databinding.BaseObservable;
import androidx.databinding.Bindable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.unlock.RetainConfig;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Account.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Account extends BaseObservable {
    public static final int ACCOUNT_PRIMARY = 2;
    public static final int ACCOUNT_TOURIST = 1;
    public static final int CAMPAIGN_UNLOCK_AD = 2;
    public static final int CAMPAIGN_UNLOCK_AD_COIN = 3;
    public static final int CAMPAIGN_UNLOCK_COIN = 1;
    public static final int CAMPAIGN_UNLOCK_IASP = 4;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int FIREBASE_FACEBOOK = 20;
    public static final int FIREBASE_GOOGLE = 10;
    public static final int PHONE = 60;
    public static final int SUBS_RECEIVE_REWARD_TYPE_ALL_DAYS = 1;
    public static final int SUBS_RECEIVE_REWARD_TYPE_TODAY = 0;
    private long attributionTimestamp;
    @Nullable
    private List<Long> audienceIdList;
    private boolean autoUnlock;
    private int bonus;
    @Nullable
    private String campaignShortPlayCodeV2;
    @Nullable
    private Integer campaignUnlockType;
    @Nullable
    private Integer campaignUnlockTypeV2;
    private boolean canMerge;
    private int coins;
    @Nullable
    private String countryCode;
    @Nullable
    private String currentSubscriptionOrderNo;
    @Nullable
    private Integer daysOfActiveSubscription;
    @Nullable
    private Integer daysOfCancelSubscription;
    private boolean displayThirdUnsubscribe;
    @Nullable
    private RetainConfig dramaBoxConfig;
    @Nullable
    private Integer firebaseSource;
    private boolean hasSubscription;
    @Nullable
    private String headPic;
    private boolean isDaySub;
    @Nullable
    private Boolean isFirstPayUser;
    @Nullable
    private Boolean isFirstTripartitePayUser;
    private boolean isIaaUser;
    private boolean isIdnTelkomsel;
    private boolean isPaid;
    private boolean isPix610;
    private boolean isPix615DayToWeekExperiment;
    private boolean isRecharged;
    @Nullable
    private Boolean isRenewing;
    private boolean isShowMobileLogin;
    private boolean isSubscription;
    @Nullable
    private Boolean isSubscriptionBlack;
    private boolean isThirdSubscription;
    @Nullable
    private Integer lastPayType;
    private boolean newRegisterUser;
    @Nullable
    private String nickName;
    @Nullable
    private Boolean oneTouchPayOpen;
    @Nullable
    private Integer receiveType;
    @Nullable
    private String registerCode;
    @Nullable
    private Integer subscriptionOrderType;
    @Nullable
    private Boolean supportOneTouchPayment;
    @Nullable
    private String token;
    @Nullable
    private Integer totalPayCount;
    @Nullable
    private Integer tripartiteCode;
    private int type;
    public String userCode;
    private int subscriptionType = -1;
    private long subscriptionEndTime = -1;
    private boolean allowRecharge = true;

    /* compiled from: Account.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final boolean getAllowRecharge() {
        return this.allowRecharge;
    }

    public final long getAttributionTimestamp() {
        return this.attributionTimestamp;
    }

    @Nullable
    public final List<Long> getAudienceIdList() {
        return this.audienceIdList;
    }

    public final boolean getAutoUnlock() {
        return this.autoUnlock;
    }

    @Bindable
    public final int getBonus() {
        return this.bonus;
    }

    @Nullable
    public final String getCampaignShortPlayCodeV2() {
        return this.campaignShortPlayCodeV2;
    }

    @Nullable
    public final Integer getCampaignUnlockType() {
        return this.campaignUnlockType;
    }

    @Nullable
    public final Integer getCampaignUnlockTypeV2() {
        return this.campaignUnlockTypeV2;
    }

    public final boolean getCanMerge() {
        return this.canMerge;
    }

    @Bindable
    public final int getCoins() {
        return this.coins;
    }

    @Nullable
    public final String getCountryCode() {
        return this.countryCode;
    }

    @Nullable
    public final String getCurrentSubscriptionOrderNo() {
        return this.currentSubscriptionOrderNo;
    }

    @Nullable
    public final Integer getDaysOfActiveSubscription() {
        return this.daysOfActiveSubscription;
    }

    @Nullable
    public final Integer getDaysOfCancelSubscription() {
        return this.daysOfCancelSubscription;
    }

    public final boolean getDisplayThirdUnsubscribe() {
        return this.displayThirdUnsubscribe;
    }

    @Nullable
    public final RetainConfig getDramaBoxConfig() {
        return this.dramaBoxConfig;
    }

    @Nullable
    public final Integer getFirebaseSource() {
        return this.firebaseSource;
    }

    @Nullable
    public final String getFormatNickname(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String str = this.nickName;
        if (str != null && str.length() != 0) {
            Integer num = this.tripartiteCode;
            if (num != null && num.intValue() == 60) {
                return context.getString(R$string.profile_fragment_user, this.nickName);
            }
            return this.nickName;
        } else if (this.type == 2) {
            return context.getString(R$string.profile_fragment_user, getUserCode());
        } else {
            return context.getString(R$string.profile_fragment_guest, getUserCode());
        }
    }

    @Bindable
    public final boolean getHasSubscription() {
        return this.hasSubscription;
    }

    @Nullable
    public final String getHeadPic() {
        return this.headPic;
    }

    @Nullable
    public final Integer getLastPayType() {
        return this.lastPayType;
    }

    public final boolean getNewRegisterUser() {
        return this.newRegisterUser;
    }

    @Nullable
    public final String getNickName() {
        return this.nickName;
    }

    @Nullable
    public final Boolean getOneTouchPayOpen() {
        return this.oneTouchPayOpen;
    }

    @Nullable
    public final Integer getReceiveType() {
        return this.receiveType;
    }

    @Nullable
    public final String getRegisterCode() {
        return this.registerCode;
    }

    public final long getSubscriptionEndTime() {
        return this.subscriptionEndTime;
    }

    @Nullable
    public final Integer getSubscriptionOrderType() {
        return this.subscriptionOrderType;
    }

    public final int getSubscriptionType() {
        return this.subscriptionType;
    }

    @Nullable
    public final Boolean getSupportOneTouchPayment() {
        return this.supportOneTouchPayment;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    @Nullable
    public final Integer getTotalPayCount() {
        return this.totalPayCount;
    }

    @Nullable
    public final Integer getTripartiteCode() {
        return this.tripartiteCode;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final String getUserCode() {
        String str = this.userCode;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userCode");
        return null;
    }

    public final boolean isDaySub() {
        return this.isDaySub;
    }

    @Nullable
    public final Boolean isFirstPayUser() {
        return this.isFirstPayUser;
    }

    @Nullable
    public final Boolean isFirstTripartitePayUser() {
        return this.isFirstTripartitePayUser;
    }

    public final boolean isIaaUser() {
        return this.isIaaUser;
    }

    public final boolean isIdnTelkomsel() {
        return this.isIdnTelkomsel;
    }

    public final boolean isPaid() {
        return this.isPaid;
    }

    public final boolean isPix610() {
        return this.isPix610;
    }

    public final boolean isPix615DayToWeekExperiment() {
        return this.isPix615DayToWeekExperiment;
    }

    public final boolean isPrimary() {
        if (this.type == 2) {
            return true;
        }
        return false;
    }

    public final boolean isRecharged() {
        return this.isRecharged;
    }

    public final boolean isRegisterCodeInitialized() {
        boolean z10;
        String str = this.registerCode;
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        return !z10;
    }

    @Nullable
    public final Boolean isRenewing() {
        return this.isRenewing;
    }

    public final boolean isShowMobileLogin() {
        return this.isShowMobileLogin;
    }

    public final boolean isSubsExpired() {
        long j10 = this.subscriptionEndTime;
        if (j10 != -1 && j10 >= DeviceUtil.f48146a.K()) {
            return false;
        }
        return true;
    }

    @Bindable
    public final boolean isSubscription() {
        return this.isSubscription;
    }

    @Nullable
    public final Boolean isSubscriptionBlack() {
        return this.isSubscriptionBlack;
    }

    public final boolean isThirdSubscription() {
        return this.isThirdSubscription;
    }

    public final boolean isTourist() {
        if (this.type == 1) {
            return true;
        }
        return false;
    }

    public final boolean isUnlockTypeIasp() {
        Integer num = this.campaignUnlockTypeV2;
        if (num != null && num.intValue() == 4 && !TextUtils.isEmpty(this.campaignShortPlayCodeV2)) {
            return true;
        }
        return false;
    }

    public final boolean isUnlockTypeIaspUser() {
        Integer num = this.campaignUnlockTypeV2;
        if (num != null && num.intValue() == 4) {
            return true;
        }
        return false;
    }

    public final void setAllowRecharge(boolean z10) {
        this.allowRecharge = z10;
    }

    public final void setAttributionTimestamp(long j10) {
        this.attributionTimestamp = j10;
    }

    public final void setAudienceIdList(@Nullable List<Long> list) {
        this.audienceIdList = list;
    }

    public final void setAutoUnlock(boolean z10) {
        this.autoUnlock = z10;
    }

    public final void setBonus(int i10) {
        if (i10 != this.bonus) {
            this.bonus = i10;
            notifyPropertyChanged(1);
        }
    }

    public final void setCampaignShortPlayCodeV2(@Nullable String str) {
        this.campaignShortPlayCodeV2 = str;
    }

    public final void setCampaignUnlockType(@Nullable Integer num) {
        this.campaignUnlockType = num;
    }

    public final void setCampaignUnlockTypeV2(@Nullable Integer num) {
        this.campaignUnlockTypeV2 = num;
    }

    public final void setCanMerge(boolean z10) {
        this.canMerge = z10;
    }

    public final void setCoins(int i10) {
        if (i10 != this.coins) {
            this.coins = i10;
            notifyPropertyChanged(2);
        }
    }

    public final void setCountryCode(@Nullable String str) {
        this.countryCode = str;
    }

    public final void setCurrentSubscriptionOrderNo(@Nullable String str) {
        this.currentSubscriptionOrderNo = str;
    }

    public final void setDaySub(boolean z10) {
        this.isDaySub = z10;
    }

    public final void setDaysOfActiveSubscription(@Nullable Integer num) {
        this.daysOfActiveSubscription = num;
    }

    public final void setDaysOfCancelSubscription(@Nullable Integer num) {
        this.daysOfCancelSubscription = num;
    }

    public final void setDisplayThirdUnsubscribe(boolean z10) {
        this.displayThirdUnsubscribe = z10;
    }

    public final void setDramaBoxConfig(@Nullable RetainConfig retainConfig) {
        this.dramaBoxConfig = retainConfig;
    }

    public final void setFirebaseSource(@Nullable Integer num) {
        this.firebaseSource = num;
    }

    public final void setFirstPayUser(@Nullable Boolean bool) {
        this.isFirstPayUser = bool;
    }

    public final void setFirstTripartitePayUser(@Nullable Boolean bool) {
        this.isFirstTripartitePayUser = bool;
    }

    public final void setHasSubscription(boolean z10) {
        if (z10 != this.hasSubscription) {
            this.hasSubscription = z10;
            notifyPropertyChanged(3);
        }
    }

    public final void setHeadPic(@Nullable String str) {
        this.headPic = str;
    }

    public final void setIaaUser(boolean z10) {
        this.isIaaUser = z10;
    }

    public final void setIdnTelkomsel(boolean z10) {
        this.isIdnTelkomsel = z10;
    }

    public final void setLastPayType(@Nullable Integer num) {
        this.lastPayType = num;
    }

    public final void setNewRegisterUser(boolean z10) {
        this.newRegisterUser = z10;
    }

    public final void setNickName(@Nullable String str) {
        this.nickName = str;
    }

    public final void setOneTouchPayOpen(@Nullable Boolean bool) {
        this.oneTouchPayOpen = bool;
    }

    public final void setPaid(boolean z10) {
        this.isPaid = z10;
    }

    public final void setPix610(boolean z10) {
        this.isPix610 = z10;
    }

    public final void setPix615DayToWeekExperiment(boolean z10) {
        this.isPix615DayToWeekExperiment = z10;
    }

    public final void setReceiveType(@Nullable Integer num) {
        this.receiveType = num;
    }

    public final void setRecharged(boolean z10) {
        this.isRecharged = z10;
    }

    public final void setRegisterCode(@Nullable String str) {
        this.registerCode = str;
    }

    public final void setRenewing(@Nullable Boolean bool) {
        this.isRenewing = bool;
    }

    public final void setShowMobileLogin(boolean z10) {
        this.isShowMobileLogin = z10;
    }

    public final void setSubscription(boolean z10) {
        if (z10 != this.isSubscription) {
            this.isSubscription = z10;
            notifyPropertyChanged(7);
        }
    }

    public final void setSubscriptionBlack(@Nullable Boolean bool) {
        this.isSubscriptionBlack = bool;
    }

    public final void setSubscriptionEndTime(long j10) {
        this.subscriptionEndTime = j10;
    }

    public final void setSubscriptionOrderType(@Nullable Integer num) {
        this.subscriptionOrderType = num;
    }

    public final void setSubscriptionType(int i10) {
        this.subscriptionType = i10;
    }

    public final void setSupportOneTouchPayment(@Nullable Boolean bool) {
        this.supportOneTouchPayment = bool;
    }

    public final void setThirdSubscription(boolean z10) {
        this.isThirdSubscription = z10;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public final void setTotalPayCount(@Nullable Integer num) {
        this.totalPayCount = num;
    }

    public final void setTripartiteCode(@Nullable Integer num) {
        this.tripartiteCode = num;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public final void setUserCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userCode = str;
    }

    @NotNull
    public String toString() {
        return "Account(type=" + this.type + ", userCode='" + getUserCode() + "', registerCode=" + this.registerCode + ", token=" + this.token + ", headPic=" + this.headPic + ", nickName=" + this.nickName + ", countryCode=" + this.countryCode + ", isRecharged=" + this.isRecharged + ", autoUnlock=" + this.autoUnlock + ", canMerge=" + this.canMerge + ", firebaseSource=" + this.firebaseSource + ", tripartiteCode=" + this.tripartiteCode + ", isShowMobileLogin=" + this.isShowMobileLogin + ", isFirstTripartitePayUser=" + this.isFirstTripartitePayUser + ", lastPayType=" + this.lastPayType + ", isFirstPayUser=" + this.isFirstPayUser + ", isThirdSubscription=" + this.isThirdSubscription + ", totalPayCount=" + this.totalPayCount + ", isPaid=" + this.isPaid + ", isPix610=" + this.isPix610 + ", isIaaUser=" + this.isIaaUser + ", isIdnTelkomsel=" + this.isIdnTelkomsel + ", attributionTimestamp=" + this.attributionTimestamp + ", currentSubscriptionOrderNo=" + this.currentSubscriptionOrderNo + ", subscriptionOrderType=" + this.subscriptionOrderType + ", displayThirdUnsubscribe=" + this.displayThirdUnsubscribe + ", isPix615DayToWeekExperiment=" + this.isPix615DayToWeekExperiment + ", isDaySub=" + this.isDaySub + ", isSubscription=" + this.isSubscription + ", subscriptionType=" + this.subscriptionType + ", subscriptionEndTime=" + this.subscriptionEndTime + ", receiveType=" + this.receiveType + ", hasSubscription=" + this.hasSubscription + ", isSubscriptionBlack=" + this.isSubscriptionBlack + ", audienceIdList=" + this.audienceIdList + ", coins=" + this.coins + ", bonus=" + this.bonus + ", campaignUnlockType=" + this.campaignUnlockType + ", campaignUnlockTypeV2=" + this.campaignUnlockTypeV2 + ", campaignShortPlayCodeV2=" + this.campaignShortPlayCodeV2 + ", allowRecharge=" + this.allowRecharge + ", dramaBoxConfig=" + this.dramaBoxConfig + ", supportOneTouchPayment=" + this.supportOneTouchPayment + ", oneTouchPayOpen=" + this.oneTouchPayOpen + ", isRenewing=" + this.isRenewing + ", daysOfActiveSubscription=" + this.daysOfActiveSubscription + ", daysOfCancelSubscription=" + this.daysOfCancelSubscription + ')';
    }
}
