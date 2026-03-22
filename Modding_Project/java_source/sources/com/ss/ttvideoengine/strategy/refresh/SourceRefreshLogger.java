package com.ss.ttvideoengine.strategy.refresh;

import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.strategy.refresh.PlaylistFetcher;
import com.ss.ttvideoengine.strategy.refresh.SourceRefreshFetcher;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineUrlFetcher;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class SourceRefreshLogger {
    private static final int FETCHER_LOGS_MAX_COUNT = 5;
    private final List<FetcherLog> mFetcherLogs = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class FetcherLog {
        static final String RESULT_CANCELED = "canceled";
        static final String RESULT_ERROR = "error";
        static final String RESULT_SUCCESS = "success";
        Long endT;
        Integer errorCode;
        String errorMsg;
        Long fetchPlaylistEndT;
        Long fetchPlaylistStartT;
        Long fetchPlaylistUrlEndT;
        Long fetchPlaylistUrlStartT;
        int index;
        PlaylistFetcher.PlaylistRequest playlistRequest;
        PlaylistFetcher.PlaylistResult playlistResult;
        TTVideoEngineUrlFetcher.UrlRequest playlistUrlRequest;
        SourceRefreshFetcher.UrlResultInfo playlistUrlResult;
        String result;
        Long startT;
        TTVideoEngineUrlFetcher.UrlRequest urlRequest;
        SourceRefreshFetcher.UrlResultInfo urlResult;

        JSONObject toJson() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt(TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(this.index));
                jSONObject.putOpt("start_t", this.startT);
                jSONObject.putOpt("end_t", this.endT);
                jSONObject.putOpt("result", this.result);
                jSONObject.putOpt(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, this.errorCode);
                jSONObject.putOpt("error_msg", this.errorMsg);
                TTVideoEngineUrlFetcher.UrlRequest urlRequest = this.urlRequest;
                if (urlRequest != null) {
                    jSONObject.putOpt("raw_key", urlRequest.vid);
                    jSONObject.putOpt("file_key", this.urlRequest.cacheKey);
                    jSONObject.putOpt("url", this.urlRequest.url);
                }
                SourceRefreshFetcher.UrlResultInfo urlResultInfo = this.urlResult;
                if (urlResultInfo != null && urlResultInfo.urlResult != null) {
                    jSONObject.putOpt("from_cache", Integer.valueOf(urlResultInfo.fromCache ? 1 : 0));
                    jSONObject.putOpt("new_url", this.urlResult.urlResult.url);
                    jSONObject.putOpt("new_url_expire_t", Long.valueOf(this.urlResult.urlResult.expireTimeInMS));
                }
                jSONObject.putOpt("fetch_playlist_url_start_t", this.fetchPlaylistUrlStartT);
                jSONObject.putOpt("fetch_playlist_url_end_t", this.fetchPlaylistUrlEndT);
                TTVideoEngineUrlFetcher.UrlRequest urlRequest2 = this.playlistUrlRequest;
                if (urlRequest2 != null) {
                    jSONObject.putOpt("playlist_file_key", urlRequest2.cacheKey);
                    jSONObject.putOpt("playlist_url", this.playlistUrlRequest.url);
                }
                SourceRefreshFetcher.UrlResultInfo urlResultInfo2 = this.playlistUrlResult;
                if (urlResultInfo2 != null) {
                    jSONObject.putOpt("playlist_url_from_cache", Integer.valueOf(urlResultInfo2.fromCache ? 1 : 0));
                    jSONObject.putOpt("playlist_new_url", this.playlistUrlResult.urlResult.url);
                    jSONObject.putOpt("playlist_expire_t", Long.valueOf(this.playlistUrlResult.urlResult.expireTimeInMS));
                }
                jSONObject.putOpt("fetch_playlist_start_t", this.fetchPlaylistStartT);
                jSONObject.putOpt("fetch_playlist_end_t", this.fetchPlaylistEndT);
                PlaylistFetcher.PlaylistResult playlistResult = this.playlistResult;
                if (playlistResult != null) {
                    jSONObject.putOpt("playlist_from_cache", Integer.valueOf(playlistResult.fromCache ? 1 : 0));
                }
                return jSONObject;
            } catch (JSONException e10) {
                TTVideoEngineLog.d(e10);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordFetchPlaylistError(FetcherLog fetcherLog, int i10, String str) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.fetchPlaylistEndT != null) {
            return;
        }
        fetcherLog.fetchPlaylistEndT = Long.valueOf(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordFetchPlaylistStart(FetcherLog fetcherLog, PlaylistFetcher.PlaylistRequest playlistRequest) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.fetchPlaylistEndT != null) {
            return;
        }
        fetcherLog.fetchPlaylistStartT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.playlistRequest = playlistRequest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordFetchPlaylistSuccess(FetcherLog fetcherLog, PlaylistFetcher.PlaylistResult playlistResult) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.fetchPlaylistEndT != null) {
            return;
        }
        fetcherLog.fetchPlaylistEndT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.playlistResult = playlistResult;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordFetchPlaylistUrlError(FetcherLog fetcherLog, int i10, String str) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.fetchPlaylistUrlEndT != null) {
            return;
        }
        fetcherLog.fetchPlaylistUrlEndT = Long.valueOf(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordFetchPlaylistUrlStart(FetcherLog fetcherLog, TTVideoEngineUrlFetcher.UrlRequest urlRequest) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.fetchPlaylistUrlStartT != null) {
            return;
        }
        fetcherLog.fetchPlaylistUrlStartT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.playlistUrlRequest = urlRequest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordFetchPlaylistUrlSuccess(FetcherLog fetcherLog, SourceRefreshFetcher.UrlResultInfo urlResultInfo) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.fetchPlaylistUrlEndT != null) {
            return;
        }
        fetcherLog.fetchPlaylistUrlEndT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.playlistUrlResult = urlResultInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordSessionCancel(FetcherLog fetcherLog) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.result != null) {
            return;
        }
        fetcherLog.endT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.result = "canceled";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordSessionError(FetcherLog fetcherLog, int i10, String str) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.result != null) {
            return;
        }
        fetcherLog.endT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.result = "error";
        fetcherLog.errorCode = Integer.valueOf(i10);
        fetcherLog.errorMsg = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordSessionStart(FetcherLog fetcherLog, TTVideoEngineUrlFetcher.UrlRequest urlRequest) {
        if (fetcherLog == null) {
            return;
        }
        this.mFetcherLogs.add(fetcherLog);
        fetcherLog.startT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.urlRequest = urlRequest;
        fetcherLog.index = this.mFetcherLogs.size() - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void recordSessionSuccess(FetcherLog fetcherLog, SourceRefreshFetcher.UrlResultInfo urlResultInfo) {
        if (fetcherLog == null) {
            return;
        }
        if (fetcherLog.result != null) {
            return;
        }
        fetcherLog.endT = Long.valueOf(System.currentTimeMillis());
        fetcherLog.result = "success";
        fetcherLog.urlResult = urlResultInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0057, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0045 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:3:0x0001, B:8:0x000c, B:9:0x0015, B:11:0x001d, B:13:0x002a, B:15:0x002e, B:28:0x0045, B:29:0x0047, B:31:0x004b, B:33:0x004f, B:38:0x0057, B:41:0x005d, B:44:0x006b, B:43:0x0068, B:22:0x003a, B:24:0x003e, B:45:0x006e, B:47:0x0075, B:48:0x0082, B:50:0x0088, B:51:0x0091, B:53:0x0097, B:55:0x009f, B:58:0x00a8, B:62:0x00d6), top: B:69:0x0001, inners: #0 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized org.json.JSONObject toJson() {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.strategy.refresh.SourceRefreshLogger.toJson():org.json.JSONObject");
    }
}
