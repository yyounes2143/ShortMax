package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
import com.pandora.ttlicense2.LicenseManager;
import com.ss.ttvideoengine.log.AppLogTOBVer2;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes6.dex */
public class InfoWrapper {
    private static final String TAG = "InfoWrapper";

    public static int getApiRetryCount() {
        return VodSettings.getVodInt(VodSettingsKey.KEY_API_RETRY_COUNT, 1);
    }

    public static String getAppID() {
        if (isSetAppInfo()) {
            return String.valueOf(BaseAppInfo.mAppID);
        }
        if (isCommonSDKExist()) {
            return kc.a.d();
        }
        return "";
    }

    public static String getAppName() {
        if (isSetAppInfo()) {
            return BaseAppInfo.mAppName;
        }
        if (isCommonSDKExist()) {
            return kc.a.e();
        }
        return "";
    }

    public static int getBufferTimeOut() {
        if (!isSetAppInfo()) {
            return 30;
        }
        return VodSettings.getVodInt("buffer_timeout", 30);
    }

    public static String getDeviceID() {
        if (AppLogTOBVer2.isAppLogVer2Exist()) {
            return AppLogTOBVer2.getDeviceID();
        }
        return "";
    }

    public static int getExpiredDegradeEnabled() {
        return VodSettings.getVodInt(VodSettingsKey.KEY_LICENSE_EXPIRED_DEGRADE_ENABLE, 1);
    }

    public static int getH264HardwareEnable() {
        if (!isSetAppInfo()) {
            return 0;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_H264_HARDWARE_ENABLE, 1);
    }

    public static int getHardwareEnable() {
        if (!isSetAppInfo()) {
            return 0;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_HARDWARE_DECODE_ENABLE, 0);
    }

    public static List<String> getLicenseIds() {
        return LicenseManager.getInstance().getLoadedLicenseIds();
    }

    public static int getNativeMdlEnable() {
        return VodSettings.getVodInt(VodSettingsKey.KEY_NATIVE_MDL_ENABLE, 0);
    }

    public static String getRegion() {
        if (isSetAppInfo()) {
            return BaseAppInfo.mRegion;
        }
        if (isCommonSDKExist()) {
            return kc.a.f();
        }
        return "";
    }

    public static int getSmartUrlEnabled() {
        if (!isSetAppInfo()) {
            return 0;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_SMART_STRATEGY_ENABLE, 1);
    }

    public static String getTTSDKVersion() {
        if (isCommonSDKExist()) {
            return kc.a.i();
        }
        return "";
    }

    @Nullable
    public static JSONArray getTopHostArray() {
        if (!isSetAppInfo()) {
            return null;
        }
        return VodSettings.getVodJsonArray(VodSettingsKey.KEY_BYTE_VOD_HOST);
    }

    @Nullable
    public static JSONArray getTopHostArrayV2() {
        if (!isSetAppInfo()) {
            return null;
        }
        return VodSettings.getVodJsonArray(VodSettingsKey.KEY_BYTE_VOD_HOST_V2);
    }

    public static boolean getUseHostSelect() {
        if (!isSetAppInfo() || VodSettings.getVodInt(VodSettingsKey.KEY_HOST_SELECT, 0) != 1) {
            return false;
        }
        return true;
    }

    public static int geth265HardwareEnable() {
        if (!isSetAppInfo() || !FeatureManager.hasPermission("bvc1")) {
            return 0;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_h265_HARDWARE_ENABLE, 0);
    }

    public static int geth265SoftwareCapabilityEnable() {
        if (!isSetAppInfo()) {
            return 0;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_h265_SOFTWARE_CAPABILITY_ENABLE, 0);
    }

    public static int geth265SoftwareEnable() {
        if (!isSetAppInfo()) {
            return 0;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_h265_SOFTWARE_ENABLE, 1);
    }

    public static int geth266SoftwareEnable() {
        if (!isSetAppInfo()) {
            return 0;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_h266_SOFTWARE_ENABLE, 0);
    }

    public static boolean isCommonSDKExist() {
        try {
            int i10 = kc.a.f60710d;
            return true;
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
            return false;
        }
    }

    public static boolean isGearStrategyEnable() {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_VOD_GEAR_STRATEGY_ENABLED, 1) == 1) {
            return true;
        }
        return false;
    }

    public static boolean isHDREnable() {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_HDR_ENABLE, 0) != 1) {
            return false;
        }
        return true;
    }

    public static boolean isHlsProxyEnable() {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_HLS_PROXY_ENABLE, 1) == 1) {
            return true;
        }
        return false;
    }

    public static boolean isMDLV2Enable() {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_MDL_V2_ENABLE, 0) != 1) {
            return false;
        }
        return true;
    }

    public static boolean isSREnable() {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_SR_ENABLE, 0) != 1) {
            return false;
        }
        return true;
    }

    public static boolean isSetAppInfo() {
        if (BaseAppInfo.mAppID > 0 && BaseAppInfo.mContext != null) {
            return true;
        }
        return false;
    }

    public static int maxRetryTimeOut() {
        if (!isSetAppInfo()) {
            return 10;
        }
        return VodSettings.getVodInt(VodSettingsKey.KEY_HTTP_RETRY_TIMEOUT_WHEN_FAIL, 10);
    }

    public static void printSettings() {
        TTVideoEngineLog.d(TAG, "setting notify  host_select:" + getUseHostSelect() + ", byte_vod_host:" + getTopHostArray() + ", byte_vod_host_v2:" + getTopHostArrayV2() + ", buffer_timeout:" + getBufferTimeOut() + ", http_retry_timeout_when_fail:" + maxRetryTimeOut() + ", hardware_decode_enable:" + getHardwareEnable() + ", h264_hardware_enable:" + getH264HardwareEnable() + ", h265_hardware_enable:" + geth265HardwareEnable() + ", h265_software_enable:" + geth265SoftwareEnable() + ", h266_software_enable:" + geth266SoftwareEnable() + ", h265_software_capability_enable:" + geth265SoftwareCapabilityEnable() + ", " + VodSettingsKey.KEY_SMART_STRATEGY_ENABLE + ":" + getSmartUrlEnabled() + ", sr_enable:" + isSREnable() + ", hdr_enable:" + isHDREnable() + ", expired_degrade_enable:" + getExpiredDegradeEnabled() + ", native_mdl_enable:" + getNativeMdlEnable());
    }
}
