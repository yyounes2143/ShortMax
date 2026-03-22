package com.ss.ttvideoengine.strategy.refresh;

import androidx.annotation.NonNull;
import com.ss.mediakit.fetcher.AVMDLURLFetcherInterface;
import com.ss.mediakit.fetcher.AVMDLURLFetcherListener;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineUrlFetcher;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class MDLURLFetcher implements AVMDLURLFetcherInterface {
    private static final int CALLBACK_RESULT_ERROR = -1;
    private static final int CALLBACK_RESULT_SUCCESS = 0;
    private static final int FETCHER_STATE_ERROR = 3;
    private static final int FETCHER_STATE_INIT = 0;
    private static final int FETCHER_STATE_RELEASED = 4;
    private static final int FETCHER_STATE_STARTED = 1;
    private static final int FETCHER_STATE_SUCCESS = 2;
    private static final int RESULT_ASYNC_CALLBACK = 0;
    private static final int RESULT_SYNC_ERROR = -1;
    private static final int RESULT_SYNC_GET = 1;
    private SourceRefreshFetcher mFetcher;
    private final String mLogcatTag;
    private int mState;
    private final TTVideoEngineSourceRefreshStrategy mStrategy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MDLURLFetcher(TTVideoEngineSourceRefreshStrategy tTVideoEngineSourceRefreshStrategy) {
        this.mStrategy = tTVideoEngineSourceRefreshStrategy;
        String str = tTVideoEngineSourceRefreshStrategy.logcatTag() + ".MDLURLFetcher@" + Integer.toHexString(hashCode());
        this.mLogcatTag = str;
        TTVideoEngineLog.d(str, "construction");
    }

    private int _start(String str, String str2, String str3, final AVMDLURLFetcherListener aVMDLURLFetcherListener) {
        synchronized (this) {
            try {
                if (this.mState != 0) {
                    return -1;
                }
                if (aVMDLURLFetcherListener == null || this.mStrategy.isReleased() || TTVideoEngineSourceRefreshStrategy.getUrlFetcherFactory() == null) {
                    return -1;
                }
                synchronized (this) {
                    setState(1);
                    this.mFetcher = new SourceRefreshFetcher(this.mStrategy);
                }
                final TTVideoEngineUrlFetcher.UrlRequest urlRequest = new TTVideoEngineUrlFetcher.UrlRequest(str, str2, str3);
                this.mFetcher.fetch(urlRequest, new TTVideoEngineFetcher.Callback<TTVideoEngineUrlFetcher.UrlResult>() { // from class: com.ss.ttvideoengine.strategy.refresh.MDLURLFetcher.1
                    @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                    public void onError(int i10, String str4) {
                        MDLURLFetcher.this.notifyError(aVMDLURLFetcherListener, urlRequest, i10, str4);
                    }

                    @Override // com.ss.ttvideoengine.strategy.refresh.TTVideoEngineFetcher.Callback
                    public void onSuccess(@NonNull TTVideoEngineUrlFetcher.UrlResult urlResult) {
                        MDLURLFetcher.this.notifySuccess(aVMDLURLFetcherListener, urlRequest, urlResult);
                    }
                });
                return 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static String mapResult(int i10) {
        if (i10 != -1) {
            if (i10 != 0) {
                if (i10 == 1) {
                    return "sync_get";
                }
                throw new IllegalArgumentException("result:" + i10);
            }
            return "async_callback";
        }
        return "sync_error";
    }

    private static String mapState(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return "released";
                        }
                        throw new IllegalArgumentException("state:" + i10);
                    }
                    return "error";
                }
                return "success";
            }
            return "started";
        }
        return "init";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyError(@NonNull AVMDLURLFetcherListener aVMDLURLFetcherListener, @NonNull TTVideoEngineUrlFetcher.UrlRequest urlRequest, int i10, String str) {
        synchronized (this) {
            try {
                if (this.mState != 1) {
                    return;
                }
                String str2 = this.mLogcatTag;
                TTVideoEngineLog.d(str2, "notifyError vid:" + urlRequest.vid + " cacheKey:" + urlRequest.cacheKey + " oldUrl:" + urlRequest.url + " errorCode:" + i10 + " errorMsg:" + str);
                aVMDLURLFetcherListener.onCompletion(-1, urlRequest.vid, urlRequest.cacheKey, null);
                synchronized (this) {
                    setState(3);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySuccess(@NonNull AVMDLURLFetcherListener aVMDLURLFetcherListener, @NonNull TTVideoEngineUrlFetcher.UrlRequest urlRequest, @NonNull TTVideoEngineUrlFetcher.UrlResult urlResult) {
        synchronized (this) {
            try {
                if (this.mState != 1) {
                    return;
                }
                String str = this.mLogcatTag;
                TTVideoEngineLog.d(str, "notifySuccess vid:" + urlRequest.vid + " cacheKey:" + urlRequest.cacheKey + " oldUrl:" + urlRequest.url + " newUrl:" + urlResult.url + " expireTime:" + urlResult.expireTimeInMS);
                aVMDLURLFetcherListener.onCompletion(0, urlRequest.vid, urlRequest.cacheKey, new String[]{urlResult.url});
                synchronized (this) {
                    setState(2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void setState(int i10) {
        int i11 = this.mState;
        this.mState = i10;
        String str = this.mLogcatTag;
        TTVideoEngineLog.d(str, "setState " + mapState(i11) + " -> " + mapState(this.mState));
    }

    @Override // com.ss.mediakit.fetcher.AVMDLURLFetcherInterface
    public void close() {
        synchronized (this) {
            try {
                if (this.mState != 1) {
                    return;
                }
                SourceRefreshFetcher sourceRefreshFetcher = this.mFetcher;
                String str = this.mLogcatTag;
                TTVideoEngineLog.d(str, "close " + mapState(this.mState));
                if (sourceRefreshFetcher != null) {
                    sourceRefreshFetcher.cancel();
                }
                synchronized (this) {
                    setState(4);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.ss.mediakit.fetcher.AVMDLURLFetcherInterface
    public String[] getURLs() {
        String str = this.mLogcatTag;
        TTVideoEngineLog.e(str, "getURLs null " + mapState(this.mState));
        return null;
    }

    @Override // com.ss.mediakit.fetcher.AVMDLURLFetcherInterface
    public int start(String str, String str2, String str3, AVMDLURLFetcherListener aVMDLURLFetcherListener) {
        String str4 = this.mLogcatTag;
        TTVideoEngineLog.d(str4, "start start " + str + " -> " + str2 + " -> " + str3);
        int _start = _start(str, str2, str3, aVMDLURLFetcherListener);
        String str5 = this.mLogcatTag;
        TTVideoEngineLog.d(str5, "start return " + mapResult(_start) + " -> " + str + " -> " + str2 + " -> " + str3);
        return _start;
    }
}
