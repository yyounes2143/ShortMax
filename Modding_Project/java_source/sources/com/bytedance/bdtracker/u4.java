package com.bytedance.bdtracker;

import android.content.Context;
import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class u4 {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, Boolean> f12460a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public static final Map<String, PackageInfo> f12461b = new ConcurrentHashMap();

    @Nullable
    public static PackageInfo a(Context context, String str, int i10) {
        PackageInfo packageInfo;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        String str2 = i10 + ":" + context.hashCode() + "@" + str;
        Map<String, PackageInfo> map = f12461b;
        synchronized (map) {
            if (!map.containsKey(str2)) {
                try {
                    map.put(str2, context.getPackageManager().getPackageInfo(str, i10));
                } catch (Throwable unused) {
                }
            }
            packageInfo = f12461b.get(str2);
        }
        return packageInfo;
    }

    @Nullable
    public static String b(Context context) {
        PackageInfo a10 = a(context, context.getPackageName(), 0);
        if (a10 != null) {
            return a10.versionName;
        }
        return "";
    }

    public static boolean a(Context context, String str) {
        boolean equals;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        String str2 = context.hashCode() + "@" + str;
        Map<String, Boolean> map = f12460a;
        synchronized (map) {
            try {
                if (!map.containsKey(str2)) {
                    map.put(str2, Boolean.valueOf(context.getPackageManager().getPackageInfo(str, 16384) != null));
                }
                equals = Boolean.TRUE.equals(f12460a.get(str2));
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return equals;
    }

    public static int a(Context context) {
        PackageInfo a10 = a(context, context.getPackageName(), 0);
        if (a10 != null) {
            return a10.versionCode;
        }
        return 0;
    }
}
