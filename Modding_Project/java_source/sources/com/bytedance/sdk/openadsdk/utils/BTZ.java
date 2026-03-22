package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
/* loaded from: classes3.dex */
public class BTZ {
    private static String ZYk(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk(null, str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static void oJ(String str) {
        oJ("any_door_id", str);
    }

    public static String oJ() {
        return ZYk("any_door_id", null);
    }

    private static void oJ(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ((String) null, str, str2);
        } catch (Throwable unused) {
        }
    }
}
