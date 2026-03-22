package com.bytedance.sdk.component.utils;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.lang.reflect.Method;
/* loaded from: classes3.dex */
public class oq {
    private static String oJ;

    public static String ZYk(Context context) {
        if (!TextUtils.isEmpty(oJ)) {
            return oJ;
        }
        String oJ2 = oJ();
        oJ = oJ2;
        if (!TextUtils.isEmpty(oJ2)) {
            return oJ;
        }
        String ZYk = ZYk();
        oJ = ZYk;
        if (!TextUtils.isEmpty(ZYk)) {
            return oJ;
        }
        return oJ;
    }

    public static boolean oJ(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return false;
        }
        return TextUtils.equals(context.getApplicationContext().getPackageName(), ZYk(context));
    }

    private static String oJ() {
        String processName;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                processName = Application.getProcessName();
                return processName;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private static String ZYk() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (invoke instanceof String) {
                return (String) invoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
