package com.startshorts.androidplayer.bean.subs;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPayExchangePremiumResult.kt */
@Metadata
/* loaded from: classes6.dex */
public class GPayExchangePremiumResult {
    private int bonus;
    private int coins;
    private int giveBonus;
    private boolean isSubscription;
    @Nullable
    private RechargeUserInfo rechargeUserInfo;
    private boolean subscriptionConfirm;
    @Nullable
    private String userCodeHaveRight;
    private long subscriptionEndTime = -1;
    private int subscriptionType = -1;
    private int receiveType = -1;

    /* compiled from: GPayExchangePremiumResult.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class RechargeUserInfo {
        @Nullable
        private final String area_code;
        @Nullable
        private final String country_code;
        @Nullable
        private final String nickName;
        @Nullable
        private final String phone;
        @Nullable
        private final Integer provider;
        @Nullable
        private final String providerId;
        @Nullable
        private final String userCode;

        public RechargeUserInfo(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
            this.nickName = str;
            this.providerId = str2;
            this.provider = num;
            this.userCode = str3;
            this.phone = str4;
            this.area_code = str5;
            this.country_code = str6;
        }

        public static /* synthetic */ RechargeUserInfo copy$default(RechargeUserInfo rechargeUserInfo, String str, String str2, Integer num, String str3, String str4, String str5, String str6, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = rechargeUserInfo.nickName;
            }
            if ((i10 & 2) != 0) {
                str2 = rechargeUserInfo.providerId;
            }
            String str7 = str2;
            if ((i10 & 4) != 0) {
                num = rechargeUserInfo.provider;
            }
            Integer num2 = num;
            if ((i10 & 8) != 0) {
                str3 = rechargeUserInfo.userCode;
            }
            String str8 = str3;
            if ((i10 & 16) != 0) {
                str4 = rechargeUserInfo.phone;
            }
            String str9 = str4;
            if ((i10 & 32) != 0) {
                str5 = rechargeUserInfo.area_code;
            }
            String str10 = str5;
            if ((i10 & 64) != 0) {
                str6 = rechargeUserInfo.country_code;
            }
            return rechargeUserInfo.copy(str, str7, num2, str8, str9, str10, str6);
        }

        @Nullable
        public final String component1() {
            return this.nickName;
        }

        @Nullable
        public final String component2() {
            return this.providerId;
        }

        @Nullable
        public final Integer component3() {
            return this.provider;
        }

        @Nullable
        public final String component4() {
            return this.userCode;
        }

        @Nullable
        public final String component5() {
            return this.phone;
        }

        @Nullable
        public final String component6() {
            return this.area_code;
        }

        @Nullable
        public final String component7() {
            return this.country_code;
        }

        @NotNull
        public final RechargeUserInfo copy(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
            return new RechargeUserInfo(str, str2, num, str3, str4, str5, str6);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RechargeUserInfo)) {
                return false;
            }
            RechargeUserInfo rechargeUserInfo = (RechargeUserInfo) obj;
            if (Intrinsics.areEqual(this.nickName, rechargeUserInfo.nickName) && Intrinsics.areEqual(this.providerId, rechargeUserInfo.providerId) && Intrinsics.areEqual(this.provider, rechargeUserInfo.provider) && Intrinsics.areEqual(this.userCode, rechargeUserInfo.userCode) && Intrinsics.areEqual(this.phone, rechargeUserInfo.phone) && Intrinsics.areEqual(this.area_code, rechargeUserInfo.area_code) && Intrinsics.areEqual(this.country_code, rechargeUserInfo.country_code)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getArea_code() {
            return this.area_code;
        }

        @Nullable
        public final String getCountry_code() {
            return this.country_code;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getPhone() {
            return this.phone;
        }

        @Nullable
        public final Integer getProvider() {
            return this.provider;
        }

        @Nullable
        public final String getProviderId() {
            return this.providerId;
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
            String str = this.nickName;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            String str2 = this.providerId;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            Integer num = this.provider;
            if (num == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = num.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str3 = this.userCode;
            if (str3 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str3.hashCode();
            }
            int i14 = (i13 + hashCode4) * 31;
            String str4 = this.phone;
            if (str4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str4.hashCode();
            }
            int i15 = (i14 + hashCode5) * 31;
            String str5 = this.area_code;
            if (str5 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str5.hashCode();
            }
            int i16 = (i15 + hashCode6) * 31;
            String str6 = this.country_code;
            if (str6 != null) {
                i10 = str6.hashCode();
            }
            return i16 + i10;
        }

        @NotNull
        public String toString() {
            return "RechargeUserInfo(nickName=" + this.nickName + ", providerId=" + this.providerId + ", provider=" + this.provider + ", userCode=" + this.userCode + ", phone=" + this.phone + ", area_code=" + this.area_code + ", country_code=" + this.country_code + ')';
        }
    }

    public final int getBonus() {
        return this.bonus;
    }

    public final int getCoins() {
        return this.coins;
    }

    public final int getGiveBonus() {
        return this.giveBonus;
    }

    public final int getReceiveType() {
        int i10 = this.receiveType;
        if (i10 == -1) {
            return 1;
        }
        return i10;
    }

    @Nullable
    public final RechargeUserInfo getRechargeUserInfo() {
        return this.rechargeUserInfo;
    }

    public final boolean getSubscriptionConfirm() {
        return this.subscriptionConfirm;
    }

    public final long getSubscriptionEndTime() {
        return this.subscriptionEndTime;
    }

    public final int getSubscriptionType() {
        return this.subscriptionType;
    }

    @Nullable
    public final String getUserCodeHaveRight() {
        return this.userCodeHaveRight;
    }

    public final boolean isSubscription() {
        return this.isSubscription;
    }

    public final void setBonus(int i10) {
        this.bonus = i10;
    }

    public final void setCoins(int i10) {
        this.coins = i10;
    }

    public final void setGiveBonus(int i10) {
        this.giveBonus = i10;
    }

    public final void setReceiveType(int i10) {
        this.receiveType = i10;
    }

    public final void setRechargeUserInfo(@Nullable RechargeUserInfo rechargeUserInfo) {
        this.rechargeUserInfo = rechargeUserInfo;
    }

    public final void setSubscription(boolean z10) {
        this.isSubscription = z10;
    }

    public final void setSubscriptionConfirm(boolean z10) {
        this.subscriptionConfirm = z10;
    }

    public final void setSubscriptionEndTime(long j10) {
        this.subscriptionEndTime = j10;
    }

    public final void setSubscriptionType(int i10) {
        this.subscriptionType = i10;
    }

    public final void setUserCodeHaveRight(@Nullable String str) {
        this.userCodeHaveRight = str;
    }

    @NotNull
    public String toString() {
        return "GPayExchangePremiumResult(isSubscription=" + this.isSubscription + ", subscriptionEndTime=" + this.subscriptionEndTime + ", subscriptionType=" + this.subscriptionType + ", coins=" + this.coins + ", bonus=" + this.bonus + ", subscriptionConfirm=" + this.subscriptionConfirm + ", receiveType=" + getReceiveType() + ", giveBonus=" + this.giveBonus + ')';
    }
}
