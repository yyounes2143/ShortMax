package com.startshorts.androidplayer.bean.download;

import android.os.SystemClock;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.a;
import uh.s;
/* compiled from: DownloadTaskInfo.kt */
@Entity(tableName = "download_tasks")
@Metadata
/* loaded from: classes6.dex */
public final class DownloadTaskInfo {
    @PrimaryKey
    @NotNull
    private String cacheKey;
    @Nullable
    private String content;
    private float downloadProgress;
    @Ignore
    private long downloadSpeed;
    private int downloadState;
    @Nullable
    private String dramaCoverUrl;
    private int dramaId;
    @Nullable
    private String dramaName;
    private int dramaNum;
    private long fileSize;
    @Ignore
    private float lastDownloadProgress;
    @Nullable
    private Integer lock;
    @Ignore
    private long lsatCalculateTime;
    @Nullable
    private String shortCoverUrl;
    @Nullable
    private String shortPlayCode;
    private int shortPlayId;
    private int solution;
    @Nullable
    private String upack;
    @NotNull
    private String url;

    public DownloadTaskInfo(int i10, int i11, int i12, @NotNull String url, int i13, long j10, int i14, @NotNull String cacheKey, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        this.shortPlayId = i10;
        this.dramaId = i11;
        this.dramaNum = i12;
        this.url = url;
        this.solution = i13;
        this.fileSize = j10;
        this.downloadState = i14;
        this.cacheKey = cacheKey;
        this.shortCoverUrl = str;
        this.dramaCoverUrl = str2;
        this.dramaName = str3;
        this.content = str4;
        this.shortPlayCode = str5;
        this.upack = str6;
        this.lock = num;
    }

    @NotNull
    public final String getCacheKey() {
        return this.cacheKey;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    public final float getDownloadProgress() {
        return this.downloadProgress;
    }

    public final long getDownloadSpeed() {
        return this.downloadSpeed;
    }

    public final int getDownloadState() {
        return this.downloadState;
    }

    @NotNull
    public final String getDownloadSubKey() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.shortPlayId);
        sb2.append(':');
        sb2.append(this.dramaId);
        sb2.append(':');
        sb2.append(this.dramaNum);
        return sb2.toString();
    }

    public final long getDownloadedSize() {
        return ((float) this.fileSize) * this.downloadProgress;
    }

    @Nullable
    public final String getDramaCoverUrl() {
        return this.dramaCoverUrl;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    @Nullable
    public final String getDramaName() {
        return this.dramaName;
    }

    public final int getDramaNum() {
        return this.dramaNum;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final float getLastDownloadProgress() {
        return this.lastDownloadProgress;
    }

    @Nullable
    public final Integer getLock() {
        return this.lock;
    }

    public final long getLsatCalculateTime() {
        return this.lsatCalculateTime;
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

    public final int getShowProgress() {
        return (int) (this.downloadProgress * 100);
    }

    @NotNull
    public final String getShowSpeed() {
        return s.a(Long.valueOf(this.downloadSpeed * 1000)) + "/s";
    }

    public final int getSolution() {
        return this.solution;
    }

    @Nullable
    public final String getUpack() {
        return this.upack;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final boolean hasUnFinishJob() {
        int i10 = this.downloadState;
        if (i10 != 6 && i10 != 4) {
            return true;
        }
        return false;
    }

    public final boolean isDownloadAbleItem() {
        int i10 = this.downloadState;
        if (i10 == 1 || i10 == 0) {
            return true;
        }
        return false;
    }

    public final boolean isDownloadingItem() {
        int i10 = this.downloadState;
        if (i10 == 1 || i10 == 3 || i10 == 5 || i10 == 0) {
            return true;
        }
        return false;
    }

    public final boolean isLockType() {
        Integer num = this.lock;
        if (num != null && num.intValue() == 1) {
            return true;
        }
        return false;
    }

    public final void resetDownloadSpeed() {
        this.lsatCalculateTime = 0L;
        this.downloadSpeed = 0L;
    }

    public final void setCacheKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.cacheKey = str;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setDownloadProgress(float f10) {
        this.downloadProgress = f10;
    }

    public final void setDownloadSpeed(long j10) {
        this.downloadSpeed = j10;
    }

    public final void setDownloadState(int i10) {
        this.downloadState = i10;
    }

    public final void setDownloadedProgress(float f10) {
        if (this.lsatCalculateTime == 0) {
            startDownload(f10);
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.lsatCalculateTime;
        if (((int) elapsedRealtime) == 0) {
            return;
        }
        this.downloadProgress = f10;
        float f11 = f10 - this.lastDownloadProgress;
        float f12 = ((float) this.fileSize) * f11;
        this.downloadSpeed = f12 / ((float) elapsedRealtime);
        this.lastDownloadProgress = f10;
        this.lsatCalculateTime = SystemClock.elapsedRealtime();
        s.b("speed:" + this.downloadSpeed + " progressChange " + f11 + " +byteChange" + f12 + "  timeChange:" + elapsedRealtime + ' ');
    }

    public final void setDramaCoverUrl(@Nullable String str) {
        this.dramaCoverUrl = str;
    }

    public final void setDramaId(int i10) {
        this.dramaId = i10;
    }

    public final void setDramaName(@Nullable String str) {
        this.dramaName = str;
    }

    public final void setDramaNum(int i10) {
        this.dramaNum = i10;
    }

    public final void setFileSize(long j10) {
        this.fileSize = j10;
    }

    public final void setLastDownloadProgress(float f10) {
        this.lastDownloadProgress = f10;
    }

    public final void setLock(@Nullable Integer num) {
        this.lock = num;
    }

    public final void setLsatCalculateTime(long j10) {
        this.lsatCalculateTime = j10;
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

    public final void setSolution(int i10) {
        this.solution = i10;
    }

    public final void setUpack(@Nullable String str) {
        this.upack = str;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    public final void startDownload(float f10) {
        this.lsatCalculateTime = SystemClock.elapsedRealtime();
        this.downloadSpeed = 0L;
        this.downloadProgress = f10;
        this.lastDownloadProgress = f10;
    }

    public /* synthetic */ DownloadTaskInfo(int i10, int i11, int i12, String str, int i13, long j10, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Integer num, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, str, i13, j10, (i15 & 64) != 0 ? 0 : i14, (i15 & 128) != 0 ? a.f64858a.a(str) : str2, str3, str4, str5, str6, str7, str8, num);
    }
}
