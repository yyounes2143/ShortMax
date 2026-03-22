package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.applovin.impl.k7;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.v4;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class h implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final k f9679a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference f9680b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f9681c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f9682d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicLong f9683e = new AtomicLong(0);

    /* renamed from: f  reason: collision with root package name */
    private long f9684f;

    /* renamed from: g  reason: collision with root package name */
    private long f9685g;

    /* renamed from: h  reason: collision with root package name */
    private long f9686h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum b {
        INELIGIBLE,
        IDLE,
        MONITORING
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            if (h.this.f9680b.get() != b.MONITORING) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis() - h.this.f9683e.get();
            if (currentTimeMillis >= 0 && currentTimeMillis <= h.this.f9684f) {
                h.this.f9682d.postDelayed(this, h.this.f9686h);
                return;
            }
            h.this.f9680b.set(b.INELIGIBLE);
            AppLovinBroadcastManager.unregisterReceiver(h.this);
            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
            if (stackTrace.length > 0) {
                StackTraceElement stackTraceElement = stackTrace[0];
                str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            } else {
                str = "None";
            }
            long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - k.n());
            HashMap hashMap = new HashMap(3);
            hashMap.put("top_main_method", str);
            if (h.this.f9679a.A0()) {
                str2 = "non_first_session";
            } else {
                str2 = "first_session";
            }
            hashMap.put("source", str2);
            hashMap.put("details", "seconds_since_app_launch=" + seconds);
            h.this.f9679a.E().d(com.applovin.impl.c2.f7665r0, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        private d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h.this.f9680b.get() != b.MONITORING) {
                return;
            }
            h.this.f9683e.set(System.currentTimeMillis());
            h.this.f9681c.postDelayed(this, h.this.f9685g);
        }
    }

    public h(k kVar) {
        b bVar;
        this.f9679a = kVar;
        if (!k7.c(kVar)) {
            bVar = b.IDLE;
        } else {
            bVar = b.INELIGIBLE;
        }
        this.f9680b = new AtomicReference(bVar);
        this.f9681c = new Handler(k.o().getMainLooper());
        HandlerThread handlerThread = new HandlerThread("AppLovinSdk:anr_detector");
        handlerThread.start();
        this.f9682d = new Handler(handlerThread.getLooper());
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            b();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            c();
        }
    }

    private void b() {
        if (androidx.compose.animation.core.a.a(this.f9680b, b.MONITORING, b.IDLE)) {
            this.f9681c.removeCallbacksAndMessages(null);
            this.f9682d.removeCallbacksAndMessages(null);
        }
    }

    private void c() {
        if (!(((Boolean) this.f9679a.a(v4.T5)).booleanValue() && this.f9679a.n0().getCurrentApplicationState() == SessionTracker.e.PAUSED) && androidx.compose.animation.core.a.a(this.f9680b, b.IDLE, b.MONITORING)) {
            this.f9681c.post(new d());
            this.f9682d.postDelayed(new c(), this.f9686h / 2);
        }
    }

    private void d() {
        AppLovinBroadcastManager.unregisterReceiver(this);
        this.f9684f = ((Long) this.f9679a.a(v4.Q5)).longValue();
        this.f9685g = ((Long) this.f9679a.a(v4.R5)).longValue();
        this.f9686h = ((Long) this.f9679a.a(v4.S5)).longValue();
        if (((Boolean) this.f9679a.a(v4.T5)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
        }
    }

    public void a() {
        if (this.f9680b.get() == b.INELIGIBLE) {
            return;
        }
        if (((Boolean) this.f9679a.a(v4.P5)).booleanValue()) {
            d();
            c();
            return;
        }
        b();
    }
}
