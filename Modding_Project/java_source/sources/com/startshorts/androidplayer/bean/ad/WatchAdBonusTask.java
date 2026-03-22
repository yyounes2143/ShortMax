package com.startshorts.androidplayer.bean.ad;

import android.content.Context;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.List;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WatchAdBonusTask.kt */
@Metadata
/* loaded from: classes6.dex */
public final class WatchAdBonusTask {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int REDIRECT_TYPE_AD = 1;
    public static final int REDIRECT_TYPE_INNER_H5 = 3;
    public static final int REDIRECT_TYPE_OUTSIDE_H5 = 2;
    @Nullable
    private final Integer completedCount;
    private final int conditionValue;
    @Nullable
    private final String icon;
    @Nullable
    private Integer isCompleted;
    @Nullable
    private final Integer redirectType;
    @Nullable
    private final String redirectUrl;
    @NotNull
    private final String requestId;
    @Nullable
    private final List<TaskRewardReceive> rewardReceiveList;
    @Nullable
    private final Integer rewardType;
    @Nullable
    private final Integer rewardValue;
    @Nullable
    private final String rewardValueStr;
    @Nullable
    private final Integer sumCount;
    @Nullable
    private final Integer taskCategory;
    @Nullable
    private final Integer taskCondition;
    @Nullable
    private final Integer taskContent;
    @Nullable
    private final Integer taskCountType;
    @NotNull
    private final String taskDescription;
    private final int taskId;
    @NotNull
    private final String taskName;
    @Nullable
    private final Integer taskSortId;
    @Nullable
    private final Integer taskType;
    @Nullable
    private final String taskTypeName;

    /* compiled from: WatchAdBonusTask.kt */
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

    public WatchAdBonusTask() {
        this(0, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, null, null, null, null, null, null, null, 4194303, null);
    }

    public final int component1() {
        return this.taskId;
    }

    @Nullable
    public final Integer component10() {
        return this.taskType;
    }

    @Nullable
    public final String component11() {
        return this.taskTypeName;
    }

    @Nullable
    public final Integer component12() {
        return this.taskSortId;
    }

    @Nullable
    public final Integer component13() {
        return this.taskContent;
    }

    @Nullable
    public final Integer component14() {
        return this.taskCondition;
    }

    public final int component15() {
        return this.conditionValue;
    }

    @Nullable
    public final Integer component16() {
        return this.redirectType;
    }

    @Nullable
    public final String component17() {
        return this.redirectUrl;
    }

    @Nullable
    public final Integer component18() {
        return this.rewardType;
    }

    @Nullable
    public final Integer component19() {
        return this.rewardValue;
    }

    @NotNull
    public final String component2() {
        return this.requestId;
    }

    @Nullable
    public final String component20() {
        return this.rewardValueStr;
    }

    @Nullable
    public final List<TaskRewardReceive> component21() {
        return this.rewardReceiveList;
    }

    @Nullable
    public final Integer component22() {
        return this.isCompleted;
    }

    @Nullable
    public final String component3() {
        return this.icon;
    }

    @NotNull
    public final String component4() {
        return this.taskName;
    }

    @NotNull
    public final String component5() {
        return this.taskDescription;
    }

    @Nullable
    public final Integer component6() {
        return this.taskCategory;
    }

    @Nullable
    public final Integer component7() {
        return this.taskCountType;
    }

    @Nullable
    public final Integer component8() {
        return this.sumCount;
    }

    @Nullable
    public final Integer component9() {
        return this.completedCount;
    }

    @NotNull
    public final WatchAdBonusTask copy(int i10, @NotNull String requestId, @Nullable String str, @NotNull String taskName, @NotNull String taskDescription, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str2, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, int i11, @Nullable Integer num9, @Nullable String str3, @Nullable Integer num10, @Nullable Integer num11, @Nullable String str4, @Nullable List<TaskRewardReceive> list, @Nullable Integer num12) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(taskDescription, "taskDescription");
        return new WatchAdBonusTask(i10, requestId, str, taskName, taskDescription, num, num2, num3, num4, num5, str2, num6, num7, num8, i11, num9, str3, num10, num11, str4, list, num12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchAdBonusTask)) {
            return false;
        }
        WatchAdBonusTask watchAdBonusTask = (WatchAdBonusTask) obj;
        if (this.taskId == watchAdBonusTask.taskId && Intrinsics.areEqual(this.requestId, watchAdBonusTask.requestId) && Intrinsics.areEqual(this.icon, watchAdBonusTask.icon) && Intrinsics.areEqual(this.taskName, watchAdBonusTask.taskName) && Intrinsics.areEqual(this.taskDescription, watchAdBonusTask.taskDescription) && Intrinsics.areEqual(this.taskCategory, watchAdBonusTask.taskCategory) && Intrinsics.areEqual(this.taskCountType, watchAdBonusTask.taskCountType) && Intrinsics.areEqual(this.sumCount, watchAdBonusTask.sumCount) && Intrinsics.areEqual(this.completedCount, watchAdBonusTask.completedCount) && Intrinsics.areEqual(this.taskType, watchAdBonusTask.taskType) && Intrinsics.areEqual(this.taskTypeName, watchAdBonusTask.taskTypeName) && Intrinsics.areEqual(this.taskSortId, watchAdBonusTask.taskSortId) && Intrinsics.areEqual(this.taskContent, watchAdBonusTask.taskContent) && Intrinsics.areEqual(this.taskCondition, watchAdBonusTask.taskCondition) && this.conditionValue == watchAdBonusTask.conditionValue && Intrinsics.areEqual(this.redirectType, watchAdBonusTask.redirectType) && Intrinsics.areEqual(this.redirectUrl, watchAdBonusTask.redirectUrl) && Intrinsics.areEqual(this.rewardType, watchAdBonusTask.rewardType) && Intrinsics.areEqual(this.rewardValue, watchAdBonusTask.rewardValue) && Intrinsics.areEqual(this.rewardValueStr, watchAdBonusTask.rewardValueStr) && Intrinsics.areEqual(this.rewardReceiveList, watchAdBonusTask.rewardReceiveList) && Intrinsics.areEqual(this.isCompleted, watchAdBonusTask.isCompleted)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getCompletedCount() {
        return this.completedCount;
    }

    public final int getConditionValue() {
        return this.conditionValue;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
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

    @Nullable
    public final List<TaskRewardReceive> getRewardReceiveList() {
        return this.rewardReceiveList;
    }

    @Nullable
    public final Integer getRewardType() {
        return this.rewardType;
    }

    @Nullable
    public final Integer getRewardValue() {
        return this.rewardValue;
    }

    @Nullable
    public final String getRewardValueStr() {
        return this.rewardValueStr;
    }

    @Nullable
    public final Integer getSumCount() {
        return this.sumCount;
    }

    @Nullable
    public final Integer getTaskCategory() {
        return this.taskCategory;
    }

    @Nullable
    public final Integer getTaskCondition() {
        return this.taskCondition;
    }

    @Nullable
    public final Integer getTaskContent() {
        return this.taskContent;
    }

    @Nullable
    public final Integer getTaskCountType() {
        return this.taskCountType;
    }

    @NotNull
    public final String getTaskDescription() {
        return this.taskDescription;
    }

    public final int getTaskId() {
        return this.taskId;
    }

    @NotNull
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

    @Nullable
    public final String getTaskTypeName() {
        return this.taskTypeName;
    }

    public final boolean hasCompleted() {
        int i10;
        Integer num = this.isCompleted;
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

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        int hashCode12;
        int hashCode13;
        int hashCode14;
        int hashCode15;
        int hashCode16;
        int hashCode17 = ((Integer.hashCode(this.taskId) * 31) + this.requestId.hashCode()) * 31;
        String str = this.icon;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode18 = (((((hashCode17 + hashCode) * 31) + this.taskName.hashCode()) * 31) + this.taskDescription.hashCode()) * 31;
        Integer num = this.taskCategory;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i11 = (hashCode18 + hashCode2) * 31;
        Integer num2 = this.taskCountType;
        if (num2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = num2.hashCode();
        }
        int i12 = (i11 + hashCode3) * 31;
        Integer num3 = this.sumCount;
        if (num3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num3.hashCode();
        }
        int i13 = (i12 + hashCode4) * 31;
        Integer num4 = this.completedCount;
        if (num4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = num4.hashCode();
        }
        int i14 = (i13 + hashCode5) * 31;
        Integer num5 = this.taskType;
        if (num5 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = num5.hashCode();
        }
        int i15 = (i14 + hashCode6) * 31;
        String str2 = this.taskTypeName;
        if (str2 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str2.hashCode();
        }
        int i16 = (i15 + hashCode7) * 31;
        Integer num6 = this.taskSortId;
        if (num6 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = num6.hashCode();
        }
        int i17 = (i16 + hashCode8) * 31;
        Integer num7 = this.taskContent;
        if (num7 == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = num7.hashCode();
        }
        int i18 = (i17 + hashCode9) * 31;
        Integer num8 = this.taskCondition;
        if (num8 == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = num8.hashCode();
        }
        int hashCode19 = (((i18 + hashCode10) * 31) + Integer.hashCode(this.conditionValue)) * 31;
        Integer num9 = this.redirectType;
        if (num9 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = num9.hashCode();
        }
        int i19 = (hashCode19 + hashCode11) * 31;
        String str3 = this.redirectUrl;
        if (str3 == null) {
            hashCode12 = 0;
        } else {
            hashCode12 = str3.hashCode();
        }
        int i20 = (i19 + hashCode12) * 31;
        Integer num10 = this.rewardType;
        if (num10 == null) {
            hashCode13 = 0;
        } else {
            hashCode13 = num10.hashCode();
        }
        int i21 = (i20 + hashCode13) * 31;
        Integer num11 = this.rewardValue;
        if (num11 == null) {
            hashCode14 = 0;
        } else {
            hashCode14 = num11.hashCode();
        }
        int i22 = (i21 + hashCode14) * 31;
        String str4 = this.rewardValueStr;
        if (str4 == null) {
            hashCode15 = 0;
        } else {
            hashCode15 = str4.hashCode();
        }
        int i23 = (i22 + hashCode15) * 31;
        List<TaskRewardReceive> list = this.rewardReceiveList;
        if (list == null) {
            hashCode16 = 0;
        } else {
            hashCode16 = list.hashCode();
        }
        int i24 = (i23 + hashCode16) * 31;
        Integer num12 = this.isCompleted;
        if (num12 != null) {
            i10 = num12.hashCode();
        }
        return i24 + i10;
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

    @Nullable
    public final Integer isCompleted() {
        return this.isCompleted;
    }

    public final boolean isContinuedTaskType() {
        int i10;
        Integer num = this.taskCountType;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 1;
        }
        if (i10 == 2) {
            return true;
        }
        return false;
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

    public final void setCompleted(@Nullable Integer num) {
        this.isCompleted = num;
    }

    @NotNull
    public String toString() {
        return "WatchAdBonusTask(taskId=" + this.taskId + ", requestId=" + this.requestId + ", icon=" + this.icon + ", taskName=" + this.taskName + ", taskDescription=" + this.taskDescription + ", taskCategory=" + this.taskCategory + ", taskCountType=" + this.taskCountType + ", sumCount=" + this.sumCount + ", completedCount=" + this.completedCount + ", taskType=" + this.taskType + ", taskTypeName=" + this.taskTypeName + ", taskSortId=" + this.taskSortId + ", taskContent=" + this.taskContent + ", taskCondition=" + this.taskCondition + ", conditionValue=" + this.conditionValue + ", redirectType=" + this.redirectType + ", redirectUrl=" + this.redirectUrl + ", rewardType=" + this.rewardType + ", rewardValue=" + this.rewardValue + ", rewardValueStr=" + this.rewardValueStr + ", rewardReceiveList=" + this.rewardReceiveList + ", isCompleted=" + this.isCompleted + ')';
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

    public WatchAdBonusTask(int i10, @NotNull String requestId, @Nullable String str, @NotNull String taskName, @NotNull String taskDescription, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str2, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, int i11, @Nullable Integer num9, @Nullable String str3, @Nullable Integer num10, @Nullable Integer num11, @Nullable String str4, @Nullable List<TaskRewardReceive> list, @Nullable Integer num12) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(taskDescription, "taskDescription");
        this.taskId = i10;
        this.requestId = requestId;
        this.icon = str;
        this.taskName = taskName;
        this.taskDescription = taskDescription;
        this.taskCategory = num;
        this.taskCountType = num2;
        this.sumCount = num3;
        this.completedCount = num4;
        this.taskType = num5;
        this.taskTypeName = str2;
        this.taskSortId = num6;
        this.taskContent = num7;
        this.taskCondition = num8;
        this.conditionValue = i11;
        this.redirectType = num9;
        this.redirectUrl = str3;
        this.rewardType = num10;
        this.rewardValue = num11;
        this.rewardValueStr = str4;
        this.rewardReceiveList = list;
        this.isCompleted = num12;
    }

    public /* synthetic */ WatchAdBonusTask(int i10, String str, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, String str5, Integer num6, Integer num7, Integer num8, int i11, Integer num9, String str6, Integer num10, Integer num11, String str7, List list, Integer num12, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? "" : str, (i12 & 4) != 0 ? null : str2, (i12 & 8) != 0 ? "" : str3, (i12 & 16) == 0 ? str4 : "", (i12 & 32) != 0 ? null : num, (i12 & 64) != 0 ? null : num2, (i12 & 128) != 0 ? null : num3, (i12 & 256) != 0 ? null : num4, (i12 & 512) != 0 ? null : num5, (i12 & 1024) != 0 ? null : str5, (i12 & 2048) != 0 ? null : num6, (i12 & 4096) != 0 ? null : num7, (i12 & 8192) != 0 ? null : num8, (i12 & 16384) != 0 ? 0 : i11, (i12 & 32768) != 0 ? null : num9, (i12 & 65536) != 0 ? null : str6, (i12 & 131072) != 0 ? null : num10, (i12 & 262144) != 0 ? null : num11, (i12 & 524288) != 0 ? null : str7, (i12 & 1048576) != 0 ? null : list, (i12 & 2097152) != 0 ? null : num12);
    }
}
