package com.ss.ttvideoengine.strategy.refresh;

import androidx.annotation.NonNull;
import com.bytedance.vcloud.cacheModule.info.PlaylistCacheInfo;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.strategy.refresh.PlaylistFetcher;
import com.ss.ttvideoengine.strategy.refresh.PlaylistInfoUtils;
import com.ss.ttvideoengine.strategy.refresh.SourceRefreshLogger;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineUrlFetcher;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class SourceRefreshFetcher implements TTVideoEngineFetcher<TTVideoEngineUrlFetcher.UrlRequest, TTVideoEngineUrlFetcher.UrlResult> {
    private volatile boolean mCanceled;
    private final String mLogcatTag;
    private final TTVideoEngineSourceRefreshStrategy mStrategy;
    private final List<TTVideoEngineFetcher<?, ?>> mFetchers = new LinkedList();
    private final SourceRefreshLogger.FetcherLog mFetcherLog = new SourceRefreshLogger.FetcherLog();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class UrlResultInfo {
        final boolean fromCache;
        @NonNull
        final TTVideoEngineUrlFetcher.UrlResult urlResult;

        UrlResultInfo(@NonNull TTVideoEngineUrlFetcher.UrlResult urlResult, boolean z10) {
            this.urlResult = urlResult;
            this.fromCache = z10;
        }

        static String dump(UrlResultInfo urlResultInfo) {
            String str;
            if (urlResultInfo == null) {
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            if (urlResultInfo.fromCache) {
                str = "hintCache ";
            } else {
                str = "hintNet";
            }
            sb2.append(str);
            sb2.append(" ");
            sb2.append(TTVideoEngineUrlFetcher.UrlResult.dump(urlResultInfo.urlResult));
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SourceRefreshFetcher(TTVideoEngineSourceRefreshStrategy tTVideoEngineSourceRefreshStrategy) {
        this.mStrategy = tTVideoEngineSourceRefreshStrategy;
        String str = tTVideoEngineSourceRefreshStrategy.logcatTag() + ".SourceRefreshFetcher@" + Integer.toHexString(hashCode());
        this.mLogcatTag = str;
        TTVideoEngineLog.d(str, "construction");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyError(TTVideoEngineFetcher.Callback<TTVideoEngineUrlFetcher.UrlResult> callback, int i10, String str) {
        if (!this.mCanceled) {
            String str2 = this.mLogcatTag;
            TTVideoEngineLog.d(str2, "notifyError " + i10 + " " + str);
            this.mStrategy.logger().recordSessionError(this.mFetcherLog, i10, str);
            callback.onError(i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFetchUrlInfoError(TTVideoEngineFetcher.Callback<UrlResultInfo> callback, TTVideoEngineUrlFetcher.UrlRequest urlRequest, int i10, String str) {
        if (!this.mCanceled) {
            String str2 = this.mLogcatTag;
            TTVideoEngineLog.d(str2, "notifyFetchUrlInfoError " + i10 + " " + str);
            callback.onError(i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFetchUrlInfoSuccess(TTVideoEngineFetcher.Callback<UrlResultInfo> callback, UrlResultInfo urlResultInfo) {
        if (!this.mCanceled) {
            String str = this.mLogcatTag;
            TTVideoEngineLog.d(str, "notifyFetchUrlInfoSuccess " + UrlResultInfo.dump(urlResultInfo));
            callback.onSuccess(urlResultInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySuccess(TTVideoEngineFetcher.Callback<TTVideoEngineUrlFetcher.UrlResult> callback, UrlResultInfo urlResultInfo) {
        if (!this.mCanceled) {
            String str = this.mLogcatTag;
            TTVideoEngineLog.d(str, "notifySuccess " + UrlResultInfo.dump(urlResultInfo));
            this.mStrategy.logger().recordSessionSuccess(this.mFetcherLog, urlResultInfo);
            callback.onSuccess(urlResultInfo.urlResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startFetchPlaylist(TTVideoEngineUrlFetcher.UrlRequest urlRequest, UrlResultInfo urlResultInfo, TTVideoEngineFetcher.Callback<PlaylistFetcher.PlaylistResult> callback) {
        String str = urlRequest.vid;
        String str2 = urlRequest.cacheKey;
        TTVideoEngineUrlFetcher.UrlResult urlResult = urlResultInfo.urlResult;
        PlaylistFetcher.PlaylistRequest playlistRequest = new PlaylistFetcher.PlaylistRequest(str, str2, urlResult.url, urlResult.expireTimeInMS);
        String str3 = this.mLogcatTag;
        TTVideoEngineLog.d(str3, "startFetchPlaylist " + playlistRequest.vid + " " + playlistRequest.cacheKey);
        PlaylistFetcher playlistFetcher = new PlaylistFetcher(this.mStrategy, this.mFetcherLog);
        synchronized (this) {
            this.mFetchers.add(playlistFetcher);
        }
        playlistFetcher.fetch(playlistRequest, callback);
    }

    private void startFetchUrlInfo(final TTVideoEngineUrlFetcher.UrlRequest urlRequest, final TTVideoEngineFetcher.Callback<UrlResultInfo> callback) {
        String str = this.mLogcatTag;
        TTVideoEngineLog.d(str, "startFetchUrlInfo " + TTVideoEngineUrlFetcher.UrlRequest.dump(urlRequest));
        TTVideoEngineUrlFetcher.UrlResult urlResult = TTVideoEngineSourceRefreshStrategy.getUrlCache().get(urlRequest);
        if (urlResult != null && !TTVideoEngineSourceRefreshStrategy.getUrlCache().isExpired(urlResult)) {
            notifyFetchUrlInfoSuccess(callback, new UrlResultInfo(urlResult, true));
            return;
        }
        TTVideoEngine engine = this.mStrategy.getEngine();
        if (engine != null && !engine.isReleased() && !this.mStrategy.isReleased()) {
            TTVideoEngineUrlFetcher.Factory urlFetcherFactory = TTVideoEngineSourceRefreshStrategy.getUrlFetcherFactory();
            if (urlFetcherFactory == null) {
                notifyFetchUrlInfoError(callback, urlRequest, Error.SourceRefreshError, "factory is null");
                return;
            }
            TTVideoEngineUrlFetcher create = urlFetcherFactory.create(engine);
            synchronized (this) {
                this.mFetchers.add(create);
            }
            create.fetch(urlRequest, new TTVideoEngineFetcher.Callback<TTVideoEngineUrlFetcher.UrlResult>() { // from class: com.ss.ttvideoengine.strategy.refresh.SourceRefreshFetcher.3
                @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                public void onError(int i10, String str2) {
                    SourceRefreshFetcher.this.notifyFetchUrlInfoError(callback, urlRequest, i10, str2);
                }

                @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                public void onSuccess(@NonNull TTVideoEngineUrlFetcher.UrlResult urlResult2) {
                    TTVideoEngineSourceRefreshStrategy.getUrlCache().put(urlRequest, urlResult2);
                    SourceRefreshFetcher.this.notifyFetchUrlInfoSuccess(callback, new UrlResultInfo(urlResult2, false));
                }
            });
            return;
        }
        notifyFetchUrlInfoError(callback, urlRequest, Error.SourceRefreshError, "engine is released! " + engine);
    }

    @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher
    public void cancel() {
        ArrayList<TTVideoEngineFetcher> arrayList;
        if (this.mCanceled) {
            return;
        }
        TTVideoEngineLog.d(this.mLogcatTag, "cancel");
        this.mStrategy.logger().recordSessionCancel(this.mFetcherLog);
        this.mCanceled = true;
        synchronized (this) {
            arrayList = new ArrayList(this.mFetchers);
            this.mFetchers.clear();
        }
        for (TTVideoEngineFetcher tTVideoEngineFetcher : arrayList) {
            tTVideoEngineFetcher.cancel();
        }
    }

    @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher
    public void fetch(@NonNull final TTVideoEngineUrlFetcher.UrlRequest urlRequest, @NonNull final TTVideoEngineFetcher.Callback<TTVideoEngineUrlFetcher.UrlResult> callback) {
        this.mStrategy.logger().recordSessionStart(this.mFetcherLog, urlRequest);
        PlaylistInfoUtils.PlaylistChildUrlInfo findChildUrlInfoInPlaylistHierarchy = this.mStrategy.findChildUrlInfoInPlaylistHierarchy(urlRequest);
        String str = this.mLogcatTag;
        TTVideoEngineLog.d(str, "fetch " + TTVideoEngineUrlFetcher.UrlRequest.dump(urlRequest) + " " + findChildUrlInfoInPlaylistHierarchy);
        if (findChildUrlInfoInPlaylistHierarchy != null) {
            synchronized (this.mStrategy) {
                try {
                    if (!PlaylistInfoUtils.isUrlInfoValid(findChildUrlInfoInPlaylistHierarchy.parentPlaylist.playlistUrlInfo)) {
                        notifyError(callback, Error.SourceRefreshError, "findChildUrlInfoInPlaylistHierarchy playlistUrlInfo is not valid!" + PlaylistInfoUtils.dumpUrlInfo(findChildUrlInfoInPlaylistHierarchy.parentPlaylist.playlistUrlInfo));
                        return;
                    }
                    String str2 = urlRequest.vid;
                    PlaylistCacheInfo.UrlInfo urlInfo = findChildUrlInfoInPlaylistHierarchy.parentPlaylist.playlistUrlInfo;
                    final TTVideoEngineUrlFetcher.UrlRequest urlRequest2 = new TTVideoEngineUrlFetcher.UrlRequest(str2, urlInfo.fileKey, urlInfo.cdnUrl);
                    this.mStrategy.logger().recordFetchPlaylistUrlStart(this.mFetcherLog, urlRequest2);
                    startFetchUrlInfo(urlRequest2, new TTVideoEngineFetcher.Callback<UrlResultInfo>() { // from class: com.ss.ttvideoengine.strategy.refresh.SourceRefreshFetcher.1
                        @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                        public void onError(int i10, String str3) {
                            SourceRefreshFetcher.this.mStrategy.logger().recordFetchPlaylistUrlError(SourceRefreshFetcher.this.mFetcherLog, i10, str3);
                            SourceRefreshFetcher.this.notifyError(callback, i10, str3);
                        }

                        @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                        public void onSuccess(@NonNull final UrlResultInfo urlResultInfo) {
                            SourceRefreshFetcher.this.mStrategy.logger().recordFetchPlaylistUrlSuccess(SourceRefreshFetcher.this.mFetcherLog, urlResultInfo);
                            SourceRefreshFetcher.this.startFetchPlaylist(urlRequest2, urlResultInfo, new TTVideoEngineFetcher.Callback<PlaylistFetcher.PlaylistResult>() { // from class: com.ss.ttvideoengine.strategy.refresh.SourceRefreshFetcher.1.1
                                @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                                public void onError(int i10, String str3) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    SourceRefreshFetcher.this.notifyError(callback, i10, str3);
                                }

                                @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                                public void onSuccess(@NonNull PlaylistFetcher.PlaylistResult playlistResult) {
                                    PlaylistInfoUtils.PlaylistChildUrlInfo findChildUrlInfoInPlaylist = PlaylistInfoUtils.findChildUrlInfoInPlaylist(urlRequest, playlistResult.playlistInfo);
                                    if (findChildUrlInfoInPlaylist == null) {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        SourceRefreshFetcher.this.notifyError(callback, Error.SourceRefreshError, "findChildUrlInfoInPlaylist return null");
                                    } else if (!PlaylistInfoUtils.isUrlInfoValid(findChildUrlInfoInPlaylist.urlInfo)) {
                                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                        SourceRefreshFetcher sourceRefreshFetcher = SourceRefreshFetcher.this;
                                        TTVideoEngineFetcher.Callback callback2 = callback;
                                        sourceRefreshFetcher.notifyError(callback2, Error.SourceRefreshError, "findChildUrlInfoInPlaylist playlistChildUrlInfo.urlInfo is not valid! " + PlaylistInfoUtils.dumpUrlInfo(findChildUrlInfoInPlaylist.urlInfo));
                                    } else {
                                        UrlResultInfo urlResultInfo2 = new UrlResultInfo(new TTVideoEngineUrlFetcher.UrlResult(findChildUrlInfoInPlaylist.urlInfo.cdnUrl, urlResultInfo.urlResult.expireTimeInMS), playlistResult.fromCache);
                                        AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                        SourceRefreshFetcher.this.notifySuccess(callback, urlResultInfo2);
                                    }
                                }
                            });
                        }
                    });
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        startFetchUrlInfo(urlRequest, new TTVideoEngineFetcher.Callback<UrlResultInfo>() { // from class: com.ss.ttvideoengine.strategy.refresh.SourceRefreshFetcher.2
            @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
            public void onError(int i10, String str3) {
                SourceRefreshFetcher.this.notifyError(callback, i10, str3);
            }

            @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
            public void onSuccess(@NonNull UrlResultInfo urlResultInfo) {
                SourceRefreshFetcher.this.notifySuccess(callback, urlResultInfo);
            }
        });
    }
}
