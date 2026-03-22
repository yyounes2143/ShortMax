package com.huawei.hms.framework.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class PackageManagerCompat {

    /* renamed from: a  reason: collision with root package name */
    private static String f22142a = "";

    private static Bundle a(Context context) {
        Bundle bundle = Bundle.EMPTY;
        if (ContextHolder.getAppContext() != null) {
            context = ContextHolder.getAppContext();
        }
        if (context == null) {
            return bundle;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return bundle;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                Bundle bundle2 = applicationInfo.metaData;
                if (bundle2 != null) {
                    return bundle2;
                }
                return bundle;
            }
            return bundle;
        } catch (PackageManager.NameNotFoundException | RuntimeException e10) {
            Logger.w("PackageUtils", "NameNotFoundException:", e10);
            return bundle;
        }
    }

    private static Bundle b(Context context) {
        if (ContextHolder.getKitContext() != null) {
            context = ContextHolder.getKitContext();
        }
        if (context == null) {
            Logger.v("PackageUtils", "the kitContext is null");
            return Bundle.EMPTY;
        } else if (context.getApplicationInfo() == null) {
            Logger.v("PackageUtils", "the kit applicationInfo is null");
            return Bundle.EMPTY;
        } else {
            Logger.i("PackageUtils", "kitContext: " + context.getPackageName());
            Bundle bundle = context.getApplicationInfo().metaData;
            if (bundle == null) {
                return Bundle.EMPTY;
            }
            return bundle;
        }
    }

    private static Bundle c(Context context) {
        Bundle b10 = b(context);
        if (b10 == null || b10.isEmpty()) {
            return a(context);
        }
        return b10;
    }

    public static String getAppPackageName(Context context) {
        if (ContextHolder.getAppContext() != null) {
            context = ContextHolder.getAppContext();
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return "";
        }
        try {
            return packageManager.getPackageInfo(context.getPackageName(), 16384).packageName;
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            Logger.w("PackageUtils", "Failed to get Package managers Package Info");
            return "";
        }
    }

    public static String getAppVersion(Context context) {
        if (!TextUtils.isEmpty(f22142a)) {
            return f22142a;
        }
        if (ContextHolder.getAppContext() != null) {
            context = ContextHolder.getAppContext();
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return f22142a;
        }
        try {
            f22142a = String.valueOf(packageManager.getPackageInfo(context.getPackageName(), 16384).versionCode);
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            Logger.w("PackageUtils", "Failed to get Package managers Package Info");
        }
        return f22142a;
    }

    public static String getMetaDataFromApp(Context context, String str, String str2) {
        Bundle a10 = a(context);
        if (a10 != null) {
            return a10.getString(str, str2);
        }
        return str2;
    }

    public static String getMetaDataFromKit(Context context, String str, String str2) {
        try {
            Bundle b10 = b(context);
            if (b10 == null) {
                return str2;
            }
            return b10.getString(str, str2);
        } catch (RuntimeException unused) {
            Logger.v("PackageUtils", "the kit metaData is runtimeException");
            return str2;
        }
    }

    public static String getMetaDataFromKitOrApp(Context context, String str, String str2) {
        return c(context).getString(str, str2);
    }

    public static Map<String, String> getMetaDataMapFromKitOrApp(Context context, String str) {
        HashMap hashMap = new HashMap();
        Bundle c10 = c(context);
        for (String str2 : c10.keySet()) {
            if (str2.startsWith(str)) {
                String string = c10.getString(str2);
                if (!TextUtils.isEmpty(string)) {
                    hashMap.put(str2.substring(str.length()), string);
                }
            }
        }
        return hashMap;
    }
}
