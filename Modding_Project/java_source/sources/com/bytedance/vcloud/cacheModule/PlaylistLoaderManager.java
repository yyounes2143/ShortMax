package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.CacheFileManager;
import com.bytedance.vcloud.cacheModule.PlaylistLoader;
import com.bytedance.vcloud.cacheModule.info.MasterPlaylist;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class PlaylistLoaderManager {
    private static final CacheFileManager.CacheFileType PRELOAD_FILE = CacheFileManager.CacheFileType.Preload;
    private static final String TAG = "PlaylistLoaderManager";
    private final Map<String, PlaylistLoader> mPreloaders = new HashMap();
    private final Object mLock = new Object();
    private final List<PlaylistLoader.ILoaderListener> mListeners = new ArrayList();
    private PlaylistLoader.OnMasterPlaylistListener mMasterPlaylistListener = null;

    /* loaded from: classes3.dex */
    private static class PlaylistLoaderMangerInner {
        private static final PlaylistLoaderManager sInstance = new PlaylistLoaderManager();

        private PlaylistLoaderMangerInner() {
        }
    }

    public static PlaylistLoaderManager getInstance() {
        return PlaylistLoaderMangerInner.sInstance;
    }

    public void addLoaderListener(PlaylistLoader.ILoaderListener iLoaderListener) {
        if (iLoaderListener != null) {
            this.mListeners.add(iLoaderListener);
        }
    }

    public void cancel(String str) {
        PlaylistLoader playlistLoader;
        String str2 = TAG;
        CmLog.d(str2, "cancel : fileKey = " + str);
        synchronized (this.mLock) {
            try {
                Iterator<String> it = this.mPreloaders.keySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        playlistLoader = this.mPreloaders.get(it.next());
                        if (playlistLoader.isMyKey(str)) {
                            break;
                        }
                    } else {
                        playlistLoader = null;
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (playlistLoader != null) {
            String str3 = TAG;
            CmLog.d(str3, "cancel : playlistLoader = " + str);
            playlistLoader.cancel();
        }
    }

    public void cancelAll() {
        synchronized (this.mLock) {
            try {
                for (String str : this.mPreloaders.keySet()) {
                    this.mPreloaders.get(str).cancel();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void clearAllPlaylistCache() {
        CacheFileManager.clearAllPlaylistCache(PRELOAD_FILE);
    }

    public long getAllCacheSize() {
        return CacheFileManager.getAllPlaylistCacheSize(PRELOAD_FILE);
    }

    public long getCacheSize(String str) {
        return CacheFileManager.getCacheSize(str, PRELOAD_FILE);
    }

    public PlaylistLoader.OnMasterPlaylistListener getOnMasterPlaylistListener() {
        return this.mMasterPlaylistListener;
    }

    public boolean isCacheKey(String str) {
        boolean isCacheKey = CacheFileManager.isCacheKey(str, PRELOAD_FILE);
        String str2 = TAG;
        CmLog.d(str2, "isCacheKey : fileKey = " + str + ":" + isCacheKey);
        return isCacheKey;
    }

    public boolean onPreloadStatusChanged(String str, PlaylistLoader.LoadStatus loadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str2 = TAG;
        CmLog.d(str2, "onPreloadStatusChanged : fileKey = " + str + ", status = " + loadStatus.name());
        synchronized (this.mLock) {
            try {
                for (String str3 : this.mPreloaders.keySet()) {
                    PlaylistLoader playlistLoader = this.mPreloaders.get(str3);
                    if (playlistLoader.isMyKey(str)) {
                        return playlistLoader.processStatusChange(str, loadStatus, aVMDLDataLoaderNotifyInfo);
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void preloadSource(String str, int i10) {
        String str2 = TAG;
        CmLog.d(str2, "preloadSource : url = " + str);
        synchronized (this.mLock) {
            try {
                if (this.mPreloaders.containsKey(str)) {
                    return;
                }
                PlaylistLoader playlistLoader = new PlaylistLoader(str, i10);
                this.mPreloaders.put(str, playlistLoader);
                playlistLoader.setLoaderListener(new PlaylistLoader.ILoaderListener() { // from class: com.bytedance.vcloud.cacheModule.PlaylistLoaderManager.1
                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onCancel(String str3, String str4) {
                        PlaylistLoader playlistLoader2;
                        synchronized (PlaylistLoaderManager.this.mLock) {
                            try {
                                if (PlaylistLoaderManager.this.mPreloaders.containsKey(str4)) {
                                    playlistLoader2 = (PlaylistLoader) PlaylistLoaderManager.this.mPreloaders.remove(str4);
                                } else {
                                    playlistLoader2 = null;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (playlistLoader2 != null) {
                            playlistLoader2.release();
                        }
                        for (PlaylistLoader.ILoaderListener iLoaderListener : PlaylistLoaderManager.this.mListeners) {
                            iLoaderListener.onCancel(str3, str4);
                        }
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onCompleted(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                        PlaylistLoader playlistLoader2;
                        synchronized (PlaylistLoaderManager.this.mLock) {
                            try {
                                if (PlaylistLoaderManager.this.mPreloaders.containsKey(str3)) {
                                    playlistLoader2 = (PlaylistLoader) PlaylistLoaderManager.this.mPreloaders.remove(str3);
                                } else {
                                    playlistLoader2 = null;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (playlistLoader2 != null) {
                            playlistLoader2.release();
                        }
                        for (PlaylistLoader.ILoaderListener iLoaderListener : PlaylistLoaderManager.this.mListeners) {
                            iLoaderListener.onCompleted(str3, aVMDLDataLoaderNotifyInfo);
                        }
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onError(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                        PlaylistLoader playlistLoader2;
                        synchronized (PlaylistLoaderManager.this.mLock) {
                            try {
                                if (PlaylistLoaderManager.this.mPreloaders.containsKey(str3)) {
                                    playlistLoader2 = (PlaylistLoader) PlaylistLoaderManager.this.mPreloaders.remove(str3);
                                } else {
                                    playlistLoader2 = null;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (playlistLoader2 != null) {
                            playlistLoader2.release();
                        }
                        for (PlaylistLoader.ILoaderListener iLoaderListener : PlaylistLoaderManager.this.mListeners) {
                            iLoaderListener.onError(str3, aVMDLDataLoaderNotifyInfo);
                        }
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onStart(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                        for (PlaylistLoader.ILoaderListener iLoaderListener : PlaylistLoaderManager.this.mListeners) {
                            iLoaderListener.onStart(str3, aVMDLDataLoaderNotifyInfo);
                        }
                    }
                });
                playlistLoader.setOnMasterPlaylistListener(new PlaylistLoader.OnMasterPlaylistListener() { // from class: com.bytedance.vcloud.cacheModule.PlaylistLoaderManager.2
                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.OnMasterPlaylistListener
                    public List<PlaylistLoader.PreloadUrlInfo> onSelectPreloadUrls(MasterPlaylist masterPlaylist) {
                        if (PlaylistLoaderManager.this.mMasterPlaylistListener == null) {
                            return null;
                        }
                        return PlaylistLoaderManager.this.mMasterPlaylistListener.onSelectPreloadUrls(masterPlaylist);
                    }
                });
                playlistLoader.preload();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean removeFileCache(String str) {
        PlaylistLoader playlistLoader;
        synchronized (this.mLock) {
            try {
                Iterator<String> it = this.mPreloaders.keySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        playlistLoader = this.mPreloaders.get(it.next());
                        if (playlistLoader.isMyKey(str)) {
                            break;
                        }
                    } else {
                        playlistLoader = null;
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (playlistLoader != null) {
            return false;
        }
        CacheFileManager.removeFileCache(str, PRELOAD_FILE);
        return true;
    }

    public void removeLoaderListener(PlaylistLoader.ILoaderListener iLoaderListener) {
        if (iLoaderListener != null) {
            this.mListeners.remove(iLoaderListener);
        }
    }

    public void setOnMasterPlaylistListener(PlaylistLoader.OnMasterPlaylistListener onMasterPlaylistListener) {
        this.mMasterPlaylistListener = onMasterPlaylistListener;
    }
}
