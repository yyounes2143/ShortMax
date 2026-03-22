package com.bytedance.vodsetting;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.vodsetting.Module;
import com.bytedance.vodsetting.NetInterface;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Fetcher {
    static final int InvalidHostCode = -998;
    static final int InvalidJsonCode = -997;
    static final int InvalidNetClient = -996;
    static final int OverRetryTimesCode = -999;
    static final int SuccessCode = 0;
    private static final String TAG = "Fetcher";
    private final Context mContext;
    private final FetcherListener mListener;
    private NetInterface mNetInterface;
    private int mMaxRetryTimes = 10;
    private boolean mOpenDebug = false;
    private int mFetchInterval = 86400;
    private long mConfigVersion = 0;
    private final int mRetryDelay = 5;
    private int mMaxFetchTimes = 100;
    private int mFetchVideoRetryTimes = 0;
    private long mLastFetchTime = 0;
    private long mFetchCount = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fetcher(Context context, FetcherListener fetcherListener) {
        this.mContext = context;
        this.mListener = fetcherListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delayFetch(final String str, final String str2, long j10) {
        Log.v(TAG, "retry fetch, count = " + this.mFetchCount);
        if (this.mFetchVideoRetryTimes > this.mMaxRetryTimes) {
            Log.v(TAG, "fetch fail, module = " + str + ", retry times = " + this.mFetchVideoRetryTimes);
            FetcherListener fetcherListener = this.mListener;
            if (fetcherListener != null) {
                fetcherListener.onResult(-999, "fetch fail. try times = " + this.mFetchVideoRetryTimes + ", max = " + this.mMaxRetryTimes, null);
            }
            this.mFetchVideoRetryTimes = 0;
            return;
        }
        new Timer().schedule(new TimerTask() { // from class: com.bytedance.vodsetting.Fetcher.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Fetcher.this.startFetch(str, str2);
            }
        }, j10 * 1000);
    }

    private void fetchIfNeeded(String str, String str2) {
        Log.v(TAG, "try to fetch, module = " + str);
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = this.mLastFetchTime;
        if (j10 < 1 || currentTimeMillis - j10 >= this.mFetchInterval * 1000) {
            startFetch(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startFetch(final String str, final String str2) {
        int i10 = this.mMaxFetchTimes;
        if (i10 > 0 && this.mFetchCount > i10) {
            Log.v(TAG, "fetch reach max count, maxFetchTimes = " + this.mMaxFetchTimes);
            return;
        }
        long j10 = this.mFetchCount;
        if (j10 >= Long.MAX_VALUE) {
            this.mFetchCount = 1L;
        } else {
            this.mFetchCount = j10 + 1;
        }
        Log.v(TAG, "start to fetch, module = " + str + ", fetch count = " + this.mFetchCount);
        if (this.mNetInterface == null) {
            FetcherListener fetcherListener = this.mListener;
            if (fetcherListener != null) {
                fetcherListener.onResult(InvalidNetClient, "netClient is null", null);
                return;
            }
            return;
        }
        String host = ConfigEnv.getHost(ConfigEnv.getRegion());
        if (TextUtils.isEmpty(host)) {
            Log.e(TAG, "get host is null");
            FetcherListener fetcherListener2 = this.mListener;
            if (fetcherListener2 != null) {
                fetcherListener2.onResult(-998, "host is null", null);
                return;
            }
            return;
        }
        this.mFetchVideoRetryTimes++;
        HashMap hashMap = new HashMap();
        hashMap.put("caller_name", Utils.getCallerName());
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, "android");
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, Utils.getSystemVersion());
        hashMap.put("os_api", String.valueOf(Utils.getSDKVersion()));
        hashMap.put(Module.CommonKey.ConfigVersion, "" + this.mConfigVersion);
        if (!hashMap.containsKey("device_brand")) {
            hashMap.put("device_brand", Utils.getDeviceBrand());
        }
        if (!hashMap.containsKey(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE)) {
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, Utils.getDeviceModel().toLowerCase());
        }
        if (!TextUtils.isEmpty(str) && !str.equals(Module.ALL)) {
            hashMap.put("module", str);
        }
        if (this.mOpenDebug) {
            hashMap.put("debug", "1");
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("config_key", str2);
        }
        if (ConfigEnv.getAPPInfo() != null) {
            hashMap.putAll(ConfigEnv.getAPPInfo());
        }
        if (ConfigEnv.getSDKInfo() != null) {
            hashMap.putAll(ConfigEnv.getSDKInfo());
        }
        Log.v(TAG, "param = " + hashMap.toString());
        this.mNetInterface.start("https://" + host + ConfigEnv.getPath(), hashMap, new NetInterface.CompletionListener() { // from class: com.bytedance.vodsetting.Fetcher.1
            @Override // com.bytedance.vodsetting.NetInterface.CompletionListener
            public void onCompletion(@Nullable JSONObject jSONObject, @Nullable Error error) {
                if (error != null) {
                    Fetcher.this.delayFetch(str, str2, 5L);
                } else if (jSONObject == null) {
                    Log.e(Fetcher.TAG, "response is null or empty");
                    Fetcher.this.delayFetch(str, str2, 5L);
                } else {
                    Fetcher.this.mLastFetchTime = System.currentTimeMillis();
                    if (Fetcher.this.mOpenDebug) {
                        Log.v(Fetcher.TAG, "fetch suc, fetch count = " + Fetcher.this.mFetchCount + ", response = " + jSONObject.toString());
                    }
                    JSONObject optJSONObject = jSONObject.optJSONObject("data");
                    if (Fetcher.this.mListener != null) {
                        Fetcher.this.mListener.onResult(jSONObject.optInt(Module.ResponseKey.Code), jSONObject.optString("msg"), optJSONObject, str, str2);
                    }
                }
            }
        });
    }

    public void fetch(String str, String str2, boolean z10) {
        this.mFetchVideoRetryTimes = 0;
        if (z10) {
            startFetch(str, str2);
        } else {
            fetchIfNeeded(str, str2);
        }
    }

    public int getFetchInterval() {
        return this.mFetchInterval;
    }

    public Fetcher setConfigVersion(long j10) {
        if (j10 < 1) {
            Log.e(TAG, "set config version fail. version = " + j10);
            return this;
        }
        this.mConfigVersion = j10;
        return this;
    }

    public Fetcher setDebug(boolean z10) {
        this.mOpenDebug = z10;
        return this;
    }

    public Fetcher setFetchInterval(int i10) {
        if (i10 < 1) {
            Log.e(TAG, "set fetch interval fail. interval = " + i10);
            return this;
        }
        this.mFetchInterval = i10;
        return this;
    }

    public Fetcher setMaxFetchTimes(int i10) {
        if (i10 < 1) {
            Log.e(TAG, "set max fetch times fail. times = " + i10);
            return this;
        }
        this.mMaxFetchTimes = i10;
        return this;
    }

    public Fetcher setMaxRetryTimes(int i10) {
        this.mMaxRetryTimes = i10;
        return this;
    }

    public Fetcher setNet(NetInterface netInterface) {
        this.mNetInterface = netInterface;
        return this;
    }
}
