package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeUnlockedEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeUnlockedFailEvent {
    private final int episodeId;

    public EpisodeUnlockedFailEvent(int i10) {
        this.episodeId = i10;
    }

    public static /* synthetic */ EpisodeUnlockedFailEvent copy$default(EpisodeUnlockedFailEvent episodeUnlockedFailEvent, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = episodeUnlockedFailEvent.episodeId;
        }
        return episodeUnlockedFailEvent.copy(i10);
    }

    public final int component1() {
        return this.episodeId;
    }

    @NotNull
    public final EpisodeUnlockedFailEvent copy(int i10) {
        return new EpisodeUnlockedFailEvent(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof EpisodeUnlockedFailEvent) && this.episodeId == ((EpisodeUnlockedFailEvent) obj).episodeId) {
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
        return "EpisodeUnlockedFailEvent(episodeId=" + this.episodeId + ')';
    }
}
