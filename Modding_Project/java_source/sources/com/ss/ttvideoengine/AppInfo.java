package com.ss.ttvideoengine;

import android.text.TextUtils;
import com.ss.ttvideoengine.log.AppLogTOBVer2;
/* loaded from: classes6.dex */
public class AppInfo extends BaseAppInfo {
    public static final String APP_REGION_AMERICA = "amercia";
    public static final String APP_REGION_CHINA = "china";
    public static final String APP_REGION_CN = "china";
    public static final String APP_REGION_MYA = "mya";
    public static final String APP_REGION_SINGAPORE = "singapore";
    public static final String SDK_REGION_CN = "CN";
    public static final String SDK_REGION_GLOBAL = "GLOBAL";
    private static final String TAG = "AppInfo";

    public static String getDefaultVodTopHost() {
        return nc.a.c();
    }

    public static String getDefaultVodTopHostV2() {
        String d10 = nc.a.d();
        if (d10 == null) {
            return "";
        }
        return d10;
    }

    public static String getDeviceId() {
        if (TextUtils.isEmpty(BaseAppInfo.mDeviceId)) {
            BaseAppInfo.mDeviceId = AppLogTOBVer2.getDeviceID();
        }
        if (BaseAppInfo.mDeviceId == null) {
            BaseAppInfo.mDeviceId = "";
        }
        return BaseAppInfo.mDeviceId;
    }

    public static String getSmartUrlApiHost() {
        if (!TextUtils.isEmpty(BaseAppInfo.mSmartUrlApiHostName)) {
            return BaseAppInfo.mSmartUrlApiHostName;
        }
        return nc.a.b();
    }

    @Deprecated
    public static void updateDeviceId(String str) {
        EngineAdapter.updateDeviceId();
    }
}
