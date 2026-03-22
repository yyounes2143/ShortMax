package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.applovin.impl.k7;
import com.applovin.impl.v4;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public class SessionTracker {
    public static final String ACTION_APPLICATION_PAUSED = "com.applovin.application_paused";
    public static final String ACTION_APPLICATION_RESUMED = "com.applovin.application_resumed";

    /* renamed from: a  reason: collision with root package name */
    final k f9516a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9517b = UUID.randomUUID().toString();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f9518c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f9519d = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private final AtomicInteger f9520e = new AtomicInteger();

    /* renamed from: f  reason: collision with root package name */
    private final AtomicLong f9521f = new AtomicLong();

    /* renamed from: g  reason: collision with root package name */
    private final AtomicLong f9522g = new AtomicLong();

    /* renamed from: h  reason: collision with root package name */
    private Date f9523h;

    /* renamed from: i  reason: collision with root package name */
    private Date f9524i;

    /* loaded from: classes2.dex */
    class a extends com.applovin.impl.b {
        a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            SessionTracker.this.b();
        }
    }

    /* loaded from: classes2.dex */
    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                if (k7.g()) {
                    SessionTracker.this.b();
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                SessionTracker.this.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9528a;

        static {
            int[] iArr = new int[e.values().length];
            f9528a = iArr;
            try {
                iArr[e.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9528a[e.PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9528a[e.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum e {
        STARTED("started"),
        PAUSED("paused"),
        RESUMED("resumed");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f9533a;

        e(String str) {
            this.f9533a = str;
        }

        public String b() {
            return this.f9533a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTracker(k kVar) {
        this.f9516a = kVar;
        Application application = (Application) k.o();
        application.registerActivityLifecycleCallbacks(new a());
        application.registerComponentCallbacks(new b());
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new c(), intentFilter);
    }

    private void d() {
        this.f9516a.O();
        if (o.a()) {
            this.f9516a.O().a("SessionTracker", "Application Resumed");
        }
        this.f9522g.set(System.currentTimeMillis());
        boolean booleanValue = ((Boolean) this.f9516a.a(v4.f10341r3)).booleanValue();
        long longValue = ((Long) this.f9516a.a(v4.f10349s3)).longValue();
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_RESUMED), null);
        if (this.f9518c.getAndSet(false)) {
            return;
        }
        long millis = TimeUnit.MINUTES.toMillis(longValue);
        if (this.f9524i == null || System.currentTimeMillis() - this.f9524i.getTime() >= millis) {
            this.f9516a.G().trackEvent("resumed");
            if (booleanValue) {
                this.f9524i = new Date();
            }
        }
        if (!booleanValue) {
            this.f9524i = new Date();
        }
    }

    public long getAppEnteredBackgroundTimeMillis() {
        return this.f9521f.get();
    }

    public long getAppEnteredForegroundTimeMillis() {
        return this.f9522g.get();
    }

    public e getCurrentApplicationState() {
        if (this.f9519d.get()) {
            return e.PAUSED;
        }
        if (this.f9521f.get() != 0) {
            return e.RESUMED;
        }
        return e.STARTED;
    }

    public long getCurrentApplicationStateDurationMillis() {
        long n10;
        long currentTimeMillis = System.currentTimeMillis();
        int i10 = d.f9528a[getCurrentApplicationState().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return -1L;
                }
                n10 = this.f9522g.get();
            } else {
                n10 = this.f9521f.get();
            }
        } else {
            n10 = k.n();
        }
        return currentTimeMillis - n10;
    }

    public int getLastTrimMemoryLevel() {
        return this.f9520e.get();
    }

    public String getSessionId() {
        return this.f9517b;
    }

    public boolean isApplicationPaused() {
        return this.f9519d.get();
    }

    public void pauseForClick() {
        this.f9518c.set(true);
    }

    public void resumeForClick() {
        this.f9518c.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f9519d.compareAndSet(false, true)) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f9519d.compareAndSet(true, false)) {
            d();
        }
    }

    private void c() {
        this.f9516a.O();
        if (o.a()) {
            this.f9516a.O().a("SessionTracker", "Application Paused");
        }
        this.f9521f.set(System.currentTimeMillis());
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_PAUSED), null);
        if (this.f9518c.get()) {
            return;
        }
        boolean booleanValue = ((Boolean) this.f9516a.a(v4.f10341r3)).booleanValue();
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.f9516a.a(v4.f10357t3)).longValue());
        if (this.f9523h == null || System.currentTimeMillis() - this.f9523h.getTime() >= millis) {
            this.f9516a.G().trackEvent("paused");
            if (booleanValue) {
                this.f9523h = new Date();
            }
        }
        if (booleanValue) {
            return;
        }
        this.f9523h = new Date();
    }

    /* loaded from: classes2.dex */
    class b implements ComponentCallbacks2 {
        b() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i10) {
            SessionTracker.this.f9520e.set(i10);
            if (i10 == 20) {
                SessionTracker.this.a();
            }
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }
    }
}
