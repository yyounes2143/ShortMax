package com.startshorts.androidplayer.bean.unlock;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockEpisodeByAdResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UnlockEpisodeByAdResult {
    private final int canWatchAdNum;
    @NotNull
    private final BaseEpisode nextDrama;
    private final int totalWatchAdNum;

    public UnlockEpisodeByAdResult(int i10, int i11, @NotNull BaseEpisode nextDrama) {
        Intrinsics.checkNotNullParameter(nextDrama, "nextDrama");
        this.canWatchAdNum = i10;
        this.totalWatchAdNum = i11;
        this.nextDrama = nextDrama;
    }

    public static /* synthetic */ UnlockEpisodeByAdResult copy$default(UnlockEpisodeByAdResult unlockEpisodeByAdResult, int i10, int i11, BaseEpisode baseEpisode, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = unlockEpisodeByAdResult.canWatchAdNum;
        }
        if ((i12 & 2) != 0) {
            i11 = unlockEpisodeByAdResult.totalWatchAdNum;
        }
        if ((i12 & 4) != 0) {
            baseEpisode = unlockEpisodeByAdResult.nextDrama;
        }
        return unlockEpisodeByAdResult.copy(i10, i11, baseEpisode);
    }

    public final int component1() {
        return this.canWatchAdNum;
    }

    public final int component2() {
        return this.totalWatchAdNum;
    }

    @NotNull
    public final BaseEpisode component3() {
        return this.nextDrama;
    }

    @NotNull
    public final UnlockEpisodeByAdResult copy(int i10, int i11, @NotNull BaseEpisode nextDrama) {
        Intrinsics.checkNotNullParameter(nextDrama, "nextDrama");
        return new UnlockEpisodeByAdResult(i10, i11, nextDrama);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnlockEpisodeByAdResult)) {
            return false;
        }
        UnlockEpisodeByAdResult unlockEpisodeByAdResult = (UnlockEpisodeByAdResult) obj;
        if (this.canWatchAdNum == unlockEpisodeByAdResult.canWatchAdNum && this.totalWatchAdNum == unlockEpisodeByAdResult.totalWatchAdNum && Intrinsics.areEqual(this.nextDrama, unlockEpisodeByAdResult.nextDrama)) {
            return true;
        }
        return false;
    }

    public final int getCanWatchAdNum() {
        return this.canWatchAdNum;
    }

    @NotNull
    public final BaseEpisode getNextDrama() {
        return this.nextDrama;
    }

    public final int getTotalWatchAdNum() {
        return this.totalWatchAdNum;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.canWatchAdNum) * 31) + Integer.hashCode(this.totalWatchAdNum)) * 31) + this.nextDrama.hashCode();
    }

    @NotNull
    public String toString() {
        return "UnlockEpisodeByAdResult(canWatchAdNum=" + this.canWatchAdNum + ", totalWatchAdNum=" + this.totalWatchAdNum + ", nextDrama=" + this.nextDrama + ')';
    }
}
