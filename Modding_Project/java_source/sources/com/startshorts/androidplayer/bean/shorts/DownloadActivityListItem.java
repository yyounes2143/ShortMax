package com.startshorts.androidplayer.bean.shorts;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.a;
/* compiled from: DownloadActivityListItem.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DownloadActivityListItem {
    @Nullable
    private DownloadTaskInfo downloadInfo;
    @NotNull
    private BaseEpisode episode;
    private boolean isSelect;

    public DownloadActivityListItem(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.episode = episode;
    }

    public static /* synthetic */ DownloadActivityListItem copy$default(DownloadActivityListItem downloadActivityListItem, BaseEpisode baseEpisode, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            baseEpisode = downloadActivityListItem.episode;
        }
        return downloadActivityListItem.copy(baseEpisode);
    }

    @NotNull
    public final BaseEpisode component1() {
        return this.episode;
    }

    @NotNull
    public final DownloadActivityListItem copy(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        return new DownloadActivityListItem(episode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DownloadActivityListItem) && Intrinsics.areEqual(this.episode, ((DownloadActivityListItem) obj).episode)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final DownloadTaskInfo generalTaskInfo(int i10) {
        String parseVideoUrl = this.episode.parseVideoUrl(i10);
        a aVar = a.f64858a;
        Intrinsics.checkNotNull(parseVideoUrl);
        String a10 = aVar.a(parseVideoUrl);
        int shortPlayId = this.episode.getShortPlayId();
        int id2 = this.episode.getId();
        int episodeNum = this.episode.getEpisodeNum();
        Long videoSize = this.episode.getVideoSize(i10);
        Intrinsics.checkNotNull(videoSize);
        return new DownloadTaskInfo(shortPlayId, id2, episodeNum, parseVideoUrl, i10, videoSize.longValue(), 0, a10, this.episode.getCoverId(), this.episode.getRowDramaCover(), this.episode.getCheckedShortPlayName(), this.episode.getSummary(), this.episode.getShortPlayCode(), this.episode.getUpack(), Integer.valueOf(this.episode.getRowLock()));
    }

    @Nullable
    public final DownloadTaskInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    public final int getDownloadStatus() {
        DownloadTaskInfo downloadTaskInfo = this.downloadInfo;
        if (downloadTaskInfo != null) {
            return downloadTaskInfo.getDownloadState();
        }
        return 6;
    }

    @NotNull
    public final BaseEpisode getEpisode() {
        return this.episode;
    }

    public int hashCode() {
        return this.episode.hashCode();
    }

    public final boolean isSelect() {
        return this.isSelect;
    }

    public final boolean isSelectAble() {
        DownloadTaskInfo downloadTaskInfo = this.downloadInfo;
        if (downloadTaskInfo == null || downloadTaskInfo.getDownloadState() == 6) {
            return true;
        }
        return false;
    }

    public final void setDownloadInfo(@Nullable DownloadTaskInfo downloadTaskInfo) {
        this.downloadInfo = downloadTaskInfo;
    }

    public final void setEpisode(@NotNull BaseEpisode baseEpisode) {
        Intrinsics.checkNotNullParameter(baseEpisode, "<set-?>");
        this.episode = baseEpisode;
    }

    public final void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    @NotNull
    public String toString() {
        return "DownloadActivityListItem(episode=" + this.episode + ')';
    }
}
