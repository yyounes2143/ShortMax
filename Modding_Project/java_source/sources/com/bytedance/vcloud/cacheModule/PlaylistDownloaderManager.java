package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.CacheFileManager;
import com.bytedance.vcloud.cacheModule.PlaylistDownloader;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class PlaylistDownloaderManager {
    private static final CacheFileManager.CacheFileType DOWNLOAD_FILE = CacheFileManager.CacheFileType.Download;
    private static final String TAG = "PlaylistDownloaderManager";
    private final Map<String, PlaylistDownloader> mDownloaders = new HashMap();
    private final Object mLock = new Object();
    private final List<PlaylistDownloader.IDownloadListener> mListeners = new ArrayList();

    /* loaded from: classes3.dex */
    private static class PlaylistDownloaderMangerInner {
        private static final PlaylistDownloaderManager sInstance = new PlaylistDownloaderManager();

        private PlaylistDownloaderMangerInner() {
        }
    }

    public static PlaylistDownloaderManager getInstance() {
        return PlaylistDownloaderMangerInner.sInstance;
    }

    public void addLoaderListener(PlaylistDownloader.IDownloadListener iDownloadListener) {
        if (iDownloadListener != null) {
            this.mListeners.add(iDownloadListener);
        }
    }

    public void cancel(String str) {
        PlaylistDownloader playlistDownloader;
        String str2 = TAG;
        CmLog.d(str2, "cancel : fileKey = " + str);
        synchronized (this.mLock) {
            try {
                Iterator<String> it = this.mDownloaders.keySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        playlistDownloader = this.mDownloaders.get(it.next());
                        if (playlistDownloader.isMyKey(str) && !playlistDownloader.isTsFileKey(str) && !playlistDownloader.isMediaFileKey(str)) {
                            break;
                        }
                    } else {
                        playlistDownloader = null;
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (playlistDownloader != null) {
            String str3 = TAG;
            CmLog.d(str3, "cancel : playlistDownloader = " + str);
            playlistDownloader.cancel();
        }
    }

    public void cancelAll() {
        synchronized (this.mLock) {
            try {
                for (String str : this.mDownloaders.keySet()) {
                    this.mDownloaders.get(str).cancel();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void clearAllPlaylistCache() {
        CacheFileManager.clearAllPlaylistCache(DOWNLOAD_FILE);
    }

    public void downloadSource(String str) {
        String str2 = TAG;
        CmLog.d(str2, "downloadSource : url = " + str);
        if (this.mDownloaders.containsKey(str)) {
            return;
        }
        PlaylistDownloader playlistDownloader = new PlaylistDownloader(str);
        this.mDownloaders.put(str, playlistDownloader);
        playlistDownloader.setLoaderListener(new PlaylistDownloader.IDownloadListener() { // from class: com.bytedance.vcloud.cacheModule.PlaylistDownloaderManager.1
            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onCancel(String str3, String str4) {
                PlaylistDownloader playlistDownloader2;
                synchronized (PlaylistDownloaderManager.this.mLock) {
                    try {
                        if (PlaylistDownloaderManager.this.mDownloaders.containsKey(str4)) {
                            playlistDownloader2 = (PlaylistDownloader) PlaylistDownloaderManager.this.mDownloaders.remove(str4);
                        } else {
                            playlistDownloader2 = null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (playlistDownloader2 != null) {
                    playlistDownloader2.release();
                }
                for (PlaylistDownloader.IDownloadListener iDownloadListener : PlaylistDownloaderManager.this.mListeners) {
                    iDownloadListener.onCancel(str3, str4);
                }
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onCompleted(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                PlaylistDownloader playlistDownloader2;
                synchronized (PlaylistDownloaderManager.this.mLock) {
                    try {
                        if (PlaylistDownloaderManager.this.mDownloaders.containsKey(str3)) {
                            playlistDownloader2 = (PlaylistDownloader) PlaylistDownloaderManager.this.mDownloaders.remove(str3);
                        } else {
                            playlistDownloader2 = null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (playlistDownloader2 != null) {
                    playlistDownloader2.release();
                }
                for (PlaylistDownloader.IDownloadListener iDownloadListener : PlaylistDownloaderManager.this.mListeners) {
                    iDownloadListener.onCompleted(str3, aVMDLDataLoaderNotifyInfo);
                }
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onError(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                PlaylistDownloader playlistDownloader2;
                synchronized (PlaylistDownloaderManager.this.mLock) {
                    try {
                        if (PlaylistDownloaderManager.this.mDownloaders.containsKey(str3)) {
                            playlistDownloader2 = (PlaylistDownloader) PlaylistDownloaderManager.this.mDownloaders.remove(str3);
                        } else {
                            playlistDownloader2 = null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (playlistDownloader2 != null) {
                    playlistDownloader2.release();
                }
                for (PlaylistDownloader.IDownloadListener iDownloadListener : PlaylistDownloaderManager.this.mListeners) {
                    iDownloadListener.onError(str3, aVMDLDataLoaderNotifyInfo);
                }
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onProgress(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                for (PlaylistDownloader.IDownloadListener iDownloadListener : PlaylistDownloaderManager.this.mListeners) {
                    iDownloadListener.onProgress(str3, aVMDLDataLoaderNotifyInfo);
                }
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onStart(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                for (PlaylistDownloader.IDownloadListener iDownloadListener : PlaylistDownloaderManager.this.mListeners) {
                    iDownloadListener.onStart(str3, aVMDLDataLoaderNotifyInfo);
                }
            }
        });
        playlistDownloader.download();
    }

    public long getAllCacheSize() {
        return CacheFileManager.getAllPlaylistCacheSize(DOWNLOAD_FILE);
    }

    public long getCacheSize(String str) {
        return CacheFileManager.getCacheSize(str, DOWNLOAD_FILE);
    }

    public boolean isHlsDownloadKey(String str) {
        boolean isCacheKey = CacheFileManager.isCacheKey(str, DOWNLOAD_FILE);
        String str2 = TAG;
        CmLog.d(str2, "isHlsDownloadKey, fileKey = " + str + " : " + isCacheKey);
        return isCacheKey;
    }

    public boolean onDownloadStatusChanged(String str, PlaylistDownloader.DownloadStatus downloadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str2 = TAG;
        CmLog.d(str2, "onDownloadStatusChanged : fileKey = " + str + ", status = " + downloadStatus.name());
        synchronized (this.mLock) {
            try {
                for (String str3 : this.mDownloaders.keySet()) {
                    PlaylistDownloader playlistDownloader = this.mDownloaders.get(str3);
                    if (playlistDownloader.isMyKey(str)) {
                        return playlistDownloader.processStatusChange(str, downloadStatus, aVMDLDataLoaderNotifyInfo);
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean removeDownloadFile(String str) {
        PlaylistDownloader playlistDownloader;
        synchronized (this.mLock) {
            try {
                Iterator<String> it = this.mDownloaders.keySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        playlistDownloader = this.mDownloaders.get(it.next());
                        if (playlistDownloader.isMyKey(str)) {
                            break;
                        }
                    } else {
                        playlistDownloader = null;
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (playlistDownloader != null) {
            return false;
        }
        CacheFileManager.removeFileCache(str, DOWNLOAD_FILE);
        return true;
    }

    public void removeLoaderListener(PlaylistDownloader.IDownloadListener iDownloadListener) {
        if (iDownloadListener != null) {
            this.mListeners.remove(iDownloadListener);
        }
    }
}
