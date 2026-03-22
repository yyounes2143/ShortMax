package com.startshorts.androidplayer.bean.download;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortTaskInfo.kt */
@Entity(tableName = "short_tasks")
@Metadata
/* loaded from: classes6.dex */
public final class ShortTaskInfo {
    private long addTaskTime;
    @Nullable
    private String content;
    @Nullable
    private String dramaName;
    private boolean hasUnfinishedJob;
    @Nullable
    private String shortCoverUrl;
    @Nullable
    private String shortPlayCode;
    @PrimaryKey
    private int shortPlayId;

    public ShortTaskInfo(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        this.shortPlayId = i10;
        this.shortPlayCode = str;
        this.dramaName = str2;
        this.shortCoverUrl = str3;
        this.content = str4;
    }

    public final long getAddTaskTime() {
        return this.addTaskTime;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getDramaName() {
        return this.dramaName;
    }

    public final boolean getHasUnfinishedJob() {
        return this.hasUnfinishedJob;
    }

    @Nullable
    public final String getShortCoverUrl() {
        return this.shortCoverUrl;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    public final void setAddTaskTime(long j10) {
        this.addTaskTime = j10;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setDramaName(@Nullable String str) {
        this.dramaName = str;
    }

    public final void setHasUnfinishedJob(boolean z10) {
        this.hasUnfinishedJob = z10;
    }

    public final void setShortCoverUrl(@Nullable String str) {
        this.shortCoverUrl = str;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }
}
