package com.ss.mediakit.net;

import android.os.Handler;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLLog;
import com.ss.mediakit.net.AVMDLNetClient;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.reflect.Method;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class HTTPDNSHosts {
    private static final String TAG = "BatchParseHTTPDNSHosts";
    private static String mTTDNSServer = "/q?host=";
    protected boolean mCancelled = false;
    protected Handler mHandler;
    public String[] mHostnames;
    private int mHttpDNSType;
    public String mId;
    protected AVMDLNetClient mNetClient;

    public HTTPDNSHosts(String[] strArr, AVMDLNetClient aVMDLNetClient, int i10, Handler handler) throws Exception {
        this.mHttpDNSType = 2;
        this.mNetClient = null;
        if (i10 == 2) {
            if (strArr != null && strArr.length != 0) {
                this.mHttpDNSType = i10;
                this.mHostnames = strArr;
                this.mNetClient = aVMDLNetClient;
                if (aVMDLNetClient == null) {
                    this.mNetClient = new AVMDLHTTPNetwork();
                }
                this.mHttpDNSType = i10;
                this.mHandler = handler;
                return;
            }
            AVMDLLog.d(TAG, "host array is valid");
            throw new Exception("host array is valid");
        }
        AVMDLLog.d(TAG, "create fail type is not own");
        throw new Exception("type is not own");
    }

    private String _getURL() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("https://" + AVMDLDNSParser.mGlobalOwnDNSParseHost + mTTDNSServer);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = this.mHostnames;
            if (i10 < strArr.length) {
                if (!TextUtils.isEmpty(strArr[i10])) {
                    if (i11 == 0) {
                        sb2.append(this.mHostnames[i10]);
                    } else {
                        sb2.append("," + this.mHostnames[i10]);
                    }
                    i11++;
                }
                i10++;
            } else {
                return sb2.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleResponse(JSONObject jSONObject, Error error) {
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "****http dns id:%s type:%d", this.mId, Integer.valueOf(this.mHttpDNSType)));
        if (error != null) {
            AVMDLLog.d(TAG, String.format(locale, "handle response receive err:%s", error.errStr));
        } else if (jSONObject != null && jSONObject.length() != 0) {
            try {
                parseResult(jSONObject);
            } catch (Throwable th2) {
                AVMDLLog.d(TAG, String.format(Locale.US, "handle response exception:%s", th2.toString()));
            }
            AVMDLLog.d(TAG, String.format(Locale.US, "****parse end", new Object[0]));
        } else {
            AVMDLLog.d(TAG, String.format(locale, "json null err", new Object[0]));
        }
    }

    private void parseResult(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("dns");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                AVMDLDNSInfo parserResultForSingleHost = parserResultForSingleHost(jSONArray.getJSONObject(i10));
                if (parserResultForSingleHost != null) {
                    IPCache.getInstance().put(parserResultForSingleHost.mHost, parserResultForSingleHost);
                }
            }
        } catch (Exception e10) {
            AVMDLLog.d(TAG, "parse json exception" + e10);
        }
    }

    private AVMDLDNSInfo parserResultForSingleHost(JSONObject jSONObject) {
        int i10;
        String str;
        String str2;
        String str3;
        long j10;
        String str4;
        int i11 = this.mHttpDNSType;
        String str5 = "";
        if (i11 != 2 && i11 != 1) {
            j10 = 0;
            str3 = "";
            str2 = null;
        } else {
            if (jSONObject != null && jSONObject.length() != 0) {
                if (jSONObject.has("ttl")) {
                    i10 = jSONObject.optInt("ttl");
                } else {
                    i10 = 60;
                }
                if (jSONObject.has(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST)) {
                    str = jSONObject.optString(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST);
                } else {
                    str = null;
                }
                long currentTimeMillis = System.currentTimeMillis() + (i10 * 1000);
                JSONArray optJSONArray = jSONObject.optJSONArray("ips");
                if (optJSONArray != null && optJSONArray.length() != 0) {
                    for (int i12 = 0; i12 < optJSONArray.length(); i12++) {
                        try {
                            str4 = optJSONArray.getString(i12);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            str4 = null;
                        }
                        if (!TextUtils.isEmpty(str4)) {
                            if (TextUtils.isEmpty(str5)) {
                                str5 = str5 + str4;
                            } else {
                                str5 = str5 + "," + str4;
                            }
                        }
                    }
                    str2 = str;
                    str3 = str5;
                    j10 = currentTimeMillis;
                }
            }
            return null;
        }
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            AVMDLLog.d(TAG, String.format(Locale.US, "parse result host:%s ips:%s expiredT:%d", str2, str3, Long.valueOf(j10)));
            return new AVMDLDNSInfo(this.mHttpDNSType, str2, str3, j10, this.mId);
        }
        AVMDLLog.d(TAG, "parse result is null");
        return null;
    }

    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        this.mNetClient.cancel();
    }

    public void start() {
        Method[] declaredMethods;
        String _getURL = _getURL();
        AVMDLLog.d(TAG, "batch http dns  url:" + _getURL);
        for (Method method : this.mNetClient.getClass().getDeclaredMethods()) {
            if (method.getName().equals("startTask") && method.getParameterTypes().length == 5) {
                this.mNetClient.startTask(_getURL, null, null, 0, new AVMDLNetClient.CompletionListener() { // from class: com.ss.mediakit.net.HTTPDNSHosts.1
                    @Override // com.ss.mediakit.net.AVMDLNetClient.CompletionListener
                    public void onCompletion(JSONObject jSONObject, Error error) {
                        HTTPDNSHosts.this._handleResponse(jSONObject, error);
                    }
                });
                return;
            }
        }
        this.mNetClient.startTask(_getURL, null, new AVMDLNetClient.CompletionListener() { // from class: com.ss.mediakit.net.HTTPDNSHosts.2
            @Override // com.ss.mediakit.net.AVMDLNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject, Error error) {
                HTTPDNSHosts.this._handleResponse(jSONObject, error);
            }
        });
    }
}
