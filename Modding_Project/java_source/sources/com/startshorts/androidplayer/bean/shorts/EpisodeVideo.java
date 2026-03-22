package com.startshorts.androidplayer.bean.shorts;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeVideo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEpisodeVideo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpisodeVideo.kt\ncom/startshorts/androidplayer/bean/shorts/EpisodeVideo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,24:1\n295#2,2:25\n*S KotlinDebug\n*F\n+ 1 EpisodeVideo.kt\ncom/startshorts/androidplayer/bean/shorts/EpisodeVideo\n*L\n19#1:25,2\n*E\n"})
/* loaded from: classes6.dex */
public final class EpisodeVideo {
    @Nullable
    private String video_1080;
    @Nullable
    private String video_480;
    @Nullable
    private String video_720;

    public static /* synthetic */ String targetUrl$default(EpisodeVideo episodeVideo, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 720;
        }
        return episodeVideo.targetUrl(i10);
    }

    @Nullable
    public final String getVideo_1080() {
        return this.video_1080;
    }

    @Nullable
    public final String getVideo_480() {
        return this.video_480;
    }

    @Nullable
    public final String getVideo_720() {
        return this.video_720;
    }

    public final void setVideo_1080(@Nullable String str) {
        this.video_1080 = str;
    }

    public final void setVideo_480(@Nullable String str) {
        this.video_480 = str;
    }

    public final void setVideo_720(@Nullable String str) {
        this.video_720 = str;
    }

    @Nullable
    public final String targetUrl(int i10) {
        List q10;
        Object obj;
        boolean z10;
        if (i10 != 720) {
            if (i10 != 1080) {
                q10 = CollectionsKt.q(this.video_480, this.video_720, this.video_1080);
            } else {
                q10 = CollectionsKt.q(this.video_1080, this.video_720, this.video_480);
            }
        } else {
            q10 = CollectionsKt.q(this.video_720, this.video_1080, this.video_480);
        }
        Iterator it = q10.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                String str = (String) obj;
                if (str != null && str.length() != 0) {
                    z10 = false;
                    continue;
                } else {
                    z10 = true;
                    continue;
                }
                if (!z10) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (String) obj;
    }

    @NotNull
    public String toString() {
        return "EpisodeVideo(video_480=" + this.video_480 + ", video_720=" + this.video_720 + ", video_1080=" + this.video_1080 + ')';
    }
}
