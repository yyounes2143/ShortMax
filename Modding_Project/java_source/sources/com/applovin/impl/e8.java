package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class e8 {

    /* renamed from: f  reason: collision with root package name */
    private static final Set f7884f = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f7885a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7886b;

    /* renamed from: c  reason: collision with root package name */
    private Runnable f7887c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f7888d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Timer f7889e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends TimerTask {

        /* renamed from: com.applovin.impl.e8$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0110a implements AppLovinBroadcastManager.Receiver {
            C0110a() {
            }

            @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
            public void onReceive(Intent intent, Map map) {
                AppLovinBroadcastManager.unregisterReceiver(this);
                e8.this.c();
            }
        }

        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!e8.this.f7886b.n0().isApplicationPaused() || e8.this.f7885a) {
                e8.this.c();
            } else {
                AppLovinBroadcastManager.registerReceiver(new C0110a(), new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
        }
    }

    private e8(long j10, boolean z10, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        Timer timer = new Timer();
        this.f7889e = timer;
        if (j10 >= 0) {
            if (kVar != null) {
                if (runnable != null) {
                    this.f7885a = z10;
                    this.f7886b = kVar;
                    this.f7887c = runnable;
                    f7884f.add(this);
                    timer.schedule(b(), j10);
                    return;
                }
                throw new IllegalArgumentException("Cannot create wall clock timer. Runnable is null.");
            }
            throw new IllegalArgumentException("Cannot create wall clock timer. Sdk is null");
        }
        throw new IllegalArgumentException("Cannot create wall clock timer. Invalid timer length: " + j10);
    }

    public static e8 a(long j10, boolean z10, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        return new e8(j10, z10, kVar, runnable);
    }

    private TimerTask b() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Runnable runnable = this.f7887c;
        if (runnable != null) {
            runnable.run();
            a();
        }
    }

    public void a() {
        synchronized (this.f7888d) {
            this.f7889e.cancel();
            this.f7887c = null;
            f7884f.remove(this);
        }
    }
}
