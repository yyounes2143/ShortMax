package com.bytedance.vcloud.cacheModule;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.vcloud.cacheModule.CacheFileManager;
import com.bytedance.vcloud.cacheModule.PlaylistDownloaderItem;
import com.bytedance.vcloud.cacheModule.info.MasterPlaylist;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.bytedance.vcloud.cacheModule.utils.UriUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class PlaylistDownloader {
    public static final long HLS_PROGRESS_SCALE = 100;
    private static final float HLS_STEP_PERCENT = 0.5f;
    private static final String TAG;
    public static final int WHAT_DOWNLOAD_CMD_CANCEL = 10002;
    public static final int WHAT_DOWNLOAD_CMD_START = 10000;
    public static final int WHAT_DOWNLOAD_STATUS_CANCEL = 11001;
    public static final int WHAT_DOWNLOAD_STATUS_CHANGED = 12000;
    public static final int WHAT_DOWNLOAD_STATUS_COMPLETED = 11002;
    public static final int WHAT_DOWNLOAD_STATUS_ERROR = 11003;
    public static final int WHAT_DOWNLOAD_STATUS_PROGRESS = 11004;
    public static final int WHAT_DOWNLOAD_STATUS_START = 11000;
    private float baseDownloadPercent;
    private volatile boolean mCanceled;
    private String mCurrentFileKey;
    private String mCustomHeaderEncoded;
    private Handler mDownloadCmdHandler;
    private String mDownloadM3u8FilePath;
    private DownloadStatus mDownloadStatus;
    private HandlerThread mDownloadThread;
    private String mId;
    private IDownloadListener mListener;
    private PlaylistDownloaderItem mM3u8FileDownloader;
    private String mMdlProxyUrl;
    private PlaylistDownloader mMediaListDownloader;
    private PlaylistDownloader mParentLoader;
    private String mPlaylistFileKey;
    private String mPlaylistRawKey;
    private PlaylistDownloaderItem.PlayListType mPlaylistType;
    private Handler mStatusListenerHandler;
    private List<DownloadUrlInfo> mSubMdlProxyUrls;
    private float mSubUrlStepPercent;
    private float mTotalPercent;

    /* loaded from: classes3.dex */
    public static class DownloadLogInfo {
        public long downloadedSize = 0;
        public long mediaSize = 0;
        public String key = null;
        public String localFilePath = null;
    }

    /* loaded from: classes3.dex */
    public enum DownloadStatus {
        Unknown,
        Start,
        Cancel,
        Completed,
        Error,
        Progress;

        public static DownloadStatus covertCode(int i10) {
            DownloadStatus downloadStatus = Start;
            if (i10 == downloadStatus.ordinal()) {
                return downloadStatus;
            }
            DownloadStatus downloadStatus2 = Cancel;
            if (i10 == downloadStatus2.ordinal()) {
                return downloadStatus2;
            }
            DownloadStatus downloadStatus3 = Completed;
            if (i10 == downloadStatus3.ordinal()) {
                return downloadStatus3;
            }
            DownloadStatus downloadStatus4 = Error;
            if (i10 == downloadStatus4.ordinal()) {
                return downloadStatus4;
            }
            DownloadStatus downloadStatus5 = Progress;
            if (i10 == downloadStatus5.ordinal()) {
                return downloadStatus5;
            }
            return Unknown;
        }
    }

    /* loaded from: classes3.dex */
    public static class DownloadUrlInfo {
        public String mUrl = null;
    }

    /* loaded from: classes3.dex */
    public interface IDownloadListener {
        void onCancel(String str, String str2);

        void onCompleted(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);

        void onError(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);

        void onProgress(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);

        void onStart(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);
    }

    static {
        CacheModuleLoader.loadLibrary();
        TAG = PlaylistDownloader.class.getSimpleName();
    }

    public PlaylistDownloader(String str) {
        this(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callCancelListener(String str, String str2) {
        this.mListener.onCancel(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callCompleteListener(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        this.mListener.onCompleted(str, aVMDLDataLoaderNotifyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callErrorListener(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        this.mListener.onError(str, aVMDLDataLoaderNotifyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callProgressListener(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str2 = TAG;
        CmLog.d(str2, "callProgressListener out info:" + aVMDLDataLoaderNotifyInfo.logInfo);
        this.mListener.onProgress(str, aVMDLDataLoaderNotifyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callStartListener(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        this.mListener.onStart(str, aVMDLDataLoaderNotifyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void cancelDownload() {
        try {
            if (this.mCurrentFileKey != null) {
                String str = TAG;
                CmLog.d(str, "cancel ts.. mCurrentFileKey:" + this.mCurrentFileKey);
                AVMDLDataLoader.getInstance().cancel(this.mCurrentFileKey);
            }
            PlaylistDownloaderItem playlistDownloaderItem = this.mM3u8FileDownloader;
            if (playlistDownloaderItem != null) {
                playlistDownloaderItem.release();
                this.mM3u8FileDownloader = null;
            }
            PlaylistDownloader playlistDownloader = this.mMediaListDownloader;
            if (playlistDownloader != null) {
                playlistDownloader.release();
                this.mMediaListDownloader = null;
            }
            changeStatusToCancel();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void changeStatusToCancel() {
        try {
            this.mDownloadStatus = DownloadStatus.Cancel;
            if (this.mCurrentFileKey != null) {
                String str = TAG;
                CmLog.d(str, "<" + this + ">cancel ts.. mCurrentFileKey:" + this.mCurrentFileKey);
                AVMDLDataLoader.getInstance().suspendDownload(this.mCurrentFileKey);
            }
            PlaylistDownloaderItem playlistDownloaderItem = this.mM3u8FileDownloader;
            if (playlistDownloaderItem != null) {
                playlistDownloaderItem.release();
                this.mM3u8FileDownloader = null;
            }
            this.mStatusListenerHandler.sendMessage(this.mStatusListenerHandler.obtainMessage(11001));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @SuppressLint({"DefaultLocale"})
    private synchronized void changeStatusToCompleted() {
        try {
            this.mDownloadStatus = DownloadStatus.Completed;
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo.what = 21;
            aVMDLDataLoaderNotifyInfo.parameter = 3L;
            aVMDLDataLoaderNotifyInfo.logInfo = String.format("%d,%d,%s,%s", 10000L, 10000L, this.mPlaylistFileKey, this.mDownloadM3u8FilePath);
            if (this.mStatusListenerHandler == null) {
                callCompleteListener(this.mMdlProxyUrl, aVMDLDataLoaderNotifyInfo);
            } else {
                PlaylistDownloaderItem playlistDownloaderItem = this.mM3u8FileDownloader;
                if (playlistDownloaderItem != null) {
                    playlistDownloaderItem.release();
                    this.mM3u8FileDownloader = null;
                }
                Message obtainMessage = this.mStatusListenerHandler.obtainMessage(11002);
                obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
                this.mStatusListenerHandler.sendMessage(obtainMessage);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void changeStatusToError(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str;
        try {
            this.mDownloadStatus = DownloadStatus.Error;
            aVMDLDataLoaderNotifyInfo.parameter = 3L;
            if (TextUtils.isEmpty(this.mPlaylistFileKey)) {
                str = this.mMdlProxyUrl;
            } else {
                str = this.mPlaylistFileKey;
            }
            aVMDLDataLoaderNotifyInfo.logInfo = str;
            PlaylistDownloaderItem playlistDownloaderItem = this.mM3u8FileDownloader;
            if (playlistDownloaderItem != null) {
                playlistDownloaderItem.release();
                this.mM3u8FileDownloader = null;
            }
            Handler handler = this.mStatusListenerHandler;
            if (handler == null) {
                callErrorListener(this.mMdlProxyUrl, aVMDLDataLoaderNotifyInfo);
            } else {
                Message obtainMessage = handler.obtainMessage(11003);
                obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
                this.mStatusListenerHandler.sendMessage(obtainMessage);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void changeStatusToStart() {
        this.mDownloadStatus = DownloadStatus.Start;
        Message obtainMessage = this.mStatusListenerHandler.obtainMessage(11000);
        obtainMessage.obj = null;
        this.mStatusListenerHandler.sendMessage(obtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void downloadM3u8File(String str) {
        String str2 = TAG;
        CmLog.d(str2, "<" + this + "> downloadM3u8File : " + str);
        if (TextUtils.isEmpty(str)) {
            CmLog.e(str2, "<" + this + "> main url is empty. ");
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo.what = 8;
            aVMDLDataLoaderNotifyInfo.code = -4000L;
            changeStatusToError(aVMDLDataLoaderNotifyInfo);
            return;
        }
        this.mM3u8FileDownloader = new PlaylistDownloaderItem(str);
        CacheFileManager.HlsCacheNodeInfo hlsCacheNodeInfo = new CacheFileManager.HlsCacheNodeInfo();
        hlsCacheNodeInfo.version = 2;
        hlsCacheNodeInfo.fileKey = this.mPlaylistFileKey;
        hlsCacheNodeInfo.cacheStatus = CacheFileManager.NodeStatus.Caching.ordinal();
        this.mM3u8FileDownloader.writeHlsNodeInfo(hlsCacheNodeInfo);
        this.mDownloadM3u8FilePath = null;
        int download = this.mM3u8FileDownloader.download();
        if (download < 0 && !this.mCanceled) {
            CmLog.e(str2, "<" + this + ">open main m3u8 url fail : " + download);
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2 = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo2.what = 8;
            aVMDLDataLoaderNotifyInfo2.code = (long) Defines.getErrorCode(download);
            changeStatusToError(aVMDLDataLoaderNotifyInfo2);
            return;
        }
        hlsCacheNodeInfo.cacheStatus = CacheFileManager.NodeStatus.Cached.ordinal();
        this.mM3u8FileDownloader.writeHlsNodeInfo(hlsCacheNodeInfo);
        this.mDownloadM3u8FilePath = this.mM3u8FileDownloader.getDownloadFilePath();
        PlaylistDownloaderItem.PlayListType type = this.mM3u8FileDownloader.getType();
        this.mPlaylistType = type;
        if (type == PlaylistDownloaderItem.PlayListType.MasterPlaylist) {
            CmLog.i(str2, "<" + this + "> main url is Master ");
            this.mSubMdlProxyUrls = getAllMasterDownloadUrls(this.mM3u8FileDownloader.getMasterPlaylist());
        } else {
            List<String> subUrls = this.mM3u8FileDownloader.getSubUrls(this.mCustomHeaderEncoded);
            this.mSubMdlProxyUrls = new LinkedList();
            if (subUrls != null && subUrls.size() > 0) {
                for (String str3 : subUrls) {
                    DownloadUrlInfo downloadUrlInfo = new DownloadUrlInfo();
                    downloadUrlInfo.mUrl = str3;
                    this.mSubMdlProxyUrls.add(downloadUrlInfo);
                }
            }
        }
        if (this.mSubMdlProxyUrls.isEmpty()) {
            return;
        }
        this.mSubUrlStepPercent = (this.mTotalPercent - 0.5f) / this.mSubMdlProxyUrls.size();
        this.baseDownloadPercent += 0.5f;
        int removeDownloadedSubUrls = removeDownloadedSubUrls();
        CmLog.d(TAG, "<" + this + ">removeDownloadedSubUrls : " + removeDownloadedSubUrls);
        if (removeDownloadedSubUrls > 0) {
            for (int i10 = 0; i10 < removeDownloadedSubUrls; i10++) {
                this.baseDownloadPercent += this.mSubUrlStepPercent;
            }
        }
        downloadNextUrl();
    }

    private synchronized void downloadNextUrl() {
        if (this.mCanceled) {
            String str = TAG;
            CmLog.w(str, "<" + this + ">downloadNextUrl...but canceled");
        } else if (this.mDownloadStatus == DownloadStatus.Error) {
            String str2 = TAG;
            CmLog.w(str2, "<" + this + ">downloadNextUrl...but error before");
        } else {
            this.mCurrentFileKey = null;
            if (this.mSubMdlProxyUrls.isEmpty()) {
                String str3 = TAG;
                CmLog.i(str3, "<" + this + ">downloadNextUrl() completed. proxyUrlsEmpty");
                PlaylistDownloaderItem playlistDownloaderItem = this.mM3u8FileDownloader;
                if (playlistDownloaderItem != null) {
                    playlistDownloaderItem.allDownloadCompleted();
                }
                updateDownloadProgress(this.mTotalPercent);
                this.mCurrentFileKey = null;
                changeStatusToCompleted();
                return;
            }
            String str4 = this.mSubMdlProxyUrls.remove(0).mUrl;
            String str5 = TAG;
            CmLog.d(str5, "<" + this + "> downloadNextUrl = " + str4);
            if (TextUtils.isEmpty(str4)) {
                AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
                aVMDLDataLoaderNotifyInfo.what = 8;
                aVMDLDataLoaderNotifyInfo.code = -4000L;
                changeStatusToError(aVMDLDataLoaderNotifyInfo);
                return;
            }
            Map<String, String> parseURLParam = UriUtils.parseURLParam(str4);
            if (parseURLParam.containsKey(CampaignEx.JSON_KEY_AD_K)) {
                this.mCurrentFileKey = parseURLParam.get(CampaignEx.JSON_KEY_AD_K);
            }
            CmLog.i(str5, "<" + this + ">MDL downloadResource filekey = " + this.mCurrentFileKey + " proxyUrl = " + str4);
            if (this.mM3u8FileDownloader != null) {
                CacheFileManager.TsCacheNodeInfo tsCacheNodeInfo = new CacheFileManager.TsCacheNodeInfo();
                tsCacheNodeInfo.version = 3;
                tsCacheNodeInfo.fileKey = this.mCurrentFileKey;
                tsCacheNodeInfo.cacheStatus = CacheFileManager.NodeStatus.Caching.ordinal();
                if (this.mPlaylistType == PlaylistDownloaderItem.PlayListType.MasterPlaylist) {
                    tsCacheNodeInfo.keyType = 1;
                } else {
                    tsCacheNodeInfo.keyType = 2;
                }
                this.mM3u8FileDownloader.writeTsNodeInfo(tsCacheNodeInfo);
            }
            if (this.mPlaylistType == PlaylistDownloaderItem.PlayListType.MasterPlaylist) {
                PlaylistDownloader playlistDownloader = this.mMediaListDownloader;
                if (playlistDownloader != null) {
                    playlistDownloader.release();
                }
                PlaylistDownloader playlistDownloader2 = new PlaylistDownloader(str4, this);
                this.mMediaListDownloader = playlistDownloader2;
                playlistDownloader2.setLoaderListener(new IDownloadListener() { // from class: com.bytedance.vcloud.cacheModule.PlaylistDownloader.3
                    @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
                    public void onCancel(String str6, String str7) {
                        String str8 = PlaylistDownloader.TAG;
                        CmLog.d(str8, "<" + this + ">sub m3u8 canceled fileKey:" + str6);
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
                    public void onCompleted(String str6, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                        String str7 = PlaylistDownloader.TAG;
                        CmLog.d(str7, "<" + this + ">sub m3u8 completed info.logInfo:" + aVMDLDataLoaderNotifyInfo2.logInfo);
                        DownloadLogInfo parseDownloadLogInfo = PlaylistDownloader.parseDownloadLogInfo(aVMDLDataLoaderNotifyInfo2.logInfo);
                        if (parseDownloadLogInfo != null) {
                            PlaylistDownloader.this.processTsPreloadStatus(parseDownloadLogInfo.key, DownloadStatus.Completed, aVMDLDataLoaderNotifyInfo2);
                        }
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
                    public void onError(String str6, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                        String str7 = PlaylistDownloader.TAG;
                        CmLog.d(str7, "<" + this + ">sub m3u8 error code : " + aVMDLDataLoaderNotifyInfo2.code + " info.loginfo :" + aVMDLDataLoaderNotifyInfo2.logInfo);
                        PlaylistDownloader.this.changeStatusToError(aVMDLDataLoaderNotifyInfo2);
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
                    public void onProgress(String str6, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                        DownloadLogInfo parseDownloadLogInfo = PlaylistDownloader.parseDownloadLogInfo(aVMDLDataLoaderNotifyInfo2.logInfo);
                        if (parseDownloadLogInfo != null) {
                            PlaylistDownloader.this.updateDownloadProgress(PlaylistDownloader.this.baseDownloadPercent + ((((float) parseDownloadLogInfo.downloadedSize) * PlaylistDownloader.this.mSubUrlStepPercent) / ((float) parseDownloadLogInfo.mediaSize)));
                        }
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistDownloader.IDownloadListener
                    public void onStart(String str6, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                    }
                });
                CmLog.i(str5, "<" + this + ">sub m3u8 downloadSource filekey = " + this.mCurrentFileKey + " proxyUrl = " + str4);
                this.mMediaListDownloader.download();
            } else {
                AVMDLDataLoader.getInstance().downloadResource(str4);
            }
        }
    }

    private List<DownloadUrlInfo> getAllMasterDownloadUrls(MasterPlaylist masterPlaylist) {
        LinkedList<DownloadUrlInfo> linkedList = new LinkedList();
        if (masterPlaylist == null) {
            return linkedList;
        }
        MasterPlaylist.VariantStream[] variantStreamArr = masterPlaylist.mVariantStreams;
        if (variantStreamArr != null) {
            for (MasterPlaylist.VariantStream variantStream : variantStreamArr) {
                DownloadUrlInfo downloadUrlInfo = new DownloadUrlInfo();
                downloadUrlInfo.mUrl = variantStream.mUri;
                linkedList.add(downloadUrlInfo);
            }
        }
        MasterPlaylist.IFrameStream[] iFrameStreamArr = masterPlaylist.mIFrameStreams;
        if (iFrameStreamArr != null) {
            for (MasterPlaylist.IFrameStream iFrameStream : iFrameStreamArr) {
                DownloadUrlInfo downloadUrlInfo2 = new DownloadUrlInfo();
                downloadUrlInfo2.mUrl = iFrameStream.mUri;
                linkedList.add(downloadUrlInfo2);
            }
        }
        MasterPlaylist.Rendition[] renditionArr = masterPlaylist.mRenditions;
        if (renditionArr != null) {
            for (MasterPlaylist.Rendition rendition : renditionArr) {
                DownloadUrlInfo downloadUrlInfo3 = new DownloadUrlInfo();
                downloadUrlInfo3.mUrl = rendition.mUri;
                linkedList.add(downloadUrlInfo3);
            }
        }
        MasterPlaylist.SessionData[] sessionDataArr = masterPlaylist.mSessionDatas;
        if (sessionDataArr != null) {
            for (MasterPlaylist.SessionData sessionData : sessionDataArr) {
                DownloadUrlInfo downloadUrlInfo4 = new DownloadUrlInfo();
                downloadUrlInfo4.mUrl = sessionData.mUri;
                linkedList.add(downloadUrlInfo4);
            }
        }
        MasterPlaylist.SessionKey[] sessionKeyArr = masterPlaylist.mSessionKeys;
        if (sessionKeyArr != null) {
            for (MasterPlaylist.SessionKey sessionKey : sessionKeyArr) {
                DownloadUrlInfo downloadUrlInfo5 = new DownloadUrlInfo();
                downloadUrlInfo5.mUrl = sessionKey.mUri;
                linkedList.add(downloadUrlInfo5);
            }
        }
        for (DownloadUrlInfo downloadUrlInfo6 : linkedList) {
            downloadUrlInfo6.mUrl = CacheModule.generateProxyUrl(this.mPlaylistRawKey, this.mPlaylistFileKey, downloadUrlInfo6.mUrl, this.mId, this.mCustomHeaderEncoded, true);
        }
        return linkedList;
    }

    private void initDownloadCmdHandler() {
        HandlerThread handlerThread = new HandlerThread("playlistDownloader");
        this.mDownloadThread = handlerThread;
        handlerThread.start();
        this.mDownloadCmdHandler = new Handler(this.mDownloadThread.getLooper()) { // from class: com.bytedance.vcloud.cacheModule.PlaylistDownloader.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 10000) {
                    PlaylistDownloader playlistDownloader = PlaylistDownloader.this;
                    playlistDownloader.downloadM3u8File(playlistDownloader.mMdlProxyUrl);
                } else if (i10 == 12000) {
                    Bundle data = message.getData();
                    PlaylistDownloader.this.processStatusChangeInner(data.getString("fileKey", null), DownloadStatus.covertCode(data.getInt("status", 0)), (AVMDLDataLoaderNotifyInfo) message.obj);
                } else if (i10 == 10002) {
                    PlaylistDownloader.this.cancelDownload();
                }
                super.handleMessage(message);
            }
        };
    }

    private void initStatusListenerHandler() {
        this.mStatusListenerHandler = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.vcloud.cacheModule.PlaylistDownloader.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                String str = PlaylistDownloader.TAG;
                CmLog.d(str, "<" + this + ">msg.what = " + message.what);
                if (PlaylistDownloader.this.mListener != null) {
                    switch (message.what) {
                        case 11000:
                            PlaylistDownloader playlistDownloader = PlaylistDownloader.this;
                            playlistDownloader.callStartListener(playlistDownloader.mMdlProxyUrl, (AVMDLDataLoaderNotifyInfo) message.obj);
                            break;
                        case 11001:
                            PlaylistDownloader playlistDownloader2 = PlaylistDownloader.this;
                            playlistDownloader2.callCancelListener(playlistDownloader2.mPlaylistFileKey, PlaylistDownloader.this.mMdlProxyUrl);
                            break;
                        case 11002:
                            PlaylistDownloader playlistDownloader3 = PlaylistDownloader.this;
                            playlistDownloader3.callCompleteListener(playlistDownloader3.mMdlProxyUrl, (AVMDLDataLoaderNotifyInfo) message.obj);
                            break;
                        case 11003:
                            PlaylistDownloader playlistDownloader4 = PlaylistDownloader.this;
                            playlistDownloader4.callErrorListener(playlistDownloader4.mMdlProxyUrl, (AVMDLDataLoaderNotifyInfo) message.obj);
                            break;
                        case 11004:
                            PlaylistDownloader playlistDownloader5 = PlaylistDownloader.this;
                            playlistDownloader5.callProgressListener(playlistDownloader5.mMdlProxyUrl, (AVMDLDataLoaderNotifyInfo) message.obj);
                            break;
                    }
                }
                super.handleMessage(message);
            }
        };
    }

    private boolean isPlaylistFileKey(String str) {
        String str2 = this.mPlaylistFileKey;
        if (str2 != null && str2.equals(str)) {
            return true;
        }
        return false;
    }

    public static DownloadLogInfo parseDownloadLogInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(",");
        if (split.length < 4) {
            return null;
        }
        DownloadLogInfo downloadLogInfo = new DownloadLogInfo();
        downloadLogInfo.downloadedSize = Long.parseLong(split[0]);
        downloadLogInfo.mediaSize = Long.parseLong(split[1]);
        downloadLogInfo.key = split[2];
        downloadLogInfo.localFilePath = split[3];
        return downloadLogInfo;
    }

    private void processM3u8PreloadStatus(String str, DownloadStatus downloadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str2 = TAG;
        CmLog.i(str2, "do nothing ... processM3u8PreloadStatus = " + str + ", mCurrentFileKey = " + this.mCurrentFileKey + ", mUrlFileKey = " + this.mPlaylistFileKey + ", status = " + downloadStatus.name());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void processTsPreloadStatus(String str, DownloadStatus downloadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        try {
            String str2 = TAG;
            CmLog.i(str2, "processTsPreloadStatus = " + str + ", status = " + downloadStatus.name() + ", info.loginfo = " + aVMDLDataLoaderNotifyInfo.logInfo);
            if (downloadStatus == DownloadStatus.Completed) {
                CmLog.i(str2, "<" + this + ">sub download completed  , key = " + this.mCurrentFileKey);
                if (str.equals(this.mCurrentFileKey)) {
                    if (this.mM3u8FileDownloader != null) {
                        CacheFileManager.TsCacheNodeInfo tsCacheNodeInfo = new CacheFileManager.TsCacheNodeInfo();
                        tsCacheNodeInfo.version = 3;
                        tsCacheNodeInfo.fileKey = this.mCurrentFileKey;
                        tsCacheNodeInfo.cacheStatus = CacheFileManager.NodeStatus.Cached.ordinal();
                        if (this.mPlaylistType == PlaylistDownloaderItem.PlayListType.MasterPlaylist) {
                            tsCacheNodeInfo.keyType = 1;
                        } else {
                            tsCacheNodeInfo.keyType = 2;
                        }
                        this.mM3u8FileDownloader.writeTsNodeInfo(tsCacheNodeInfo);
                    }
                    float f10 = this.baseDownloadPercent + this.mSubUrlStepPercent;
                    this.baseDownloadPercent = f10;
                    updateDownloadProgress(f10);
                    downloadNextUrl();
                }
            } else if (downloadStatus == DownloadStatus.Cancel) {
                CmLog.d(str2, "<" + this + ">mdl canceled... " + this.mCurrentFileKey);
            } else if (downloadStatus == DownloadStatus.Error) {
                CmLog.d(str2, "<" + this + ">mdl Error ... " + this.mCurrentFileKey + " , info :" + aVMDLDataLoaderNotifyInfo.logInfo);
                AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2 = new AVMDLDataLoaderNotifyInfo();
                aVMDLDataLoaderNotifyInfo2.what = 8;
                aVMDLDataLoaderNotifyInfo2.code = aVMDLDataLoaderNotifyInfo.code;
                changeStatusToError(aVMDLDataLoaderNotifyInfo2);
            } else if (downloadStatus == DownloadStatus.Progress) {
                CmLog.d(str2, "<" + this + ">mdl progress ... " + this.mCurrentFileKey + " , info :" + aVMDLDataLoaderNotifyInfo.logInfo);
                DownloadLogInfo parseDownloadLogInfo = parseDownloadLogInfo(aVMDLDataLoaderNotifyInfo.logInfo);
                if (parseDownloadLogInfo != null) {
                    updateDownloadProgress(this.baseDownloadPercent + ((((float) parseDownloadLogInfo.downloadedSize) * this.mSubUrlStepPercent) / ((float) parseDownloadLogInfo.mediaSize)));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private int removeDownloadedSubUrls() {
        CacheFileManager.TsCacheNodeInfo[] tsCacheInfos;
        if (this.mSubMdlProxyUrls.isEmpty() || (tsCacheInfos = CacheFileManager.getTsCacheInfos(this.mPlaylistFileKey, CacheFileManager.CacheFileType.Download)) == null || tsCacheInfos.length == 0) {
            return -1;
        }
        int i10 = 0;
        for (CacheFileManager.TsCacheNodeInfo tsCacheNodeInfo : tsCacheInfos) {
            String str = tsCacheNodeInfo.fileKey;
            if (!TextUtils.isEmpty(str) && tsCacheNodeInfo.cacheStatus != CacheFileManager.NodeStatus.Caching.ordinal()) {
                Iterator<DownloadUrlInfo> it = this.mSubMdlProxyUrls.iterator();
                while (true) {
                    if (it.hasNext()) {
                        DownloadUrlInfo next = it.next();
                        if (!TextUtils.isEmpty(next.mUrl)) {
                            Map<String, String> parseURLParam = UriUtils.parseURLParam(next.mUrl);
                            if (parseURLParam.containsKey(CampaignEx.JSON_KEY_AD_K) && str.equals(parseURLParam.get(CampaignEx.JSON_KEY_AD_K))) {
                                i10++;
                                this.mSubMdlProxyUrls.remove(next);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"DefaultLocale"})
    public void updateDownloadProgress(float f10) {
        long j10 = f10 * 100.0f;
        long j11 = this.mTotalPercent * 100.0f;
        AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
        aVMDLDataLoaderNotifyInfo.what = 3;
        aVMDLDataLoaderNotifyInfo.parameter = 3L;
        aVMDLDataLoaderNotifyInfo.logInfo = String.format("%d,%d,%s,%s", Long.valueOf(j10), Long.valueOf(j11), this.mPlaylistFileKey, this.mDownloadM3u8FilePath);
        Handler handler = this.mStatusListenerHandler;
        if (handler == null) {
            callProgressListener(this.mMdlProxyUrl, aVMDLDataLoaderNotifyInfo);
            return;
        }
        Message obtainMessage = handler.obtainMessage(11004);
        obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
        this.mStatusListenerHandler.sendMessage(obtainMessage);
    }

    public synchronized void cancel() {
        try {
            if (this.mCanceled) {
                return;
            }
            this.mCanceled = true;
            PlaylistDownloaderItem playlistDownloaderItem = this.mM3u8FileDownloader;
            if (playlistDownloaderItem != null) {
                playlistDownloaderItem.cancel();
            }
            PlaylistDownloader playlistDownloader = this.mMediaListDownloader;
            if (playlistDownloader != null) {
                playlistDownloader.cancel();
            }
            Handler handler = this.mDownloadCmdHandler;
            if (handler != null) {
                this.mDownloadCmdHandler.sendMessage(handler.obtainMessage(10002));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized boolean checkIfIntercept(String str, DownloadStatus downloadStatus) {
        if (isPlaylistFileKey(str)) {
            if (downloadStatus == DownloadStatus.Progress) {
                return false;
            }
            if (downloadStatus == this.mDownloadStatus) {
                return true;
            }
            if (downloadStatus != DownloadStatus.Error) {
                return true;
            }
            return false;
        } else if (isTsFileKey(str)) {
            return true;
        } else {
            if (!isMediaFileKey(str)) {
                return false;
            }
            return this.mMediaListDownloader.checkIfIntercept(str, downloadStatus);
        }
    }

    public int download() {
        if (this.mCanceled) {
            String str = TAG;
            CmLog.w(str, "<" + this + ">download has been cancled");
            return 0;
        }
        Handler handler = this.mDownloadCmdHandler;
        if (handler != null) {
            this.mDownloadCmdHandler.sendMessage(handler.obtainMessage(10000));
        } else {
            downloadM3u8File(this.mMdlProxyUrl);
        }
        return 0;
    }

    public synchronized boolean isMediaFileKey(String str) {
        boolean z10;
        PlaylistDownloader playlistDownloader = this.mMediaListDownloader;
        if (playlistDownloader != null) {
            if (playlistDownloader.isMyKey(str)) {
                z10 = true;
            }
        }
        z10 = false;
        return z10;
    }

    public boolean isMyKey(String str) {
        if (!isPlaylistFileKey(str) && !isTsFileKey(str) && !isMediaFileKey(str)) {
            return false;
        }
        return true;
    }

    public boolean isTsFileKey(String str) {
        String str2 = this.mCurrentFileKey;
        if (str2 != null && str2.equals(str)) {
            return true;
        }
        return false;
    }

    public boolean processStatusChange(String str, DownloadStatus downloadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        boolean checkIfIntercept = checkIfIntercept(str, downloadStatus);
        String str2 = TAG;
        CmLog.e(str2, "processStatusChange checkIfIntercept: " + checkIfIntercept);
        Message obtainMessage = this.mDownloadCmdHandler.obtainMessage(12000);
        Bundle bundle = new Bundle();
        bundle.putInt("status", downloadStatus.ordinal());
        bundle.putString("fileKey", str);
        obtainMessage.setData(bundle);
        obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
        this.mDownloadCmdHandler.sendMessage(obtainMessage);
        return checkIfIntercept;
    }

    synchronized void processStatusChangeInner(String str, DownloadStatus downloadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        try {
            if (isPlaylistFileKey(str)) {
                processM3u8PreloadStatus(str, downloadStatus, aVMDLDataLoaderNotifyInfo);
            } else if (isTsFileKey(str)) {
                processTsPreloadStatus(str, downloadStatus, aVMDLDataLoaderNotifyInfo);
            } else if (isMediaFileKey(str)) {
                this.mMediaListDownloader.processStatusChangeInner(str, downloadStatus, aVMDLDataLoaderNotifyInfo);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void release() {
        try {
            HandlerThread handlerThread = this.mDownloadThread;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            PlaylistDownloaderItem playlistDownloaderItem = this.mM3u8FileDownloader;
            if (playlistDownloaderItem != null) {
                playlistDownloaderItem.release();
                this.mM3u8FileDownloader = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setLoaderListener(IDownloadListener iDownloadListener) {
        this.mListener = iDownloadListener;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode());
    }

    public PlaylistDownloader(String str, PlaylistDownloader playlistDownloader) {
        this.mId = null;
        this.mMdlProxyUrl = null;
        this.mPlaylistFileKey = null;
        this.mPlaylistRawKey = null;
        this.mCustomHeaderEncoded = null;
        this.mDownloadStatus = DownloadStatus.Unknown;
        this.mM3u8FileDownloader = null;
        this.mDownloadM3u8FilePath = null;
        this.mSubMdlProxyUrls = null;
        this.mSubUrlStepPercent = 0.0f;
        this.mTotalPercent = 0.0f;
        this.mDownloadThread = null;
        this.mDownloadCmdHandler = null;
        this.mStatusListenerHandler = null;
        this.mCanceled = false;
        this.mCurrentFileKey = null;
        this.mParentLoader = null;
        this.mMediaListDownloader = null;
        this.mPlaylistType = PlaylistDownloaderItem.PlayListType.Unknown;
        this.mListener = null;
        this.baseDownloadPercent = 0.0f;
        String str2 = TAG;
        CmLog.d(str2, "<" + this + ">");
        this.mParentLoader = playlistDownloader;
        this.mTotalPercent = 100.0f;
        this.mMdlProxyUrl = str;
        Map<String, String> parseURLParam = UriUtils.parseURLParam(str);
        if (parseURLParam.containsKey(CampaignEx.JSON_KEY_AD_K)) {
            this.mPlaylistFileKey = parseURLParam.get(CampaignEx.JSON_KEY_AD_K);
        }
        if (parseURLParam.containsKey("rk")) {
            this.mPlaylistRawKey = parseURLParam.get("rk");
        } else {
            this.mPlaylistRawKey = this.mPlaylistFileKey;
        }
        if (parseURLParam.containsKey("h")) {
            this.mCustomHeaderEncoded = parseURLParam.get("h");
        }
        if (parseURLParam.containsKey("hlsproxyQuery")) {
            Map<String, String> parseURLParam2 = UriUtils.parseURLParam(Uri.decode(parseURLParam.get("hlsproxyQuery")));
            if (this.mId == null && parseURLParam2.containsKey("id")) {
                this.mId = parseURLParam2.get("id");
            }
        }
        PlaylistDownloader playlistDownloader2 = this.mParentLoader;
        if (playlistDownloader2 != null) {
            this.mId = playlistDownloader2.mId;
        }
        if (playlistDownloader2 == null) {
            initStatusListenerHandler();
            initDownloadCmdHandler();
        }
    }
}
