package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshEpisodeNumEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RefreshEpisodeNumEvent {
    private final int episodeNum;
    private final int shortsId;

    public RefreshEpisodeNumEvent(int i10, int i11) {
        this.shortsId = i10;
        this.episodeNum = i11;
    }

    public static /* synthetic */ RefreshEpisodeNumEvent copy$default(RefreshEpisodeNumEvent refreshEpisodeNumEvent, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = refreshEpisodeNumEvent.shortsId;
        }
        if ((i12 & 2) != 0) {
            i11 = refreshEpisodeNumEvent.episodeNum;
        }
        return refreshEpisodeNumEvent.copy(i10, i11);
    }

    public final int component1() {
        return this.shortsId;
    }

    public final int component2() {
        return this.episodeNum;
    }

    @NotNull
    public final RefreshEpisodeNumEvent copy(int i10, int i11) {
        return new RefreshEpisodeNumEvent(i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RefreshEpisodeNumEvent)) {
            return false;
        }
        RefreshEpisodeNumEvent refreshEpisodeNumEvent = (RefreshEpisodeNumEvent) obj;
        if (this.shortsId == refreshEpisodeNumEvent.shortsId && this.episodeNum == refreshEpisodeNumEvent.episodeNum) {
            return true;
        }
        return false;
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    public int hashCode() {
        return (Integer.hashCode(this.shortsId) * 31) + Integer.hashCode(this.episodeNum);
    }

    @NotNull
    public String toString() {
        return "RefreshEpisodeNumEvent(shortsId=" + this.shortsId + ", episodeNum=" + this.episodeNum + ')';
    }
}
