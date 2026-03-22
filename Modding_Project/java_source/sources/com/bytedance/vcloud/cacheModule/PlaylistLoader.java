package com.bytedance.vcloud.cacheModule;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.vcloud.cacheModule.CacheFileManager;
import com.bytedance.vcloud.cacheModule.CacheSettings;
import com.bytedance.vcloud.cacheModule.PlaylistLoaderItem;
import com.bytedance.vcloud.cacheModule.info.MasterPlaylist;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.bytedance.vcloud.cacheModule.utils.UriUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class PlaylistLoader {
    private static final String TAG;
    private static final int WHAT_PRELOAD_CMD_CANCEL = 10002;
    private static final int WHAT_PRELOAD_CMD_NEXT = 10001;
    private static final int WHAT_PRELOAD_CMD_START = 10000;
    private static final int WHAT_PRELOAD_STATUS_CANCEL = 11001;
    public static final int WHAT_PRELOAD_STATUS_CHANGED = 12000;
    private static final int WHAT_PRELOAD_STATUS_COMPLETED = 11002;
    private static final int WHAT_PRELOAD_STATUS_ERROR = 11003;
    private static final int WHAT_PRELOAD_STATUS_START = 11000;
    private String mCacheDir;
    private volatile boolean mCanceled;
    private String mCurrentFileKey;
    private String mCustomHeaderEncoded;
    private String mId;
    private ILoaderListener mListener;
    private LoadStatus mLoadStatus;
    private PlaylistLoaderItem mM3u8FileLoader;
    private PlaylistLoader mMasterUrlLoader;
    private String mMdlProxyUrl;
    private OnMasterPlaylistListener mOnMasterPlaylistListener;
    private PlaylistLoader mParentLoader;
    private String mPlaylistFileKey;
    private String mPlaylistRawKey;
    private PlaylistLoaderItem.PlayListType mPlaylistType;
    private Handler mPreloadHandler;
    private HandlerThread mPreloadThread;
    private int mPreloadedSize;
    private Handler mStatusListenerHandler;
    private List<PreloadUrlInfo> mSubPreloadUrls;
    private int mTargetPreloadSize;

    /* loaded from: classes3.dex */
    public interface ILoaderListener {
        void onCancel(String str, String str2);

        void onCompleted(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);

        void onError(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);

        void onStart(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);
    }

    /* loaded from: classes3.dex */
    public enum LoadStatus {
        Unknown,
        Start,
        Cancel,
        Completed,
        Error;

        public static LoadStatus covertCode(int i10) {
            LoadStatus loadStatus = Start;
            if (i10 == loadStatus.ordinal()) {
                return loadStatus;
            }
            LoadStatus loadStatus2 = Cancel;
            if (i10 == loadStatus2.ordinal()) {
                return loadStatus2;
            }
            LoadStatus loadStatus3 = Completed;
            if (i10 == loadStatus3.ordinal()) {
                return loadStatus3;
            }
            LoadStatus loadStatus4 = Error;
            if (i10 == loadStatus4.ordinal()) {
                return loadStatus4;
            }
            return Unknown;
        }
    }

    /* loaded from: classes3.dex */
    public static class OnMasterPlaylistListener {
        public List<PreloadUrlInfo> onSelectPreloadUrls(MasterPlaylist masterPlaylist) {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static class PreloadUrlInfo {
        public String mUrl = null;
        public Integer mPreloadSize = null;

        public String toString() {
            return "PreloadUrlInfo{mUrl='" + this.mUrl + "', mPreloadSize=" + this.mPreloadSize + '}';
        }
    }

    static {
        CacheModuleLoader.loadLibrary();
        TAG = PlaylistLoader.class.getSimpleName();
    }

    public PlaylistLoader(String str, int i10) {
        this(str, i10, null);
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
    public void callStartListener(String str, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        this.mListener.onStart(str, aVMDLDataLoaderNotifyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void cancelPreload() {
        try {
            if (this.mCurrentFileKey != null) {
                String str = TAG;
                CmLog.d(str, "cancel ts.. mCurrentFileKey:" + this.mCurrentFileKey);
                AVMDLDataLoader.getInstance().cancel(this.mCurrentFileKey);
            }
            PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
            if (playlistLoaderItem != null) {
                playlistLoaderItem.release();
                this.mM3u8FileLoader = null;
            }
            PlaylistLoader playlistLoader = this.mMasterUrlLoader;
            if (playlistLoader != null) {
                playlistLoader.release();
                this.mMasterUrlLoader = null;
            }
            changeStatusToCancel();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void changeStatusToCancel() {
        this.mLoadStatus = LoadStatus.Cancel;
        Handler handler = this.mStatusListenerHandler;
        if (handler != null) {
            this.mStatusListenerHandler.sendMessage(handler.obtainMessage(11001));
        }
    }

    @SuppressLint({"DefaultLocale"})
    private synchronized void changeStatusToCompleted() {
        try {
            this.mLoadStatus = LoadStatus.Completed;
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo.what = 4;
            aVMDLDataLoaderNotifyInfo.parameter = 2L;
            Long valueOf = Long.valueOf(CacheFileManager.getCacheSize(this.mPlaylistFileKey, CacheFileManager.CacheFileType.Preload));
            String str = this.mPlaylistFileKey;
            aVMDLDataLoaderNotifyInfo.logInfo = String.format("%d,%d,%s,%s", valueOf, -1, str, getCacheDir() + DomExceptionUtils.SEPARATOR + this.mPlaylistFileKey + ".plc");
            PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
            if (playlistLoaderItem != null) {
                playlistLoaderItem.release();
                this.mM3u8FileLoader = null;
            }
            PlaylistLoader playlistLoader = this.mMasterUrlLoader;
            if (playlistLoader != null) {
                playlistLoader.release();
                this.mMasterUrlLoader = null;
            }
            Handler handler = this.mStatusListenerHandler;
            if (handler != null) {
                Message obtainMessage = handler.obtainMessage(11002);
                obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
                this.mStatusListenerHandler.sendMessage(obtainMessage);
            } else {
                callCompleteListener(this.mMdlProxyUrl, aVMDLDataLoaderNotifyInfo);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void changeStatusToError(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str;
        try {
            this.mLoadStatus = LoadStatus.Error;
            aVMDLDataLoaderNotifyInfo.parameter = 2L;
            if (TextUtils.isEmpty(this.mPlaylistFileKey)) {
                str = this.mMdlProxyUrl;
            } else {
                str = this.mPlaylistFileKey;
            }
            aVMDLDataLoaderNotifyInfo.logInfo = str;
            PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
            if (playlistLoaderItem != null) {
                playlistLoaderItem.release();
                this.mM3u8FileLoader = null;
            }
            PlaylistLoader playlistLoader = this.mMasterUrlLoader;
            if (playlistLoader != null) {
                playlistLoader.release();
                this.mMasterUrlLoader = null;
            }
            Handler handler = this.mStatusListenerHandler;
            if (handler != null) {
                Message obtainMessage = handler.obtainMessage(11003);
                obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
                this.mStatusListenerHandler.sendMessage(obtainMessage);
            } else {
                callErrorListener(this.mMdlProxyUrl, aVMDLDataLoaderNotifyInfo);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void changeStatusToStart() {
        this.mLoadStatus = LoadStatus.Start;
        Handler handler = this.mStatusListenerHandler;
        if (handler != null) {
            Message obtainMessage = handler.obtainMessage(11000);
            obtainMessage.obj = null;
            this.mStatusListenerHandler.sendMessage(obtainMessage);
            return;
        }
        callStartListener(this.mMdlProxyUrl, null);
    }

    private String getCacheDir() {
        if (TextUtils.isEmpty(this.mCacheDir)) {
            this.mCacheDir = CacheSettings.getInstance().getStringOption(CacheSettings.OptionKey.CACHE_DIR);
        }
        return this.mCacheDir;
    }

    private void initPreloadCmdHandler() {
        HandlerThread handlerThread = new HandlerThread("playlistPreloader");
        this.mPreloadThread = handlerThread;
        handlerThread.start();
        this.mPreloadHandler = new Handler(this.mPreloadThread.getLooper()) { // from class: com.bytedance.vcloud.cacheModule.PlaylistLoader.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 10000) {
                    PlaylistLoader playlistLoader = PlaylistLoader.this;
                    playlistLoader.preloadM3u8File(playlistLoader.mMdlProxyUrl);
                } else if (i10 == 10001) {
                    PlaylistLoader.this.preLoadNextUrl();
                } else if (i10 == 10002) {
                    PlaylistLoader.this.cancelPreload();
                } else if (i10 == 12000) {
                    Bundle data = message.getData();
                    PlaylistLoader.this.processStatusChangeInner(data.getString("fileKey", null), LoadStatus.covertCode(data.getInt("status", 0)), (AVMDLDataLoaderNotifyInfo) message.obj);
                }
                super.handleMessage(message);
            }
        };
    }

    private void initStatusListenerHandler() {
        this.mStatusListenerHandler = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.vcloud.cacheModule.PlaylistLoader.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                String str = PlaylistLoader.TAG;
                CmLog.d(str, "msg.what = " + message.what);
                if (PlaylistLoader.this.mListener != null) {
                    switch (message.what) {
                        case 11000:
                            PlaylistLoader playlistLoader = PlaylistLoader.this;
                            playlistLoader.callStartListener(playlistLoader.mMdlProxyUrl, (AVMDLDataLoaderNotifyInfo) message.obj);
                            break;
                        case 11001:
                            PlaylistLoader playlistLoader2 = PlaylistLoader.this;
                            playlistLoader2.callCancelListener(playlistLoader2.mPlaylistFileKey, PlaylistLoader.this.mMdlProxyUrl);
                            break;
                        case 11002:
                            PlaylistLoader playlistLoader3 = PlaylistLoader.this;
                            playlistLoader3.callCompleteListener(playlistLoader3.mMdlProxyUrl, (AVMDLDataLoaderNotifyInfo) message.obj);
                            break;
                        case 11003:
                            PlaylistLoader playlistLoader4 = PlaylistLoader.this;
                            playlistLoader4.callErrorListener(playlistLoader4.mMdlProxyUrl, (AVMDLDataLoaderNotifyInfo) message.obj);
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

    private boolean isTsFileKey(String str) {
        String str2 = this.mCurrentFileKey;
        if (str2 != null && str2.equals(str)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void preLoadNextUrl() {
        boolean z10;
        String str = TAG;
        CmLog.d(str, "<" + this + ">preLoadNextUrl...");
        if (this.mCanceled) {
            return;
        }
        boolean isEmpty = this.mSubPreloadUrls.isEmpty();
        if (this.mPreloadedSize >= this.mTargetPreloadSize) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!isEmpty && !z10) {
            PreloadUrlInfo remove = this.mSubPreloadUrls.remove(0);
            String str2 = remove.mUrl;
            if (TextUtils.isEmpty(str2)) {
                AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
                aVMDLDataLoaderNotifyInfo.what = 8;
                aVMDLDataLoaderNotifyInfo.code = -4000L;
                changeStatusToError(aVMDLDataLoaderNotifyInfo);
                return;
            }
            CmLog.d(str, "<" + this + "> preLoadNextUrl = " + str2 + " , size = " + remove.mPreloadSize);
            Map<String, String> parseURLParam = UriUtils.parseURLParam(str2);
            if (parseURLParam.containsKey(CampaignEx.JSON_KEY_AD_K)) {
                this.mCurrentFileKey = parseURLParam.get(CampaignEx.JSON_KEY_AD_K);
            }
            if (this.mM3u8FileLoader != null) {
                CacheFileManager.TsCacheNodeInfo tsCacheNodeInfo = new CacheFileManager.TsCacheNodeInfo();
                tsCacheNodeInfo.version = 2;
                tsCacheNodeInfo.fileKey = this.mCurrentFileKey;
                if (this.mPlaylistType == PlaylistLoaderItem.PlayListType.MasterPlaylist) {
                    tsCacheNodeInfo.keyType = 1;
                } else {
                    tsCacheNodeInfo.keyType = 2;
                }
                this.mM3u8FileLoader.writeTsNodeInfo(tsCacheNodeInfo);
            }
            int i10 = this.mTargetPreloadSize - this.mPreloadedSize;
            Integer num = remove.mPreloadSize;
            if (num != null && num.intValue() > 0) {
                i10 = remove.mPreloadSize.intValue();
            }
            if (this.mPlaylistType == PlaylistLoaderItem.PlayListType.MasterPlaylist) {
                PlaylistLoader playlistLoader = this.mMasterUrlLoader;
                if (playlistLoader != null) {
                    playlistLoader.release();
                }
                PlaylistLoader playlistLoader2 = new PlaylistLoader(str2, i10, this);
                this.mMasterUrlLoader = playlistLoader2;
                playlistLoader2.setLoaderListener(new ILoaderListener() { // from class: com.bytedance.vcloud.cacheModule.PlaylistLoader.3
                    private int getPreloadedSizeFromInfo(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                        try {
                            String[] split = aVMDLDataLoaderNotifyInfo2.logInfo.split(",");
                            if (split != null && split.length > 1) {
                                return Integer.parseInt(split[0]);
                            }
                        } catch (Exception unused) {
                        }
                        return 0;
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onCancel(String str3, String str4) {
                        String str5 = PlaylistLoader.TAG;
                        CmLog.d(str5, "<" + this + ">sub m3u8 canceled fileKey:" + str3);
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onCompleted(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                        String str4 = PlaylistLoader.TAG;
                        CmLog.d(str4, "<" + this + ">sub m3u8 completed info.logInfo:" + aVMDLDataLoaderNotifyInfo2.logInfo);
                        int preloadedSizeFromInfo = getPreloadedSizeFromInfo(aVMDLDataLoaderNotifyInfo2);
                        PlaylistLoader playlistLoader3 = PlaylistLoader.this;
                        playlistLoader3.mPreloadedSize = playlistLoader3.mPreloadedSize + preloadedSizeFromInfo;
                        PlaylistLoader.this.preLoadNextUrl();
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onError(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                        String str4 = PlaylistLoader.TAG;
                        CmLog.d(str4, "<" + this + ">sub m3u8 error code : " + aVMDLDataLoaderNotifyInfo2.code + " info.loginfo :" + aVMDLDataLoaderNotifyInfo2.logInfo);
                        PlaylistLoader.this.changeStatusToError(aVMDLDataLoaderNotifyInfo2);
                    }

                    @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.ILoaderListener
                    public void onStart(String str3, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2) {
                    }
                });
                CmLog.i(str, "<" + this + ">sub m3u8 preloadSource filekey = " + this.mCurrentFileKey + " , preloadSize = " + i10 + " proxyUrl = " + str2);
                this.mMasterUrlLoader.preload();
            } else {
                CmLog.i(str, "<" + this + ">MDL preloadSource filekey = " + this.mCurrentFileKey + " , preloadSize = " + i10 + " proxyUrl = " + str2);
                AVMDLDataLoader.getInstance().preloadResource(str2, i10);
            }
            return;
        }
        CmLog.i(str, "<" + this + ">preLoadNextUrl() completed. proxyUrlsEmpty:" + isEmpty + ", hasReachPreloadSize :" + z10);
        this.mCurrentFileKey = null;
        changeStatusToCompleted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void preloadM3u8File(String str) {
        String str2 = TAG;
        CmLog.d(str2, "<" + this + "> preloadM3u8File : " + str);
        if (TextUtils.isEmpty(str)) {
            CmLog.e(str2, "<" + this + "> main url is empty. ");
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo.what = 8;
            aVMDLDataLoaderNotifyInfo.code = -4000L;
            changeStatusToError(aVMDLDataLoaderNotifyInfo);
            return;
        }
        PlaylistLoaderItem playlistLoaderItem = new PlaylistLoaderItem(str);
        this.mM3u8FileLoader = playlistLoaderItem;
        int preload = playlistLoaderItem.preload();
        if (preload < 0 && !this.mCanceled) {
            CmLog.e(str2, "<" + this + ">open main m3u8 url fail : " + preload);
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2 = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo2.what = 8;
            aVMDLDataLoaderNotifyInfo2.code = (long) Defines.getErrorCode(preload);
            changeStatusToError(aVMDLDataLoaderNotifyInfo2);
            return;
        }
        int hlsCacheSizeWithoutTs = (int) CacheFileManager.getHlsCacheSizeWithoutTs(this.mPlaylistFileKey, CacheFileManager.CacheFileType.Preload);
        this.mPreloadedSize += hlsCacheSizeWithoutTs;
        CmLog.v(str2, "<" + this + ">preload main m3u8 url cost size : " + hlsCacheSizeWithoutTs);
        CacheFileManager.HlsCacheNodeInfo hlsCacheNodeInfo = new CacheFileManager.HlsCacheNodeInfo();
        hlsCacheNodeInfo.version = 3;
        hlsCacheNodeInfo.fileKey = this.mPlaylistFileKey;
        hlsCacheNodeInfo.cacheStatus = CacheFileManager.NodeStatus.Cached.ordinal();
        hlsCacheNodeInfo.expireTime = this.mM3u8FileLoader.getExpireTime();
        this.mM3u8FileLoader.writeHlsNodeInfo(hlsCacheNodeInfo);
        PlaylistLoaderItem.PlayListType type = this.mM3u8FileLoader.getType();
        this.mPlaylistType = type;
        if (type == PlaylistLoaderItem.PlayListType.MasterPlaylist) {
            CmLog.i(str2, "<" + this + "> main url is Master ");
            this.mSubPreloadUrls = selectMasterPreloadUrls(this.mM3u8FileLoader.getMasterPlaylist());
        } else {
            List<String> subUrls = this.mM3u8FileLoader.getSubUrls(this.mCustomHeaderEncoded);
            this.mSubPreloadUrls = new LinkedList();
            if (subUrls != null) {
                for (String str3 : subUrls) {
                    PreloadUrlInfo preloadUrlInfo = new PreloadUrlInfo();
                    preloadUrlInfo.mUrl = str3;
                    preloadUrlInfo.mPreloadSize = null;
                    this.mSubPreloadUrls.add(preloadUrlInfo);
                    CmLog.d(TAG, "target preload url : " + str3);
                }
            }
        }
        preLoadNextUrl();
    }

    private void processM3u8PreloadStatus(String str, LoadStatus loadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str2 = TAG;
        CmLog.i(str2, "processM3u8PreloadStatus = " + str + ", mCurrentFileKey = " + this.mCurrentFileKey + ", mUrlFileKey = " + this.mPlaylistFileKey + ", status = " + loadStatus.name());
    }

    private void processTsPreloadStatus(String str, LoadStatus loadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str2 = TAG;
        CmLog.i(str2, "processSubPreloadStatus = " + str + ", mCurrentFileKey = " + this.mCurrentFileKey + ", mUrlFileKey = " + this.mPlaylistFileKey + ", status = " + loadStatus.name());
        if (loadStatus == LoadStatus.Completed) {
            if (this.mCanceled) {
                return;
            }
            long cacheSize = AVMDLDataLoader.getInstance().getCacheSize(this.mCurrentFileKey);
            this.mPreloadedSize = (int) (this.mPreloadedSize + cacheSize);
            CmLog.d(str2, "<" + this + ">sub preload completd size = " + cacheSize + " , key = " + this.mCurrentFileKey + ", cacheSize = " + cacheSize + " , mPreloadedSize = " + this.mPreloadedSize + " , mTargetPreloadSize = " + this.mTargetPreloadSize);
            this.mCurrentFileKey = null;
            preLoadNextUrl();
        } else if (loadStatus == LoadStatus.Cancel) {
            CmLog.d(str2, "<" + this + ">mdl canceled... " + this.mCurrentFileKey);
        } else if (loadStatus == LoadStatus.Error) {
            CmLog.d(str2, "<" + this + ">mdl Error ... code : " + aVMDLDataLoaderNotifyInfo.code);
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo2 = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo2.what = 8;
            aVMDLDataLoaderNotifyInfo2.code = aVMDLDataLoaderNotifyInfo.code;
            changeStatusToError(aVMDLDataLoaderNotifyInfo2);
        }
    }

    private List<PreloadUrlInfo> selectMasterPreloadUrls(MasterPlaylist masterPlaylist) {
        List<PreloadUrlInfo> list;
        boolean z10;
        float f10;
        int i10;
        int i11;
        if (masterPlaylist == null) {
            return new LinkedList();
        }
        OnMasterPlaylistListener onMasterPlaylistListener = this.mOnMasterPlaylistListener;
        if (onMasterPlaylistListener != null) {
            list = onMasterPlaylistListener.onSelectPreloadUrls(masterPlaylist);
        } else {
            list = null;
        }
        if (list == null || list.size() == 0) {
            CmLog.w(TAG, "<" + this + "> select url is empty. try preload first VariantStream");
            list = new LinkedList<>();
            MasterPlaylist.BestStream bestStreamIndex = this.mM3u8FileLoader.getBestStreamIndex();
            if (bestStreamIndex != null) {
                MasterPlaylist.VariantStream[] variantStreamArr = masterPlaylist.mVariantStreams;
                boolean z11 = false;
                if (variantStreamArr != null && (i11 = bestStreamIndex.varIndex) >= 0 && i11 < variantStreamArr.length) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                MasterPlaylist.Rendition[] renditionArr = masterPlaylist.mRenditions;
                if (renditionArr != null && (i10 = bestStreamIndex.rendIndex) >= 0 && i10 < renditionArr.length) {
                    z11 = true;
                }
                float f11 = 1.0f;
                if (z10) {
                    PreloadUrlInfo preloadUrlInfo = new PreloadUrlInfo();
                    preloadUrlInfo.mUrl = masterPlaylist.mVariantStreams[bestStreamIndex.varIndex].mUri;
                    float f12 = this.mTargetPreloadSize;
                    if (z11) {
                        f10 = 0.8f;
                    } else {
                        f10 = 1.0f;
                    }
                    preloadUrlInfo.mPreloadSize = Integer.valueOf((int) (f12 * f10));
                    list.add(preloadUrlInfo);
                }
                if (z11) {
                    PreloadUrlInfo preloadUrlInfo2 = new PreloadUrlInfo();
                    preloadUrlInfo2.mUrl = masterPlaylist.mRenditions[bestStreamIndex.rendIndex].mUri;
                    float f13 = this.mTargetPreloadSize;
                    if (z10) {
                        f11 = 0.2f;
                    }
                    preloadUrlInfo2.mPreloadSize = Integer.valueOf((int) (f13 * f11));
                    list.add(preloadUrlInfo2);
                }
            }
        }
        CmLog.d(TAG, "<" + this + "> select urls are :" + list);
        if (list.isEmpty()) {
            return list;
        }
        for (PreloadUrlInfo preloadUrlInfo3 : list) {
            preloadUrlInfo3.mUrl = CacheModule.generateProxyUrl(this.mPlaylistRawKey, this.mPlaylistFileKey, preloadUrlInfo3.mUrl, this.mId, this.mCustomHeaderEncoded, true);
        }
        return list;
    }

    public synchronized void cancel() {
        try {
            if (this.mCanceled) {
                return;
            }
            this.mCanceled = true;
            PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
            if (playlistLoaderItem != null) {
                playlistLoaderItem.cancel();
            }
            PlaylistLoader playlistLoader = this.mMasterUrlLoader;
            if (playlistLoader != null) {
                playlistLoader.cancel();
            }
            Handler handler = this.mPreloadHandler;
            if (handler != null) {
                this.mPreloadHandler.sendMessage(handler.obtainMessage(10002));
            } else {
                cancelPreload();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized boolean checkIfIntercept(String str, LoadStatus loadStatus) {
        if (isPlaylistFileKey(str)) {
            if (loadStatus == this.mLoadStatus) {
                return true;
            }
            if (loadStatus == LoadStatus.Error) {
                return false;
            }
            return true;
        } else if (isTsFileKey(str)) {
            return false;
        } else {
            PlaylistLoader playlistLoader = this.mMasterUrlLoader;
            if (playlistLoader == null) {
                return false;
            }
            return playlistLoader.checkIfIntercept(str, loadStatus);
        }
    }

    public synchronized boolean isMyKey(String str) {
        if (!isPlaylistFileKey(str) && !isTsFileKey(str)) {
            PlaylistLoader playlistLoader = this.mMasterUrlLoader;
            if (playlistLoader != null) {
                return playlistLoader.isMyKey(str);
            }
            return false;
        }
        return true;
    }

    public int preload() {
        if (this.mCanceled) {
            String str = TAG;
            CmLog.w(str, "<" + this + ">preload has been canceled");
            return 0;
        }
        Handler handler = this.mPreloadHandler;
        if (handler != null) {
            this.mPreloadHandler.sendMessage(handler.obtainMessage(10000));
        } else {
            preloadM3u8File(this.mMdlProxyUrl);
        }
        return 0;
    }

    public boolean processStatusChange(String str, LoadStatus loadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        boolean checkIfIntercept = checkIfIntercept(str, loadStatus);
        Handler handler = this.mPreloadHandler;
        if (handler != null) {
            Message obtainMessage = handler.obtainMessage(12000);
            Bundle bundle = new Bundle();
            bundle.putInt("status", loadStatus.ordinal());
            bundle.putString("fileKey", str);
            obtainMessage.setData(bundle);
            obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
            this.mPreloadHandler.sendMessage(obtainMessage);
        }
        return checkIfIntercept;
    }

    synchronized void processStatusChangeInner(String str, LoadStatus loadStatus, AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        try {
            if (isPlaylistFileKey(str)) {
                processM3u8PreloadStatus(str, loadStatus, aVMDLDataLoaderNotifyInfo);
            } else if (isTsFileKey(str)) {
                processTsPreloadStatus(str, loadStatus, aVMDLDataLoaderNotifyInfo);
            } else {
                PlaylistLoader playlistLoader = this.mMasterUrlLoader;
                if (playlistLoader != null) {
                    playlistLoader.processStatusChangeInner(str, loadStatus, aVMDLDataLoaderNotifyInfo);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void release() {
        try {
            HandlerThread handlerThread = this.mPreloadThread;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
            if (playlistLoaderItem != null) {
                playlistLoaderItem.release();
                this.mM3u8FileLoader = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setLoaderListener(ILoaderListener iLoaderListener) {
        this.mListener = iLoaderListener;
    }

    public void setOnMasterPlaylistListener(OnMasterPlaylistListener onMasterPlaylistListener) {
        this.mOnMasterPlaylistListener = onMasterPlaylistListener;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode());
    }

    public PlaylistLoader(String str, int i10, PlaylistLoader playlistLoader) {
        this.mId = null;
        this.mMdlProxyUrl = null;
        this.mPlaylistRawKey = null;
        this.mPlaylistFileKey = null;
        this.mCustomHeaderEncoded = null;
        this.mTargetPreloadSize = 0;
        this.mCacheDir = null;
        this.mLoadStatus = LoadStatus.Unknown;
        this.mM3u8FileLoader = null;
        this.mPlaylistType = PlaylistLoaderItem.PlayListType.Unknown;
        this.mSubPreloadUrls = null;
        this.mPreloadedSize = 0;
        this.mPreloadThread = null;
        this.mPreloadHandler = null;
        this.mStatusListenerHandler = null;
        this.mCanceled = false;
        this.mCurrentFileKey = null;
        this.mParentLoader = null;
        this.mMasterUrlLoader = null;
        this.mListener = null;
        this.mOnMasterPlaylistListener = null;
        String str2 = TAG;
        CmLog.d(str2, "<" + this + ">PlaylistLoader() parent = " + playlistLoader + ". size = " + i10 + ", mdlproxyurl = " + str);
        getCacheDir();
        this.mParentLoader = playlistLoader;
        this.mMdlProxyUrl = str;
        this.mTargetPreloadSize = i10;
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
        PlaylistLoader playlistLoader2 = this.mParentLoader;
        if (playlistLoader2 != null) {
            this.mId = playlistLoader2.mId;
        }
        if (playlistLoader2 == null) {
            initStatusListenerHandler();
            initPreloadCmdHandler();
        }
    }
}
