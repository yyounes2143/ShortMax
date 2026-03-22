package com.ss.ttvideoengine;

import android.content.Context;
import com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public class EngineMDLFetcherListener implements MDLFetcherListener {
    public static final int MDL_RETRY_RESULT_ERROR = 0;
    public static final int MDL_RETRY_RESULT_SUCCESS = 1;
    public static final int MDL_RETRY_RESULT_SUCCESS_CACHE = 2;
    private static final String TAG = "EngineMDLFetcherListener";
    private final WeakReference<TTVideoEngine> mVideoEngineRef;

    public EngineMDLFetcherListener(TTVideoEngine tTVideoEngine) {
        this.mVideoEngineRef = new WeakReference<>(tTVideoEngine);
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public Context getContext() {
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (tTVideoEngine == null) {
            return null;
        }
        return tTVideoEngine.getContext();
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public String getFallbackApi() {
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (tTVideoEngine == null) {
            return null;
        }
        return TTVideoEngineUtils.BuildHttpsApi(tTVideoEngine.getAPIString());
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public String getId() {
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (tTVideoEngine == null) {
            return null;
        }
        return tTVideoEngine.getHash();
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public VideoModel getOldVideoModel() {
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (tTVideoEngine == null) {
            return null;
        }
        return tTVideoEngine.getVideoModel();
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public void onCompletion(VideoModel videoModel, boolean z10, String str) {
        int i10;
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (tTVideoEngine == null) {
            return;
        }
        TTVideoEngineLog.i(TAG, "fetch info success");
        IVideoEventLogger logger = tTVideoEngine.getLogger();
        if (logger != null) {
            if (z10) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            logger.mdlRetryResult(i10, str, null);
        }
        if (logger != null && z10) {
            logger.fetchInfoComplete(videoModel, (Error) null);
        }
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public void onError(Error error, String str) {
        IVideoEventLogger logger;
        TTVideoEngineLog.i(TAG, "videoEngine mdl fetch failed " + error.toString());
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (tTVideoEngine != null && (logger = tTVideoEngine.getLogger()) != null) {
            logger.mdlRetryResult(0, str, error);
        }
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public void onLog(String str) {
        TTVideoEngineLog.i(TAG, "fetcher cancelled");
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (tTVideoEngine != null && tTVideoEngine.getLogger() != null) {
            tTVideoEngine.getLogger().logMessage(str);
        }
    }

    @Override // com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener
    public void onRetry(Error error) {
        TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
        if (error != null && tTVideoEngine != null && tTVideoEngine.getLogger() != null) {
            TTVideoEngineLog.e(TAG, "fetcher should retry error " + error.toString());
            tTVideoEngine.getLogger().needRetryToFetch(error, tTVideoEngine.getPlayAPIVersion());
        }
    }
}
