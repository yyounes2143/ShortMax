package com.ss.ttvideoengine.strategy.refresh;

import androidx.annotation.NonNull;
import com.bytedance.vcloud.cacheModule.CacheModule;
import com.bytedance.vcloud.cacheModule.CacheModuleInfoListener;
import com.bytedance.vcloud.cacheModule.info.PlaylistCacheInfo;
import com.ss.mediakit.fetcher.AVMDLNewFetcherMakerInterface;
import com.ss.mediakit.fetcher.AVMDLURLFetcherBridge;
import com.ss.mediakit.fetcher.AVMDLURLFetcherInterface;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.VodSettings;
import com.ss.ttvideoengine.VodSettingsKey;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.strategy.refresh.PlaylistInfoUtils;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineUrlFetcher;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TTVideoEngineSourceRefreshStrategy {
    private static UrlCache sUrlCache;
    private static TTVideoEngineUrlFetcher.Factory sUrlFetcherFactory;
    private final String mEngineId;
    private final WeakReference<TTVideoEngine> mEngineRef;
    private final String mLogcatTag;
    private PlaylistInfoUtils.PlaylistCacheInfoHolder mPlaylistHolder;
    private volatile boolean mReleased;
    private static final Map<String, TTVideoEngineSourceRefreshStrategy> STRATEGY_MAP = new HashMap();
    private static final EngineListener ENGINE_LISTENER = new EngineListener();
    private final List<MDLURLFetcher> mMDLURLFetchers = new ArrayList();
    private SourceRefreshLogger mLogger = new SourceRefreshLogger();

    public TTVideoEngineSourceRefreshStrategy(String str, TTVideoEngine tTVideoEngine) {
        this.mEngineId = str;
        String str2 = tTVideoEngine.logcatTag() + ".SourceRefresh";
        this.mLogcatTag = str2;
        this.mEngineRef = new WeakReference<>(tTVideoEngine);
        this.mPlaylistHolder = new PlaylistInfoUtils.PlaylistCacheInfoHolder(str2);
        put(str, this);
    }

    private JSONObject dumpLog() {
        SourceRefreshLogger sourceRefreshLogger;
        synchronized (this) {
            sourceRefreshLogger = this.mLogger;
        }
        if (sourceRefreshLogger != null) {
            return sourceRefreshLogger.toJson();
        }
        return null;
    }

    static synchronized TTVideoEngineSourceRefreshStrategy get(String str) {
        TTVideoEngineSourceRefreshStrategy tTVideoEngineSourceRefreshStrategy;
        synchronized (TTVideoEngineSourceRefreshStrategy.class) {
            tTVideoEngineSourceRefreshStrategy = STRATEGY_MAP.get(str);
        }
        return tTVideoEngineSourceRefreshStrategy;
    }

    public static synchronized UrlCache getUrlCache() {
        UrlCache urlCache;
        synchronized (TTVideoEngineSourceRefreshStrategy.class) {
            try {
                if (sUrlCache == null) {
                    sUrlCache = UrlCache.DEFAULT;
                }
                urlCache = sUrlCache;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return urlCache;
    }

    public static synchronized TTVideoEngineUrlFetcher.Factory getUrlFetcherFactory() {
        TTVideoEngineUrlFetcher.Factory factory;
        synchronized (TTVideoEngineSourceRefreshStrategy.class) {
            factory = sUrlFetcherFactory;
        }
        return factory;
    }

    public static boolean isEnable() {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_ENABLE_SOURCE_REFRESH_STRATEGY, 1) == 1) {
            return true;
        }
        return false;
    }

    public static boolean isEnableM3u8Opt() {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_ENABLE_SOURCE_REFRESH_STRATEGY_M3U8_OPT, 1) == 1) {
            return true;
        }
        return false;
    }

    static synchronized void put(String str, TTVideoEngineSourceRefreshStrategy tTVideoEngineSourceRefreshStrategy) {
        synchronized (TTVideoEngineSourceRefreshStrategy.class) {
            STRATEGY_MAP.put(str, tTVideoEngineSourceRefreshStrategy);
        }
    }

    static synchronized void remove(String str) {
        synchronized (TTVideoEngineSourceRefreshStrategy.class) {
            STRATEGY_MAP.remove(str);
        }
    }

    public static synchronized void setUrlCache(UrlCache urlCache) {
        synchronized (TTVideoEngineSourceRefreshStrategy.class) {
            sUrlCache = urlCache;
        }
    }

    public static synchronized void setUrlFetcherFactory(TTVideoEngineUrlFetcher.Factory factory) {
        synchronized (TTVideoEngineSourceRefreshStrategy.class) {
            try {
                sUrlFetcherFactory = factory;
                if (factory != null) {
                    EngineListener engineListener = ENGINE_LISTENER;
                    AVMDLURLFetcherBridge.setNewFetcherMaker(engineListener);
                    AVMDLURLFetcherBridge.setFetcherMaker(null);
                    CacheModule.setCacheModuleInfoListener(engineListener);
                } else {
                    AVMDLURLFetcherBridge.setNewFetcherMaker(null);
                    AVMDLURLFetcherBridge.setFetcherMaker(null);
                    CacheModule.setCacheModuleInfoListener(null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void cacheUrlInfo(PlaylistCacheInfo playlistCacheInfo) {
        if (!isEnableM3u8Opt()) {
            return;
        }
        synchronized (this) {
            this.mPlaylistHolder.buildPlaylistHierarchy(playlistCacheInfo);
        }
    }

    void closeFetchers() {
        ArrayList<AVMDLURLFetcherInterface> arrayList;
        synchronized (this.mMDLURLFetchers) {
            try {
                if (!this.mMDLURLFetchers.isEmpty()) {
                    arrayList = new ArrayList(this.mMDLURLFetchers);
                    this.mMDLURLFetchers.clear();
                } else {
                    arrayList = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (arrayList == null) {
            return;
        }
        for (AVMDLURLFetcherInterface aVMDLURLFetcherInterface : arrayList) {
            aVMDLURLFetcherInterface.close();
        }
    }

    MDLURLFetcher createFetcher() {
        TTVideoEngine engine = getEngine();
        if (engine != null && !engine.isReleased()) {
            MDLURLFetcher mDLURLFetcher = new MDLURLFetcher(this);
            synchronized (this.mMDLURLFetchers) {
                this.mMDLURLFetchers.add(mDLURLFetcher);
            }
            return mDLURLFetcher;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaylistInfoUtils.PlaylistChildUrlInfo findChildUrlInfoInPlaylistHierarchy(TTVideoEngineUrlFetcher.UrlRequest urlRequest) {
        PlaylistInfoUtils.PlaylistChildUrlInfo findChildUrlInfoInPlaylistHierarchy;
        if (!isEnableM3u8Opt()) {
            return null;
        }
        synchronized (this) {
            findChildUrlInfoInPlaylistHierarchy = this.mPlaylistHolder.findChildUrlInfoInPlaylistHierarchy(urlRequest);
        }
        return findChildUrlInfoInPlaylistHierarchy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TTVideoEngine getEngine() {
        return this.mEngineRef.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getEngineId() {
        return this.mEngineId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isReleased() {
        return this.mReleased;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String logcatTag() {
        return this.mLogcatTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public SourceRefreshLogger logger() {
        SourceRefreshLogger sourceRefreshLogger;
        synchronized (this) {
            sourceRefreshLogger = this.mLogger;
        }
        return sourceRefreshLogger;
    }

    public void recordLog() {
        IVideoEventLogger logger;
        JSONObject dumpLog;
        closeFetchers();
        TTVideoEngine engine = getEngine();
        if (engine == null) {
            logger = null;
        } else {
            logger = engine.getLogger();
        }
        if (logger == null || (dumpLog = dumpLog()) == null) {
            return;
        }
        try {
            if (TTVideoEngineLog.d()) {
                TTVideoEngineLog.d(logcatTag(), dumpLog.toString(2));
            }
        } catch (JSONException e10) {
            TTVideoEngineLog.d(e10);
        }
        logger.setSourceRefreshLog(dumpLog);
    }

    public void release() {
        if (this.mReleased) {
            return;
        }
        reset();
        this.mReleased = true;
        this.mEngineRef.clear();
        remove(this.mEngineId);
    }

    public void reset() {
        closeFetchers();
        synchronized (this) {
            this.mLogger = new SourceRefreshLogger();
            this.mPlaylistHolder = new PlaylistInfoUtils.PlaylistCacheInfoHolder(this.mLogcatTag);
        }
    }

    /* loaded from: classes6.dex */
    private static class EngineListener extends CacheModuleInfoListener implements AVMDLNewFetcherMakerInterface {
        private EngineListener() {
        }

        @Override // com.bytedance.vcloud.cacheModule.CacheModuleInfoListener
        public void cacheUrlInfo(PlaylistCacheInfo playlistCacheInfo) {
            TTVideoEngineSourceRefreshStrategy tTVideoEngineSourceRefreshStrategy = TTVideoEngineSourceRefreshStrategy.get(playlistCacheInfo.f13436id);
            if (tTVideoEngineSourceRefreshStrategy == null) {
                return;
            }
            tTVideoEngineSourceRefreshStrategy.cacheUrlInfo(playlistCacheInfo);
        }

        @Override // com.ss.mediakit.fetcher.AVMDLNewFetcherMakerInterface
        public AVMDLURLFetcherInterface getFetcher(String str, String str2, String str3, String str4) {
            TTVideoEngineSourceRefreshStrategy tTVideoEngineSourceRefreshStrategy = TTVideoEngineSourceRefreshStrategy.get(str4);
            if (tTVideoEngineSourceRefreshStrategy == null) {
                return null;
            }
            return tTVideoEngineSourceRefreshStrategy.createFetcher();
        }

        @Override // com.bytedance.vcloud.cacheModule.CacheModuleInfoListener
        public void cacheHit(String str, int i10) {
        }
    }
}
