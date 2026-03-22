package com.startshorts.androidplayer.bean.checkin;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewbieWatchRewardResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class NewbieWatchRewardResult {
    private final int balanceBonus;
    private final int balanceCoins;
    private final int taskBonus;
    @NotNull
    private List<Integer> taskIds;

    public NewbieWatchRewardResult(int i10, int i11, int i12, @NotNull List<Integer> taskIds) {
        Intrinsics.checkNotNullParameter(taskIds, "taskIds");
        this.balanceCoins = i10;
        this.balanceBonus = i11;
        this.taskBonus = i12;
        this.taskIds = taskIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewbieWatchRewardResult copy$default(NewbieWatchRewardResult newbieWatchRewardResult, int i10, int i11, int i12, List list, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = newbieWatchRewardResult.balanceCoins;
        }
        if ((i13 & 2) != 0) {
            i11 = newbieWatchRewardResult.balanceBonus;
        }
        if ((i13 & 4) != 0) {
            i12 = newbieWatchRewardResult.taskBonus;
        }
        if ((i13 & 8) != 0) {
            list = newbieWatchRewardResult.taskIds;
        }
        return newbieWatchRewardResult.copy(i10, i11, i12, list);
    }

    public final int component1() {
        return this.balanceCoins;
    }

    public final int component2() {
        return this.balanceBonus;
    }

    public final int component3() {
        return this.taskBonus;
    }

    @NotNull
    public final List<Integer> component4() {
        return this.taskIds;
    }

    @NotNull
    public final NewbieWatchRewardResult copy(int i10, int i11, int i12, @NotNull List<Integer> taskIds) {
        Intrinsics.checkNotNullParameter(taskIds, "taskIds");
        return new NewbieWatchRewardResult(i10, i11, i12, taskIds);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NewbieWatchRewardResult)) {
            return false;
        }
        NewbieWatchRewardResult newbieWatchRewardResult = (NewbieWatchRewardResult) obj;
        if (this.balanceCoins == newbieWatchRewardResult.balanceCoins && this.balanceBonus == newbieWatchRewardResult.balanceBonus && this.taskBonus == newbieWatchRewardResult.taskBonus && Intrinsics.areEqual(this.taskIds, newbieWatchRewardResult.taskIds)) {
            return true;
        }
        return false;
    }

    public final int getBalanceBonus() {
        return this.balanceBonus;
    }

    public final int getBalanceCoins() {
        return this.balanceCoins;
    }

    public final int getTaskBonus() {
        return this.taskBonus;
    }

    @NotNull
    public final List<Integer> getTaskIds() {
        return this.taskIds;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.balanceCoins) * 31) + Integer.hashCode(this.balanceBonus)) * 31) + Integer.hashCode(this.taskBonus)) * 31) + this.taskIds.hashCode();
    }

    public final void setTaskIds(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.taskIds = list;
    }

    @NotNull
    public String toString() {
        return "NewbieWatchRewardResult(balanceCoins=" + this.balanceCoins + ", balanceBonus=" + this.balanceBonus + ", taskBonus=" + this.taskBonus + ", taskIds=" + this.taskIds + ')';
    }

    public /* synthetic */ NewbieWatchRewardResult(int i10, int i11, int i12, List list, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, (i13 & 8) != 0 ? new ArrayList() : list);
    }
}
