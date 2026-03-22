package com.ss.ttvideoengine;

import android.content.Context;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BaseAppInfo {
    public static String mAppChannel = null;
    public static int mAppID = -1;
    public static String mAppName;
    public static String mAppVersion;
    public static Context mContext;
    public static String mDeviceId;
    public static String mOpenApiHostName;
    public static String mRegion;
    public static int mScreenHeight;
    public static int mScreenWidth;
    public static String mSmartUrlApiHostName;

    public static String toJsonString() {
        HashMap hashMap = new HashMap();
        hashMap.put("app_id", Integer.valueOf(mAppID));
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, mAppName);
        hashMap.put("screen_width", Integer.valueOf(mScreenWidth));
        hashMap.put("screen_height", Integer.valueOf(mScreenHeight));
        String str = mDeviceId;
        if (str != null && !str.isEmpty()) {
            hashMap.put("did", mDeviceId);
        }
        String str2 = mAppVersion;
        if (str2 != null && !str2.isEmpty()) {
            hashMap.put("app_version", mAppVersion);
        }
        return new JSONObject(hashMap).toString();
    }
}
