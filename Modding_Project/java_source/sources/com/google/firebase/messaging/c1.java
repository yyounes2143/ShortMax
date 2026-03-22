package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicsSyncTask.java */
/* loaded from: classes5.dex */
public class c1 implements Runnable {

    /* renamed from: f  reason: collision with root package name */
    private static final Object f21164f = new Object();
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")

    /* renamed from: g  reason: collision with root package name */
    private static Boolean f21165g;
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")

    /* renamed from: h  reason: collision with root package name */
    private static Boolean f21166h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f21167a;

    /* renamed from: b  reason: collision with root package name */
    private final h0 f21168b;

    /* renamed from: c  reason: collision with root package name */
    private final PowerManager.WakeLock f21169c;

    /* renamed from: d  reason: collision with root package name */
    private final b1 f21170d;

    /* renamed from: e  reason: collision with root package name */
    private final long f21171e;

    /* compiled from: TopicsSyncTask.java */
    @VisibleForTesting
    /* loaded from: classes5.dex */
    class a extends BroadcastReceiver {
        @Nullable
        @GuardedBy("this")

        /* renamed from: a  reason: collision with root package name */
        private c1 f21172a;

        public a(c1 c1Var) {
            this.f21172a = c1Var;
        }

        public void a() {
            if (c1.c()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            c1.this.f21167a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            try {
                c1 c1Var = this.f21172a;
                if (c1Var == null) {
                    return;
                }
                if (!c1Var.j()) {
                    return;
                }
                if (c1.c()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.f21172a.f21170d.l(this.f21172a, 0L);
                context.unregisterReceiver(this);
                this.f21172a = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c1(b1 b1Var, Context context, h0 h0Var, long j10) {
        this.f21170d = b1Var;
        this.f21167a = context;
        this.f21171e = j10;
        this.f21168b = h0Var;
        this.f21169c = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    static /* synthetic */ boolean c() {
        return k();
    }

    private static String f(String str) {
        return "Missing Permission: " + str + ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest";
    }

    private static boolean g(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f21164f) {
            try {
                Boolean bool = f21166h;
                if (bool == null) {
                    booleanValue = h(context, "android.permission.ACCESS_NETWORK_STATE", bool);
                } else {
                    booleanValue = bool.booleanValue();
                }
                Boolean valueOf = Boolean.valueOf(booleanValue);
                f21166h = valueOf;
                booleanValue2 = valueOf.booleanValue();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return booleanValue2;
    }

    private static boolean h(Context context, String str, Boolean bool) {
        boolean z10;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context.checkCallingOrSelfPermission(str) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", f(str));
        }
        return z10;
    }

    private static boolean i(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f21164f) {
            try {
                Boolean bool = f21165g;
                if (bool == null) {
                    booleanValue = h(context, "android.permission.WAKE_LOCK", bool);
                } else {
                    booleanValue = bool.booleanValue();
                }
                Boolean valueOf = Boolean.valueOf(booleanValue);
                f21165g = valueOf;
                booleanValue2 = valueOf.booleanValue();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return booleanValue2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean j() {
        NetworkInfo networkInfo;
        boolean z10;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f21167a.getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } else {
                networkInfo = null;
            }
            if (networkInfo != null) {
                if (networkInfo.isConnected()) {
                    z10 = true;
                }
            }
            z10 = false;
        } catch (Throwable th2) {
            throw th2;
        }
        return z10;
    }

    private static boolean k() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        PowerManager.WakeLock wakeLock;
        if (i(this.f21167a)) {
            this.f21169c.acquire(e.f21181a);
        }
        try {
            try {
                try {
                    this.f21170d.m(true);
                } catch (Throwable th2) {
                    if (i(this.f21167a)) {
                        try {
                            this.f21169c.release();
                        } catch (RuntimeException unused) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                        }
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                Log.e("FirebaseMessaging", "Failed to sync topics. Won't retry sync. " + e10.getMessage());
                this.f21170d.m(false);
                if (i(this.f21167a)) {
                    wakeLock = this.f21169c;
                } else {
                    return;
                }
            }
            if (!this.f21168b.g()) {
                this.f21170d.m(false);
                if (i(this.f21167a)) {
                    try {
                        this.f21169c.release();
                    } catch (RuntimeException unused2) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } else if (g(this.f21167a) && !j()) {
                new a(this).a();
                if (i(this.f21167a)) {
                    try {
                        this.f21169c.release();
                    } catch (RuntimeException unused3) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } else {
                if (this.f21170d.p()) {
                    this.f21170d.m(false);
                } else {
                    this.f21170d.q(this.f21171e);
                }
                if (i(this.f21167a)) {
                    wakeLock = this.f21169c;
                    wakeLock.release();
                }
            }
        } catch (RuntimeException unused4) {
            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
        }
    }
}
