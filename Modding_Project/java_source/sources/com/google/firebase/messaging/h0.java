package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Metadata.java */
/* loaded from: classes5.dex */
public class h0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f21198a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private String f21199b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private String f21200c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private int f21201d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private int f21202e = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(Context context) {
        this.f21198a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(com.google.firebase.f fVar) {
        String d10 = fVar.p().d();
        if (d10 != null) {
            return d10;
        }
        String c10 = fVar.p().c();
        if (!c10.startsWith("1:")) {
            return c10;
        }
        String[] split = c10.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private PackageInfo f(String str) {
        try {
            return this.f21198a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("FirebaseMessaging", "Failed to find package " + e10);
            return null;
        }
    }

    private synchronized void h() {
        PackageInfo f10 = f(this.f21198a.getPackageName());
        if (f10 != null) {
            this.f21199b = Integer.toString(f10.versionCode);
            this.f21200c = f10.versionName;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String a() {
        try {
            if (this.f21199b == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f21199b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String b() {
        try {
            if (this.f21200c == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f21200c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int d() {
        PackageInfo f10;
        try {
            if (this.f21201d == 0 && (f10 = f("com.google.android.gms")) != null) {
                this.f21201d = f10.versionCode;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f21201d;
    }

    synchronized int e() {
        int i10 = this.f21202e;
        if (i10 != 0) {
            return i10;
        }
        PackageManager packageManager = this.f21198a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!PlatformVersion.isAtLeastO()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                this.f21202e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
            this.f21202e = 2;
            return 2;
        }
        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.isAtLeastO()) {
            this.f21202e = 2;
        } else {
            this.f21202e = 1;
        }
        return this.f21202e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        if (e() != 0) {
            return true;
        }
        return false;
    }
}
