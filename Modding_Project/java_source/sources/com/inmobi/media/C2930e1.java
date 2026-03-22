package com.inmobi.media;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.e1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2930e1 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f24616a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f24617b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f24618c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f24619d;

    /* renamed from: e  reason: collision with root package name */
    public static final HashMap f24620e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    public static final byte f24621f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    static {
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        PackageInfo packageInfo;
        long longVersionCode;
        String valueOf;
        byte b10 = 2;
        f24621f = (byte) 2;
        Context d10 = Uc.d();
        String str = null;
        if (d10 != null) {
            try {
                packageManager = d10.getPackageManager();
            } catch (Exception unused) {
            }
        } else {
            packageManager = null;
        }
        if (packageManager != null) {
            applicationInfo = packageManager.getApplicationInfo(d10.getPackageName(), 128);
        } else {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            String str2 = applicationInfo.packageName;
            f24616a = str2;
            f24619d = applicationInfo.loadLabel(packageManager).toString();
            Intrinsics.checkNotNull(str2);
            f24617b = packageManager.getInstallerPackageName(str2);
        }
        if (packageManager != null) {
            packageInfo = packageManager.getPackageInfo(d10.getPackageName(), 128);
        } else {
            packageInfo = null;
        }
        if (packageInfo != null && ((str = packageInfo.versionName) == null || str.length() == 0)) {
            if (Build.VERSION.SDK_INT >= 28) {
                longVersionCode = packageInfo.getLongVersionCode();
                valueOf = String.valueOf(longVersionCode);
            } else {
                valueOf = String.valueOf(packageInfo.versionCode);
            }
            str = valueOf;
        }
        if (B2.a(str)) {
            f24618c = str;
        }
        try {
            if (L3.f23796a.H()) {
                b10 = !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            } else {
                b10 = 0;
            }
        } catch (Error | Exception unused2) {
        }
        f24621f = b10;
        String str3 = f24616a;
        if (str3 != null) {
            f24620e.put("u-appbid", str3);
        }
        String str4 = f24619d;
        if (str4 != null) {
            f24620e.put("u-appdnm", str4);
        }
        String str5 = f24618c;
        if (str5 != null) {
            f24620e.put("u-appver", str5);
        }
        f24620e.put("u-appsecure", String.valueOf((int) b10));
    }
}
