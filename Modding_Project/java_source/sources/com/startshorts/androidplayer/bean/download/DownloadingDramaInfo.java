package com.startshorts.androidplayer.bean.download;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadingDramaInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DownloadingDramaInfo {
    @NotNull
    private DownloadTaskInfo downloadInfo;
    private boolean select;
    private int shortPlayId;

    public DownloadingDramaInfo(@NotNull DownloadTaskInfo downloadInfo) {
        Intrinsics.checkNotNullParameter(downloadInfo, "downloadInfo");
        this.downloadInfo = downloadInfo;
    }

    public static /* synthetic */ DownloadingDramaInfo copy$default(DownloadingDramaInfo downloadingDramaInfo, DownloadTaskInfo downloadTaskInfo, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            downloadTaskInfo = downloadingDramaInfo.downloadInfo;
        }
        return downloadingDramaInfo.copy(downloadTaskInfo);
    }

    @NotNull
    public final DownloadTaskInfo component1() {
        return this.downloadInfo;
    }

    @NotNull
    public final DownloadingDramaInfo copy(@NotNull DownloadTaskInfo downloadInfo) {
        Intrinsics.checkNotNullParameter(downloadInfo, "downloadInfo");
        return new DownloadingDramaInfo(downloadInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DownloadingDramaInfo) && Intrinsics.areEqual(this.downloadInfo, ((DownloadingDramaInfo) obj).downloadInfo)) {
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

    public final int getShortPlayId() {
        return this.shortPlayId;
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

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    @NotNull
    public String toString() {
        return "DownloadingDramaInfo(downloadInfo=" + this.downloadInfo + ')';
    }
}
