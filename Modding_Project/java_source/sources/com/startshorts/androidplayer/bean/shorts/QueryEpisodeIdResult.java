package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryEpisodeIdResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryEpisodeIdResult {
    private final int dramId;
    private final int episodeNum;

    public QueryEpisodeIdResult(int i10, int i11) {
        this.episodeNum = i10;
        this.dramId = i11;
    }

    public static /* synthetic */ QueryEpisodeIdResult copy$default(QueryEpisodeIdResult queryEpisodeIdResult, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = queryEpisodeIdResult.episodeNum;
        }
        if ((i12 & 2) != 0) {
            i11 = queryEpisodeIdResult.dramId;
        }
        return queryEpisodeIdResult.copy(i10, i11);
    }

    public final int component1() {
        return this.episodeNum;
    }

    public final int component2() {
        return this.dramId;
    }

    @NotNull
    public final QueryEpisodeIdResult copy(int i10, int i11) {
        return new QueryEpisodeIdResult(i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryEpisodeIdResult)) {
            return false;
        }
        QueryEpisodeIdResult queryEpisodeIdResult = (QueryEpisodeIdResult) obj;
        if (this.episodeNum == queryEpisodeIdResult.episodeNum && this.dramId == queryEpisodeIdResult.dramId) {
            return true;
        }
        return false;
    }

    public final int getDramId() {
        return this.dramId;
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    public int hashCode() {
        return (Integer.hashCode(this.episodeNum) * 31) + Integer.hashCode(this.dramId);
    }

    @NotNull
    public String toString() {
        return "QueryEpisodeIdResult(episodeNum=" + this.episodeNum + ", dramId=" + this.dramId + ')';
    }
}
