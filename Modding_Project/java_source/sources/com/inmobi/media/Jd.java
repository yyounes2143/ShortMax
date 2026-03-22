package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public final class Jd {

    /* renamed from: a  reason: collision with root package name */
    public static final ConcurrentHashMap f23762a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public static Id f23763b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f23764c;

    public static void a() {
        Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
        b("android.intent.action.ACTION_SHUTDOWN");
        b("android.intent.action.REBOOT");
        L3 l32 = L3.f23796a;
        if (l32.H()) {
            b("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        b("android.intent.action.USER_PRESENT");
        if (l32.x()) {
            b("SYSTEM_CONNECTIVITY_CHANGE");
        } else {
            b("android.net.conn.CONNECTIVITY_CHANGE");
        }
        f23762a.clear();
    }

    public static void b() {
        Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
        a("android.intent.action.ACTION_SHUTDOWN");
        a("android.intent.action.REBOOT");
        L3 l32 = L3.f23796a;
        if (l32.H()) {
            a("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        a("android.intent.action.USER_PRESENT");
        if (l32.x()) {
            a("SYSTEM_CONNECTIVITY_CHANGE");
        } else {
            a("android.net.conn.CONNECTIVITY_CHANGE");
        }
    }

    public static void b(String str) {
        Context d10 = Uc.d();
        if (d10 != null) {
            if (L3.f23796a.x() && Intrinsics.areEqual("SYSTEM_CONNECTIVITY_CHANGE", str) && f23763b != null) {
                Object systemService = d10.getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                if (connectivityManager != null) {
                    Id id2 = f23763b;
                    Intrinsics.checkNotNull(id2);
                    connectivityManager.unregisterNetworkCallback(id2);
                    f23763b = null;
                    return;
                }
                return;
            }
            ConcurrentHashMap concurrentHashMap = f23762a;
            if (concurrentHashMap.get(str) != null) {
                d10.unregisterReceiver((BroadcastReceiver) concurrentHashMap.get(str));
                concurrentHashMap.remove(str);
            }
        }
    }

    public static void a(String str) {
        Context d10 = Uc.d();
        if (d10 != null) {
            if (L3.f23796a.x() && Intrinsics.areEqual("SYSTEM_CONNECTIVITY_CHANGE", str)) {
                Object systemService = d10.getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                if (connectivityManager != null) {
                    Id id2 = new Id();
                    f23763b = id2;
                    connectivityManager.registerDefaultNetworkCallback(id2);
                    return;
                }
                return;
            }
            ConcurrentHashMap concurrentHashMap = f23762a;
            if (concurrentHashMap.get(str) == null) {
                Hd hd2 = new Hd();
                concurrentHashMap.put(str, hd2);
                B2.a(d10, hd2, new IntentFilter(str));
            }
        }
    }

    public static final void a(Context context, Intent intent) {
        Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
        if (intent.getAction() != null) {
            try {
                Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
                intent.getAction();
                boolean z10 = false;
                if (Intrinsics.areEqual("android.net.conn.CONNECTIVITY_CHANGE", intent.getAction())) {
                    Object systemService = context.getSystemService("connectivity");
                    ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                    if (connectivityManager != null) {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo == null || activeNetworkInfo.isConnected() != f23764c) {
                            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                                z10 = true;
                            }
                            f23764c = z10;
                            Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
                            Uc.f().b(new C2914d2(10, 4, f23764c ? "available" : "lost"));
                        }
                    }
                } else if (StringsKt.G("android.os.action.DEVICE_IDLE_MODE_CHANGED", intent.getAction(), true)) {
                    Object systemService2 = context.getSystemService("power");
                    PowerManager powerManager = systemService2 instanceof PowerManager ? (PowerManager) systemService2 : null;
                    if (powerManager != null && L3.f23796a.H()) {
                        z10 = powerManager.isDeviceIdleMode();
                    }
                    if (z10 == f23764c || !L3.f23796a.H()) {
                        return;
                    }
                    Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
                    Uc.f().b(new C2914d2(11, 4, String.valueOf(z10)));
                } else if (Intrinsics.areEqual("android.intent.action.USER_PRESENT", intent.getAction())) {
                    Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
                    Uc.f().b(new C2914d2(100, 6, (String) null));
                } else if (Intrinsics.areEqual("android.intent.action.ACTION_SHUTDOWN", intent.getAction())) {
                    Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
                    Uc.f().b(new C2914d2(1, 6, (String) null));
                    for (Map.Entry entry : f23762a.entrySet()) {
                        b((String) entry.getKey());
                    }
                    f23762a.clear();
                    f23763b = null;
                } else if (Intrinsics.areEqual("android.intent.action.REBOOT", intent.getAction())) {
                    Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
                    Uc.f().b(new C2914d2(2, 6, (String) null));
                    for (Map.Entry entry2 : f23762a.entrySet()) {
                        b((String) entry2.getKey());
                    }
                    f23762a.clear();
                    f23763b = null;
                } else {
                    Intrinsics.checkNotNullExpressionValue("Jd", "TAG");
                    Uc.f().b(new C2914d2(99, 4, intent.getAction()));
                }
            } catch (Exception unused) {
            }
        }
    }
}
