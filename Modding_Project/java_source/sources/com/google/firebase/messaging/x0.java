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
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SyncTask.java */
/* loaded from: classes5.dex */
public class x0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final long f21294a;

    /* renamed from: b  reason: collision with root package name */
    private final PowerManager.WakeLock f21295b;

    /* renamed from: c  reason: collision with root package name */
    private final FirebaseMessaging f21296c;
    @SuppressLint({"ThreadPoolCreation"})
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    ExecutorService f21297d = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));

    /* compiled from: SyncTask.java */
    @VisibleForTesting
    /* loaded from: classes5.dex */
    static class a extends BroadcastReceiver {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private x0 f21298a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Context f21299b;

        public a(x0 x0Var) {
            this.f21298a = x0Var;
        }

        public void a() {
            if (x0.d()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            x0 x0Var = this.f21298a;
            if (x0Var != null) {
                Context c10 = x0Var.c();
                this.f21299b = c10;
                c10.registerReceiver(this, intentFilter);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            x0 x0Var = this.f21298a;
            if (x0Var == null || !x0Var.e()) {
                return;
            }
            if (x0.d()) {
                Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
            }
            this.f21298a.f21296c.l(this.f21298a, 0L);
            Context context2 = this.f21299b;
            if (context2 != null) {
                context2.unregisterReceiver(this);
            }
            this.f21298a = null;
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    @VisibleForTesting
    public x0(FirebaseMessaging firebaseMessaging, long j10) {
        this.f21296c = firebaseMessaging;
        this.f21294a = j10;
        PowerManager.WakeLock newWakeLock = ((PowerManager) c().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f21295b = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    static boolean d() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    Context c() {
        return this.f21296c.m();
    }

    boolean e() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) c().getSystemService("connectivity");
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } else {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    boolean f() throws IOException {
        try {
            if (this.f21296c.k() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Token successfully retrieved");
                return true;
            } else {
                return true;
            }
        } catch (IOException e10) {
            if (c0.h(e10.getMessage())) {
                Log.w("FirebaseMessaging", "Token retrieval failed: " + e10.getMessage() + ". Will retry token retrieval");
                return false;
            } else if (e10.getMessage() == null) {
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            } else {
                throw e10;
            }
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"WakelockTimeout"})
    public void run() {
        if (t0.b().e(c())) {
            this.f21295b.acquire();
        }
        try {
            try {
                this.f21296c.G(true);
            } catch (IOException e10) {
                Log.e("FirebaseMessaging", "Topic sync or token retrieval failed on hard failure exceptions: " + e10.getMessage() + ". Won't retry the operation.");
                this.f21296c.G(false);
                if (!t0.b().e(c())) {
                    return;
                }
            }
            if (!this.f21296c.x()) {
                this.f21296c.G(false);
                if (t0.b().e(c())) {
                    this.f21295b.release();
                }
            } else if (t0.b().d(c()) && !e()) {
                new a(this).a();
                if (t0.b().e(c())) {
                    this.f21295b.release();
                }
            } else {
                if (f()) {
                    this.f21296c.G(false);
                } else {
                    this.f21296c.K(this.f21294a);
                }
                if (!t0.b().e(c())) {
                    return;
                }
                this.f21295b.release();
            }
        } catch (Throwable th2) {
            if (t0.b().e(c())) {
                this.f21295b.release();
            }
            throw th2;
        }
    }
}
