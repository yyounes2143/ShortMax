package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryVideoEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryVideoFailEvent {
    private final int episodeId;

    public QueryVideoFailEvent(int i10) {
        this.episodeId = i10;
    }

    public static /* synthetic */ QueryVideoFailEvent copy$default(QueryVideoFailEvent queryVideoFailEvent, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = queryVideoFailEvent.episodeId;
        }
        return queryVideoFailEvent.copy(i10);
    }

    public final int component1() {
        return this.episodeId;
    }

    @NotNull
    public final QueryVideoFailEvent copy(int i10) {
        return new QueryVideoFailEvent(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof QueryVideoFailEvent) && this.episodeId == ((QueryVideoFailEvent) obj).episodeId) {
            return true;
        }
        return false;
    }

    public final int getEpisodeId() {
        return this.episodeId;
    }

    public int hashCode() {
        return Integer.hashCode(this.episodeId);
    }

    @NotNull
    public String toString() {
        return "QueryVideoFailEvent(episodeId=" + this.episodeId + ')';
    }
}
