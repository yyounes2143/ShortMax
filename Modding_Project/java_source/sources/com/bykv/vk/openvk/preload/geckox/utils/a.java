package com.bykv.vk.openvk.preload.geckox.utils;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.lang.reflect.Method;
/* compiled from: AppUtils.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f11472a;

    public static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e10) {
            GeckoLogger.w("gecko-debug-tag", "getVersion:", e10);
            return "null";
        }
    }

    public static String b(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
            if (applicationInfo == null) {
                return "";
            }
            return applicationInfo.loadLabel(packageManager).toString();
        } catch (Throwable th2) {
            GeckoLogger.w("gecko-debug-tag", "getApplicationName:", th2);
            return "";
        }
    }

    private static String c() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (!(invoke instanceof String)) {
                return null;
            }
            return (String) invoke;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public static String a() {
        if (!TextUtils.isEmpty(f11472a)) {
            return f11472a;
        }
        String b10 = b();
        f11472a = b10;
        if (!TextUtils.isEmpty(b10)) {
            return f11472a;
        }
        String c10 = c();
        f11472a = c10;
        if (!TextUtils.isEmpty(c10)) {
            return f11472a;
        }
        return f11472a;
    }

    private static String b() {
        String processName;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                processName = Application.getProcessName();
                return processName;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static void a(Throwable th2) {
        GeckoLogger.w("gecko-debug-tag", "throwIfDebug:", th2);
    }
}
