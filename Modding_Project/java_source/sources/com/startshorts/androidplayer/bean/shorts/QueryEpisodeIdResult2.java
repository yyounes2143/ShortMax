package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryEpisodeIdResult2.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryEpisodeIdResult2 {
    private final int dramaId;

    public QueryEpisodeIdResult2(int i10) {
        this.dramaId = i10;
    }

    public static /* synthetic */ QueryEpisodeIdResult2 copy$default(QueryEpisodeIdResult2 queryEpisodeIdResult2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = queryEpisodeIdResult2.dramaId;
        }
        return queryEpisodeIdResult2.copy(i10);
    }

    public final int component1() {
        return this.dramaId;
    }

    @NotNull
    public final QueryEpisodeIdResult2 copy(int i10) {
        return new QueryEpisodeIdResult2(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof QueryEpisodeIdResult2) && this.dramaId == ((QueryEpisodeIdResult2) obj).dramaId) {
            return true;
        }
        return false;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    public int hashCode() {
        return Integer.hashCode(this.dramaId);
    }

    @NotNull
    public String toString() {
        return "QueryEpisodeIdResult2(dramaId=" + this.dramaId + ')';
    }
}
