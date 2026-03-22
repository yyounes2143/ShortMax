package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class a implements AppLovinBroadcastManager.Receiver {

    /* renamed from: e  reason: collision with root package name */
    private static final long f9534e = TimeUnit.SECONDS.toMillis(2);

    /* renamed from: a  reason: collision with root package name */
    private final k f9535a;

    /* renamed from: b  reason: collision with root package name */
    private final o f9536b;

    /* renamed from: c  reason: collision with root package name */
    private final HashSet f9537c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final Object f9538d = new Object();

    /* renamed from: com.applovin.impl.sdk.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0117a {
        void onAdExpired(com.applovin.impl.s1 s1Var);
    }

    public a(k kVar) {
        this.f9535a = kVar;
        this.f9536b = kVar.O();
    }

    private b b(com.applovin.impl.s1 s1Var) {
        synchronized (this.f9538d) {
            try {
                if (s1Var == null) {
                    return null;
                }
                Iterator it = this.f9537c.iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next();
                    if (s1Var == bVar.b()) {
                        return bVar;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean a(com.applovin.impl.s1 s1Var, InterfaceC0117a interfaceC0117a) {
        synchronized (this.f9538d) {
            try {
                if (b(s1Var) != null) {
                    if (o.a()) {
                        o oVar = this.f9536b;
                        oVar.a("AdExpirationManager", "Ad expiration already scheduled for ad: " + s1Var);
                    }
                    return true;
                } else if (s1Var.getTimeToLiveMillis() <= f9534e) {
                    if (o.a()) {
                        o oVar2 = this.f9536b;
                        oVar2.a("AdExpirationManager", "Ad has already expired: " + s1Var);
                    }
                    s1Var.setExpired();
                    return false;
                } else {
                    if (o.a()) {
                        o oVar3 = this.f9536b;
                        oVar3.a("AdExpirationManager", "Scheduling ad expiration " + TimeUnit.MILLISECONDS.toSeconds(s1Var.getTimeToLiveMillis()) + " seconds from now for " + s1Var + "...");
                    }
                    if (this.f9537c.isEmpty()) {
                        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
                    }
                    this.f9537c.add(b.a(s1Var, interfaceC0117a, this.f9535a));
                    return true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            a();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            b();
        }
    }

    private void b() {
        HashSet hashSet = new HashSet();
        synchronized (this.f9538d) {
            try {
                Iterator it = this.f9537c.iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next();
                    com.applovin.impl.s1 b10 = bVar.b();
                    if (b10 == null) {
                        hashSet.add(bVar);
                    } else {
                        long timeToLiveMillis = b10.getTimeToLiveMillis();
                        if (timeToLiveMillis <= 0) {
                            if (o.a()) {
                                o oVar = this.f9536b;
                                oVar.a("AdExpirationManager", "Ad expired while app was paused. Preparing to notify listener for ad: " + b10);
                            }
                            hashSet.add(bVar);
                        } else {
                            if (o.a()) {
                                o oVar2 = this.f9536b;
                                oVar2.a("AdExpirationManager", "Rescheduling expiration with remaining " + TimeUnit.MILLISECONDS.toSeconds(timeToLiveMillis) + " seconds for ad: " + b10);
                            }
                            bVar.a(timeToLiveMillis);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            b bVar2 = (b) it2.next();
            a(bVar2);
            bVar2.d();
        }
    }

    public void a(com.applovin.impl.s1 s1Var) {
        synchronized (this.f9538d) {
            try {
                b b10 = b(s1Var);
                if (b10 != null) {
                    if (o.a()) {
                        o oVar = this.f9536b;
                        oVar.a("AdExpirationManager", "Cancelling expiration timer for ad: " + s1Var);
                    }
                    b10.a();
                    a(b10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(b bVar) {
        synchronized (this.f9538d) {
            try {
                this.f9537c.remove(bVar);
                if (this.f9537c.isEmpty()) {
                    AppLovinBroadcastManager.unregisterReceiver(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void a() {
        synchronized (this.f9538d) {
            try {
                Iterator it = this.f9537c.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
