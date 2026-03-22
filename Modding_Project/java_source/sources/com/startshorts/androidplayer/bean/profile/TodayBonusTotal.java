package com.startshorts.androidplayer.bean.profile;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TodayBonusTotal.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TodayBonusTotal {
    private final int userTodayBonusRemain;
    private int userTodayBonusTotal;

    public TodayBonusTotal(int i10, int i11) {
        this.userTodayBonusTotal = i10;
        this.userTodayBonusRemain = i11;
    }

    public static /* synthetic */ TodayBonusTotal copy$default(TodayBonusTotal todayBonusTotal, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = todayBonusTotal.userTodayBonusTotal;
        }
        if ((i12 & 2) != 0) {
            i11 = todayBonusTotal.userTodayBonusRemain;
        }
        return todayBonusTotal.copy(i10, i11);
    }

    public final int component1() {
        return this.userTodayBonusTotal;
    }

    public final int component2() {
        return this.userTodayBonusRemain;
    }

    @NotNull
    public final TodayBonusTotal copy(int i10, int i11) {
        return new TodayBonusTotal(i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TodayBonusTotal)) {
            return false;
        }
        TodayBonusTotal todayBonusTotal = (TodayBonusTotal) obj;
        if (this.userTodayBonusTotal == todayBonusTotal.userTodayBonusTotal && this.userTodayBonusRemain == todayBonusTotal.userTodayBonusRemain) {
            return true;
        }
        return false;
    }

    public final int getUserTodayBonusRemain() {
        return this.userTodayBonusRemain;
    }

    public final int getUserTodayBonusTotal() {
        return this.userTodayBonusTotal;
    }

    public int hashCode() {
        return (Integer.hashCode(this.userTodayBonusTotal) * 31) + Integer.hashCode(this.userTodayBonusRemain);
    }

    public final void setUserTodayBonusTotal(int i10) {
        this.userTodayBonusTotal = i10;
    }

    @NotNull
    public String toString() {
        return "TodayBonusTotal(userTodayBonusTotal=" + this.userTodayBonusTotal + ", userTodayBonusRemain=" + this.userTodayBonusRemain + ')';
    }
}
