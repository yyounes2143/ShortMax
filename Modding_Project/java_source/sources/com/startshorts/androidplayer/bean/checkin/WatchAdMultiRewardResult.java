package com.startshorts.androidplayer.bean.checkin;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WatchAdMultiRewardResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class WatchAdMultiRewardResult {
    private final int bonus;

    public WatchAdMultiRewardResult(int i10) {
        this.bonus = i10;
    }

    public static /* synthetic */ WatchAdMultiRewardResult copy$default(WatchAdMultiRewardResult watchAdMultiRewardResult, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = watchAdMultiRewardResult.bonus;
        }
        return watchAdMultiRewardResult.copy(i10);
    }

    public final int component1() {
        return this.bonus;
    }

    @NotNull
    public final WatchAdMultiRewardResult copy(int i10) {
        return new WatchAdMultiRewardResult(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof WatchAdMultiRewardResult) && this.bonus == ((WatchAdMultiRewardResult) obj).bonus) {
            return true;
        }
        return false;
    }

    public final int getBonus() {
        return this.bonus;
    }

    public int hashCode() {
        return Integer.hashCode(this.bonus);
    }

    @NotNull
    public String toString() {
        return "WatchAdMultiRewardResult(bonus=" + this.bonus + ')';
    }
}
