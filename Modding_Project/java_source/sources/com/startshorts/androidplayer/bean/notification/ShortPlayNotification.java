package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import lk.c;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortPlayNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortPlayNotification {
    @c
    @Nullable
    private Bitmap bitmap;
    @Nullable
    private String cover;
    @Nullable
    private Integer dramaNum;
    @Nullable
    private Integer episodeId;
    @Nullable
    private Integer shortId;
    @Nullable
    private String shortPlayCode;
    @Nullable
    private String title;
    @Nullable
    private String upack;
    @Nullable
    private Integer videoType = 1;

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @Nullable
    public final String getCover() {
        return this.cover;
    }

    @Nullable
    public final Integer getDramaNum() {
        return this.dramaNum;
    }

    @Nullable
    public final Integer getEpisodeId() {
        return this.episodeId;
    }

    @Nullable
    public final Integer getShortId() {
        return this.shortId;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUpack() {
        return this.upack;
    }

    @Nullable
    public final Integer getVideoType() {
        return this.videoType;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setCover(@Nullable String str) {
        this.cover = str;
    }

    public final void setDramaNum(@Nullable Integer num) {
        this.dramaNum = num;
    }

    public final void setEpisodeId(@Nullable Integer num) {
        this.episodeId = num;
    }

    public final void setShortId(@Nullable Integer num) {
        this.shortId = num;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setUpack(@Nullable String str) {
        this.upack = str;
    }

    public final void setVideoType(@Nullable Integer num) {
        this.videoType = num;
    }
}
