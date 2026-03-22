package com.startshorts.androidplayer.bean.eventbus;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ScrollToEpisodeEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ScrollToEpisodeEvent {
    @NotNull
    private final String action;
    @NotNull
    private final BaseEpisode episode;

    public ScrollToEpisodeEvent(@NotNull BaseEpisode episode, @NotNull String action) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(action, "action");
        this.episode = episode;
        this.action = action;
    }

    public static /* synthetic */ ScrollToEpisodeEvent copy$default(ScrollToEpisodeEvent scrollToEpisodeEvent, BaseEpisode baseEpisode, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            baseEpisode = scrollToEpisodeEvent.episode;
        }
        if ((i10 & 2) != 0) {
            str = scrollToEpisodeEvent.action;
        }
        return scrollToEpisodeEvent.copy(baseEpisode, str);
    }

    @NotNull
    public final BaseEpisode component1() {
        return this.episode;
    }

    @NotNull
    public final String component2() {
        return this.action;
    }

    @NotNull
    public final ScrollToEpisodeEvent copy(@NotNull BaseEpisode episode, @NotNull String action) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(action, "action");
        return new ScrollToEpisodeEvent(episode, action);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScrollToEpisodeEvent)) {
            return false;
        }
        ScrollToEpisodeEvent scrollToEpisodeEvent = (ScrollToEpisodeEvent) obj;
        if (Intrinsics.areEqual(this.episode, scrollToEpisodeEvent.episode) && Intrinsics.areEqual(this.action, scrollToEpisodeEvent.action)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAction() {
        return this.action;
    }

    @NotNull
    public final BaseEpisode getEpisode() {
        return this.episode;
    }

    public int hashCode() {
        return (this.episode.hashCode() * 31) + this.action.hashCode();
    }

    @NotNull
    public String toString() {
        return "ScrollToEpisodeEvent(episode=" + this.episode + ", action=" + this.action + ')';
    }
}
