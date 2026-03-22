package com.startshorts.androidplayer.bean.download;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadedDramaInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DownloadedDramaInfo {
    @NotNull
    private DownloadTaskInfo downloadInfo;
    private boolean select;

    public DownloadedDramaInfo(@NotNull DownloadTaskInfo downloadInfo) {
        Intrinsics.checkNotNullParameter(downloadInfo, "downloadInfo");
        this.downloadInfo = downloadInfo;
    }

    public static /* synthetic */ DownloadedDramaInfo copy$default(DownloadedDramaInfo downloadedDramaInfo, DownloadTaskInfo downloadTaskInfo, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            downloadTaskInfo = downloadedDramaInfo.downloadInfo;
        }
        return downloadedDramaInfo.copy(downloadTaskInfo);
    }

    @NotNull
    public final DownloadTaskInfo component1() {
        return this.downloadInfo;
    }

    @NotNull
    public final DownloadedDramaInfo copy(@NotNull DownloadTaskInfo downloadInfo) {
        Intrinsics.checkNotNullParameter(downloadInfo, "downloadInfo");
        return new DownloadedDramaInfo(downloadInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DownloadedDramaInfo) && Intrinsics.areEqual(this.downloadInfo, ((DownloadedDramaInfo) obj).downloadInfo)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final DownloadTaskInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    public final boolean getSelect() {
        return this.select;
    }

    public int hashCode() {
        return this.downloadInfo.hashCode();
    }

    public final void setDownloadInfo(@NotNull DownloadTaskInfo downloadTaskInfo) {
        Intrinsics.checkNotNullParameter(downloadTaskInfo, "<set-?>");
        this.downloadInfo = downloadTaskInfo;
    }

    public final void setSelect(boolean z10) {
        this.select = z10;
    }

    @NotNull
    public String toString() {
        return "DownloadedDramaInfo(downloadInfo=" + this.downloadInfo + ')';
    }
}
