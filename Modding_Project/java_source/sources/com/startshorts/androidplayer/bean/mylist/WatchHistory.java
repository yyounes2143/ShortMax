package com.startshorts.androidplayer.bean.mylist;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WatchHistory.kt */
@Metadata
/* loaded from: classes6.dex */
public final class WatchHistory extends SelectableItem {
    @Nullable
    private String coverId;
    private int dramaId;
    private int episodeNum;

    /* renamed from: id  reason: collision with root package name */
    private long f38118id;
    private long lastWatchTime;
    @Nullable
    private String shortPlayCode;
    private int shortPlayId;
    @Nullable
    private String shortPlayName;
    private int totalEpisodes;
    @NotNull
    private String upack = "";
    private int isCollect = 2;

    @Nullable
    public final String getCoverId() {
        return this.coverId;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    public final long getId() {
        return this.f38118id;
    }

    public final long getLastWatchTime() {
        return this.lastWatchTime;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    public final int getTotalEpisodes() {
        return this.totalEpisodes;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    public final int isCollect() {
        return this.isCollect;
    }

    public final void setCollect(int i10) {
        this.isCollect = i10;
    }

    public final void setCoverId(@Nullable String str) {
        this.coverId = str;
    }

    public final void setDramaId(int i10) {
        this.dramaId = i10;
    }

    public final void setEpisodeNum(int i10) {
        this.episodeNum = i10;
    }

    public final void setId(long j10) {
        this.f38118id = j10;
    }

    public final void setLastWatchTime(long j10) {
        this.lastWatchTime = j10;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    public final void setShortPlayName(@Nullable String str) {
        this.shortPlayName = str;
    }

    public final void setTotalEpisodes(int i10) {
        this.totalEpisodes = i10;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "WatchHistory(id=" + this.f38118id + ", shortPlayId=" + this.shortPlayId + ", shortPlayName=" + this.shortPlayName + ", coverId=" + this.coverId + ", episodeNum=" + this.episodeNum + ", totalEpisodes=" + this.totalEpisodes + ", lastWatchTime=" + this.lastWatchTime + ")+" + super.toString();
    }
}
