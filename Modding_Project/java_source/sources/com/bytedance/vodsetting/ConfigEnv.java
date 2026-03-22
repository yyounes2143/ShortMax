package com.bytedance.vodsetting;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class ConfigEnv {
    private static Map<String, Object> APP_INFO = null;
    private static String BASE_PATH = "/vod/settings/v1";
    private static String CN_NORTH = null;
    private static String REGION = null;
    public static String REGION_CN = "cn-north-1";
    public static String REGION_SG = "ap-singapore-1";
    public static String REGION_US = "us-east-1";
    private static Map<String, Object> SDK_INFO = null;
    private static String SG_SINGAPORE = null;
    private static final String TAG = "ConfigEnv";
    private static String US_EAST;

    private static Map<String, String> _transMap(Map<String, Object> map) {
        if (map != null && map.size() > 0) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    hashMap.put(entry.getKey(), entry.getValue().toString());
                }
            }
            return hashMap;
        }
        return null;
    }

    public static Map<String, String> getAPPInfo() {
        return _transMap(APP_INFO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String getHost(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e(TAG, "region is null");
            return null;
        }
        String str2 = CN_NORTH;
        if (str.equals(REGION_US)) {
            return US_EAST;
        }
        if (str.equals(REGION_SG)) {
            return SG_SINGAPORE;
        }
        if (str.equals(REGION_CN)) {
            return CN_NORTH;
        }
        return str2;
    }

    @Nullable
    public static String getHostForCN() {
        return CN_NORTH;
    }

    @Nullable
    public static String getHostForSG() {
        return SG_SINGAPORE;
    }

    @Nullable
    public static String getHostForUS() {
        return US_EAST;
    }

    public static String getPath() {
        return BASE_PATH;
    }

    public static String getRegion() {
        return REGION;
    }

    public static Map<String, String> getSDKInfo() {
        return _transMap(SDK_INFO);
    }

    public static Class<ConfigEnv> setAppInfo(Map<String, Object> map) {
        APP_INFO = map;
        return ConfigEnv.class;
    }

    public static Class<ConfigEnv> setHostForCN(String str) {
        CN_NORTH = str;
        return ConfigEnv.class;
    }

    public static Class<ConfigEnv> setHostForSG(String str) {
        SG_SINGAPORE = str;
        return ConfigEnv.class;
    }

    public static Class<ConfigEnv> setHostForUS(String str) {
        US_EAST = str;
        return ConfigEnv.class;
    }

    public static Class<ConfigEnv> setPath(String str) {
        BASE_PATH = str;
        return ConfigEnv.class;
    }

    public static Class<ConfigEnv> setRegion(String str) {
        REGION = str;
        return ConfigEnv.class;
    }

    public static Class<ConfigEnv> setSDKInfo(Map<String, Object> map) {
        SDK_INFO = map;
        return ConfigEnv.class;
    }
}
