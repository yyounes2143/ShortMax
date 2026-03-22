package com.startshorts.androidplayer.bean.checkin;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewbieWatchTask.kt */
@Metadata
/* loaded from: classes6.dex */
public final class NewbieWatchBonus {
    private final int bonus;
    private final int cumsumBonus;
    private boolean isReceive;
    private final int payTime;
    private final int taskId;

    public NewbieWatchBonus(int i10, int i11, int i12, int i13, boolean z10) {
        this.taskId = i10;
        this.payTime = i11;
        this.cumsumBonus = i12;
        this.bonus = i13;
        this.isReceive = z10;
    }

    public static /* synthetic */ NewbieWatchBonus copy$default(NewbieWatchBonus newbieWatchBonus, int i10, int i11, int i12, int i13, boolean z10, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = newbieWatchBonus.taskId;
        }
        if ((i14 & 2) != 0) {
            i11 = newbieWatchBonus.payTime;
        }
        int i15 = i11;
        if ((i14 & 4) != 0) {
            i12 = newbieWatchBonus.cumsumBonus;
        }
        int i16 = i12;
        if ((i14 & 8) != 0) {
            i13 = newbieWatchBonus.bonus;
        }
        int i17 = i13;
        if ((i14 & 16) != 0) {
            z10 = newbieWatchBonus.isReceive;
        }
        return newbieWatchBonus.copy(i10, i15, i16, i17, z10);
    }

    public final int component1() {
        return this.taskId;
    }

    public final int component2() {
        return this.payTime;
    }

    public final int component3() {
        return this.cumsumBonus;
    }

    public final int component4() {
        return this.bonus;
    }

    public final boolean component5() {
        return this.isReceive;
    }

    @NotNull
    public final NewbieWatchBonus copy(int i10, int i11, int i12, int i13, boolean z10) {
        return new NewbieWatchBonus(i10, i11, i12, i13, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NewbieWatchBonus)) {
            return false;
        }
        NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) obj;
        if (this.taskId == newbieWatchBonus.taskId && this.payTime == newbieWatchBonus.payTime && this.cumsumBonus == newbieWatchBonus.cumsumBonus && this.bonus == newbieWatchBonus.bonus && this.isReceive == newbieWatchBonus.isReceive) {
            return true;
        }
        return false;
    }

    public final int getBonus() {
        return this.bonus;
    }

    public final int getCumsumBonus() {
        return this.cumsumBonus;
    }

    public final int getPayTime() {
        return this.payTime;
    }

    public final int getTaskId() {
        return this.taskId;
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.taskId) * 31) + Integer.hashCode(this.payTime)) * 31) + Integer.hashCode(this.cumsumBonus)) * 31) + Integer.hashCode(this.bonus)) * 31) + Boolean.hashCode(this.isReceive);
    }

    public final boolean isReceive() {
        return this.isReceive;
    }

    public final void setReceive(boolean z10) {
        this.isReceive = z10;
    }

    @NotNull
    public String toString() {
        return "NewbieWatchBonus(taskId=" + this.taskId + ", payTime=" + this.payTime + ", cumsumBonus=" + this.cumsumBonus + ", bonus=" + this.bonus + ", isReceive=" + this.isReceive + ')';
    }
}
