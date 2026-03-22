package com.startshorts.androidplayer.bean.task;

import android.content.Context;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import jk.v;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Task.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Task {
    public static final int TASK_ALERT_WINDOW_PERMISSION = 7;
    public static final int TASK_EMAIL = 2;
    public static final int TASK_FACEBOOK = 1;
    public static final int TASK_FOLLOW_FACEBOOK = 8;
    public static final int TASK_FOLLOW_INSTAGRAM = 11;
    public static final int TASK_FOLLOW_TIKTOK = 10;
    public static final int TASK_FOLLOW_YOUTUBE = 9;
    public static final int TASK_GOOGLE = 5;
    public static final int TASK_NOTIFICATION_PERMISSION = 4;
    public static final int TASK_PHONE_NUMBER = 3;
    private int completeTaskTimes;
    @Nullable
    private final String icon;

    /* renamed from: id  reason: collision with root package name */
    private final int f38134id;
    private int receiveRewardsNum;
    private final int taskBonus;
    @Nullable
    private final String taskName;
    private int taskType;
    @Nullable
    private String taskUrl;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Integer[] showHotIcon = {1, 8, 9};
    @NotNull
    private static final Integer[] followTaskList = {8, 9, 10, 11};

    /* compiled from: Task.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Integer[] getFollowTaskList() {
            return Task.followTaskList;
        }

        @NotNull
        public final Integer[] getShowHotIcon() {
            return Task.showHotIcon;
        }

        private Companion() {
        }
    }

    public final boolean acceptable() {
        int i10 = this.completeTaskTimes;
        if (i10 == 0 || this.receiveRewardsNum >= i10) {
            return false;
        }
        return true;
    }

    public final boolean available() {
        int i10 = this.completeTaskTimes;
        if (i10 == 0 || this.receiveRewardsNum < i10) {
            return true;
        }
        return false;
    }

    public final int getCompleteTaskTimes() {
        return this.completeTaskTimes;
    }

    @NotNull
    public final String getFormatButton(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.completeTaskTimes == 0) {
            String string = context.getString(R$string.rewards_activity_go);
            Intrinsics.checkNotNull(string);
            return string;
        }
        String string2 = context.getString(R$string.rewards_activity_watch_ad_get);
        Intrinsics.checkNotNull(string2);
        return string2;
    }

    @NotNull
    public final String getFormatRemark(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int i10 = R$string.common_bonus;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(this.taskBonus);
        String string = context.getString(i10, v.a(sb2.toString()));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @NotNull
    public final String getFormatRemarkNew() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(this.taskBonus);
        return sb2.toString();
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    public final int getId() {
        return this.f38134id;
    }

    public final int getTaskBonus() {
        return this.taskBonus;
    }

    public final int getTaskDefaultResIcon() {
        switch (this.taskType) {
            case 1:
                return R$drawable.task_facebook_icon;
            case 2:
                return R$drawable.task_email_icon;
            case 3:
                return R$drawable.task_phone_icon;
            case 4:
                return R$drawable.task_notification_icon;
            case 5:
                return R$drawable.task_google_icon;
            case 6:
            default:
                return R$drawable.task_cions_icon;
            case 7:
                return R$drawable.task_alert_window_icon;
            case 8:
                return R$drawable.ic_follow_facebook;
            case 9:
                return R$drawable.ic_follow_youtube;
            case 10:
                return R$drawable.ic_follow_tiktok;
            case 11:
                return R$drawable.ic_follow_instagram;
        }
    }

    @Nullable
    public final String getTaskName() {
        return this.taskName;
    }

    public final int getTaskType() {
        return this.taskType;
    }

    @Nullable
    public final String getTaskUrl() {
        return this.taskUrl;
    }

    public final boolean isHotVisible() {
        return n.f0(showHotIcon, Integer.valueOf(this.taskType));
    }

    public final void setCompleteTaskTimes(int i10) {
        this.completeTaskTimes = i10;
    }

    public final void setTaskType(int i10) {
        this.taskType = i10;
    }

    public final void setTaskUrl(@Nullable String str) {
        this.taskUrl = str;
    }

    @NotNull
    public String toString() {
        return "Task(id=" + this.f38134id + ", taskType=" + this.taskType + ", taskName=" + this.taskName + ", taskBonus=" + this.taskBonus + ", completeTaskTimes=" + this.completeTaskTimes + ", receiveRewardsNum=" + this.receiveRewardsNum + "), taskUrl=" + this.taskUrl;
    }
}
