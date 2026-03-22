package com.applovin.impl.sdk;

import com.applovin.impl.t3;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class n {

    /* renamed from: j  reason: collision with root package name */
    private static final a f9795j = new a();

    /* renamed from: a  reason: collision with root package name */
    private final k f9796a;

    /* renamed from: c  reason: collision with root package name */
    private long f9798c;

    /* renamed from: f  reason: collision with root package name */
    private long f9801f;

    /* renamed from: g  reason: collision with root package name */
    private Object f9802g;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f9797b = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final Object f9799d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f9800e = new AtomicBoolean();

    /* renamed from: h  reason: collision with root package name */
    private final Map f9803h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private final Object f9804i = new Object();

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f9805a = -1;

        /* renamed from: b  reason: collision with root package name */
        private int f9806b;

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.f9805a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (aVar.a((Object) this) && b() == aVar.b() && a() == aVar.a()) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            long b10 = b();
            return ((((int) (b10 ^ (b10 >>> 32))) + 59) * 59) + a();
        }

        public String toString() {
            return "FullScreenAdTracker.LostShowAttemptsData(lastAttemptedTimeMillis=" + b() + ", attemptCount=" + a() + ")";
        }

        static /* synthetic */ int a(a aVar) {
            int i10 = aVar.f9806b;
            aVar.f9806b = i10 + 1;
            return i10;
        }

        public int a() {
            return this.f9806b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(k kVar) {
        this.f9796a = kVar;
    }

    public boolean c() {
        return this.f9797b.get();
    }

    public boolean d() {
        return this.f9800e.get();
    }

    public void a(boolean z10) {
        synchronized (this.f9799d) {
            try {
                this.f9800e.set(z10);
                if (z10) {
                    this.f9801f = System.currentTimeMillis();
                    this.f9796a.O();
                    if (o.a()) {
                        o O = this.f9796a.O();
                        O.a("FullScreenAdTracker", "Setting fullscreen ad pending display: " + this.f9801f);
                    }
                    final Long l10 = (Long) this.f9796a.a(v4.H1);
                    if (l10.longValue() >= 0) {
                        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.z1
                            @Override // java.lang.Runnable
                            public final void run() {
                                n.this.a(l10);
                            }
                        }, l10.longValue());
                    }
                } else {
                    this.f9801f = 0L;
                    this.f9796a.O();
                    if (o.a()) {
                        o O2 = this.f9796a.O();
                        O2.a("FullScreenAdTracker", "Setting fullscreen ad not pending display: " + System.currentTimeMillis());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public long b() {
        return this.f9798c;
    }

    public void c(String str) {
        synchronized (this.f9804i) {
            try {
                a aVar = (a) this.f9803h.get(str);
                if (aVar == null) {
                    aVar = new a();
                    this.f9803h.put(str, aVar);
                }
                aVar.f9805a = System.currentTimeMillis();
                a.a(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(Object obj) {
        if (!t3.a(obj) && this.f9797b.compareAndSet(true, false)) {
            this.f9802g = null;
            this.f9796a.O();
            if (o.a()) {
                o O = this.f9796a.O();
                O.a("FullScreenAdTracker", "Setting fullscreen ad hidden: " + System.currentTimeMillis());
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_hidden", obj);
        }
    }

    public a b(String str) {
        a aVar;
        synchronized (this.f9804i) {
            aVar = (a) this.f9803h.get(str);
            if (aVar == null) {
                aVar = f9795j;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l10) {
        if (d() && System.currentTimeMillis() - this.f9801f >= l10.longValue()) {
            this.f9796a.O();
            if (o.a()) {
                this.f9796a.O().a("FullScreenAdTracker", "Resetting \"pending display\" state...");
            }
            this.f9800e.set(false);
        }
    }

    public Object a() {
        return this.f9802g;
    }

    public void a(final Object obj) {
        if (!t3.a(obj) && this.f9797b.compareAndSet(false, true)) {
            this.f9802g = obj;
            this.f9798c = System.currentTimeMillis();
            this.f9796a.O();
            if (o.a()) {
                o O = this.f9796a.O();
                O.a("FullScreenAdTracker", "Setting fullscreen ad displayed: " + this.f9798c);
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_displayed", obj);
            final Long l10 = (Long) this.f9796a.a(v4.I1);
            if (l10.longValue() >= 0) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.a2
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.this.a(l10, obj);
                    }
                }, l10.longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l10, Object obj) {
        if (this.f9797b.get() && System.currentTimeMillis() - this.f9798c >= l10.longValue()) {
            this.f9796a.O();
            if (o.a()) {
                this.f9796a.O().a("FullScreenAdTracker", "Resetting \"display\" state...");
            }
            b(obj);
        }
    }

    public void a(String str) {
        synchronized (this.f9804i) {
            this.f9803h.remove(str);
        }
    }
}
