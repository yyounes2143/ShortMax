package com.startshorts.androidplayer.bean.checkin;

import android.content.Context;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.utils.DeviceUtil;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SignInAdInfoResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SignInAdInfoResult {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int REDIRECT_TYPE_AD = 1;
    public static final int REDIRECT_TYPE_INNER_H5 = 3;
    public static final int REDIRECT_TYPE_OUTSIDE_H5 = 2;
    private final int adReward;
    private final int canWatchNum;
    private final int completeNum;
    private final int conditionValue;
    private final int interval;
    private final int nextAdReward;
    private final int receiveBonus;
    @Nullable
    private final Integer redirectType;
    @Nullable
    private final String redirectUrl;
    @NotNull
    private final String requestId;
    private final int sumBonus;
    private final int sumNum;
    @Nullable
    private final Integer taskCondition;
    @Nullable
    private final Integer taskContent;
    @NotNull
    private final String taskDescription;
    private final int taskId;
    @Nullable
    private final String taskName;
    @Nullable
    private final Integer taskSortId;
    @Nullable
    private final Integer taskType;

    /* compiled from: SignInAdInfoResult.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getFormatBonus(@NotNull Context context, @Nullable Integer num) {
            int i10;
            Intrinsics.checkNotNullParameter(context, "context");
            int i11 = R$string.common_bonus;
            StringBuilder sb2 = new StringBuilder();
            sb2.append('+');
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            sb2.append(i10);
            String string = context.getString(i11, v.a(sb2.toString()));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }

        private Companion() {
        }
    }

    public SignInAdInfoResult() {
        this(0, null, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, 0, null, null, null, 524287, null);
    }

    public static /* synthetic */ SignInAdInfoResult copy$default(SignInAdInfoResult signInAdInfoResult, int i10, String str, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, String str2, Integer num, Integer num2, String str3, Integer num3, int i19, Integer num4, String str4, Integer num5, int i20, Object obj) {
        int i21;
        String str5;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        String str6;
        Integer num6;
        Integer num7;
        String str7;
        Integer num8;
        int i30;
        Integer num9;
        String str8;
        Integer num10;
        if ((i20 & 1) != 0) {
            i21 = signInAdInfoResult.taskId;
        } else {
            i21 = i10;
        }
        if ((i20 & 2) != 0) {
            str5 = signInAdInfoResult.requestId;
        } else {
            str5 = str;
        }
        if ((i20 & 4) != 0) {
            i22 = signInAdInfoResult.completeNum;
        } else {
            i22 = i11;
        }
        if ((i20 & 8) != 0) {
            i23 = signInAdInfoResult.sumNum;
        } else {
            i23 = i12;
        }
        if ((i20 & 16) != 0) {
            i24 = signInAdInfoResult.canWatchNum;
        } else {
            i24 = i13;
        }
        if ((i20 & 32) != 0) {
            i25 = signInAdInfoResult.receiveBonus;
        } else {
            i25 = i14;
        }
        if ((i20 & 64) != 0) {
            i26 = signInAdInfoResult.adReward;
        } else {
            i26 = i15;
        }
        if ((i20 & 128) != 0) {
            i27 = signInAdInfoResult.interval;
        } else {
            i27 = i16;
        }
        if ((i20 & 256) != 0) {
            i28 = signInAdInfoResult.nextAdReward;
        } else {
            i28 = i17;
        }
        if ((i20 & 512) != 0) {
            i29 = signInAdInfoResult.sumBonus;
        } else {
            i29 = i18;
        }
        if ((i20 & 1024) != 0) {
            str6 = signInAdInfoResult.taskDescription;
        } else {
            str6 = str2;
        }
        if ((i20 & 2048) != 0) {
            num6 = signInAdInfoResult.taskType;
        } else {
            num6 = num;
        }
        if ((i20 & 4096) != 0) {
            num7 = signInAdInfoResult.taskContent;
        } else {
            num7 = num2;
        }
        if ((i20 & 8192) != 0) {
            str7 = signInAdInfoResult.taskName;
        } else {
            str7 = str3;
        }
        String str9 = str7;
        if ((i20 & 16384) != 0) {
            num8 = signInAdInfoResult.taskCondition;
        } else {
            num8 = num3;
        }
        Integer num11 = num8;
        if ((i20 & 32768) != 0) {
            i30 = signInAdInfoResult.conditionValue;
        } else {
            i30 = i19;
        }
        int i31 = i30;
        if ((i20 & 65536) != 0) {
            num9 = signInAdInfoResult.redirectType;
        } else {
            num9 = num4;
        }
        Integer num12 = num9;
        if ((i20 & 131072) != 0) {
            str8 = signInAdInfoResult.redirectUrl;
        } else {
            str8 = str4;
        }
        if ((i20 & 262144) != 0) {
            num10 = signInAdInfoResult.taskSortId;
        } else {
            num10 = num5;
        }
        return signInAdInfoResult.copy(i21, str5, i22, i23, i24, i25, i26, i27, i28, i29, str6, num6, num7, str9, num11, i31, num12, str8, num10);
    }

    public final int component1() {
        return this.taskId;
    }

    public final int component10() {
        return this.sumBonus;
    }

    @NotNull
    public final String component11() {
        return this.taskDescription;
    }

    @Nullable
    public final Integer component12() {
        return this.taskType;
    }

    @Nullable
    public final Integer component13() {
        return this.taskContent;
    }

    @Nullable
    public final String component14() {
        return this.taskName;
    }

    @Nullable
    public final Integer component15() {
        return this.taskCondition;
    }

    public final int component16() {
        return this.conditionValue;
    }

    @Nullable
    public final Integer component17() {
        return this.redirectType;
    }

    @Nullable
    public final String component18() {
        return this.redirectUrl;
    }

    @Nullable
    public final Integer component19() {
        return this.taskSortId;
    }

    @NotNull
    public final String component2() {
        return this.requestId;
    }

    public final int component3() {
        return this.completeNum;
    }

    public final int component4() {
        return this.sumNum;
    }

    public final int component5() {
        return this.canWatchNum;
    }

    public final int component6() {
        return this.receiveBonus;
    }

    public final int component7() {
        return this.adReward;
    }

    public final int component8() {
        return this.interval;
    }

    public final int component9() {
        return this.nextAdReward;
    }

    @NotNull
    public final SignInAdInfoResult copy(int i10, @NotNull String requestId, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, @NotNull String taskDescription, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, int i19, @Nullable Integer num4, @Nullable String str2, @Nullable Integer num5) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(taskDescription, "taskDescription");
        return new SignInAdInfoResult(i10, requestId, i11, i12, i13, i14, i15, i16, i17, i18, taskDescription, num, num2, str, num3, i19, num4, str2, num5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignInAdInfoResult)) {
            return false;
        }
        SignInAdInfoResult signInAdInfoResult = (SignInAdInfoResult) obj;
        if (this.taskId == signInAdInfoResult.taskId && Intrinsics.areEqual(this.requestId, signInAdInfoResult.requestId) && this.completeNum == signInAdInfoResult.completeNum && this.sumNum == signInAdInfoResult.sumNum && this.canWatchNum == signInAdInfoResult.canWatchNum && this.receiveBonus == signInAdInfoResult.receiveBonus && this.adReward == signInAdInfoResult.adReward && this.interval == signInAdInfoResult.interval && this.nextAdReward == signInAdInfoResult.nextAdReward && this.sumBonus == signInAdInfoResult.sumBonus && Intrinsics.areEqual(this.taskDescription, signInAdInfoResult.taskDescription) && Intrinsics.areEqual(this.taskType, signInAdInfoResult.taskType) && Intrinsics.areEqual(this.taskContent, signInAdInfoResult.taskContent) && Intrinsics.areEqual(this.taskName, signInAdInfoResult.taskName) && Intrinsics.areEqual(this.taskCondition, signInAdInfoResult.taskCondition) && this.conditionValue == signInAdInfoResult.conditionValue && Intrinsics.areEqual(this.redirectType, signInAdInfoResult.redirectType) && Intrinsics.areEqual(this.redirectUrl, signInAdInfoResult.redirectUrl) && Intrinsics.areEqual(this.taskSortId, signInAdInfoResult.taskSortId)) {
            return true;
        }
        return false;
    }

    public final int getAdReward() {
        return this.adReward;
    }

    public final int getCanWatchNum() {
        return this.canWatchNum;
    }

    public final int getCompleteNum() {
        return this.completeNum;
    }

    public final int getConditionValue() {
        return this.conditionValue;
    }

    public final int getInterval() {
        return this.interval;
    }

    public final int getNextAdReward() {
        return this.nextAdReward;
    }

    public final int getReceiveBonus() {
        return this.receiveBonus;
    }

    @Nullable
    public final Integer getRedirectType() {
        return this.redirectType;
    }

    @Nullable
    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    @NotNull
    public final String getRequestId() {
        return this.requestId;
    }

    public final int getSumBonus() {
        return this.sumBonus;
    }

    public final int getSumNum() {
        return this.sumNum;
    }

    @Nullable
    public final Integer getTaskCondition() {
        return this.taskCondition;
    }

    @Nullable
    public final Integer getTaskContent() {
        return this.taskContent;
    }

    @NotNull
    public final String getTaskDescription() {
        return this.taskDescription;
    }

    public final int getTaskId() {
        return this.taskId;
    }

    @Nullable
    public final String getTaskName() {
        return this.taskName;
    }

    @Nullable
    public final Integer getTaskSortId() {
        return this.taskSortId;
    }

    @Nullable
    public final Integer getTaskType() {
        return this.taskType;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7 = ((((((((((((((((((((Integer.hashCode(this.taskId) * 31) + this.requestId.hashCode()) * 31) + Integer.hashCode(this.completeNum)) * 31) + Integer.hashCode(this.sumNum)) * 31) + Integer.hashCode(this.canWatchNum)) * 31) + Integer.hashCode(this.receiveBonus)) * 31) + Integer.hashCode(this.adReward)) * 31) + Integer.hashCode(this.interval)) * 31) + Integer.hashCode(this.nextAdReward)) * 31) + Integer.hashCode(this.sumBonus)) * 31) + this.taskDescription.hashCode()) * 31;
        Integer num = this.taskType;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = (hashCode7 + hashCode) * 31;
        Integer num2 = this.taskContent;
        if (num2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str = this.taskName;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Integer num3 = this.taskCondition;
        if (num3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num3.hashCode();
        }
        int hashCode8 = (((i13 + hashCode4) * 31) + Integer.hashCode(this.conditionValue)) * 31;
        Integer num4 = this.redirectType;
        if (num4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = num4.hashCode();
        }
        int i14 = (hashCode8 + hashCode5) * 31;
        String str2 = this.redirectUrl;
        if (str2 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str2.hashCode();
        }
        int i15 = (i14 + hashCode6) * 31;
        Integer num5 = this.taskSortId;
        if (num5 != null) {
            i10 = num5.hashCode();
        }
        return i15 + i10;
    }

    public final boolean isAd() {
        int i10;
        Integer num = this.redirectType;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        if (i10 != 1) {
            return false;
        }
        return true;
    }

    public final boolean isInnerH5() {
        int i10;
        Integer num = this.redirectType;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        if (i10 != 3) {
            return false;
        }
        return true;
    }

    public final boolean isOutsideH5() {
        int i10;
        Integer num = this.redirectType;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        if (i10 != 2) {
            return false;
        }
        return true;
    }

    @NotNull
    public String toString() {
        return "SignInAdInfoResult(taskId=" + this.taskId + ", requestId=" + this.requestId + ", completeNum=" + this.completeNum + ", sumNum=" + this.sumNum + ", canWatchNum=" + this.canWatchNum + ", receiveBonus=" + this.receiveBonus + ", adReward=" + this.adReward + ", interval=" + this.interval + ", nextAdReward=" + this.nextAdReward + ", sumBonus=" + this.sumBonus + ", taskDescription=" + this.taskDescription + ", taskType=" + this.taskType + ", taskContent=" + this.taskContent + ", taskName=" + this.taskName + ", taskCondition=" + this.taskCondition + ", conditionValue=" + this.conditionValue + ", redirectType=" + this.redirectType + ", redirectUrl=" + this.redirectUrl + ", taskSortId=" + this.taskSortId + ')';
    }

    public final boolean validH5(long j10) {
        if (!isOutsideH5() && !isInnerH5()) {
            return false;
        }
        long L = (DeviceUtil.f48146a.L() - j10) / 1000;
        if (L >= 3600 || L < this.conditionValue) {
            return false;
        }
        return true;
    }

    public SignInAdInfoResult(int i10, @NotNull String requestId, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, @NotNull String taskDescription, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, int i19, @Nullable Integer num4, @Nullable String str2, @Nullable Integer num5) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(taskDescription, "taskDescription");
        this.taskId = i10;
        this.requestId = requestId;
        this.completeNum = i11;
        this.sumNum = i12;
        this.canWatchNum = i13;
        this.receiveBonus = i14;
        this.adReward = i15;
        this.interval = i16;
        this.nextAdReward = i17;
        this.sumBonus = i18;
        this.taskDescription = taskDescription;
        this.taskType = num;
        this.taskContent = num2;
        this.taskName = str;
        this.taskCondition = num3;
        this.conditionValue = i19;
        this.redirectType = num4;
        this.redirectUrl = str2;
        this.taskSortId = num5;
    }

    public /* synthetic */ SignInAdInfoResult(int i10, String str, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, String str2, Integer num, Integer num2, String str3, Integer num3, int i19, Integer num4, String str4, Integer num5, int i20, DefaultConstructorMarker defaultConstructorMarker) {
        this((i20 & 1) != 0 ? 0 : i10, (i20 & 2) != 0 ? "" : str, (i20 & 4) != 0 ? 0 : i11, (i20 & 8) != 0 ? 0 : i12, (i20 & 16) != 0 ? 0 : i13, (i20 & 32) != 0 ? 0 : i14, (i20 & 64) != 0 ? 0 : i15, (i20 & 128) != 0 ? 0 : i16, (i20 & 256) != 0 ? 0 : i17, (i20 & 512) != 0 ? 0 : i18, (i20 & 1024) == 0 ? str2 : "", (i20 & 2048) != 0 ? null : num, (i20 & 4096) != 0 ? null : num2, (i20 & 8192) != 0 ? null : str3, (i20 & 16384) != 0 ? null : num3, (i20 & 32768) != 0 ? 0 : i19, (i20 & 65536) != 0 ? null : num4, (i20 & 131072) != 0 ? null : str4, (i20 & 262144) != 0 ? null : num5);
    }
}
