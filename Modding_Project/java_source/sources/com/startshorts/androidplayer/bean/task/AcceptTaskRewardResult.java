package com.startshorts.androidplayer.bean.task;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AcceptTaskRewardResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AcceptTaskRewardResult {
    private final int taskBonus;

    public AcceptTaskRewardResult(int i10) {
        this.taskBonus = i10;
    }

    public static /* synthetic */ AcceptTaskRewardResult copy$default(AcceptTaskRewardResult acceptTaskRewardResult, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = acceptTaskRewardResult.taskBonus;
        }
        return acceptTaskRewardResult.copy(i10);
    }

    public final int component1() {
        return this.taskBonus;
    }

    @NotNull
    public final AcceptTaskRewardResult copy(int i10) {
        return new AcceptTaskRewardResult(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AcceptTaskRewardResult) && this.taskBonus == ((AcceptTaskRewardResult) obj).taskBonus) {
            return true;
        }
        return false;
    }

    public final int getTaskBonus() {
        return this.taskBonus;
    }

    public int hashCode() {
        return Integer.hashCode(this.taskBonus);
    }

    @NotNull
    public String toString() {
        return "AcceptTaskRewardResult(taskBonus=" + this.taskBonus + ')';
    }
}
