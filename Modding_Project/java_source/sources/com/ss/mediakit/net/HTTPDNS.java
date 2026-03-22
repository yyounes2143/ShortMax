package com.ss.mediakit.net;

import android.os.Handler;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.ss.mediakit.medialoader.AVMDLLog;
import com.ss.mediakit.net.AVMDLNetClient;
import java.lang.reflect.Method;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class HTTPDNS extends BaseDNS {
    private static final String TAG = "HTTPDNS";
    private static String mGoogleDNSServer = "/resolve?name=";
    private static String mTTDNSServer = "/q?host=";
    private int mHttpDNSType;
    private Object mSource;
    private long mSourceId;

    public HTTPDNS(String str, AVMDLNetClient aVMDLNetClient, int i10, Handler handler) {
        super(str, aVMDLNetClient, handler);
        this.mHttpDNSType = i10;
    }

    private String _getURL() {
        StringBuilder sb2 = new StringBuilder();
        boolean isIPv4Reachable = AVMDLMultiNetwork.isIPv4Reachable();
        boolean isIPv4Reachable2 = AVMDLMultiNetwork.isIPv4Reachable();
        int i10 = this.mHttpDNSType;
        if (i10 != 2 && i10 != 1) {
            if (i10 == 3) {
                sb2.append("https://" + AVMDLDNSParser.mGlobalGoogleDNSParseHost + mGoogleDNSServer);
            }
        } else {
            sb2.append("https://" + AVMDLDNSParser.mGlobalOwnDNSParseHost + mTTDNSServer);
        }
        sb2.append(this.mHostname);
        int i11 = this.mHttpDNSType;
        if (i11 == 2 || i11 == 1) {
            sb2.append("&source=vod");
            AVMDLDataLoaderConfigure config = AVMDLDataLoader.getInstance().getConfig();
            if (config != null && config.mEnableNetworkChangeNotify == 1) {
                if (isIPv4Reachable && isIPv4Reachable2) {
                    sb2.append("&f=0");
                } else if (isIPv4Reachable) {
                    sb2.append("&f=1");
                } else if (isIPv4Reachable2) {
                    sb2.append("&f=2");
                }
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleResponse(JSONObject jSONObject, Error error) {
        AVMDLDNSInfo aVMDLDNSInfo;
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "****http dns id:%s type:%d host:%s", this.mId, Integer.valueOf(this.mHttpDNSType), this.mHostname));
        AVMDLDNSInfo aVMDLDNSInfo2 = new AVMDLDNSInfo(this.mHttpDNSType, this.mHostname, (String) null, 0L, this.mId);
        if (error != null) {
            String str = error.errStr;
            aVMDLDNSInfo2.mErrorStr = str;
            AVMDLLog.d(TAG, String.format(locale, "handle response receive err:%s", str));
        } else if (jSONObject != null && jSONObject.length() != 0) {
            try {
                aVMDLDNSInfo = parserResult(jSONObject);
            } catch (Throwable th2) {
                AVMDLLog.d(TAG, String.format(Locale.US, "handle response exception:%s", th2.toString()));
                aVMDLDNSInfo = null;
            }
            if (aVMDLDNSInfo == null) {
                AVMDLLog.d(TAG, String.format(Locale.US, "info null err", new Object[0]));
            } else {
                AVMDLLog.d(TAG, String.format(Locale.US, "****parse suc for host:%s iplist:%s", this.mHostname, aVMDLDNSInfo.mIpList));
                IPCache.getInstance().put(this.mHostname, aVMDLDNSInfo);
                notifySuccess(aVMDLDNSInfo);
                return;
            }
        } else {
            int i10 = this.mHttpDNSType;
            new Error(i10, this.mHostname, this.mId, String.format(locale, "HTTP dns empty, type:%d", Integer.valueOf(i10)));
            AVMDLLog.d(TAG, String.format(locale, "json null err", new Object[0]));
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "****parse failed for host:%s", this.mHostname));
        notifyError(aVMDLDNSInfo2);
    }

    private AVMDLDNSInfo parserResult(JSONObject jSONObject) {
        long currentTimeMillis;
        String str;
        String str2;
        String str3;
        int i10 = this.mHttpDNSType;
        String str4 = "";
        int i11 = 60;
        if (i10 != 2 && i10 != 1) {
            currentTimeMillis = 0;
            str = null;
        } else if (jSONObject == null || jSONObject.length() == 0) {
            return null;
        } else {
            if (jSONObject.has("ttl")) {
                i11 = jSONObject.optInt("ttl");
            }
            AVMDLLog.d(TAG, String.format(Locale.US, "receive expiredtime:%d force expiredtime:%d ", Integer.valueOf(i11), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime)));
            int i12 = AVMDLDNSParser.mGlobalForceExpiredTime;
            if (i12 > 0) {
                i11 = i12;
            }
            int i13 = i11;
            currentTimeMillis = System.currentTimeMillis() + (i11 * 1000);
            JSONArray optJSONArray = jSONObject.optJSONArray("ips");
            if (optJSONArray == null || optJSONArray.length() == 0) {
                return null;
            }
            String str5 = null;
            for (int i14 = 0; i14 < optJSONArray.length(); i14++) {
                try {
                    str5 = optJSONArray.getString(i14);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    str5 = null;
                }
                if (!TextUtils.isEmpty(str5)) {
                    if (TextUtils.isEmpty(str4)) {
                        str2 = str4 + str5;
                    } else {
                        str2 = str4 + "," + str5;
                    }
                    str4 = str2;
                }
            }
            str = str5;
            i11 = i13;
        }
        if (this.mHttpDNSType == 3) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("Answer");
                for (int i15 = 0; i15 < jSONArray.length(); i15++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i15);
                    if (jSONObject2.has("type") && jSONObject2.getInt("type") == 1) {
                        if (jSONObject2.has("TTL")) {
                            i11 = jSONObject2.optInt("TTL");
                        }
                        if (jSONObject2.has("data")) {
                            str = jSONObject2.optString("data");
                        }
                        if (!TextUtils.isEmpty(str)) {
                            if (TextUtils.isEmpty(str4)) {
                                str3 = str4 + str;
                            } else {
                                str3 = str4 + "," + str;
                            }
                            str4 = str3;
                        }
                    }
                }
                AVMDLLog.d(TAG, String.format(Locale.US, "receive expiredtime:%d force expiredtime:%d ", Integer.valueOf(i11), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime)));
                int i16 = AVMDLDNSParser.mGlobalForceExpiredTime;
                if (i16 > 0) {
                    i11 = i16;
                }
                currentTimeMillis = System.currentTimeMillis() + (i11 * 1000);
            } catch (Exception e11) {
                e11.printStackTrace();
                return null;
            }
        }
        return new AVMDLDNSInfo(this.mHttpDNSType, this.mHostname, str4, currentTimeMillis, this.mId);
    }

    @Override // com.ss.mediakit.net.BaseDNS
    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        this.mNetClient.cancel();
    }

    @Override // com.ss.mediakit.net.BaseDNS
    public void start() {
        Method[] declaredMethods;
        String _getURL = _getURL();
        AVMDLLog.d(TAG, "http dns url:" + _getURL);
        for (Method method : this.mNetClient.getClass().getDeclaredMethods()) {
            if (method.getName().equals("startTask") && method.getParameterTypes().length == 5) {
                this.mNetClient.startTask(_getURL, null, null, 0, new AVMDLNetClient.CompletionListener() { // from class: com.ss.mediakit.net.HTTPDNS.1
                    @Override // com.ss.mediakit.net.AVMDLNetClient.CompletionListener
                    public void onCompletion(JSONObject jSONObject, Error error) {
                        HTTPDNS.this._handleResponse(jSONObject, error);
                    }
                });
                return;
            }
        }
        this.mNetClient.startTask(_getURL, null, new AVMDLNetClient.CompletionListener() { // from class: com.ss.mediakit.net.HTTPDNS.2
            @Override // com.ss.mediakit.net.AVMDLNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject, Error error) {
                HTTPDNS.this._handleResponse(jSONObject, error);
            }
        });
    }
}
