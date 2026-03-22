package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodePlayingEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodePlayingEvent {
    private final int episodeId;
    private final int episodeNum;
    private final int shortsId;

    public EpisodePlayingEvent(int i10, int i11, int i12) {
        this.shortsId = i10;
        this.episodeId = i11;
        this.episodeNum = i12;
    }

    public static /* synthetic */ EpisodePlayingEvent copy$default(EpisodePlayingEvent episodePlayingEvent, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = episodePlayingEvent.shortsId;
        }
        if ((i13 & 2) != 0) {
            i11 = episodePlayingEvent.episodeId;
        }
        if ((i13 & 4) != 0) {
            i12 = episodePlayingEvent.episodeNum;
        }
        return episodePlayingEvent.copy(i10, i11, i12);
    }

    public final int component1() {
        return this.shortsId;
    }

    public final int component2() {
        return this.episodeId;
    }

    public final int component3() {
        return this.episodeNum;
    }

    @NotNull
    public final EpisodePlayingEvent copy(int i10, int i11, int i12) {
        return new EpisodePlayingEvent(i10, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EpisodePlayingEvent)) {
            return false;
        }
        EpisodePlayingEvent episodePlayingEvent = (EpisodePlayingEvent) obj;
        if (this.shortsId == episodePlayingEvent.shortsId && this.episodeId == episodePlayingEvent.episodeId && this.episodeNum == episodePlayingEvent.episodeNum) {
            return true;
        }
        return false;
    }

    public final int getEpisodeId() {
        return this.episodeId;
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.shortsId) * 31) + Integer.hashCode(this.episodeId)) * 31) + Integer.hashCode(this.episodeNum);
    }

    @NotNull
    public String toString() {
        return "EpisodePlayingEvent(shortsId=" + this.shortsId + ", episodeId=" + this.episodeId + ", episodeNum=" + this.episodeNum + ')';
    }
}
