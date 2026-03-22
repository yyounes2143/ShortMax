package com.startshorts.androidplayer.bean.eventbus;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryVideoEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryVideoEvent {
    @NotNull
    private final BaseEpisode episode;

    public QueryVideoEvent(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.episode = episode;
    }

    public static /* synthetic */ QueryVideoEvent copy$default(QueryVideoEvent queryVideoEvent, BaseEpisode baseEpisode, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            baseEpisode = queryVideoEvent.episode;
        }
        return queryVideoEvent.copy(baseEpisode);
    }

    @NotNull
    public final BaseEpisode component1() {
        return this.episode;
    }

    @NotNull
    public final QueryVideoEvent copy(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        return new QueryVideoEvent(episode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof QueryVideoEvent) && Intrinsics.areEqual(this.episode, ((QueryVideoEvent) obj).episode)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final BaseEpisode getEpisode() {
        return this.episode;
    }

    public int hashCode() {
        return this.episode.hashCode();
    }

    @NotNull
    public String toString() {
        return "QueryVideoEvent(episode=" + this.episode + ')';
    }
}
