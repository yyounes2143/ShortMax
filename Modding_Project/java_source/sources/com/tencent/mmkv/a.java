package com.tencent.mmkv;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.lang.reflect.Method;
import java.util.List;
/* compiled from: MMKVProcessUtil.java */
/* loaded from: classes7.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f49492a = "";

    public static String a(@NonNull Context context) {
        if (!TextUtils.isEmpty(f49492a)) {
            return f49492a;
        }
        String d10 = d();
        f49492a = d10;
        if (!TextUtils.isEmpty(d10)) {
            return f49492a;
        }
        String c10 = c();
        f49492a = c10;
        if (!TextUtils.isEmpty(c10)) {
            return f49492a;
        }
        String b10 = b(context);
        f49492a = b10;
        return b10;
    }

    private static String b(@NonNull Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        }
        return "";
    }

    @NonNull
    private static String c() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (!(invoke instanceof String)) {
                return "";
            }
            return (String) invoke;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "";
        }
    }

    @NonNull
    private static String d() {
        String processName;
        if (Build.VERSION.SDK_INT >= 28) {
            processName = Application.getProcessName();
            return processName;
        }
        return "";
    }
}
