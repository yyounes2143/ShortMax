package com.startshorts.androidplayer.bean.immersion;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionShortsInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionShortsInfo {
    private long collectNum;
    @Nullable
    private String cover;
    private boolean isCollected;
    private int preferredResolution;
    @Nullable
    private String shortPlayCode;
    @Nullable
    private String shortsName;
    private int videoType = 1;
    private int shortsId = -1;
    private int bindShortsId = -1;
    @Nullable
    private String upack = "";
    @Nullable
    private Boolean isRelease = Boolean.FALSE;

    public final int getBindShortsId() {
        return this.bindShortsId;
    }

    public final long getCollectNum() {
        return this.collectNum;
    }

    @Nullable
    public final String getCover() {
        return this.cover;
    }

    public final int getPreferredResolution() {
        return this.preferredResolution;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    @Nullable
    public final String getShortsName() {
        return this.shortsName;
    }

    @Nullable
    public final String getUpack() {
        return this.upack;
    }

    public final int getVideoType() {
        return this.videoType;
    }

    public final boolean isCollected() {
        return this.isCollected;
    }

    @Nullable
    public final Boolean isRelease() {
        return this.isRelease;
    }

    public final boolean isTrailer() {
        if (this.videoType == 4) {
            return true;
        }
        return false;
    }

    public final void setBindShortsId(int i10) {
        this.bindShortsId = i10;
    }

    public final void setCollectNum(long j10) {
        this.collectNum = j10;
    }

    public final void setCollected(boolean z10) {
        this.isCollected = z10;
    }

    public final void setCover(@Nullable String str) {
        this.cover = str;
    }

    public final void setPreferredResolution(int i10) {
        this.preferredResolution = i10;
    }

    public final void setRelease(@Nullable Boolean bool) {
        this.isRelease = bool;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortsId(int i10) {
        this.shortsId = i10;
    }

    public final void setShortsName(@Nullable String str) {
        this.shortsName = str;
    }

    public final void setUpack(@Nullable String str) {
        this.upack = str;
    }

    public final void setVideoType(int i10) {
        this.videoType = i10;
    }

    @NotNull
    public String toString() {
        return "ImmersionShortsInfo(videoType=" + this.videoType + ", shortsId=" + this.shortsId + ", shortPlayCode=" + this.shortPlayCode + ", shortsName=" + this.shortsName + ", cover=" + this.cover + ", bindShortsId=" + this.bindShortsId + ", isCollected=" + this.isCollected + ", collectNum=" + this.collectNum + ')';
    }
}
