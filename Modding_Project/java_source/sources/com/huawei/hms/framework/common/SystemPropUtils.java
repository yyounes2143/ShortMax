package com.huawei.hms.framework.common;

import android.text.TextUtils;
/* loaded from: classes5.dex */
public class SystemPropUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f22149a = "SystemPropUtils";

    public static String getProperty(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                Class<?> cls = Class.forName(str3);
                return (String) cls.getMethod(str, String.class, String.class).invoke(cls, str2, str4);
            } catch (Exception e10) {
                Logger.e(f22149a, "getProperty catch exception: ", e10);
                return str4;
            }
        }
        Logger.w(f22149a, "reflect class for method has exception.");
        return str4;
    }
}
