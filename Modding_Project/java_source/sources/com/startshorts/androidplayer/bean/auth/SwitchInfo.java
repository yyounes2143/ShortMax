package com.startshorts.androidplayer.bean.auth;

import android.content.Context;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwitchInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SwitchInfo {
    public static final int BIND_EMAIL = 50;
    public static final int BIND_FACEBOOK = 20;
    public static final int BIND_GOOGLE = 10;
    public static final int BIND_HUAWEI = 100;
    public static final int BIND_PHONE = 60;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int bindType;
    private final int buttonStatus;
    private final int buttonType;
    private final int coins;
    @NotNull
    private final String hintMsg;
    @NotNull
    private final String providerId;
    private boolean select;
    private final long subscriptionEndTime;
    private final int subscriptionType;
    @NotNull
    private final String userCode;

    /* compiled from: SwitchInfo.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SwitchInfo(@NotNull String userCode, long j10, int i10, int i11, int i12, int i13, @NotNull String providerId, int i14, @NotNull String hintMsg) {
        Intrinsics.checkNotNullParameter(userCode, "userCode");
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        Intrinsics.checkNotNullParameter(hintMsg, "hintMsg");
        this.userCode = userCode;
        this.subscriptionEndTime = j10;
        this.subscriptionType = i10;
        this.coins = i11;
        this.bindType = i12;
        this.buttonType = i13;
        this.providerId = providerId;
        this.buttonStatus = i14;
        this.hintMsg = hintMsg;
    }

    public static /* synthetic */ SwitchInfo copy$default(SwitchInfo switchInfo, String str, long j10, int i10, int i11, int i12, int i13, String str2, int i14, String str3, int i15, Object obj) {
        String str4;
        long j11;
        int i16;
        int i17;
        int i18;
        int i19;
        String str5;
        int i20;
        String str6;
        if ((i15 & 1) != 0) {
            str4 = switchInfo.userCode;
        } else {
            str4 = str;
        }
        if ((i15 & 2) != 0) {
            j11 = switchInfo.subscriptionEndTime;
        } else {
            j11 = j10;
        }
        if ((i15 & 4) != 0) {
            i16 = switchInfo.subscriptionType;
        } else {
            i16 = i10;
        }
        if ((i15 & 8) != 0) {
            i17 = switchInfo.coins;
        } else {
            i17 = i11;
        }
        if ((i15 & 16) != 0) {
            i18 = switchInfo.bindType;
        } else {
            i18 = i12;
        }
        if ((i15 & 32) != 0) {
            i19 = switchInfo.buttonType;
        } else {
            i19 = i13;
        }
        if ((i15 & 64) != 0) {
            str5 = switchInfo.providerId;
        } else {
            str5 = str2;
        }
        if ((i15 & 128) != 0) {
            i20 = switchInfo.buttonStatus;
        } else {
            i20 = i14;
        }
        if ((i15 & 256) != 0) {
            str6 = switchInfo.hintMsg;
        } else {
            str6 = str3;
        }
        return switchInfo.copy(str4, j11, i16, i17, i18, i19, str5, i20, str6);
    }

    @NotNull
    public final String component1() {
        return this.userCode;
    }

    public final long component2() {
        return this.subscriptionEndTime;
    }

    public final int component3() {
        return this.subscriptionType;
    }

    public final int component4() {
        return this.coins;
    }

    public final int component5() {
        return this.bindType;
    }

    public final int component6() {
        return this.buttonType;
    }

    @NotNull
    public final String component7() {
        return this.providerId;
    }

    public final int component8() {
        return this.buttonStatus;
    }

    @NotNull
    public final String component9() {
        return this.hintMsg;
    }

    @NotNull
    public final SwitchInfo copy(@NotNull String userCode, long j10, int i10, int i11, int i12, int i13, @NotNull String providerId, int i14, @NotNull String hintMsg) {
        Intrinsics.checkNotNullParameter(userCode, "userCode");
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        Intrinsics.checkNotNullParameter(hintMsg, "hintMsg");
        return new SwitchInfo(userCode, j10, i10, i11, i12, i13, providerId, i14, hintMsg);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwitchInfo)) {
            return false;
        }
        SwitchInfo switchInfo = (SwitchInfo) obj;
        if (Intrinsics.areEqual(this.userCode, switchInfo.userCode) && this.subscriptionEndTime == switchInfo.subscriptionEndTime && this.subscriptionType == switchInfo.subscriptionType && this.coins == switchInfo.coins && this.bindType == switchInfo.bindType && this.buttonType == switchInfo.buttonType && Intrinsics.areEqual(this.providerId, switchInfo.providerId) && this.buttonStatus == switchInfo.buttonStatus && Intrinsics.areEqual(this.hintMsg, switchInfo.hintMsg)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getBindName(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int i10 = this.bindType;
        if (i10 != 10) {
            if (i10 != 20) {
                if (i10 != 50) {
                    if (i10 != 60) {
                        if (i10 != 100) {
                            return "Visitor";
                        }
                        return "HuaWei";
                    }
                    String string = context.getString(R$string.bind_info_fragment_phone);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    return string;
                }
                String string2 = context.getString(R$string.bind_info_fragment_email);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                return string2;
            }
            return "Facebook";
        }
        return "Google";
    }

    public final int getBindType() {
        return this.bindType;
    }

    public final int getButtonStatus() {
        return this.buttonStatus;
    }

    public final int getButtonType() {
        return this.buttonType;
    }

    public final int getCoins() {
        return this.coins;
    }

    @NotNull
    public final String getCoinsStr() {
        return String.valueOf(this.coins);
    }

    @NotNull
    public final String getHintMsg() {
        return this.hintMsg;
    }

    @NotNull
    public final String getProviderId() {
        return this.providerId;
    }

    public final boolean getSelect() {
        return this.select;
    }

    public final long getSubscriptionEndTime() {
        return this.subscriptionEndTime;
    }

    @NotNull
    public final String getSubscriptionTime() {
        return u.f51776a.e(R$string.profile_subscription_view_expire_time, TimeUtil.e(TimeUtil.f48175a, this.subscriptionEndTime, DeviceUtil.f48146a.e(), null, 4, null));
    }

    public final int getSubscriptionType() {
        return this.subscriptionType;
    }

    @NotNull
    public final String getSubscriptionTypeStr() {
        int i10;
        int i11 = this.subscriptionType;
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 4) {
                    if (i11 != 5) {
                        if (i11 != 6) {
                            if (i11 != 7) {
                                i10 = R$string.profile_subscription_view_weekly_pro_card;
                                return u.f51776a.d(i10);
                            }
                        }
                    }
                }
                i10 = R$string.profile_subscription_view_annual_pro_card;
                return u.f51776a.d(i10);
            }
            i10 = R$string.profile_subscription_view_monthly_pro_card;
            return u.f51776a.d(i10);
        }
        i10 = R$string.profile_subscription_view_weekly_pro_card;
        return u.f51776a.d(i10);
    }

    @NotNull
    public final String getUserCode() {
        return this.userCode;
    }

    @NotNull
    public final String getUserCodeStr(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return u.f51776a.e(R$string.profile_uid_text, String.valueOf(this.userCode));
    }

    public final boolean hasCoin() {
        if (this.coins > 0) {
            return true;
        }
        return false;
    }

    public final boolean hasSelect() {
        return this.select;
    }

    public final boolean hasSubscription() {
        int i10 = this.subscriptionType;
        if (5 > i10 || i10 >= 8) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (((((((((((((((this.userCode.hashCode() * 31) + Long.hashCode(this.subscriptionEndTime)) * 31) + Integer.hashCode(this.subscriptionType)) * 31) + Integer.hashCode(this.coins)) * 31) + Integer.hashCode(this.bindType)) * 31) + Integer.hashCode(this.buttonType)) * 31) + this.providerId.hashCode()) * 31) + Integer.hashCode(this.buttonStatus)) * 31) + this.hintMsg.hashCode();
    }

    public final void setSelect(boolean z10) {
        this.select = z10;
    }

    @NotNull
    public String toString() {
        return "SwitchInfo(userCode=" + this.userCode + ", subscriptionEndTime=" + this.subscriptionEndTime + ", subscriptionType=" + this.subscriptionType + ", coins=" + this.coins + ", bindType=" + this.bindType + ", buttonType=" + this.buttonType + ", providerId=" + this.providerId + ", buttonStatus=" + this.buttonStatus + ", hintMsg=" + this.hintMsg + ')';
    }
}
