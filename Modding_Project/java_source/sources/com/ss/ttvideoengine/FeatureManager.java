package com.ss.ttvideoengine;

import android.text.TextUtils;
import com.pandora.ttlicense2.C;
import com.pandora.ttlicense2.LicenseManager;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes6.dex */
public class FeatureManager {
    public static final String ABR = "abr";
    public static final String BASH = "bash";
    public static final String BVC1 = "bvc1";
    public static final String DASH = "dash";
    public static final String LITE = "lite";
    public static final String PCDN = "pcdn";
    public static final String PRELOAD = "preload";
    public static final String STRATEGY_CENTER = "strategy_center";
    public static final String SUPER_RESOLUTION = "super_resolution";
    private static final String TAG = "FeatureManager";
    public static final String VOLUME_BALANCE = "volume_balance";
    public static final String VR_PANORAMA = "vr_panorama";
    public static final String h266 = "h266";
    private static final List<String> VALUE_ADD_FEATURES = Arrays.asList("h266", "vr_panorama", "abr", "super_resolution", "lite");
    public static final String NET_SPEED = "net_speed";
    public static final String AUDIO_ONLY = "audio_only";
    public static final String HTTP_DNS = "http_dns";
    public static final String AUDIO_TRACK = "audio_track";
    public static final String NATIVE_MDL = "native_mdl";
    public static final String SUBTITLE_MASK = "subtitle_mask";
    private static final List<String> PREMIUM_FEATURES = Arrays.asList("bvc1", "dash", "bash", "preload", NET_SPEED, AUDIO_ONLY, HTTP_DNS, AUDIO_TRACK, "volume_balance", NATIVE_MDL, "strategy_center", SUBTITLE_MASK, "pcdn");

    private static List<String> getLicenseFeatures() {
        String sDKEdition = LicenseManager.getInstance().getSDKEdition(C.SDK.SDK_VOD_PLAY);
        if (!TextUtils.equals(sDKEdition, "premium_edition") && !TextUtils.equals(sDKEdition, C.Edition.EDITION_ENTERPRISE)) {
            return Collections.emptyList();
        }
        return PREMIUM_FEATURES;
    }

    public static String getModuleName() {
        return C.SDK.SDK_VOD_PLAY;
    }

    private static List<String> getSDKFeatures() {
        if (TextUtils.equals("premium_edition", "premium_edition")) {
            return PREMIUM_FEATURES;
        }
        return Collections.emptyList();
    }

    public static boolean hasPermission() {
        return LicenseManager.getInstance().checkSDKAuth(C.SDK.SDK_VOD_PLAY) == 1;
    }

    public static boolean isLicenseExpired() {
        if (LicenseManager.getInstance().checkSDKAuth(C.SDK.SDK_VOD_PLAY) == 2) {
            return true;
        }
        return false;
    }

    public static boolean hasPermission(String str) {
        if (VALUE_ADD_FEATURES.contains(str)) {
            int checkFeatureAuth = LicenseManager.getInstance().checkFeatureAuth(C.SDK.SDK_VOD_PLAY, str);
            if (!TextUtils.equals("premium_edition", "premium_edition")) {
                TTVideoEngineLog.e(TAG, "checkAuth failed feature " + str + ", SDK edition premium_edition");
                return false;
            } else if (checkFeatureAuth != 1) {
                TTVideoEngineLog.e(TAG, "checkAuth failed feature " + str + ", license check result " + checkFeatureAuth);
                return false;
            } else {
                return true;
            }
        }
        int checkSDKAuth = LicenseManager.getInstance().checkSDKAuth(C.SDK.SDK_VOD_PLAY);
        if (checkSDKAuth != 1) {
            TTVideoEngineLog.e(TAG, "checkAuth failed feature " + str + ", license check result " + checkSDKAuth);
            return false;
        }
        List<String> sDKFeatures = getSDKFeatures();
        List<String> licenseFeatures = getLicenseFeatures();
        if (!sDKFeatures.contains(str)) {
            TTVideoEngineLog.e(TAG, "checkAuth failed feature " + str + ", SDK edition premium_edition");
            return false;
        } else if (licenseFeatures.contains(str)) {
            return true;
        } else {
            TTVideoEngineLog.e(TAG, "checkAuth failed feature " + str + ", license edition " + LicenseManager.getInstance().getSDKEdition(C.SDK.SDK_VOD_PLAY));
            return false;
        }
    }
}
