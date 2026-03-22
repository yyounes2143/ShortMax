package com.startshorts.androidplayer.bean.ad;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskRewardReceive.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TaskRewardReceive {
    @Nullable
    private final Integer receiveId;
    private final int rewardValue;

    public TaskRewardReceive(@Nullable Integer num, int i10) {
        this.receiveId = num;
        this.rewardValue = i10;
    }

    public static /* synthetic */ TaskRewardReceive copy$default(TaskRewardReceive taskRewardReceive, Integer num, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = taskRewardReceive.receiveId;
        }
        if ((i11 & 2) != 0) {
            i10 = taskRewardReceive.rewardValue;
        }
        return taskRewardReceive.copy(num, i10);
    }

    @Nullable
    public final Integer component1() {
        return this.receiveId;
    }

    public final int component2() {
        return this.rewardValue;
    }

    @NotNull
    public final TaskRewardReceive copy(@Nullable Integer num, int i10) {
        return new TaskRewardReceive(num, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TaskRewardReceive)) {
            return false;
        }
        TaskRewardReceive taskRewardReceive = (TaskRewardReceive) obj;
        if (Intrinsics.areEqual(this.receiveId, taskRewardReceive.receiveId) && this.rewardValue == taskRewardReceive.rewardValue) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getReceiveId() {
        return this.receiveId;
    }

    public final int getRewardValue() {
        return this.rewardValue;
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.receiveId;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return (hashCode * 31) + Integer.hashCode(this.rewardValue);
    }

    @NotNull
    public String toString() {
        return "TaskRewardReceive(receiveId=" + this.receiveId + ", rewardValue=" + this.rewardValue + ')';
    }
}
