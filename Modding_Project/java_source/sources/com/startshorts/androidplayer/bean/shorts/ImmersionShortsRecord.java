package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImmersionShortsRecord.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionShortsRecord {
    private int videoType = 1;

    /* renamed from: id  reason: collision with root package name */
    private int f38129id = -1;
    private int totalEpisodeNum = -1;

    public final int getId() {
        return this.f38129id;
    }

    public final int getTotalEpisodeNum() {
        return this.totalEpisodeNum;
    }

    public final int getVideoType() {
        return this.videoType;
    }

    public final void setId(int i10) {
        this.f38129id = i10;
    }

    public final void setTotalEpisodeNum(int i10) {
        this.totalEpisodeNum = i10;
    }

    public final void setVideoType(int i10) {
        this.videoType = i10;
    }

    @NotNull
    public String toString() {
        return "ImmersionShortsRecord(videoType=" + this.videoType + ", id=" + this.f38129id + ", totalEpisodeNum=" + this.totalEpisodeNum + ')';
    }
}
