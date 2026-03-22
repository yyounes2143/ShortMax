package com.startshorts.androidplayer.bean.ad;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryWatchAdBonusResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryWatchAdTaskComplete {
    private final boolean isAllCompleted;
    private final int taskBonus;

    public QueryWatchAdTaskComplete(boolean z10, int i10) {
        this.isAllCompleted = z10;
        this.taskBonus = i10;
    }

    public static /* synthetic */ QueryWatchAdTaskComplete copy$default(QueryWatchAdTaskComplete queryWatchAdTaskComplete, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = queryWatchAdTaskComplete.isAllCompleted;
        }
        if ((i11 & 2) != 0) {
            i10 = queryWatchAdTaskComplete.taskBonus;
        }
        return queryWatchAdTaskComplete.copy(z10, i10);
    }

    public final boolean component1() {
        return this.isAllCompleted;
    }

    public final int component2() {
        return this.taskBonus;
    }

    @NotNull
    public final QueryWatchAdTaskComplete copy(boolean z10, int i10) {
        return new QueryWatchAdTaskComplete(z10, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryWatchAdTaskComplete)) {
            return false;
        }
        QueryWatchAdTaskComplete queryWatchAdTaskComplete = (QueryWatchAdTaskComplete) obj;
        if (this.isAllCompleted == queryWatchAdTaskComplete.isAllCompleted && this.taskBonus == queryWatchAdTaskComplete.taskBonus) {
            return true;
        }
        return false;
    }

    public final int getTaskBonus() {
        return this.taskBonus;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.isAllCompleted) * 31) + Integer.hashCode(this.taskBonus);
    }

    public final boolean isAllCompleted() {
        return this.isAllCompleted;
    }

    @NotNull
    public String toString() {
        return "QueryWatchAdTaskComplete(isAllCompleted=" + this.isAllCompleted + ", taskBonus=" + this.taskBonus + ')';
    }
}
