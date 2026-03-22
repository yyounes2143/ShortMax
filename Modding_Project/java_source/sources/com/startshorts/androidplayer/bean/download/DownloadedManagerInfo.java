package com.startshorts.androidplayer.bean.download;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadedManagerInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DownloadedManagerInfo extends DownloadManagerItem {
    @NotNull
    private String dramaContent;
    @NotNull
    private String dramaName;
    private boolean select;
    private int shortPlayId;
    @NotNull
    private List<DownloadTaskInfo> taskInfoList;

    public DownloadedManagerInfo(@NotNull List<DownloadTaskInfo> taskInfoList) {
        Intrinsics.checkNotNullParameter(taskInfoList, "taskInfoList");
        this.taskInfoList = taskInfoList;
        this.dramaName = "";
        this.dramaContent = "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DownloadedManagerInfo copy$default(DownloadedManagerInfo downloadedManagerInfo, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = downloadedManagerInfo.taskInfoList;
        }
        return downloadedManagerInfo.copy(list);
    }

    @NotNull
    public final List<DownloadTaskInfo> component1() {
        return this.taskInfoList;
    }

    @NotNull
    public final DownloadedManagerInfo copy(@NotNull List<DownloadTaskInfo> taskInfoList) {
        Intrinsics.checkNotNullParameter(taskInfoList, "taskInfoList");
        return new DownloadedManagerInfo(taskInfoList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DownloadedManagerInfo) && Intrinsics.areEqual(this.taskInfoList, ((DownloadedManagerInfo) obj).taskInfoList)) {
            return true;
        }
        return false;
    }

    public final int getDownloadedCount() {
        return this.taskInfoList.size();
    }

    public final long getDownloadedSize() {
        long j10 = 0;
        for (DownloadTaskInfo downloadTaskInfo : this.taskInfoList) {
            j10 += downloadTaskInfo.getFileSize();
        }
        return j10;
    }

    @NotNull
    public final String getDramaContent() {
        return this.dramaContent;
    }

    @NotNull
    public final String getDramaName() {
        return this.dramaName;
    }

    public final boolean getSelect() {
        return this.select;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @NotNull
    public final List<DownloadTaskInfo> getTaskInfoList() {
        return this.taskInfoList;
    }

    public int hashCode() {
        return this.taskInfoList.hashCode();
    }

    public final void setDramaContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.dramaContent = str;
    }

    public final void setDramaName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.dramaName = str;
    }

    public final void setSelect(boolean z10) {
        this.select = z10;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    public final void setTaskInfoList(@NotNull List<DownloadTaskInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.taskInfoList = list;
    }

    @NotNull
    public String toString() {
        return "DownloadedManagerInfo(taskInfoList=" + this.taskInfoList + ')';
    }
}
