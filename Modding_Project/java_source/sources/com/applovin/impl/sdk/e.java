package com.applovin.impl.sdk;

import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final k f9636a;

    /* renamed from: b  reason: collision with root package name */
    private final o f9637b;

    /* renamed from: d  reason: collision with root package name */
    private final Map f9639d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final Map f9640e = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Object f9638c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(k kVar) {
        this.f9636a = kVar;
        this.f9637b = kVar.O();
        for (com.applovin.impl.u uVar : com.applovin.impl.u.a()) {
            this.f9639d.put(uVar, new q());
            this.f9640e.put(uVar, new q());
        }
    }

    private q c(com.applovin.impl.u uVar) {
        synchronized (this.f9638c) {
            try {
                q b10 = b(uVar);
                if (b10.b() > 0) {
                    return b10;
                }
                return d(uVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private q d(com.applovin.impl.u uVar) {
        q qVar;
        synchronized (this.f9638c) {
            try {
                qVar = (q) this.f9639d.get(uVar);
                if (qVar == null) {
                    qVar = new q();
                    this.f9639d.put(uVar, qVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f9638c) {
            try {
                d(appLovinAdImpl.getAdZone()).a(appLovinAdImpl);
                if (o.a()) {
                    o oVar = this.f9637b;
                    oVar.a("AdPreloadManager", "Ad enqueued: " + appLovinAdImpl);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f9638c) {
            c(appLovinAdImpl.getAdZone()).b(appLovinAdImpl);
        }
    }

    public AppLovinAdImpl e(com.applovin.impl.u uVar) {
        com.applovin.impl.sdk.ad.c cVar;
        synchronized (this.f9638c) {
            try {
                q d10 = d(uVar);
                if (d10.b() > 0) {
                    b(uVar).a(d10.a());
                    cVar = new com.applovin.impl.sdk.ad.c(uVar, this.f9636a);
                } else {
                    cVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (cVar != null) {
            if (o.a()) {
                o oVar = this.f9637b;
                oVar.a("AdPreloadManager", "Retrieved ad of zone " + uVar + "...");
            }
        } else if (o.a()) {
            o oVar2 = this.f9637b;
            oVar2.a("AdPreloadManager", "Unable to retrieve ad of zone " + uVar + "...");
        }
        return cVar;
    }

    public AppLovinAdBase f(com.applovin.impl.u uVar) {
        AppLovinAdImpl d10;
        synchronized (this.f9638c) {
            d10 = c(uVar).d();
        }
        return d10;
    }

    private q b(com.applovin.impl.u uVar) {
        q qVar;
        synchronized (this.f9638c) {
            try {
                qVar = (q) this.f9640e.get(uVar);
                if (qVar == null) {
                    qVar = new q();
                    this.f9640e.put(uVar, qVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return qVar;
    }

    public AppLovinAdImpl a(com.applovin.impl.u uVar) {
        AppLovinAdImpl a10;
        synchronized (this.f9638c) {
            a10 = c(uVar).a();
        }
        return a10;
    }
}
