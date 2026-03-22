package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EpisodeDetail.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeDetail extends BaseEpisode {
    private boolean playing;

    public final boolean getPlaying() {
        return this.playing;
    }

    public final void setPlaying(boolean z10) {
        this.playing = z10;
    }

    @Override // com.startshorts.androidplayer.bean.shorts.BaseEpisode
    @NotNull
    public String toString() {
        return "EpisodeDetail(playing=" + this.playing + ')';
    }
}
