package com.startshorts.androidplayer.bean.unlock;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockEpisodeByCoinsResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UnlockEpisodeByCoinsResult {
    private final int bonus;
    private final int coins;
    @Nullable
    private final List<UnlockEpisodeCost> costs;
    @Nullable
    private final List<BaseEpisode> unlockDramas;

    public UnlockEpisodeByCoinsResult(@Nullable List<BaseEpisode> list, @Nullable List<UnlockEpisodeCost> list2, int i10, int i11) {
        this.unlockDramas = list;
        this.costs = list2;
        this.coins = i10;
        this.bonus = i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UnlockEpisodeByCoinsResult copy$default(UnlockEpisodeByCoinsResult unlockEpisodeByCoinsResult, List list, List list2, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            list = unlockEpisodeByCoinsResult.unlockDramas;
        }
        if ((i12 & 2) != 0) {
            list2 = unlockEpisodeByCoinsResult.costs;
        }
        if ((i12 & 4) != 0) {
            i10 = unlockEpisodeByCoinsResult.coins;
        }
        if ((i12 & 8) != 0) {
            i11 = unlockEpisodeByCoinsResult.bonus;
        }
        return unlockEpisodeByCoinsResult.copy(list, list2, i10, i11);
    }

    @Nullable
    public final List<BaseEpisode> component1() {
        return this.unlockDramas;
    }

    @Nullable
    public final List<UnlockEpisodeCost> component2() {
        return this.costs;
    }

    public final int component3() {
        return this.coins;
    }

    public final int component4() {
        return this.bonus;
    }

    @NotNull
    public final UnlockEpisodeByCoinsResult copy(@Nullable List<BaseEpisode> list, @Nullable List<UnlockEpisodeCost> list2, int i10, int i11) {
        return new UnlockEpisodeByCoinsResult(list, list2, i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnlockEpisodeByCoinsResult)) {
            return false;
        }
        UnlockEpisodeByCoinsResult unlockEpisodeByCoinsResult = (UnlockEpisodeByCoinsResult) obj;
        if (Intrinsics.areEqual(this.unlockDramas, unlockEpisodeByCoinsResult.unlockDramas) && Intrinsics.areEqual(this.costs, unlockEpisodeByCoinsResult.costs) && this.coins == unlockEpisodeByCoinsResult.coins && this.bonus == unlockEpisodeByCoinsResult.bonus) {
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

    @Nullable
    public final List<UnlockEpisodeCost> getCosts() {
        return this.costs;
    }

    @Nullable
    public final List<BaseEpisode> getUnlockDramas() {
        return this.unlockDramas;
    }

    public int hashCode() {
        int hashCode;
        List<BaseEpisode> list = this.unlockDramas;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = hashCode * 31;
        List<UnlockEpisodeCost> list2 = this.costs;
        if (list2 != null) {
            i10 = list2.hashCode();
        }
        return ((((i11 + i10) * 31) + Integer.hashCode(this.coins)) * 31) + Integer.hashCode(this.bonus);
    }

    @NotNull
    public String toString() {
        return "UnlockEpisodeByCoinsResult(unlockDramas=" + this.unlockDramas + ", costs=" + this.costs + ", coins=" + this.coins + ", bonus=" + this.bonus + ')';
    }
}
