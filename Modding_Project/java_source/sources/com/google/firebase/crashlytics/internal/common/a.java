package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;
/* compiled from: AppData.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f20674a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20675b;

    /* renamed from: c  reason: collision with root package name */
    public final List<f> f20676c;

    /* renamed from: d  reason: collision with root package name */
    public final String f20677d;

    /* renamed from: e  reason: collision with root package name */
    public final String f20678e;

    /* renamed from: f  reason: collision with root package name */
    public final String f20679f;

    /* renamed from: g  reason: collision with root package name */
    public final String f20680g;

    /* renamed from: h  reason: collision with root package name */
    public final z7.f f20681h;

    public a(String str, String str2, List<f> list, String str3, String str4, String str5, String str6, z7.f fVar) {
        this.f20674a = str;
        this.f20675b = str2;
        this.f20676c = list;
        this.f20677d = str3;
        this.f20678e = str4;
        this.f20679f = str5;
        this.f20680g = str6;
        this.f20681h = fVar;
    }

    public static a a(Context context, i0 i0Var, String str, String str2, List<f> list, z7.f fVar) throws PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        String g10 = i0Var.g();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String b10 = b(packageInfo);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new a(str, str2, list, g10, packageName, b10, str3, fVar);
    }

    private static String b(PackageInfo packageInfo) {
        long longVersionCode;
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return Long.toString(longVersionCode);
        }
        return Integer.toString(packageInfo.versionCode);
    }
}
