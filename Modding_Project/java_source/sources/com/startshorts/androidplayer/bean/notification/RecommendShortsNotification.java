package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecommendShortsNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RecommendShortsNotification extends ShortsEpisode {
    @c
    @Nullable
    private Bitmap cover;
    private boolean fromLocal;
    @NotNull
    private String language = "";
    @Nullable
    private String recommendation;
    @Nullable
    private String title;

    @Nullable
    public final Bitmap getCover() {
        return this.cover;
    }

    public final boolean getFromLocal() {
        return this.fromLocal;
    }

    @NotNull
    public final String getLanguage() {
        return this.language;
    }

    @Nullable
    public final String getRecommendation() {
        return this.recommendation;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setCover(@Nullable Bitmap bitmap) {
        this.cover = bitmap;
    }

    public final void setFromLocal(boolean z10) {
        this.fromLocal = z10;
    }

    public final void setLanguage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.language = str;
    }

    public final void setRecommendation(@Nullable String str) {
        this.recommendation = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    @Override // com.startshorts.androidplayer.bean.shorts.ShortsEpisode, com.startshorts.androidplayer.bean.shorts.BaseEpisode
    @NotNull
    public String toString() {
        return "RecommendShortsNotification(cover=" + this.cover + ", title=" + this.title + ", recommendation=" + this.recommendation + ", language='" + this.language + "', fromLocal=" + this.fromLocal + ')';
    }
}
