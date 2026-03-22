package com.ss.ttvideoengine;

import android.text.TextUtils;
import com.bytedance.vcloud.cacheModule.CacheModule;
import com.bytedance.vcloud.cacheModule.CacheSettings;
import com.bytedance.vcloud.cacheModule.PlayTaskKeyManager;
import com.bytedance.vcloud.cacheModule.PlaylistDownloader;
import com.bytedance.vcloud.cacheModule.PlaylistDownloaderManager;
import com.bytedance.vcloud.cacheModule.PlaylistLoader;
import com.bytedance.vcloud.cacheModule.PlaylistLoaderManager;
import com.bytedance.vcloud.cacheModule.PreConnectTaskManager;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.net.URLEncoder;
/* loaded from: classes6.dex */
public class DataLoaderHelperAdapter {
    private static final String TAG = "DataLoaderHelperAdapter";
    private PlaylistLoaderManager mPlaylistLoaderManager = null;
    private PlaylistDownloaderManager mPlaylistDownloaderManager = null;
    private boolean hlsProxyValid = false;

    /* loaded from: classes6.dex */
    public static class HlsProxyQueryParam {
        public String convertUrlOrder;
        public boolean enableInfoCallback;
        public String engineId;
        public String privateFFmpegProto;
        public String[] urlExpires;

        public String buildQuery() {
            StringBuilder sb2 = new StringBuilder();
            String[] strArr = this.urlExpires;
            if (strArr != null && strArr.length > 0) {
                StringBuilder sb3 = new StringBuilder();
                int length = this.urlExpires.length;
                for (int i10 = 0; i10 < length; i10++) {
                    sb3.append(this.urlExpires[i10]);
                    if (i10 != length - 1) {
                        sb3.append(",");
                    }
                }
                sb2.append("expireTime=");
                sb2.append((CharSequence) sb3);
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            if (!TextUtils.isEmpty(this.engineId)) {
                sb2.append("id=");
                sb2.append(this.engineId);
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            if (this.enableInfoCallback) {
                sb2.append("enableInfoCallback=");
                sb2.append("1");
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            if (!TextUtils.isEmpty(this.privateFFmpegProto)) {
                sb2.append("privateFFmpegProto=");
                sb2.append(this.privateFFmpegProto);
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            if (!TextUtils.isEmpty(this.convertUrlOrder)) {
                sb2.append("convertUrlOrder=");
                sb2.append(this.convertUrlOrder);
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            if (sb2.length() == 0) {
                return "";
            }
            return URLEncoder.encode(sb2.substring(0, sb2.length() - 1));
        }
    }

    private void initHlsDownloadManager() {
        PlaylistDownloaderManager playlistDownloaderManager = PlaylistDownloaderManager.getInstance();
        this.mPlaylistDownloaderManager = playlistDownloaderManager;
        playlistDownloaderManager.addLoaderListener(new PlaylistDownloader.IDownloadListener() { // from class: com.ss.ttvideoengine.DataLoaderHelperAdapter.2
            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onCancel(String str, String str2) {
                TTVideoEngineLog.i(DataLoaderHelperAdapter.TAG, "download onCancel, fileKey = " + str);
                AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
                aVMDLDataLoaderNotifyInfo.what = 22;
                aVMDLDataLoaderNotifyInfo.logInfo = str;
                DataLoaderHelper.getDataLoader().onNotify(aVMDLDataLoaderNotifyInfo);
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onCompleted(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                TTVideoEngineLog.d(DataLoaderHelperAdapter.TAG, "download onCompleted, info: what = " + aVMDLDataLoaderNotifyInfo.what + ", param = " + aVMDLDataLoaderNotifyInfo.parameter + ", loginfo = " + aVMDLDataLoaderNotifyInfo.logInfo);
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onError(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                TTVideoEngineLog.d(DataLoaderHelperAdapter.TAG, "download onError, info: what = " + aVMDLDataLoaderNotifyInfo.what + ", param = " + aVMDLDataLoaderNotifyInfo.parameter + ", loginfo = " + aVMDLDataLoaderNotifyInfo.logInfo);
                DataLoaderHelper.getDataLoader().onNotify(aVMDLDataLoaderNotifyInfo);
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onProgress(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                TTVideoEngineLog.d(DataLoaderHelperAdapter.TAG, "download onProgress, info: what = " + aVMDLDataLoaderNotifyInfo.what + ", param = " + aVMDLDataLoaderNotifyInfo.parameter + ", loginfo = " + aVMDLDataLoaderNotifyInfo.logInfo);
                DataLoaderHelper.getDataLoader().onNotify(aVMDLDataLoaderNotifyInfo);
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
            public void onStart(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                TTVideoEngineLog.d(DataLoaderHelperAdapter.TAG, "download onStart, info: what = " + aVMDLDataLoaderNotifyInfo.what + ", param = " + aVMDLDataLoaderNotifyInfo.parameter + ", loginfo = " + aVMDLDataLoaderNotifyInfo.logInfo);
            }
        });
    }

    private void initHlsPreloadManager() {
        TTVideoEngineLog.i(TAG, "initHLSCacheModule()");
        PlaylistLoaderManager playlistLoaderManager = PlaylistLoaderManager.getInstance();
        this.mPlaylistLoaderManager = playlistLoaderManager;
        playlistLoaderManager.addLoaderListener(new PlaylistLoader.ILoaderListener() { // from class: com.ss.ttvideoengine.DataLoaderHelperAdapter.1
            @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
            public void onCompleted(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                DataLoaderHelper.getDataLoader().onNotify(aVMDLDataLoaderNotifyInfo);
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
            public void onError(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                DataLoaderHelper.getDataLoader().onNotify(aVMDLDataLoaderNotifyInfo);
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
            public void onStart(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
                DataLoaderHelper.getDataLoader().onNotify(aVMDLDataLoaderNotifyInfo);
            }

            @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
            public void onCancel(String str, String str2) {
            }
        });
    }

    public void cancelAll() {
        PlaylistLoaderManager playlistLoaderManager = this.mPlaylistLoaderManager;
        if (playlistLoaderManager != null) {
            playlistLoaderManager.cancelAll();
        }
    }

    public boolean cancelDownload(String str) {
        PlaylistDownloaderManager playlistDownloaderManager = this.mPlaylistDownloaderManager;
        if (playlistDownloaderManager != null && playlistDownloaderManager.isHlsDownloadKey(str)) {
            this.mPlaylistDownloaderManager.cancel(str);
            return true;
        }
        return false;
    }

    public boolean cancelPreload(String str) {
        PlaylistLoaderManager playlistLoaderManager = this.mPlaylistLoaderManager;
        if (playlistLoaderManager != null && playlistLoaderManager.isCacheKey(str)) {
            this.mPlaylistLoaderManager.cancel(str);
            return true;
        }
        return false;
    }

    public boolean convertHLSProxyUrl(StringBuffer stringBuffer) {
        if (!this.hlsProxyValid || !TTVideoEngineAdapter.isHlsProxyEnabled() || this.mPlaylistLoaderManager == null) {
            return false;
        }
        stringBuffer.append("hlsproxy://");
        return true;
    }

    public boolean downloadHlsSource(String str) {
        PlaylistDownloaderManager playlistDownloaderManager;
        if (!InfoWrapper.isHlsProxyEnable() || (playlistDownloaderManager = this.mPlaylistDownloaderManager) == null) {
            return false;
        }
        playlistDownloaderManager.downloadSource(str);
        return true;
    }

    public long getAllCacheSize() {
        PlaylistLoaderManager playlistLoaderManager = this.mPlaylistLoaderManager;
        if (playlistLoaderManager != null) {
            return playlistLoaderManager.getAllCacheSize();
        }
        return 0L;
    }

    public long getCacheSize(String str) {
        PlaylistLoaderManager playlistLoaderManager = this.mPlaylistLoaderManager;
        if (playlistLoaderManager != null) {
            return playlistLoaderManager.getCacheSize(str);
        }
        return 0L;
    }

    public void initHLSCacheModule() {
        initHlsPreloadManager();
        initHlsDownloadManager();
    }

    public boolean isHlsProxyValid() {
        return this.hlsProxyValid;
    }

    public boolean onDownloadCompleted(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        PlaylistDownloader.DownloadLogInfo parseDownloadLogInfo;
        if (aVMDLDataLoaderNotifyInfo == null || aVMDLDataLoaderNotifyInfo.logInfo == null) {
            return false;
        }
        TTVideoEngineLog.d(TAG, "onDownloadCompleted, logInfo:" + aVMDLDataLoaderNotifyInfo.logInfo);
        if (this.mPlaylistDownloaderManager == null || (parseDownloadLogInfo = PlaylistDownloader.parseDownloadLogInfo(aVMDLDataLoaderNotifyInfo.logInfo)) == null) {
            return false;
        }
        return this.mPlaylistDownloaderManager.onDownloadStatusChanged(parseDownloadLogInfo.key, PlaylistDownloader.DownloadStatus.Completed, aVMDLDataLoaderNotifyInfo);
    }

    public boolean onDownloadFail(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        if (aVMDLDataLoaderNotifyInfo == null || aVMDLDataLoaderNotifyInfo.logInfo == null) {
            return false;
        }
        TTVideoEngineLog.d(TAG, "onDownloadFail, logInfo:" + aVMDLDataLoaderNotifyInfo.logInfo);
        String str = aVMDLDataLoaderNotifyInfo.logInfo;
        PlaylistDownloaderManager playlistDownloaderManager = this.mPlaylistDownloaderManager;
        if (playlistDownloaderManager == null) {
            return false;
        }
        return playlistDownloaderManager.onDownloadStatusChanged(str, PlaylistDownloader.DownloadStatus.Error, aVMDLDataLoaderNotifyInfo);
    }

    public boolean onDownloadProgress(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        PlaylistDownloader.DownloadLogInfo parseDownloadLogInfo;
        if (aVMDLDataLoaderNotifyInfo == null || aVMDLDataLoaderNotifyInfo.logInfo == null) {
            return false;
        }
        TTVideoEngineLog.d(TAG, "onDownloadProgress, logInfo:" + aVMDLDataLoaderNotifyInfo.logInfo);
        if (this.mPlaylistDownloaderManager == null || (parseDownloadLogInfo = PlaylistDownloader.parseDownloadLogInfo(aVMDLDataLoaderNotifyInfo.logInfo)) == null) {
            return false;
        }
        return this.mPlaylistDownloaderManager.onDownloadStatusChanged(parseDownloadLogInfo.key, PlaylistDownloader.DownloadStatus.Progress, aVMDLDataLoaderNotifyInfo);
    }

    public boolean onLoaderCancel(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        if (aVMDLDataLoaderNotifyInfo != null && aVMDLDataLoaderNotifyInfo.logInfo != null) {
            TTVideoEngineLog.d(TAG, "onLoaderCancel : parameter = " + aVMDLDataLoaderNotifyInfo.parameter + ", info.what" + aVMDLDataLoaderNotifyInfo.what + " , log info: " + aVMDLDataLoaderNotifyInfo.logInfo);
            if (this.mPlaylistLoaderManager != null) {
                return this.mPlaylistLoaderManager.onPreloadStatusChanged(aVMDLDataLoaderNotifyInfo.logInfo.split(",")[0], PlaylistLoader.LoadStatus.Cancel, aVMDLDataLoaderNotifyInfo);
            }
        }
        return false;
    }

    public boolean onLoaderFail(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        PlaylistLoaderManager playlistLoaderManager;
        if (aVMDLDataLoaderNotifyInfo != null && aVMDLDataLoaderNotifyInfo.logInfo != null) {
            TTVideoEngineLog.d(TAG, "onLoaderFail : parameter = " + aVMDLDataLoaderNotifyInfo.parameter + ", info.what" + aVMDLDataLoaderNotifyInfo.what + " , log info: " + aVMDLDataLoaderNotifyInfo.logInfo);
            String str = aVMDLDataLoaderNotifyInfo.logInfo.split(",")[0];
            long j10 = aVMDLDataLoaderNotifyInfo.parameter;
            if (j10 == 2 && (playlistLoaderManager = this.mPlaylistLoaderManager) != null) {
                return playlistLoaderManager.onPreloadStatusChanged(str, PlaylistLoader.LoadStatus.Error, aVMDLDataLoaderNotifyInfo);
            }
            if (j10 == 4) {
                TTVideoEngineLog.d(TAG, "onLoaderFail : AVMDLTaskTypePreconnectTask fail：" + str);
                PreConnectTaskManager.getInstance().changeCurPreConnectTsKey(str);
            }
        }
        return false;
    }

    public boolean onLoaderOpen(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        if (aVMDLDataLoaderNotifyInfo != null && aVMDLDataLoaderNotifyInfo.logInfo != null) {
            TTVideoEngineLog.d(TAG, "onLoaderOpen : parameter = " + aVMDLDataLoaderNotifyInfo.parameter + ", info.what" + aVMDLDataLoaderNotifyInfo.what + " , log info: " + aVMDLDataLoaderNotifyInfo.logInfo);
            long j10 = aVMDLDataLoaderNotifyInfo.parameter;
            if (j10 == 2 && this.mPlaylistLoaderManager != null) {
                return this.mPlaylistLoaderManager.onPreloadStatusChanged(aVMDLDataLoaderNotifyInfo.logInfo.split(",")[0], PlaylistLoader.LoadStatus.Start, aVMDLDataLoaderNotifyInfo);
            } else if (j10 == 1) {
                String str = aVMDLDataLoaderNotifyInfo.logInfo.split(",")[0];
                PlayTaskKeyManager.getInstance().onPlayTaskOpen(str);
                PreConnectTaskManager.getInstance().changeCurPlayTsKey(str);
            }
        }
        return false;
    }

    public boolean onLoaderProgress(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        long j10;
        if (aVMDLDataLoaderNotifyInfo != null && aVMDLDataLoaderNotifyInfo.logInfo != null) {
            TTVideoEngineLog.d(TAG, "onLoaderProgress : parameter = " + aVMDLDataLoaderNotifyInfo.parameter + ", info.what" + aVMDLDataLoaderNotifyInfo.what + " , log info: " + aVMDLDataLoaderNotifyInfo.logInfo);
            String[] split = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
            String str = split[2];
            long j11 = -1;
            try {
                j10 = Long.parseLong(split[0]);
                try {
                    j11 = Long.parseLong(split[1]);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                j10 = -1;
            }
            if (aVMDLDataLoaderNotifyInfo.what == 4 || (j10 > 0 && j10 == j11)) {
                long j12 = aVMDLDataLoaderNotifyInfo.parameter;
                if (j12 == 2 && this.mPlaylistLoaderManager != null) {
                    TTVideoEngineLog.d(TAG, "onLoaderProgress : AVMDLTaskTypePreloadTask completed：" + str);
                    return this.mPlaylistLoaderManager.onPreloadStatusChanged(str, PlaylistLoader.LoadStatus.Completed, aVMDLDataLoaderNotifyInfo);
                } else if (j12 == 4) {
                    TTVideoEngineLog.d(TAG, "onLoaderProgress : AVMDLTaskTypePreconnectTask completed：" + str);
                    PreConnectTaskManager.getInstance().changeCurPreConnectTsKey(str);
                }
            }
        }
        return false;
    }

    public void onMDLStartComplete() {
        long longValue = AVMDLDataLoader.getInstance().getLongValue(AVMDLDataLoader.KeyIsGetUrlGenerator);
        if (longValue != -1 && longValue != 0) {
            this.hlsProxyValid = true;
            CacheModule.setProxyUrlGenerator(longValue);
        } else {
            this.hlsProxyValid = false;
        }
        TTVideoEngineLog.i(TAG, "MediaDataLoader start complete , urlGeneratorMethod = " + longValue + " hlsProxyValid: " + this.hlsProxyValid);
    }

    public boolean preloadHLSSource(String str, int i10) {
        PlaylistLoaderManager playlistLoaderManager;
        if (!InfoWrapper.isHlsProxyEnable() || !this.hlsProxyValid || (playlistLoaderManager = this.mPlaylistLoaderManager) == null) {
            return false;
        }
        playlistLoaderManager.preloadSource(str, i10);
        return true;
    }

    public void removeAllHLSCache() {
        PlaylistLoaderManager playlistLoaderManager = this.mPlaylistLoaderManager;
        if (playlistLoaderManager != null) {
            playlistLoaderManager.clearAllPlaylistCache();
        }
    }

    public boolean removeCache(String str) {
        PlaylistLoaderManager playlistLoaderManager = this.mPlaylistLoaderManager;
        if (playlistLoaderManager != null) {
            return playlistLoaderManager.removeFileCache(str);
        }
        return false;
    }

    public boolean removeCacheFile(String str) {
        PlaylistLoaderManager playlistLoaderManager = this.mPlaylistLoaderManager;
        if (playlistLoaderManager != null && playlistLoaderManager.isCacheKey(str)) {
            this.mPlaylistLoaderManager.removeFileCache(str);
            return true;
        }
        return false;
    }

    public boolean removeDownloadFile(String str) {
        PlaylistDownloaderManager playlistDownloaderManager = this.mPlaylistDownloaderManager;
        if (playlistDownloaderManager != null && playlistDownloaderManager.isHlsDownloadKey(str)) {
            this.mPlaylistDownloaderManager.removeDownloadFile(str);
            return true;
        }
        return false;
    }

    public void setEnablePreloadAllTs(int i10) {
        String str;
        TTVideoEngineLog.i(TAG, "set setEnablePreloadAllTs:" + i10);
        CacheSettings cacheSettings = CacheSettings.getInstance();
        CacheSettings.OptionKey optionKey = CacheSettings.OptionKey.ENABLE_PRELOAD_ALL_TS;
        if (i10 == 1) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        cacheSettings.setStringOption(optionKey, str);
    }

    public void setEnablePreloadFirstTs(int i10) {
        String str;
        TTVideoEngineLog.i(TAG, "set setEnablePreloadFirstTs:" + i10);
        CacheSettings cacheSettings = CacheSettings.getInstance();
        CacheSettings.OptionKey optionKey = CacheSettings.OptionKey.ENABLE_PRELOAD_FIRST_TS;
        if (i10 == 1) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        cacheSettings.setStringOption(optionKey, str);
    }

    public void setHLSCacheDir(String str) {
        TTVideoEngineLog.i(TAG, "set CacheDir:" + str);
        CacheSettings.getInstance().setStringOption(CacheSettings.OptionKey.CACHE_DIR, str);
    }

    public void setHLSDownloadDir(String str) {
        TTVideoEngineLog.i(TAG, "set DownloadDir:" + str);
        CacheSettings.getInstance().setStringOption(CacheSettings.OptionKey.DOWNLOAD_DIR, str);
    }
}
