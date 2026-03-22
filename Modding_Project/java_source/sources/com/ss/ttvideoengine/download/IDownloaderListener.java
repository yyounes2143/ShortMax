package com.ss.ttvideoengine.download;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.utils.Error;
import java.util.List;
/* loaded from: classes6.dex */
public interface IDownloaderListener {
    void downloaderDidComplete(Downloader downloader, DownloadTask downloadTask, @Nullable Error error);

    void downloaderDidLoadAllTask(Downloader downloader, @Nullable List<DownloadTask> list, @Nullable Error error);

    void downloaderDidResume(Downloader downloader, DownloadTask downloadTask, long j10, long j11);

    void downloaderStateChanged(Downloader downloader, DownloadTask downloadTask, int i10);

    void downloaderWriteData(Downloader downloader, DownloadTask downloadTask, long j10, long j11);

    default void downloaderProgress(Downloader downloader, DownloadTask downloadTask, long j10, long j11) {
    }
}
