package com.startshorts.androidplayer.bean.shorts;

import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DailyWatchPopResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DailyWatchPopResult {
    @NotNull
    private List<NewbieWatchBonus> list;
    @Nullable
    private BaseShorts shortPlay;

    public DailyWatchPopResult() {
        this(null, null, 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DailyWatchPopResult copy$default(DailyWatchPopResult dailyWatchPopResult, List list, BaseShorts baseShorts, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = dailyWatchPopResult.list;
        }
        if ((i10 & 2) != 0) {
            baseShorts = dailyWatchPopResult.shortPlay;
        }
        return dailyWatchPopResult.copy(list, baseShorts);
    }

    @NotNull
    public final List<NewbieWatchBonus> component1() {
        return this.list;
    }

    @Nullable
    public final BaseShorts component2() {
        return this.shortPlay;
    }

    @NotNull
    public final DailyWatchPopResult copy(@NotNull List<NewbieWatchBonus> list, @Nullable BaseShorts baseShorts) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new DailyWatchPopResult(list, baseShorts);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DailyWatchPopResult)) {
            return false;
        }
        DailyWatchPopResult dailyWatchPopResult = (DailyWatchPopResult) obj;
        if (Intrinsics.areEqual(this.list, dailyWatchPopResult.list) && Intrinsics.areEqual(this.shortPlay, dailyWatchPopResult.shortPlay)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<NewbieWatchBonus> getList() {
        return this.list;
    }

    @Nullable
    public final BaseShorts getShortPlay() {
        return this.shortPlay;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.list.hashCode() * 31;
        BaseShorts baseShorts = this.shortPlay;
        if (baseShorts == null) {
            hashCode = 0;
        } else {
            hashCode = baseShorts.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final void setList(@NotNull List<NewbieWatchBonus> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }

    public final void setShortPlay(@Nullable BaseShorts baseShorts) {
        this.shortPlay = baseShorts;
    }

    @NotNull
    public String toString() {
        return "DailyWatchPopResult(list=" + this.list + ", shortPlay=" + this.shortPlay + ')';
    }

    public DailyWatchPopResult(@NotNull List<NewbieWatchBonus> list, @Nullable BaseShorts baseShorts) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.shortPlay = baseShorts;
    }

    public /* synthetic */ DailyWatchPopResult(List list, BaseShorts baseShorts, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new ArrayList() : list, (i10 & 2) != 0 ? null : baseShorts);
    }
}
