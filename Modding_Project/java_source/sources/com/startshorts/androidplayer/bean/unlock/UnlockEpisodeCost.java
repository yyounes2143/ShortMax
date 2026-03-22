package com.startshorts.androidplayer.bean.unlock;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockEpisodeCost.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UnlockEpisodeCost {
    private final int bonus;
    private final int coins;
    private final int dramaId;
    private final int useBonus;
    private final int useCoins;

    public UnlockEpisodeCost(int i10, int i11, int i12, int i13, int i14) {
        this.dramaId = i10;
        this.useBonus = i11;
        this.useCoins = i12;
        this.bonus = i13;
        this.coins = i14;
    }

    public static /* synthetic */ UnlockEpisodeCost copy$default(UnlockEpisodeCost unlockEpisodeCost, int i10, int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i10 = unlockEpisodeCost.dramaId;
        }
        if ((i15 & 2) != 0) {
            i11 = unlockEpisodeCost.useBonus;
        }
        int i16 = i11;
        if ((i15 & 4) != 0) {
            i12 = unlockEpisodeCost.useCoins;
        }
        int i17 = i12;
        if ((i15 & 8) != 0) {
            i13 = unlockEpisodeCost.bonus;
        }
        int i18 = i13;
        if ((i15 & 16) != 0) {
            i14 = unlockEpisodeCost.coins;
        }
        return unlockEpisodeCost.copy(i10, i16, i17, i18, i14);
    }

    public final int component1() {
        return this.dramaId;
    }

    public final int component2() {
        return this.useBonus;
    }

    public final int component3() {
        return this.useCoins;
    }

    public final int component4() {
        return this.bonus;
    }

    public final int component5() {
        return this.coins;
    }

    @NotNull
    public final UnlockEpisodeCost copy(int i10, int i11, int i12, int i13, int i14) {
        return new UnlockEpisodeCost(i10, i11, i12, i13, i14);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnlockEpisodeCost)) {
            return false;
        }
        UnlockEpisodeCost unlockEpisodeCost = (UnlockEpisodeCost) obj;
        if (this.dramaId == unlockEpisodeCost.dramaId && this.useBonus == unlockEpisodeCost.useBonus && this.useCoins == unlockEpisodeCost.useCoins && this.bonus == unlockEpisodeCost.bonus && this.coins == unlockEpisodeCost.coins) {
            return true;
        }
        return false;
    }

    public final int getBonus() {
        return this.bonus;
    }

    public final int getCoins() {
        return this.coins;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    public final int getUseBonus() {
        return this.useBonus;
    }

    public final int getUseCoins() {
        return this.useCoins;
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.dramaId) * 31) + Integer.hashCode(this.useBonus)) * 31) + Integer.hashCode(this.useCoins)) * 31) + Integer.hashCode(this.bonus)) * 31) + Integer.hashCode(this.coins);
    }

    @NotNull
    public String toString() {
        return "UnlockEpisodeCost(dramaId=" + this.dramaId + ", useBonus=" + this.useBonus + ", useCoins=" + this.useCoins + ", bonus=" + this.bonus + ", coins=" + this.coins + ')';
    }
}
