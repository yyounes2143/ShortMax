package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.d7;
import com.applovin.impl.o3;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class f implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private d7 f9644a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f9645b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f9646c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private boolean f9647d;

    /* renamed from: e  reason: collision with root package name */
    private final k f9648e;

    /* renamed from: f  reason: collision with root package name */
    private final WeakReference f9649f;

    /* renamed from: g  reason: collision with root package name */
    private long f9650g;

    /* loaded from: classes2.dex */
    public interface a {
        void onAdRefresh();
    }

    public f(k kVar, a aVar) {
        this.f9649f = new WeakReference(aVar);
        this.f9648e = kVar;
    }

    private void e() {
        if (((Boolean) this.f9648e.a(o3.f9144u7)).booleanValue()) {
            k();
        }
    }

    private void f() {
        if (((Boolean) this.f9648e.a(o3.f9144u7)).booleanValue()) {
            synchronized (this.f9645b) {
                try {
                    if (this.f9647d) {
                        this.f9648e.O();
                        if (o.a()) {
                            this.f9648e.O().a("AdRefreshManager", "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                        }
                    } else if (this.f9648e.n0().isApplicationPaused()) {
                        this.f9648e.O();
                        if (o.a()) {
                            this.f9648e.O().a("AdRefreshManager", "Waiting for the application to enter foreground to resume the timer.");
                        }
                    } else {
                        d7 d7Var = this.f9644a;
                        if (d7Var != null) {
                            d7Var.e();
                        }
                    }
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        l();
        a aVar = (a) this.f9649f.get();
        if (aVar != null) {
            aVar.onAdRefresh();
        }
    }

    private void k() {
        synchronized (this.f9645b) {
            try {
                d7 d7Var = this.f9644a;
                if (d7Var != null) {
                    d7Var.d();
                } else {
                    this.f9648e.O();
                    if (o.a()) {
                        this.f9648e.O().a("AdRefreshManager", "An ad load is in progress. Will pause refresh once the ad finishes loading.");
                    }
                    this.f9646c.set(true);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void l() {
        synchronized (this.f9645b) {
            try {
                this.f9644a = null;
                if (!((Boolean) this.f9648e.a(o3.f9145v7)).booleanValue()) {
                    AppLovinBroadcastManager.unregisterReceiver(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void n() {
        synchronized (this.f9645b) {
            try {
                d7 d7Var = this.f9644a;
                if (d7Var != null) {
                    d7Var.e();
                } else {
                    this.f9646c.set(false);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public long b() {
        long j10;
        synchronized (this.f9645b) {
            try {
                d7 d7Var = this.f9644a;
                if (d7Var != null) {
                    j10 = d7Var.c();
                } else {
                    j10 = -1;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    public void c() {
        if (((Boolean) this.f9648e.a(o3.f9143t7)).booleanValue()) {
            k();
        }
    }

    public void d() {
        boolean z10;
        a aVar;
        if (((Boolean) this.f9648e.a(o3.f9143t7)).booleanValue()) {
            synchronized (this.f9645b) {
                try {
                    if (this.f9647d) {
                        this.f9648e.O();
                        if (o.a()) {
                            this.f9648e.O().a("AdRefreshManager", "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                        }
                    } else if (this.f9648e.I().c()) {
                        this.f9648e.O();
                        if (o.a()) {
                            this.f9648e.O().a("AdRefreshManager", "Waiting for the full screen ad to be dismissed to resume the timer.");
                        }
                    } else {
                        if (this.f9644a != null) {
                            long b10 = this.f9650g - b();
                            long longValue = ((Long) this.f9648e.a(o3.f9141s7)).longValue();
                            if (longValue >= 0 && b10 > longValue) {
                                a();
                                z10 = true;
                                if (!z10 && (aVar = (a) this.f9649f.get()) != null) {
                                    aVar.onAdRefresh();
                                    return;
                                }
                            }
                            this.f9644a.e();
                        }
                        z10 = false;
                        if (!z10) {
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public boolean g() {
        return this.f9647d;
    }

    public boolean h() {
        boolean z10;
        synchronized (this.f9645b) {
            if (this.f9644a != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public void j() {
        synchronized (this.f9645b) {
            k();
            this.f9647d = true;
        }
    }

    public void m() {
        synchronized (this.f9645b) {
            n();
            this.f9647d = false;
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            c();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            d();
        } else if ("com.applovin.fullscreen_ad_displayed".equals(action)) {
            e();
        } else if ("com.applovin.fullscreen_ad_hidden".equals(action)) {
            f();
        }
    }

    public void a(long j10) {
        synchronized (this.f9645b) {
            try {
                a();
                this.f9650g = j10;
                this.f9644a = d7.a(j10, this.f9648e, new Runnable() { // from class: com.applovin.impl.sdk.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.this.i();
                    }
                });
                if (!((Boolean) this.f9648e.a(o3.f9145v7)).booleanValue()) {
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_displayed"));
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_hidden"));
                }
                if (((Boolean) this.f9648e.a(o3.f9144u7)).booleanValue() && (this.f9648e.I().c() || this.f9648e.n0().isApplicationPaused())) {
                    this.f9644a.d();
                }
                if (this.f9646c.compareAndSet(true, false) && ((Boolean) this.f9648e.a(o3.f9146w7)).booleanValue()) {
                    this.f9648e.O();
                    if (o.a()) {
                        this.f9648e.O().a("AdRefreshManager", "Pausing refresh for a previous request.");
                    }
                    this.f9644a.d();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a() {
        synchronized (this.f9645b) {
            try {
                d7 d7Var = this.f9644a;
                if (d7Var != null) {
                    d7Var.a();
                    l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
