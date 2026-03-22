package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.HyG;
/* loaded from: classes3.dex */
public class ZYk {
    private static String oJ;

    public static String Pfn() {
        return com.bytedance.sdk.openadsdk.core.jFA.ZYk().so();
    }

    public static String ZYk() {
        return "1371";
    }

    public static String ba() {
        return com.bytedance.sdk.component.utils.Ry.cFZ(com.bytedance.sdk.openadsdk.core.si.oJ());
    }

    public static String cFZ() {
        try {
            if (!TextUtils.isEmpty(oJ)) {
                return oJ;
            }
            String oJ2 = com.bytedance.sdk.openadsdk.core.jFA.oJ("sdk_app_sha1", 259200000L);
            oJ = oJ2;
            if (oJ(oJ2)) {
                return oJ;
            }
            String oJ3 = com.bytedance.sdk.component.utils.tB.oJ(com.bytedance.sdk.openadsdk.core.si.oJ());
            oJ = oJ3;
            if (!oJ(oJ3)) {
                return "";
            }
            String upperCase = oJ.toUpperCase();
            oJ = upperCase;
            com.bytedance.sdk.openadsdk.core.jFA.oJ("sdk_app_sha1", upperCase);
            return oJ;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String ex() {
        return HyG.so();
    }

    public static String oJ() {
        return "open_news";
    }

    public static String tB() {
        return BuildConfig.VERSION_NAME;
    }

    public static String oJ(Context context) {
        return com.bytedance.sdk.openadsdk.core.BTZ.oJ(context);
    }

    private static boolean oJ(String str) {
        String[] split;
        if (TextUtils.isEmpty(str) || (split = str.split(":")) == null || split.length < 20) {
            return false;
        }
        for (String str2 : split) {
            if (!"00".equals(str2)) {
                return true;
            }
        }
        return false;
    }
}
