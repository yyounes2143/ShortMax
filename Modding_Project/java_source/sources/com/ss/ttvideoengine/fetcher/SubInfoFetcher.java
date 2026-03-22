package com.ss.ttvideoengine.fetcher;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.InfoWrapper;
import com.ss.ttvideoengine.model.SubInfo;
import com.ss.ttvideoengine.net.ChannelSelect;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class SubInfoFetcher {
    private static final String KEY_CODE = "code";
    private static final String KEY_LOGID = "trace_id";
    private static final String KEY_MESSAGE = "message";
    private static final int MSG_IS_ERROR = 1;
    private static final int MSG_IS_SUCCESS = 2;
    private static final String TAG = "SubInfoFetcher";
    private Context mContext;
    private String mHost;
    private FetcherListener mListener;
    private int mMaxRetryCount;
    private TTVNetClient mNetworkSession;
    private ArrayList<String> mTriedHost;
    private boolean mCancelled = false;
    private String mSubApiString = "";
    private int mErrorCode = -1;
    private int mRetryIndex = 0;
    private Handler mHandler = new MyHandler(this, TTHelper.getLooper());

    /* loaded from: classes6.dex */
    public interface FetcherListener {
        void onCompletion(String str, Error error);

        void onLog(String str);
    }

    /* loaded from: classes6.dex */
    private static class MyHandler extends Handler {
        private final WeakReference<SubInfoFetcher> mFetcherRef;

        public MyHandler(SubInfoFetcher subInfoFetcher, Looper looper) {
            super(looper);
            this.mFetcherRef = new WeakReference<>(subInfoFetcher);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            FetcherListener fetcherListener;
            SubInfoFetcher subInfoFetcher = this.mFetcherRef.get();
            if (subInfoFetcher == null || (fetcherListener = subInfoFetcher.mListener) == null) {
                return;
            }
            if (subInfoFetcher.mCancelled) {
                fetcherListener.onLog("fetcher is cancelled");
                return;
            }
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 == 2) {
                    fetcherListener.onCompletion((String) message.obj, null);
                    return;
                }
                return;
            }
            fetcherListener.onCompletion(null, (Error) message.obj);
        }
    }

    public SubInfoFetcher(Context context, TTVNetClient tTVNetClient) {
        this.mMaxRetryCount = 1;
        this.mContext = context;
        if (tTVNetClient == null) {
            this.mNetworkSession = new TTHTTPNetwork();
        } else {
            this.mNetworkSession = tTVNetClient;
        }
        this.mMaxRetryCount = InfoWrapper.getApiRetryCount();
        this.mTriedHost = new ArrayList<>();
    }

    private void _beginToFetch(String str) {
        this.mNetworkSession.startTask(str, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.fetcher.SubInfoFetcher.1
            @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject, Error error) {
                if (error != null) {
                    SubInfoFetcher.this.mErrorCode = error.internalCode;
                }
                if (jSONObject != null || error == null) {
                    SubInfoFetcher.this._getInfoSuccess(jSONObject);
                } else {
                    SubInfoFetcher.this._retryIfNeeded(error);
                }
            }
        });
    }

    private void _fetchInfoInternal() {
        if (TextUtils.isEmpty(this.mSubApiString)) {
            _notifyError(new Error(Error.SubFetchingInfo, (int) Error.SubParameterNull, "sub ApiString empty"));
            return;
        }
        if (!this.mTriedHost.contains(this.mHost)) {
            this.mTriedHost.add(this.mHost);
        }
        _beginToFetch(this.mSubApiString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _getInfoSuccess(JSONObject jSONObject) {
        int i10;
        synchronized (this) {
            try {
                if (!this.mCancelled && jSONObject != null) {
                    TTVideoEngineLog.d(TAG, "sub jsonObject:" + jSONObject.toString());
                    if (jSONObject.has("ResponseMetadata")) {
                        JSONObject optJSONObject = jSONObject.optJSONObject("ResponseMetadata");
                        if (optJSONObject == null) {
                            TTVideoEngineLog.i(TAG, "_getSubInfoSuccess metadata is null");
                            _notifyError(new Error(Error.SubFetchingInfo, (int) Error.SubResultEmpty, "fetched info ResponseMetadata is empty"));
                            return;
                        }
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("Error");
                        if (optJSONObject2 != null) {
                            String str = optJSONObject2.toString() + " RequestId:" + optJSONObject.optString("RequestId");
                            if (optJSONObject2.has("CodeN")) {
                                i10 = optJSONObject2.optInt("CodeN");
                            } else {
                                i10 = this.mErrorCode;
                            }
                            Error error = new Error(Error.SubFetchingInfo, Error.SubAuthFail, i10, str);
                            error.parameters.put("log_id", optJSONObject.optString("RequestId"));
                            _notifyError(error);
                            return;
                        }
                        JSONObject optJSONObject3 = jSONObject.optJSONObject("Result");
                        if (optJSONObject3 == null) {
                            _notifyError(new Error(Error.SubFetchingInfo, (int) Error.SubResultEmpty, "fetched info Result is empty"));
                            return;
                        }
                        _notifySuccess(_extractFields(optJSONObject3));
                    } else {
                        _notifyError(new Error(Error.SubFetchingInfo, (int) Error.SubResultEmpty, "fetched info ResponseMetadata and Result is empty"));
                    }
                }
            } finally {
            }
        }
    }

    private boolean _isTriedAllHost() {
        List<ChannelSelect.Channel> groupByApiVersionLocked;
        if (this.mTriedHost == null || (groupByApiVersionLocked = ChannelSelect.getInstance().groupByApiVersionLocked(4)) == null || groupByApiVersionLocked.size() != this.mTriedHost.size()) {
            return false;
        }
        return true;
    }

    private void _notifyError(Error error) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, error));
    }

    private void _notifySuccess(String str) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(2, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _retryIfNeeded(Error error) {
        String str;
        String str2;
        TTVideoEngineLog.i(TAG, "_retryIfNeeded error " + error);
        synchronized (this) {
            try {
                if (this.mCancelled) {
                    return;
                }
                if (error.internalCode == 502 && this.mRetryIndex >= this.mMaxRetryCount && (str = this.mSubApiString) != null && (str2 = this.mHost) != null) {
                    int indexOf = str.indexOf(str2);
                    String substring = this.mSubApiString.substring(this.mHost.length() + indexOf);
                    if (!_isTriedAllHost()) {
                        String selectNext = ChannelSelect.getInstance().selectNext(4, this.mHost);
                        this.mSubApiString = this.mSubApiString.substring(0, indexOf) + selectNext + substring;
                        this.mHost = selectNext;
                        this.mRetryIndex = -1;
                    }
                }
                int i10 = this.mRetryIndex;
                if (i10 < this.mMaxRetryCount) {
                    this.mRetryIndex = i10 + 1;
                    _fetchInfoInternal();
                } else {
                    error.description += ("<apiStr:" + this.mSubApiString + ">");
                    _notifyError(error);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String _extractFields(JSONObject jSONObject) {
        JSONArray optJSONArray;
        if (jSONObject == null) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("FileSubtitleInfoList");
        if (optJSONArray2 != null && optJSONArray2.length() > 0) {
            JSONObject optJSONObject = optJSONArray2.optJSONObject(0);
            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("SubtitleInfoList")) != null && optJSONArray.length() > 0) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i10);
                    if (optJSONObject2 != null) {
                        JSONObject jSONObject3 = new JSONObject();
                        try {
                            jSONObject3.put(MediaFormat.KEY_LANGUAGE, optJSONObject2.optString("Language"));
                            jSONObject3.put("sub_id", optJSONObject2.optInt(SubInfo.KEY_SUB_ID));
                            jSONObject3.put("language_id", optJSONObject2.optInt(SubInfo.KEY_LANGUAGE_ID));
                            jSONObject3.put("format", optJSONObject2.optString(SubInfo.KEY_FORMAT));
                            jSONObject3.put("source", optJSONObject2.optString("Source"));
                            jSONObject3.put("url", optJSONObject2.optString("SubtitleUrl"));
                            jSONObject3.put("id", i10);
                            jSONArray.put(jSONObject3);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }
        }
        try {
            jSONObject2.put("list", jSONArray);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return jSONObject2.toString();
    }

    public void cancel() {
        synchronized (this) {
            try {
                this.mHandler.removeCallbacksAndMessages(null);
                FetcherListener fetcherListener = this.mListener;
                if (fetcherListener == null) {
                    return;
                }
                fetcherListener.onLog("fetcher cancelled");
                if (this.mCancelled) {
                    return;
                }
                this.mCancelled = true;
                this.mNetworkSession.cancel();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void fetchInfo(String str) {
        this.mSubApiString = str;
        try {
            this.mHost = new URL(str).getHost();
        } catch (MalformedURLException e10) {
            e10.printStackTrace();
        }
        _fetchInfoInternal();
    }

    public void setListener(FetcherListener fetcherListener) {
        this.mListener = fetcherListener;
    }
}
