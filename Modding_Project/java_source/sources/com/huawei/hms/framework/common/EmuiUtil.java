package com.huawei.hms.framework.common;

import com.huawei.android.os.BuildEx;
/* loaded from: classes5.dex */
public class EmuiUtil {
    public static final String BUILDEX_VERSION = "com.huawei.android.os.BuildEx$VERSION";
    public static final String EMUI_SDK_INT = "EMUI_SDK_INT";
    public static final String GET_PRIMARY_COLOR = "getPrimaryColor";
    public static final String GET_SUGGESTION_FOR_GROUND_COLOR_STYLE = "getSuggestionForgroundColorStyle";
    public static final String IMMERSION_STYLE = "com.huawei.android.immersion.ImmersionStyle";

    /* renamed from: a  reason: collision with root package name */
    private static int f22128a = -1;

    static {
        a();
    }

    private static void a() {
        int eMUIVersionCode = getEMUIVersionCode();
        Logger.d("KPMS_Util_Emui", "getEmuiType emuiVersionCode=" + eMUIVersionCode);
        if (eMUIVersionCode >= 17) {
            f22128a = 90;
        } else if (eMUIVersionCode >= 15) {
            f22128a = 81;
        } else if (eMUIVersionCode >= 14) {
            f22128a = 60;
        } else if (eMUIVersionCode >= 11) {
            f22128a = 50;
        } else if (eMUIVersionCode >= 10) {
            f22128a = 41;
        } else if (eMUIVersionCode >= 9) {
            f22128a = 40;
        } else if (eMUIVersionCode >= 8) {
            f22128a = 31;
        } else if (eMUIVersionCode >= 7) {
            f22128a = 30;
        }
        if (f22128a == -1) {
            Logger.i("KPMS_Util_Emui", "emuiType is unkown");
        }
    }

    public static int getEMUIVersionCode() {
        int intValue;
        Object staticFieldObj = ReflectionUtils.getStaticFieldObj(BUILDEX_VERSION, EMUI_SDK_INT);
        if (staticFieldObj != null) {
            try {
                intValue = ((Integer) staticFieldObj).intValue();
            } catch (ClassCastException e10) {
                Logger.e("KPMS_Util_Emui", "getEMUIVersionCode ClassCastException:", e10);
            }
            Logger.d("KPMS_Util_Emui", "the emui version code is::" + intValue);
            return intValue;
        }
        intValue = 0;
        Logger.d("KPMS_Util_Emui", "the emui version code is::" + intValue);
        return intValue;
    }

    public static boolean isEMUI() {
        if (-1 != f22128a) {
            return true;
        }
        return false;
    }

    public static boolean isUpPVersion() {
        try {
            if (ReflectionUtils.checkCompatible("com.huawei.android.os.BuildEx") && ReflectionUtils.checkCompatible(BUILDEX_VERSION)) {
                if (BuildEx.VERSION.EMUI_SDK_INT < 17) {
                    return false;
                }
                return true;
            }
        } catch (NoSuchMethodError unused) {
            Logger.d("KPMS_Util_Emui", "no such method for com.huawei.android.os.BuildEx.VERSION");
        } catch (Throwable unused2) {
            Logger.d("KPMS_Util_Emui", "com.huawei.android.os.BuildEx.VERSION has other exception");
        }
        Logger.d("KPMS_Util_Emui", "com.huawei.android.os.BuildEx : false");
        return false;
    }
}
