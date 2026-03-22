package com.ss.ttvideoengine.utils;

import android.text.TextUtils;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.log.VideoEventLoggerV2;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class TTVideoEngineUtils {
    public static final int SENSITIVE_SCENE_GUEST_MODE = 3;
    public static final int SENSITIVE_SCENE_NONE = 0;
    public static final int SENSITIVE_SCENE_TEEN_MODE = 2;
    public static final int SENSITIVE_SCENE_USER_DISAGREE = 1;
    private static final String TAG = "TTVideoEngineUtils";
    public static int sEnableHTTPSForFetch = 1;
    public static int sSensitiveScene;

    public static String BuildHttpsApi(String str) {
        if (sEnableHTTPSForFetch == 1 && !TextUtils.isEmpty(str) && str.startsWith("http://")) {
            TTVideoEngineLog.i(TAG, "fetch api need replace https");
            return str.replaceFirst("http://", "https://");
        }
        return str;
    }

    public static <T> void addToList(ArrayList<T> arrayList, T t10) {
        if (arrayList == null) {
            return;
        }
        if (TTVideoEngine.sBuryDataOptimize && arrayList.size() < 100) {
            arrayList.add(t10);
        } else {
            arrayList.add(t10);
        }
    }

    public static int getSensitiveScene() {
        boolean booleanValue;
        int i10;
        if (VideoEventLoggerV2.sIsColdStart == 1 && (i10 = sSensitiveScene) > 0) {
            return i10;
        }
        try {
            boolean booleanValue2 = ((Boolean) Class.forName("com.ss.android.ugc.aweme.utils.PrivacyPolicyAgreementUtils").getMethod("isUserAgreePrivacyPolicy", new Class[0]).invoke(null, new Object[0])).booleanValue();
            TTVideoEngineLog.d(TAG, "isUserAgreePrivacyPolicy:" + booleanValue2);
            if (!booleanValue2) {
                return 1;
            }
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, "get PrivacyPolicy failed:" + e10.toString());
        }
        try {
            Class<?> cls = Class.forName("com.ss.android.ugc.aweme.compliance.api.ComplianceServiceProvider");
            try {
                boolean booleanValue3 = ((Boolean) Class.forName("com.ss.android.ugc.aweme.compliance.api.services.teenmode.ITeenModeService").getMethod("isTeenModeON", new Class[0]).invoke(cls.getMethod("teenModeService", new Class[0]).invoke(null, new Object[0]), new Object[0])).booleanValue();
                TTVideoEngineLog.d(TAG, "isTeenModeOn:" + booleanValue3);
                if (booleanValue3) {
                    return 2;
                }
            } catch (Exception e11) {
                TTVideoEngineLog.e(TAG, "get teenModeService failed:" + e11.toString());
            }
            try {
                booleanValue = ((Boolean) Class.forName("com.ss.android.ugc.aweme.compliance.api.services.businesses.IComplianceBusinessService").getMethod("isGuestMode", new Class[0]).invoke(cls.getMethod("businessService", new Class[0]).invoke(null, new Object[0]), new Object[0])).booleanValue();
                TTVideoEngineLog.d(TAG, "isGuestMode:" + booleanValue);
            } catch (Exception e12) {
                TTVideoEngineLog.e(TAG, "get businessService failed:" + e12.toString());
            }
            if (!booleanValue) {
                return -1;
            }
            return 3;
        } catch (Exception e13) {
            TTVideoEngineLog.e(TAG, "get ComplianceServiceProvider failed:" + e13.toString());
            return -1;
        }
    }

    public static boolean isFlagOn(long j10, long j11) {
        if ((j10 & j11) != 0) {
            return true;
        }
        return false;
    }

    public static void setSensitiveScene(int i10) {
        if (i10 == 0 || i10 == 1 || i10 == 2 || i10 == 3) {
            sSensitiveScene = i10;
        }
    }

    public static <T> void addToList(ArrayList<T> arrayList, T t10, int i10) {
        if (arrayList == null || i10 < 0) {
            return;
        }
        if (TTVideoEngine.sBuryDataOptimize && arrayList.size() < i10) {
            arrayList.add(t10);
        } else {
            arrayList.add(t10);
        }
    }
}
