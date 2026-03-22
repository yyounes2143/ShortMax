package com.bytedance.vcloud.cacheModule;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.vcloud.cacheModule.CacheFileManager;
import com.bytedance.vcloud.cacheModule.PlaylistLoaderItem;
import com.bytedance.vcloud.cacheModule.info.MasterPlaylist;
import com.bytedance.vcloud.cacheModule.info.PlaylistCacheInfo;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.bytedance.vcloud.cacheModule.utils.UriUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class PlaylistCacher {
    private static final String TAG;
    private static final int WHAT_CACHE_CMD_CANCEL = 10002;
    private static final int WHAT_CACHE_CMD_START = 10000;
    private static final int WHAT_CACHE_STATUS_RESULT = 11001;
    private Map<CacheOption, Boolean> mBoolOptions;
    private Handler mCacheHandler;
    private ICacheInfoListener mCacheInfoListener;
    private HandlerThread mCacherThread;
    private volatile boolean mCanceled;
    private List<String> mChildUrls;
    private String mCustomHeaderEncoded;
    private String mId;
    private Map<CacheOption, Integer> mIntOptions;
    private String mM3u8FileKey;
    private PlaylistLoaderItem mM3u8FileLoader;
    private PlaylistLoaderItem.PlayListType mM3u8FileType;
    private String mM3u8MdlProxyUrl;
    private String mM3u8RawKey;
    private PlaylistCacher mMasterChildUrlCacher;
    private boolean mNeedInfoCallback;
    private PlaylistCacher mParentCacher;
    private Handler mStatusListenerHandler;

    /* loaded from: classes3.dex */
    public enum CacheOption {
        PlaylistTimeOutMs_Int,
        TryNextEvenIfError_Bool
    }

    /* loaded from: classes3.dex */
    public interface ICacheInfoListener {
        void onCacheInfo(PlaylistCacheInfo playlistCacheInfo);
    }

    static {
        CacheModuleLoader.loadLibrary();
        TAG = PlaylistCacher.class.getSimpleName();
    }

    public PlaylistCacher(String str) {
        this(null, str);
    }

    private PlaylistCacheInfo buildBaseCacheInfo(int i10) {
        String str;
        PlaylistCacheInfo playlistCacheInfo = new PlaylistCacheInfo();
        playlistCacheInfo.f13436id = this.mId;
        playlistCacheInfo.errorCode = i10;
        playlistCacheInfo.errorMsg = Defines.getErrorMsg(i10);
        playlistCacheInfo.playlistType = convertType(this.mM3u8FileType);
        playlistCacheInfo.playlistExpireTimeS = this.mM3u8FileLoader.getExpireTime();
        playlistCacheInfo.playlistUrlInfo = new PlaylistCacheInfo.UrlInfo();
        PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
        if (playlistLoaderItem != null) {
            str = playlistLoaderItem.getStrOption(PlaylistLoaderItem.PlaylistOption.CdnUrlStr);
        } else {
            str = null;
        }
        PlaylistCacheInfo.UrlInfo urlInfo = playlistCacheInfo.playlistUrlInfo;
        urlInfo.cdnUrl = str;
        urlInfo.fileKey = this.mM3u8FileKey;
        urlInfo.rawKey = this.mM3u8RawKey;
        return playlistCacheInfo;
    }

    private PlaylistCacheInfo.UrlInfo[] buildChildUrlInfos(List<String> list) {
        String decode;
        if (list == null || list.isEmpty()) {
            return null;
        }
        PlaylistCacheInfo.UrlInfo[] urlInfoArr = new PlaylistCacheInfo.UrlInfo[list.size()];
        int i10 = 0;
        for (String str : list) {
            PlaylistCacheInfo.UrlInfo urlInfo = new PlaylistCacheInfo.UrlInfo();
            urlInfo.cdnUrl = str;
            Map<String, String> parseURLParam = UriUtils.parseURLParam(str);
            if (parseURLParam.containsKey(CampaignEx.JSON_KEY_AD_K)) {
                urlInfo.fileKey = parseURLParam.get(CampaignEx.JSON_KEY_AD_K);
            }
            if (parseURLParam.containsKey("rk")) {
                urlInfo.rawKey = parseURLParam.get("rk");
            } else {
                urlInfo.rawKey = urlInfo.fileKey;
            }
            if (parseURLParam.containsKey("u0")) {
                String str2 = parseURLParam.get("u0");
                if (TextUtils.isEmpty(str2)) {
                    decode = null;
                } else {
                    decode = URLDecoder.decode(str2);
                }
                urlInfo.cdnUrl = decode;
            }
            urlInfoArr[i10] = urlInfo;
            i10++;
        }
        return urlInfoArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void cacheM3u8File(String str) {
        String str2 = TAG;
        CmLog.d(str2, "<" + this + "> preloadM3u8File : " + str);
        if (TextUtils.isEmpty(str)) {
            CmLog.e(str2, "<" + this + "> main url is empty. ");
            callbackCacheInfo(buildBaseCacheInfo(-4000));
            return;
        }
        this.mM3u8FileLoader = new PlaylistLoaderItem(str);
        Map<CacheOption, Integer> map = this.mIntOptions;
        CacheOption cacheOption = CacheOption.PlaylistTimeOutMs_Int;
        if (map.containsKey(cacheOption)) {
            this.mM3u8FileLoader.setIntOption(PlaylistLoaderItem.IntOption_TimeoutMs, this.mIntOptions.get(cacheOption).intValue());
        }
        int preload = this.mM3u8FileLoader.preload();
        if (preload < 0 && !this.mCanceled) {
            CmLog.e(str2, "<" + this + ">open main m3u8 url fail : " + preload);
            callbackCacheInfo(buildBaseCacheInfo(Defines.getErrorCode(preload)));
            return;
        }
        CmLog.v(str2, "<" + this + ">cache main m3u8 url end ");
        CacheFileManager.HlsCacheNodeInfo hlsCacheNodeInfo = new CacheFileManager.HlsCacheNodeInfo();
        hlsCacheNodeInfo.version = 3;
        hlsCacheNodeInfo.fileKey = this.mM3u8FileKey;
        hlsCacheNodeInfo.cacheStatus = CacheFileManager.NodeStatus.Cached.ordinal();
        hlsCacheNodeInfo.expireTime = this.mM3u8FileLoader.getExpireTime();
        this.mM3u8FileLoader.writeHlsNodeInfo(hlsCacheNodeInfo);
        PlaylistLoaderItem.PlayListType type = this.mM3u8FileLoader.getType();
        this.mM3u8FileType = type;
        if (type == PlaylistLoaderItem.PlayListType.MasterPlaylist) {
            CmLog.i(str2, "<" + this + "> main url is Master ");
            this.mChildUrls = selectMasterPreloadUrls(this.mM3u8FileLoader.getMasterPlaylist());
            PlaylistCacheInfo buildBaseCacheInfo = buildBaseCacheInfo(0);
            buildBaseCacheInfo.childUrlInfos = buildChildUrlInfos(this.mChildUrls);
            callbackCacheInfo(buildBaseCacheInfo);
            preLoadNextUrl();
        } else {
            PlaylistCacheInfo buildBaseCacheInfo2 = buildBaseCacheInfo(0);
            buildBaseCacheInfo2.childUrlInfos = buildChildUrlInfos(this.mM3u8FileLoader.getSubUrls(this.mCustomHeaderEncoded));
            callbackCacheInfo(buildBaseCacheInfo2);
        }
    }

    private void callInfoListener(PlaylistCacheInfo playlistCacheInfo) {
        this.mCacheInfoListener.onCacheInfo(playlistCacheInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void callbackCacheInfo(PlaylistCacheInfo playlistCacheInfo) {
        try {
            Handler handler = this.mStatusListenerHandler;
            if (handler != null) {
                Message obtainMessage = handler.obtainMessage(11001);
                obtainMessage.obj = playlistCacheInfo;
                this.mStatusListenerHandler.sendMessage(obtainMessage);
            } else {
                callInfoListener(playlistCacheInfo);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void cancelCache() {
        try {
            PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
            if (playlistLoaderItem != null) {
                playlistLoaderItem.cancel();
            }
            PlaylistCacher playlistCacher = this.mMasterChildUrlCacher;
            if (playlistCacher != null) {
                playlistCacher.cancel();
            }
            callbackCacheInfo(buildBaseCacheInfo(-1004));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private PlaylistCacheInfo.PlaylistType convertType(PlaylistLoaderItem.PlayListType playListType) {
        if (playListType == PlaylistLoaderItem.PlayListType.MasterPlaylist) {
            return PlaylistCacheInfo.PlaylistType.Master;
        }
        if (playListType == PlaylistLoaderItem.PlayListType.Unknown) {
            return PlaylistCacheInfo.PlaylistType.Unknown;
        }
        return PlaylistCacheInfo.PlaylistType.Media;
    }

    private void initPreloadCmdHandler() {
        HandlerThread handlerThread = new HandlerThread("playlistCacher");
        this.mCacherThread = handlerThread;
        handlerThread.start();
        this.mCacheHandler = new Handler(this.mCacherThread.getLooper()) { // from class: com.bytedance.vcloud.cacheModule.PlaylistCacher.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 10000) {
                    PlaylistCacher playlistCacher = PlaylistCacher.this;
                    playlistCacher.cacheM3u8File(playlistCacher.mM3u8MdlProxyUrl);
                } else if (i10 == 10002) {
                    PlaylistCacher.this.cancelCache();
                }
                super.handleMessage(message);
            }
        };
    }

    private void initStatusListenerHandler() {
        this.mStatusListenerHandler = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.vcloud.cacheModule.PlaylistCacher.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                String str = PlaylistCacher.TAG;
                CmLog.d(str, "msg.what = " + message.what);
                if (PlaylistCacher.this.mCacheInfoListener != null && message.what == 11001) {
                    PlaylistCacher.this.mCacheInfoListener.onCacheInfo((PlaylistCacheInfo) message.obj);
                }
                super.handleMessage(message);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void preLoadNextUrl() {
        String str;
        String str2 = TAG;
        CmLog.d(str2, "<" + this + ">preLoadNextUrl...");
        if (this.mCanceled) {
            return;
        }
        if (this.mParentCacher != null) {
            return;
        }
        if (this.mChildUrls.isEmpty()) {
            return;
        }
        String remove = this.mChildUrls.remove(0);
        if (TextUtils.isEmpty(remove)) {
            callbackCacheInfo(buildBaseCacheInfo(-4000));
            return;
        }
        CmLog.d(str2, "<" + this + "> preLoadNextUrl = " + remove);
        Map<String, String> parseURLParam = UriUtils.parseURLParam(remove);
        if (parseURLParam.containsKey(CampaignEx.JSON_KEY_AD_K)) {
            str = parseURLParam.get(CampaignEx.JSON_KEY_AD_K);
        } else {
            str = null;
        }
        if (this.mM3u8FileLoader != null) {
            CacheFileManager.TsCacheNodeInfo tsCacheNodeInfo = new CacheFileManager.TsCacheNodeInfo();
            tsCacheNodeInfo.version = 2;
            tsCacheNodeInfo.fileKey = str;
            if (this.mM3u8FileType == PlaylistLoaderItem.PlayListType.MasterPlaylist) {
                tsCacheNodeInfo.keyType = 1;
            } else {
                tsCacheNodeInfo.keyType = 2;
            }
            this.mM3u8FileLoader.writeTsNodeInfo(tsCacheNodeInfo);
        }
        if (this.mM3u8FileType == PlaylistLoaderItem.PlayListType.MasterPlaylist) {
            PlaylistCacher playlistCacher = this.mMasterChildUrlCacher;
            if (playlistCacher != null) {
                playlistCacher.release();
            }
            PlaylistCacher playlistCacher2 = new PlaylistCacher(this.mId, remove, this);
            this.mMasterChildUrlCacher = playlistCacher2;
            playlistCacher2.setCacheInfoListener(new ICacheInfoListener() { // from class: com.bytedance.vcloud.cacheModule.PlaylistCacher.3
                @Override // com.bytedance.vcloud.cacheModule.PlaylistCacher.ICacheInfoListener
                public void onCacheInfo(PlaylistCacheInfo playlistCacheInfo) {
                    boolean z10;
                    String str3 = PlaylistCacher.TAG;
                    CmLog.d(str3, "<" + this + ">sub m3u8  fileKey:" + playlistCacheInfo.playlistUrlInfo.fileKey + " cache code " + playlistCacheInfo.errorCode);
                    PlaylistCacher.this.callbackCacheInfo(playlistCacheInfo);
                    Map map = PlaylistCacher.this.mBoolOptions;
                    CacheOption cacheOption = CacheOption.TryNextEvenIfError_Bool;
                    if (map.containsKey(cacheOption)) {
                        z10 = ((Boolean) PlaylistCacher.this.mBoolOptions.get(cacheOption)).booleanValue();
                    } else {
                        z10 = false;
                    }
                    if (playlistCacheInfo.errorCode == 0 || (z10 && !PlaylistCacher.this.mCanceled)) {
                        PlaylistCacher.this.preLoadNextUrl();
                    }
                }
            });
            CmLog.i(str2, "<" + this + ">start sub m3u8  filekey = " + str + " , proxyUrl = " + remove);
            this.mMasterChildUrlCacher.start();
        }
    }

    private List<String> selectMasterPreloadUrls(MasterPlaylist masterPlaylist) {
        LinkedList<String> linkedList = new LinkedList();
        if (masterPlaylist == null) {
            return linkedList;
        }
        MasterPlaylist.VariantStream[] variantStreamArr = masterPlaylist.mVariantStreams;
        if (variantStreamArr != null) {
            for (MasterPlaylist.VariantStream variantStream : variantStreamArr) {
                linkedList.add(variantStream.mUri);
            }
        }
        MasterPlaylist.Rendition[] renditionArr = masterPlaylist.mRenditions;
        if (renditionArr != null) {
            for (MasterPlaylist.Rendition rendition : renditionArr) {
                linkedList.add(rendition.mUri);
            }
        }
        MasterPlaylist.IFrameStream[] iFrameStreamArr = masterPlaylist.mIFrameStreams;
        if (iFrameStreamArr != null) {
            for (MasterPlaylist.IFrameStream iFrameStream : iFrameStreamArr) {
                linkedList.add(iFrameStream.mUri);
            }
        }
        MasterPlaylist.SessionData[] sessionDataArr = masterPlaylist.mSessionDatas;
        if (sessionDataArr != null) {
            for (MasterPlaylist.SessionData sessionData : sessionDataArr) {
                linkedList.add(sessionData.mUri);
            }
        }
        MasterPlaylist.SessionKey[] sessionKeyArr = masterPlaylist.mSessionKeys;
        if (sessionKeyArr != null) {
            for (MasterPlaylist.SessionKey sessionKey : sessionKeyArr) {
                linkedList.add(sessionKey.mUri);
            }
        }
        LinkedList linkedList2 = new LinkedList();
        for (String str : linkedList) {
            linkedList2.add(CacheModule.generateProxyUrl(this.mM3u8RawKey, this.mM3u8FileKey, str, this.mId, this.mCustomHeaderEncoded, true));
        }
        return linkedList2;
    }

    public synchronized void cancel() {
        try {
            if (this.mCanceled) {
                return;
            }
            this.mCanceled = true;
            Handler handler = this.mCacheHandler;
            if (handler != null) {
                this.mCacheHandler.sendMessage(handler.obtainMessage(10002));
            } else {
                cancelCache();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void release() {
        try {
            HandlerThread handlerThread = this.mCacherThread;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            PlaylistLoaderItem playlistLoaderItem = this.mM3u8FileLoader;
            if (playlistLoaderItem != null) {
                playlistLoaderItem.release();
                this.mM3u8FileLoader = null;
            }
            PlaylistCacher playlistCacher = this.mMasterChildUrlCacher;
            if (playlistCacher != null) {
                playlistCacher.release();
                this.mMasterChildUrlCacher = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setBoolOption(CacheOption cacheOption, boolean z10) {
        this.mBoolOptions.put(cacheOption, Boolean.valueOf(z10));
    }

    public void setCacheInfoListener(ICacheInfoListener iCacheInfoListener) {
        this.mCacheInfoListener = iCacheInfoListener;
    }

    public void setIntOption(CacheOption cacheOption, int i10) {
        this.mIntOptions.put(cacheOption, Integer.valueOf(i10));
    }

    public void start() {
        if (this.mCanceled) {
            String str = TAG;
            CmLog.w(str, "<" + this + ">cache has been canceled");
            return;
        }
        Handler handler = this.mCacheHandler;
        if (handler != null) {
            this.mCacheHandler.sendMessage(handler.obtainMessage(10000));
            return;
        }
        cacheM3u8File(this.mM3u8MdlProxyUrl);
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode());
    }

    public PlaylistCacher(String str, String str2) {
        this(str, str2, null);
    }

    private PlaylistCacher(String str, String str2, PlaylistCacher playlistCacher) {
        this.mM3u8MdlProxyUrl = null;
        this.mM3u8RawKey = null;
        this.mM3u8FileKey = null;
        this.mCustomHeaderEncoded = null;
        this.mCacherThread = null;
        this.mCacheHandler = null;
        this.mStatusListenerHandler = null;
        this.mM3u8FileLoader = null;
        this.mM3u8FileType = PlaylistLoaderItem.PlayListType.Unknown;
        this.mParentCacher = null;
        this.mChildUrls = null;
        boolean z10 = false;
        this.mCanceled = false;
        this.mCacheInfoListener = null;
        this.mMasterChildUrlCacher = null;
        this.mNeedInfoCallback = false;
        this.mIntOptions = new HashMap();
        this.mBoolOptions = new HashMap();
        String str3 = TAG;
        CmLog.d(str3, "<" + this + ">PlaylistCacher() parent = " + playlistCacher + ", mdlproxyurl = " + str2);
        this.mId = str;
        this.mParentCacher = playlistCacher;
        this.mM3u8MdlProxyUrl = str2;
        Map<String, String> parseURLParam = UriUtils.parseURLParam(str2);
        if (parseURLParam.containsKey(CampaignEx.JSON_KEY_AD_K)) {
            this.mM3u8FileKey = parseURLParam.get(CampaignEx.JSON_KEY_AD_K);
        }
        if (parseURLParam.containsKey("rk")) {
            this.mM3u8RawKey = parseURLParam.get("rk");
        } else {
            this.mM3u8RawKey = this.mM3u8FileKey;
        }
        if (parseURLParam.containsKey("h")) {
            this.mCustomHeaderEncoded = parseURLParam.get("h");
        }
        if (parseURLParam.containsKey("hlsproxyQuery")) {
            Map<String, String> parseQuery = UriUtils.parseQuery(URLDecoder.decode(parseURLParam.get("hlsproxyQuery")));
            if (this.mId == null && parseQuery.containsKey("id")) {
                this.mId = parseQuery.get("id");
            }
            if (parseQuery.containsKey("enableInfoCallback") && "1".equals(parseQuery.get("enableInfoCallback"))) {
                z10 = true;
            }
            this.mNeedInfoCallback = z10;
        }
        PlaylistCacher playlistCacher2 = this.mParentCacher;
        if (playlistCacher2 != null) {
            this.mId = playlistCacher2.mId;
            this.mNeedInfoCallback = playlistCacher2.mNeedInfoCallback;
        }
        if (playlistCacher2 == null) {
            initStatusListenerHandler();
            initPreloadCmdHandler();
        }
    }
}
