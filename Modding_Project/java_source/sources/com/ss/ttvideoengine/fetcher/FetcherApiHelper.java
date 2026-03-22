package com.ss.ttvideoengine.fetcher;

import android.os.Build;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.ss.ttvideoengine.AppInfo;
import com.ss.ttvideoengine.BaseAppInfo;
import com.ss.ttvideoengine.InfoWrapper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.net.ChannelSelect;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class FetcherApiHelper {
    private static final String TAG = "FetcherApiHelper";
    private int mApiVersion;
    private String mAuthorization;
    private final String mCodecType;
    private final boolean mDashEnable;
    private final boolean mEncryptEnable;
    private final boolean mHlsEnable;
    private HashMap<String, String> mParams;

    public FetcherApiHelper(String str, boolean z10, boolean z11, boolean z12, String str2) {
        this(str, null, 1, z10, z11, z12, str2);
    }

    private String addHostToUrl() {
        String host = getHost();
        TTVideoEngineLog.d(TAG, "getHost " + host);
        if (TextUtils.isEmpty(host)) {
            return this.mAuthorization;
        }
        if (this.mAuthorization.startsWith(ProxyConfig.MATCH_HTTP)) {
            String replaceHostInURL = TTHelper.replaceHostInURL(this.mAuthorization, host);
            if (!TextUtils.isEmpty(replaceHostInURL)) {
                return replaceHostInURL;
            }
            return this.mAuthorization;
        }
        StringBuilder sb2 = new StringBuilder();
        if (host.startsWith(ProxyConfig.MATCH_HTTP)) {
            sb2.append(host);
            sb2.append("?");
            sb2.append(this.mAuthorization);
            return sb2.toString();
        }
        sb2.append("https://");
        sb2.append(host);
        sb2.append("?");
        sb2.append(this.mAuthorization);
        return sb2.toString();
    }

    private String addParam(String str, String str2) {
        HashMap<String, String> hashMap;
        HashMap<String, String> hashMap2 = this.mParams;
        if (hashMap2 != null && !hashMap2.isEmpty()) {
            hashMap = this.mParams;
        } else {
            hashMap = new HashMap<>();
        }
        int i10 = this.mApiVersion;
        if (i10 == 2) {
            if (this.mHlsEnable) {
                hashMap.put("format_type", TTVideoEngineInterface.FORMAT_TYPE_HLS);
            }
            if (this.mDashEnable) {
                hashMap.put("format_type", "dash");
            }
            if (TextUtils.equals(this.mCodecType, "h265") && !str2.contains(TTVideoEngineInterface.PLAY_API_KEY_CODEC)) {
                hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_CODEC, "1");
            }
            if (this.mEncryptEnable) {
                hashMap.put("stream_type", "evideo");
            }
        } else if (i10 == 4 && !str2.contains("Codec")) {
            if (TextUtils.equals(this.mCodecType, "h265")) {
                hashMap.put("Codec", "h265");
            } else if (TextUtils.equals(this.mCodecType, "h266")) {
                hashMap.put("Codec", "h266");
            }
        }
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, Build.MODEL);
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, "android");
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, InfoWrapper.getAppID());
        String deviceID = InfoWrapper.getDeviceID();
        if (!TextUtils.isEmpty(deviceID)) {
            hashMap.put("device_id", deviceID);
        }
        if (!TextUtils.isEmpty(BaseAppInfo.mAppVersion)) {
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, BaseAppInfo.mAppVersion);
        }
        StringBuilder sb2 = new StringBuilder(str);
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            sb2.append(String.format("&%s=%s", entry.getKey(), entry.getValue()));
        }
        return sb2.toString();
    }

    private String getHost() {
        if (!TextUtils.isEmpty(BaseAppInfo.mOpenApiHostName)) {
            return BaseAppInfo.mOpenApiHostName;
        }
        if (InfoWrapper.getUseHostSelect()) {
            if (this.mApiVersion == 2) {
                ChannelSelect.getInstance().setHostList(2, InfoWrapper.getTopHostArray());
            } else {
                ChannelSelect.getInstance().setHostList(4, InfoWrapper.getTopHostArrayV2());
            }
            String selectNext = ChannelSelect.getInstance().selectNext(this.mApiVersion, null);
            if (!TextUtils.isEmpty(selectNext)) {
                return selectNext;
            }
        }
        if (this.mApiVersion == 2) {
            JSONArray topHostArray = InfoWrapper.getTopHostArray();
            if (!TTHelper.isEmpty(topHostArray)) {
                Object opt = topHostArray.opt(0);
                if (opt instanceof String) {
                    return (String) opt;
                }
            }
            return AppInfo.getDefaultVodTopHost();
        }
        JSONArray topHostArrayV2 = InfoWrapper.getTopHostArrayV2();
        if (!TTHelper.isEmpty(topHostArrayV2)) {
            Object opt2 = topHostArrayV2.opt(0);
            if (opt2 instanceof String) {
                return (String) opt2;
            }
        }
        return AppInfo.getDefaultVodTopHostV2();
    }

    public String getAPIString() {
        if (TextUtils.isEmpty(this.mAuthorization)) {
            TTVideoEngineLog.d(TAG, "getAPIString null");
            return null;
        }
        String addParam = addParam(addHostToUrl(), this.mAuthorization);
        TTVideoEngineLog.d(TAG, "getAPIString " + addParam);
        return addParam;
    }

    public int getApiVersion() {
        return this.mApiVersion;
    }

    public String getAuthorization() {
        return this.mAuthorization;
    }

    public void setParams(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            HashMap<String, String> hashMap = new HashMap<>();
            this.mParams = hashMap;
            hashMap.putAll(map);
        }
    }

    public FetcherApiHelper(String str, int i10, boolean z10, boolean z11, boolean z12, String str2) {
        this(null, str, i10, z10, z11, z12, str2);
    }

    private String getAuthorization(String str) {
        TTVideoEngineLog.d(TAG, "getAuthorization " + str);
        String base64Decode = TTHelper.base64Decode(str);
        if (TextUtils.isEmpty(base64Decode)) {
            TTVideoEngineLog.d(TAG, "getAuthorization result null");
            return null;
        }
        String str2 = "";
        try {
            JSONObject jSONObject = new JSONObject(base64Decode);
            String optString = jSONObject.optString("GetPlayInfoToken");
            if (!TextUtils.isEmpty(optString)) {
                base64Decode = optString;
            }
            str2 = jSONObject.optString("TokenVersion");
            if (!TextUtils.isEmpty(str2) && str2.equals("V2")) {
                this.mApiVersion = 4;
            } else {
                this.mApiVersion = 2;
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        TTVideoEngineLog.d(TAG, "getAuthorization result:" + base64Decode + ", version:" + str2);
        return base64Decode;
    }

    public FetcherApiHelper(String str, String str2) {
        this(str, null, 1, false, false, false, str2);
    }

    public FetcherApiHelper(String str, String str2, int i10, boolean z10, boolean z11, boolean z12, String str3) {
        this.mDashEnable = z10;
        this.mHlsEnable = z11;
        this.mEncryptEnable = z12;
        this.mCodecType = str3;
        this.mAuthorization = str2;
        this.mApiVersion = i10;
        if (TextUtils.isEmpty(str2)) {
            this.mAuthorization = getAuthorization(str);
        }
        TTVideoEngineLog.d(TAG, "new FetcherApiHelper authorization " + this.mAuthorization + "， apiVersion " + this.mApiVersion + "， mCodecType " + str3);
    }
}
