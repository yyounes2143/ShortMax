package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeCodec.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeCodec {
    @Nullable
    private String video_1080;
    @Nullable
    private String video_480;
    @Nullable
    private String video_720;

    @Nullable
    public final String getCodec(int i10) {
        if (i10 != 480) {
            if (i10 != 720) {
                if (i10 != 1080) {
                    return null;
                }
                return this.video_1080;
            }
            return this.video_720;
        }
        return this.video_480;
    }

    @NotNull
    public String toString() {
        return "EpisodeCodec(video_480=" + this.video_480 + ", video_720=" + this.video_720 + ", video_1080=" + this.video_1080 + ')';
    }
}
