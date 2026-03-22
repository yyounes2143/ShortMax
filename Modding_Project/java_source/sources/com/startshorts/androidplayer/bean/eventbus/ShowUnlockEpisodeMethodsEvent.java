package com.startshorts.androidplayer.bean.eventbus;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShowUnlockEpisodeMethodsEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShowUnlockEpisodeMethodsEvent {
    @NotNull
    private final String action;
    @NotNull
    private final BaseEpisode episode;

    public ShowUnlockEpisodeMethodsEvent(@NotNull BaseEpisode episode, @NotNull String action) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(action, "action");
        this.episode = episode;
        this.action = action;
    }

    public static /* synthetic */ ShowUnlockEpisodeMethodsEvent copy$default(ShowUnlockEpisodeMethodsEvent showUnlockEpisodeMethodsEvent, BaseEpisode baseEpisode, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            baseEpisode = showUnlockEpisodeMethodsEvent.episode;
        }
        if ((i10 & 2) != 0) {
            str = showUnlockEpisodeMethodsEvent.action;
        }
        return showUnlockEpisodeMethodsEvent.copy(baseEpisode, str);
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
    public final ShowUnlockEpisodeMethodsEvent copy(@NotNull BaseEpisode episode, @NotNull String action) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(action, "action");
        return new ShowUnlockEpisodeMethodsEvent(episode, action);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShowUnlockEpisodeMethodsEvent)) {
            return false;
        }
        ShowUnlockEpisodeMethodsEvent showUnlockEpisodeMethodsEvent = (ShowUnlockEpisodeMethodsEvent) obj;
        if (Intrinsics.areEqual(this.episode, showUnlockEpisodeMethodsEvent.episode) && Intrinsics.areEqual(this.action, showUnlockEpisodeMethodsEvent.action)) {
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
        return "ShowUnlockEpisodeMethodsEvent(episode=" + this.episode + ", action=" + this.action + ')';
    }

    public /* synthetic */ ShowUnlockEpisodeMethodsEvent(BaseEpisode baseEpisode, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseEpisode, (i10 & 2) != 0 ? "" : str);
    }
}
