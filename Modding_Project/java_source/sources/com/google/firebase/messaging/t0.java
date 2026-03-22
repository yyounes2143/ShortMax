package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayDeque;
import java.util.Queue;
/* compiled from: ServiceStarter.java */
@KeepForSdk
/* loaded from: classes5.dex */
public class t0 {

    /* renamed from: e  reason: collision with root package name */
    private static t0 f21270e;
    @Nullable
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private String f21271a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f21272b = null;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f21273c = null;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<Intent> f21274d = new ArrayDeque();

    private t0() {
    }

    private int a(Context context, Intent intent) {
        ComponentName startService;
        String f10 = f(context, intent);
        if (f10 != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Restricting intent to a specific service: " + f10);
            }
            intent.setClassName(context.getPackageName(), f10);
        }
        try {
            if (e(context)) {
                startService = e1.h(context, intent);
            } else {
                startService = context.startService(intent);
                Log.d("FirebaseMessaging", "Missing wake lock permission, service start may be delayed");
            }
            if (startService == null) {
                Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
                return 404;
            }
            return -1;
        } catch (IllegalStateException e10) {
            Log.e("FirebaseMessaging", "Failed to start service while in background: " + e10);
            return 402;
        } catch (SecurityException e11) {
            Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e11);
            return 401;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized t0 b() {
        t0 t0Var;
        synchronized (t0.class) {
            try {
                if (f21270e == null) {
                    f21270e = new t0();
                }
                t0Var = f21270e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return t0Var;
    }

    @Nullable
    private synchronized String f(Context context, Intent intent) {
        ServiceInfo serviceInfo;
        String str;
        try {
            String str2 = this.f21271a;
            if (str2 != null) {
                return str2;
            }
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveService != null && (serviceInfo = resolveService.serviceInfo) != null) {
                if (context.getPackageName().equals(serviceInfo.packageName) && (str = serviceInfo.name) != null) {
                    if (str.startsWith(".")) {
                        this.f21271a = context.getPackageName() + serviceInfo.name;
                    } else {
                        this.f21271a = serviceInfo.name;
                    }
                    return this.f21271a;
                }
                Log.e("FirebaseMessaging", "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + serviceInfo.packageName + DomExceptionUtils.SEPARATOR + serviceInfo.name);
                return null;
            }
            Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public Intent c() {
        return this.f21274d.poll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(Context context) {
        boolean z10;
        if (this.f21273c == null) {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f21273c = Boolean.valueOf(z10);
        }
        if (!this.f21272b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f21273c.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(Context context) {
        boolean z10;
        if (this.f21272b == null) {
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f21272b = Boolean.valueOf(z10);
        }
        if (!this.f21272b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f21272b.booleanValue();
    }

    @MainThread
    public int g(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Starting service");
        }
        this.f21274d.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return a(context, intent2);
    }
}
