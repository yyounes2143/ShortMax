package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecommendShorts.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RecommendShorts extends BaseEpisode {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final List<String> RANDOM_CHOOSE_LIST = CollectionsKt.t("95%", "90%", "85%", "80%", "75%", "70%", "69%");
    @Nullable
    private String coverUrl;
    private int dramaId;
    @Nullable
    private String firstVideoUrl;
    public String randomChoose;
    @Nullable
    private String subscript;

    /* compiled from: RecommendShorts.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<String> getRANDOM_CHOOSE_LIST() {
            return RecommendShorts.RANDOM_CHOOSE_LIST;
        }

        private Companion() {
        }
    }

    @Nullable
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    @NotNull
    public final String getRandomChoose() {
        String str = this.randomChoose;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("randomChoose");
        return null;
    }

    @Nullable
    public final String getSubscript() {
        return this.subscript;
    }

    @Override // com.startshorts.androidplayer.bean.shorts.BaseEpisode
    @Nullable
    public String parseVideoUrl(int i10) {
        EpisodeVideo episodeVideo;
        String str = this.firstVideoUrl;
        if (str == null || (episodeVideo = (EpisodeVideo) l.b(str, EpisodeVideo.class)) == null) {
            return null;
        }
        return EpisodeVideo.targetUrl$default(episodeVideo, 0, 1, null);
    }

    public final void setCoverUrl(@Nullable String str) {
        this.coverUrl = str;
    }

    public final void setDramaId(int i10) {
        this.dramaId = i10;
    }

    public final void setRandomChoose(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.randomChoose = str;
    }

    public final void setSubscript(@Nullable String str) {
        this.subscript = str;
    }

    @Override // com.startshorts.androidplayer.bean.shorts.BaseEpisode
    @NotNull
    public String toString() {
        return "RecommendShorts(dramaId=" + this.dramaId + ", subscript=" + this.subscript + ", coverUrl=" + this.coverUrl + ", firstVideoUrl=" + this.firstVideoUrl + ", randomChoose='" + getRandomChoose() + "')";
    }
}
