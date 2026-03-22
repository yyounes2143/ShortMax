package com.ss.ttvideoengine.net;

import android.text.TextUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.reflect.Method;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class HTTPDNS extends BaseDNS {
    private static final String TAG = "HTTPDNS";
    private static String mTTDNSServerHost = "";
    private int mHttpDNSType;

    public HTTPDNS(String str, TTVNetClient tTVNetClient, int i10) {
        super(str, tTVNetClient);
        String str2;
        this.mHttpDNSType = i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DNS use HTTPDNS");
        if (i10 == 2) {
            str2 = "_TT";
        } else {
            str2 = "_ALI";
        }
        sb2.append(str2);
        TTVideoEngineLog.i(TAG, sb2.toString());
    }

    private String _getURL() {
        StringBuilder sb2 = new StringBuilder();
        getTTDNSServerHost();
        sb2.append("https://" + mTTDNSServerHost + "/q?host=");
        sb2.append(this.mHostname);
        String sb3 = sb2.toString();
        TTVideoEngineLog.d(TAG, "http dns parse url is" + sb3);
        return sb3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleResponse(JSONObject jSONObject, Error error) {
        Error error2;
        if (error != null) {
            error.domain = Error.HTTPDNS;
        } else {
            String str = "ALI_";
            if (jSONObject != null && jSONObject.length() != 0) {
                JSONArray optJSONArray = jSONObject.optJSONArray("ips");
                if (optJSONArray != null && optJSONArray.length() != 0) {
                    try {
                        jSONObject.put(CrashHianalyticsData.TIME, System.currentTimeMillis());
                        jSONObject.put("dns_type", IVideoEventLogger.LOGGER_DNS_TYPE_HTTP);
                    } catch (JSONException e10) {
                        TTVideoEngineLog.d(e10);
                    }
                    notifySuccess(jSONObject);
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                if (this.mHttpDNSType == 2) {
                    str = "TT_";
                }
                sb2.append(str);
                sb2.append("HTTP dns empty");
                error2 = new Error(Error.HTTPDNS, (int) Error.ResultEmpty, sb2.toString());
            } else {
                StringBuilder sb3 = new StringBuilder();
                if (this.mHttpDNSType == 2) {
                    str = "TT_";
                }
                sb3.append(str);
                sb3.append("HTTP dns empty");
                error2 = new Error(Error.HTTPDNS, (int) Error.ResultEmpty, sb3.toString());
            }
            error = error2;
        }
        notifyError(error);
    }

    private static String getTTDNSServerHost() {
        String str;
        synchronized (LocalDNS.class) {
            str = mTTDNSServerHost;
        }
        return str;
    }

    public static void setTTDNSServerHost(String str) {
        synchronized (LocalDNS.class) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    mTTDNSServerHost = str;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.ss.ttvideoengine.net.BaseDNS
    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        this.mNetClient.cancel();
    }

    @Override // com.ss.ttvideoengine.net.BaseDNS
    public void start() {
        Method[] declaredMethods;
        String _getURL = _getURL();
        for (Method method : this.mNetClient.getClass().getDeclaredMethods()) {
            if (method.getName().equals("startTask") && method.getParameterTypes().length == 5) {
                this.mNetClient.startTask(_getURL, (Map<String, String>) null, (JSONObject) null, 0, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.net.HTTPDNS.1
                    @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
                    public void onCompletion(JSONObject jSONObject, Error error) {
                        HTTPDNS.this._handleResponse(jSONObject, error);
                    }
                });
                return;
            }
        }
        this.mNetClient.startTask(_getURL, null, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.net.HTTPDNS.2
            @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject, Error error) {
                HTTPDNS.this._handleResponse(jSONObject, error);
            }
        });
    }
}
