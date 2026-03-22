package com.ss.ttvideoengine.strategy.refresh;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.vcloud.cacheModule.PlaylistCacher;
import com.bytedance.vcloud.cacheModule.info.PlaylistCacheInfo;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.strategy.refresh.PlaylistInfoUtils;
import com.ss.ttvideoengine.strategy.refresh.SourceRefreshLogger;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineUrlFetcher;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
class PlaylistFetcher implements TTVideoEngineFetcher<PlaylistRequest, PlaylistResult> {
    private volatile boolean mCanceled;
    private final SourceRefreshLogger.FetcherLog mFetcherLog;
    private PlaylistCacher mLoader;
    private final String mLogcatTag;
    private final TTVideoEngineSourceRefreshStrategy mStrategy;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.ttvideoengine.strategy.refresh.PlaylistFetcher$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public class AnonymousClass1 implements PlaylistCacher.ICacheInfoListener {
        final PlaylistInfoUtils.PlaylistCacheInfoHolder mPlaylistHolder;
        final /* synthetic */ TTVideoEngineFetcher.Callback val$callback;
        final /* synthetic */ PlaylistRequest val$playlistRequest;

        AnonymousClass1(TTVideoEngineFetcher.Callback callback, PlaylistRequest playlistRequest) {
            this.val$callback = callback;
            this.val$playlistRequest = playlistRequest;
            this.mPlaylistHolder = new PlaylistInfoUtils.PlaylistCacheInfoHolder(PlaylistFetcher.this.mLogcatTag);
        }

        @Override // com.bytedance.vcloud.cacheModule.PlaylistCacher.ICacheInfoListener
        public void onCacheInfo(final PlaylistCacheInfo playlistCacheInfo) {
            if (playlistCacheInfo == null) {
                TTVideoEngineLog.e(PlaylistFetcher.this.mLogcatTag, "onCacheInfo playlistCacheInfo == null ");
            } else if (!TextUtils.equals(playlistCacheInfo.f13436id, PlaylistFetcher.this.mStrategy.getEngineId())) {
                TTVideoEngineLog.e(PlaylistFetcher.this.mLogcatTag, "onCacheInfo engineId miss match!");
            } else {
                EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.strategy.refresh.PlaylistFetcher.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (AnonymousClass1.this.mPlaylistHolder) {
                            try {
                                PlaylistCacheInfo playlistCacheInfo2 = playlistCacheInfo;
                                if (playlistCacheInfo2.errorCode < 0) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    PlaylistFetcher.this.notifyError(anonymousClass1.val$callback, playlistCacheInfo2);
                                } else {
                                    AnonymousClass1.this.mPlaylistHolder.buildPlaylistHierarchy(playlistCacheInfo2);
                                    PlaylistCacheInfo playlistCacheInfo3 = AnonymousClass1.this.mPlaylistHolder.getPlaylistCacheInfo();
                                    if (!PlaylistInfoUtils.isAllChildPlaylistDownload(playlistCacheInfo3)) {
                                        String str = PlaylistFetcher.this.mLogcatTag;
                                        TTVideoEngineLog.d(str, "notifyProgress " + PlaylistInfoUtils.dumpPlaylistCacheInfo(playlistCacheInfo3));
                                    } else {
                                        PlaylistCache.put(AnonymousClass1.this.val$playlistRequest.cacheKey, playlistCacheInfo3);
                                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                        PlaylistFetcher.this.notifySuccess(anonymousClass12.val$callback, playlistCacheInfo3, false);
                                    }
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class PlaylistRequest extends TTVideoEngineUrlFetcher.UrlRequest {
        final long expireTimeInMS;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PlaylistRequest(String str, String str2, String str3, long j10) {
            super(str, str2, str3);
            this.expireTimeInMS = j10;
        }

        static String dump(PlaylistRequest playlistRequest) {
            return TTVideoEngineUrlFetcher.UrlRequest.dump(playlistRequest) + " " + playlistRequest.expireTimeInMS;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class PlaylistResult {
        final boolean fromCache;
        final PlaylistCacheInfo playlistInfo;

        PlaylistResult(PlaylistCacheInfo playlistCacheInfo, boolean z10) {
            this.playlistInfo = playlistCacheInfo;
            this.fromCache = z10;
        }

        static String dump(PlaylistResult playlistResult) {
            String str;
            if (playlistResult == null) {
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            if (playlistResult.fromCache) {
                str = "hintCache ";
            } else {
                str = "hintNet";
            }
            sb2.append(str);
            sb2.append(" ");
            sb2.append(PlaylistInfoUtils.dumpPlaylistCacheInfo(playlistResult.playlistInfo));
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaylistFetcher(TTVideoEngineSourceRefreshStrategy tTVideoEngineSourceRefreshStrategy, SourceRefreshLogger.FetcherLog fetcherLog) {
        this.mStrategy = tTVideoEngineSourceRefreshStrategy;
        this.mFetcherLog = fetcherLog;
        String str = tTVideoEngineSourceRefreshStrategy.logcatTag() + ".PlaylistFetcher@" + Integer.toHexString(hashCode());
        this.mLogcatTag = str;
        TTVideoEngineLog.d(str, "construction");
    }

    private void close() {
        PlaylistCacher playlistCacher;
        synchronized (this) {
            playlistCacher = this.mLoader;
            this.mLoader = null;
        }
        if (playlistCacher != null) {
            playlistCacher.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyError(TTVideoEngineFetcher.Callback<PlaylistResult> callback, PlaylistCacheInfo playlistCacheInfo) {
        if (!this.mCanceled) {
            this.mStrategy.logger().recordFetchPlaylistError(this.mFetcherLog, playlistCacheInfo.errorCode, playlistCacheInfo.errorMsg);
            String str = this.mLogcatTag;
            TTVideoEngineLog.d(str, "notifyError " + playlistCacheInfo.errorCode + " " + playlistCacheInfo.errorMsg);
            callback.onError(playlistCacheInfo.errorCode, playlistCacheInfo.errorMsg);
        }
        close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySuccess(TTVideoEngineFetcher.Callback<PlaylistResult> callback, PlaylistCacheInfo playlistCacheInfo, boolean z10) {
        if (!this.mCanceled) {
            PlaylistResult playlistResult = new PlaylistResult(playlistCacheInfo, z10);
            String str = this.mLogcatTag;
            TTVideoEngineLog.d(str, "notifySuccess " + PlaylistResult.dump(playlistResult));
            this.mStrategy.logger().recordFetchPlaylistSuccess(this.mFetcherLog, playlistResult);
            callback.onSuccess(playlistResult);
        }
        close();
    }

    @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher
    public void cancel() {
        if (this.mCanceled) {
            return;
        }
        this.mCanceled = true;
        close();
    }

    @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher
    public void fetch(@NonNull PlaylistRequest playlistRequest, @NonNull TTVideoEngineFetcher.Callback<PlaylistResult> callback) {
        String str = this.mLogcatTag;
        TTVideoEngineLog.d(str, "fetch " + PlaylistRequest.dump(playlistRequest));
        this.mStrategy.logger().recordFetchPlaylistStart(this.mFetcherLog, playlistRequest);
        PlaylistCacheInfo playlistCacheInfo = PlaylistCache.get(playlistRequest.cacheKey);
        if (playlistCacheInfo != null && !PlaylistCache.isExpired(playlistCacheInfo)) {
            notifySuccess(callback, playlistCacheInfo, true);
            return;
        }
        String str2 = playlistRequest.cacheKey;
        String str3 = playlistRequest.vid;
        String[] strArr = {playlistRequest.url};
        long j10 = playlistRequest.expireTimeInMS;
        PlaylistCacher playlistCacher = new PlaylistCacher(DataLoaderHelper.getDataLoader()._proxyUrl(str2, str3, 0L, strArr, null, null, null, null, null, true, true, null, 0L, j10 > 0 ? new String[]{String.valueOf(j10 / 1000)} : null, -1, this.mStrategy.getEngineId(), true));
        playlistCacher.setBoolOption(PlaylistCacher.CacheOption.TryNextEvenIfError_Bool, true);
        playlistCacher.setIntOption(PlaylistCacher.CacheOption.PlaylistTimeOutMs_Int, 5000);
        playlistCacher.setCacheInfoListener(new AnonymousClass1(callback, playlistRequest));
        playlistCacher.start();
        synchronized (this) {
            this.mLoader = playlistCacher;
        }
    }
}
