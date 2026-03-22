package com.ss.ttvideoengine.log;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.ss.ttvideoengine.BaseAppInfo;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class ContentDataReporter {
    private static final int MAX_RETRY_COUNT = 3;
    private static final String TAG = "ContentDataReporter";
    private static final String mAssertsFileName = "CN_content_data_transmit_url.json";
    private static volatile boolean mInit = false;
    private static String mRequestUrl;
    private static volatile int mRetryCnt;
    private boolean mCanceled;
    private Context mContext;
    private String mInitialUrl = null;
    private TTVNetClient mNetClient;

    public ContentDataReporter(Context context) {
        this.mNetClient = null;
        this.mNetClient = new TTHTTPNetwork();
        this.mContext = context;
        readRequestUrlFromAsserts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readRequestUrlFromAsserts$0() {
        Context context = this.mContext;
        if (context != null) {
            try {
                InputStream open = context.getAssets().open(mAssertsFileName);
                byte[] bArr = new byte[open.available()];
                open.read(bArr);
                open.close();
                JSONObject jSONObject = new JSONObject(new String(bArr, "UTF-8"));
                if (jSONObject.has("requestUrl+CN")) {
                    mRequestUrl = jSONObject.getString("requestUrl+CN");
                    mInit = true;
                }
            } catch (Exception e10) {
                synchronized (ContentDataReporter.class) {
                    mRetryCnt++;
                    TTVideoEngineLog.e(TAG, e10.toString());
                }
            }
        }
    }

    public void cancel() {
        if (this.mCanceled) {
            return;
        }
        this.mCanceled = true;
        this.mInitialUrl = null;
        this.mNetClient.cancel();
    }

    public void readRequestUrlFromAsserts() {
        if (mInit) {
            return;
        }
        synchronized (ContentDataReporter.class) {
            try {
                if (mRetryCnt >= 3) {
                    return;
                }
                EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContentDataReporter.this.lambda$readRequestUrlFromAsserts$0();
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setInitialUrl(String str) {
        this.mInitialUrl = str;
    }

    public void startTask(VideoEventOnePlay videoEventOnePlay, VideoEventBase videoEventBase) {
        int indexOf;
        if (this.mCanceled) {
            TTVideoEngineLog.i(TAG, "canceled, return");
        } else if (TextUtils.isEmpty(mRequestUrl)) {
            TTVideoEngineLog.i(TAG, "mRequestUrl is empty, return");
        } else if (!TextUtils.isEmpty(this.mInitialUrl) && videoEventOnePlay != null && videoEventBase != null) {
            if (this.mInitialUrl.indexOf("?") == -1) {
                TTVideoEngineLog.i(TAG, "cant find ?, return");
                return;
            }
            final String str = mRequestUrl + this.mInitialUrl.substring(indexOf);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start_event_time", videoEventOnePlay.f37081pt);
                long j10 = videoEventOnePlay.f37078et;
                if (j10 <= 0) {
                    j10 = videoEventOnePlay.f37080lt;
                }
                jSONObject.put("end_event_time", j10);
                jSONObject.put("video_duration", videoEventBase.f37071vd);
                jSONObject.put("end_position", videoEventOnePlay.curPlayBackTime);
                jSONObject.put("duration", videoEventOnePlay.watchduration);
                jSONObject.put("custom_id", BaseAppInfo.mAppID);
                this.mNetClient.startTask(str, (Map<String, String>) null, jSONObject, 1, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.log.ContentDataReporter.1
                    @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
                    @SuppressLint({"DefaultLocale"})
                    public void onCompletion(JSONObject jSONObject2, Error error) {
                        if (ContentDataReporter.this.mCanceled) {
                            TTVideoEngineLog.i(ContentDataReporter.TAG, "canceled, return");
                        } else if (jSONObject2 != null) {
                            int optInt = jSONObject2.optInt("ret");
                            if (optInt != 0) {
                                TTVideoEngineLog.i(ContentDataReporter.TAG, String.format("network error, code:%d, requestUrl:%s", Integer.valueOf(optInt), str));
                            } else {
                                TTVideoEngineLog.d(ContentDataReporter.TAG, String.format("translate vdata to content success, req_id:%s", jSONObject2.optString("req_id")));
                            }
                        } else if (error != null) {
                            TTVideoEngineLog.i(ContentDataReporter.TAG, String.format("network error:%s, requestUrl:%s", error.toString(), str));
                        }
                    }
                });
            } catch (JSONException e10) {
                TTVideoEngineLog.e(TAG, "JSONObject put error:%s" + e10.toString());
            }
        } else {
            TTVideoEngineLog.i(TAG, "null parameter, return");
        }
    }
}
