package com.ss.ttvideoengine.fetcher.mdlfethcer;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.mediakit.fetcher.AVMDLURLFetcherInterface;
import com.ss.mediakit.fetcher.AVMDLURLFetcherListener;
import com.ss.ttvideoengine.VideoModelCache;
import com.ss.ttvideoengine.fetcher.VideoInfoFetcher;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MDLFetcherNew implements AVMDLURLFetcherInterface {
    private static final int CALLBACK_URLS_TO_MDL = 0;
    private static final int MDL_GET_URLS = 1;
    private static final String TAG = "MDLFetcherNew";
    private VideoInfoFetcher mFetcher;
    private String mFileHash;
    private AVMDLURLFetcherListener mListener;
    private WeakReference<MDLFetcherListener> mMDLFetcherListener;
    private String[] mNewUrls = null;
    private String mOldUrl;
    private String mVideoID;
    private VideoModel mVideoModel;

    /* loaded from: classes6.dex */
    private static class MyFetcherListener implements VideoInfoFetcher.FetcherListener {
        private final WeakReference<MDLFetcherNew> mFetcherRef;

        public MyFetcherListener(MDLFetcherNew mDLFetcherNew) {
            this.mFetcherRef = new WeakReference<>(mDLFetcherNew);
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onCompletion(VideoModel videoModel, Error error) {
            TTVideoEngineLog.i(MDLFetcherNew.TAG, "onCompletion model " + videoModel + ", error " + error);
            MDLFetcherNew mDLFetcherNew = this.mFetcherRef.get();
            if (mDLFetcherNew == null) {
                TTVideoEngineLog.i(MDLFetcherNew.TAG, "onCompletion but fetcher is null");
            } else if (error != null) {
                mDLFetcherNew.onError(error, true);
            } else if (videoModel == null) {
                mDLFetcherNew.onError(new Error(Error.MDLRetry, (int) Error.ResultEmpty, "fetch empty"), true);
            } else {
                mDLFetcherNew.mNewUrls = mDLFetcherNew.getUrlsFromVideoModelByFileHash(videoModel, mDLFetcherNew.mFileHash);
                TTVideoEngineLog.i(MDLFetcherNew.TAG, "onCompletion newUrls " + Arrays.toString(mDLFetcherNew.mNewUrls));
                if (mDLFetcherNew.mNewUrls == null || mDLFetcherNew.mNewUrls.length == 0) {
                    mDLFetcherNew.onError(new Error(Error.MDLRetry, (int) Error.FileHashInvalid, "file hash invalid"), true);
                    JSONObject mediaInfo = videoModel.getMediaInfo();
                    if (mediaInfo != null) {
                        TTVideoEngineLog.i(MDLFetcherNew.TAG, String.format("new video model: %s", mediaInfo.toString()));
                    }
                } else if (!MDLFetcherNew.isNewUrlsValid(mDLFetcherNew.mNewUrls, mDLFetcherNew.mOldUrl)) {
                    mDLFetcherNew.onError(new Error(Error.MDLRetry, (int) Error.ResultExpired, "fetch videoModel is expired"), true);
                } else {
                    mDLFetcherNew.mListener.onCompletion(0, mDLFetcherNew.mVideoID, mDLFetcherNew.mFileHash, mDLFetcherNew.mNewUrls);
                    mDLFetcherNew.onCompletion(videoModel, true);
                }
            }
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onLog(String str) {
            MDLFetcherNew mDLFetcherNew = this.mFetcherRef.get();
            if (mDLFetcherNew != null && mDLFetcherNew.getMDLFetcherListener() != null) {
                mDLFetcherNew.getMDLFetcherListener().onLog(str);
            }
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onRetry(Error error) {
            MDLFetcherNew mDLFetcherNew = this.mFetcherRef.get();
            if (mDLFetcherNew != null && mDLFetcherNew.getMDLFetcherListener() != null) {
                mDLFetcherNew.getMDLFetcherListener().onRetry(error);
            }
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onStatusException(int i10, String str) {
            MDLFetcherNew mDLFetcherNew = this.mFetcherRef.get();
            if (mDLFetcherNew != null) {
                mDLFetcherNew.onError(new Error(Error.MDLRetry, Error.FetchStatusException, i10, str), true);
            } else {
                TTVideoEngineLog.i(MDLFetcherNew.TAG, "onStatusException but fetcher is null");
            }
        }
    }

    public MDLFetcherNew(MDLFetcherListener mDLFetcherListener) {
        this.mMDLFetcherListener = new WeakReference<>(mDLFetcherListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MDLFetcherListener getMDLFetcherListener() {
        WeakReference<MDLFetcherListener> weakReference = this.mMDLFetcherListener;
        if (weakReference == null) {
            TTVideoEngineLog.d(TAG, "getMDLFetcherListener is null");
            return null;
        }
        return weakReference.get();
    }

    @Nullable
    private String[] getURLsFromCache(String str, String str2) {
        VideoModelCache.VideoModelCacheInfo videoModelCacheInfo = VideoModelCache.getInstance().get(this.mVideoID, str);
        if (videoModelCacheInfo != null && !videoModelCacheInfo.isExpired) {
            VideoModel videoModel = videoModelCacheInfo.model;
            this.mVideoModel = videoModel;
            String[] urlsFromVideoModelByFileHash = getUrlsFromVideoModelByFileHash(videoModel, this.mFileHash);
            if (urlsFromVideoModelByFileHash != null && urlsFromVideoModelByFileHash.length > 0) {
                if (!isNewUrlsValid(urlsFromVideoModelByFileHash, str2)) {
                    VideoModelCache.getInstance().remove(this.mVideoID, str);
                    TTVideoEngineLog.i(TAG, "getURLsFromCache urls is invalid");
                    return null;
                }
                TTVideoEngineLog.i(TAG, "getURLsFromCache " + Arrays.toString(urlsFromVideoModelByFileHash));
                return urlsFromVideoModelByFileHash;
            }
            TTVideoEngineLog.i(TAG, "getURLsFromCache temUrls is null");
            return null;
        }
        TTVideoEngineLog.i(TAG, "getURLsFromCache cacheInfo is null or isExpired");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public String[] getUrlsFromVideoModelByFileHash(VideoModel videoModel, String str) {
        if (videoModel != null && !TextUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(15, str);
            if (str.startsWith("fileid")) {
                try {
                    hashMap.put(28, str.substring(6));
                } catch (IndexOutOfBoundsException unused) {
                    TTVideoEngineLog.e(TAG, "fileid index out of bounds");
                }
            }
            VideoInfo videoInfo = videoModel.getVideoInfo(hashMap);
            if (videoInfo == null) {
                TTVideoEngineLog.i(TAG, "getUrlsFromVideoModelByFileHash videoInfo is null");
                return null;
            }
            String[] valueStrArr = videoInfo.getValueStrArr(16);
            TTVideoEngineLog.i(TAG, "getUrlsFromVideoModelByFileHash " + Arrays.toString(valueStrArr));
            return valueStrArr;
        }
        TTVideoEngineLog.i(TAG, "getUrlsFromVideoModelByFileHash videoModel is null or fileHash is empty " + str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNewUrlsValid(String[] strArr, String str) {
        if (strArr == null || strArr.length <= 0) {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        for (String str2 : strArr) {
            if (TextUtils.equals(str2, str)) {
                TTVideoEngineLog.d(TAG, "new urls is invalid");
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCompletion(VideoModel videoModel, boolean z10) {
        MDLFetcherListener mDLFetcherListener = getMDLFetcherListener();
        if (mDLFetcherListener != null) {
            mDLFetcherListener.onCompletion(videoModel, z10, this.mFileHash);
        }
        close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onError(Error error, boolean z10) {
        VideoModel oldVideoModel;
        JSONObject mediaInfo;
        if (z10) {
            this.mListener.onCompletion(error.code, this.mVideoID, this.mFileHash, null);
        }
        MDLFetcherListener mDLFetcherListener = getMDLFetcherListener();
        if (mDLFetcherListener != null) {
            mDLFetcherListener.onError(error, this.mFileHash);
            if (error.code == -10003 && (oldVideoModel = mDLFetcherListener.getOldVideoModel()) != null && (mediaInfo = oldVideoModel.getMediaInfo()) != null) {
                TTVideoEngineLog.i(TAG, String.format("old video model: %s", mediaInfo.toString()));
            }
        }
        close();
    }

    @Override // com.ss.mediakit.fetcher.AVMDLURLFetcherInterface
    public void close() {
        VideoInfoFetcher videoInfoFetcher = this.mFetcher;
        if (videoInfoFetcher != null) {
            videoInfoFetcher.cancel();
            this.mFetcher = null;
        }
        this.mMDLFetcherListener = null;
    }

    @Override // com.ss.mediakit.fetcher.AVMDLURLFetcherInterface
    public String[] getURLs() {
        TTVideoEngineLog.i(TAG, "mdl getURLs " + Arrays.toString(this.mNewUrls));
        return this.mNewUrls;
    }

    @Override // com.ss.mediakit.fetcher.AVMDLURLFetcherInterface
    public int start(String str, String str2, String str3, AVMDLURLFetcherListener aVMDLURLFetcherListener) {
        TTVideoEngineLog.i(TAG, "start rawKey " + str + ", fileKey " + str2 + ", olderUrl " + str3 + ", listener " + aVMDLURLFetcherListener);
        this.mVideoID = str;
        this.mFileHash = str2;
        this.mListener = aVMDLURLFetcherListener;
        this.mOldUrl = str3;
        MDLFetcherListener mDLFetcherListener = getMDLFetcherListener();
        boolean z10 = true;
        if (mDLFetcherListener == null) {
            TTVideoEngineLog.i(TAG, "start MDLFetcherListener is null return MDL_GET_URLS");
            onError(new Error(Error.MDLRetry, (int) Error.MDLFetcherListenerEmpty, "MDLFetcherListener is empty"), false);
            return 1;
        }
        String fallbackApi = mDLFetcherListener.getFallbackApi();
        if (TextUtils.isEmpty(fallbackApi)) {
            TTVideoEngineLog.i(TAG, "start fallbackApi is empty return MDL_GET_URLS");
            onError(new Error(Error.MDLRetry, (int) Error.FallbackApiEmpty, "fallbackApi is empty"), false);
            return 1;
        }
        String[] uRLsFromCache = getURLsFromCache(fallbackApi, str3);
        if (uRLsFromCache != null && uRLsFromCache.length > 0) {
            this.mNewUrls = uRLsFromCache;
            TTVideoEngineLog.i(TAG, "start return MDL_GET_URLS");
            onCompletion(this.mVideoModel, false);
            return 1;
        }
        Context context = mDLFetcherListener.getContext();
        VideoInfoFetcher videoInfoFetcher = new VideoInfoFetcher(context, null);
        this.mFetcher = videoInfoFetcher;
        if (context == null) {
            z10 = false;
        }
        videoInfoFetcher.setUseVideoModelCache(z10);
        this.mFetcher.setVideoID(str);
        this.mFetcher.setListener(new MyFetcherListener(this));
        this.mFetcher.setUseFallbakApi(Boolean.TRUE);
        this.mFetcher.fetchInfo(fallbackApi, null, 0, null);
        TTVideoEngineLog.i(TAG, "start return CALLBACK_URLS_TO_MDL");
        return 0;
    }
}
