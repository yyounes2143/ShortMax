package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.p6;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.c;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.impl.x4;
import com.applovin.sdk.AppLovinAdType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class d implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final k f9627a;

    /* renamed from: b  reason: collision with root package name */
    private final c f9628b;

    /* renamed from: c  reason: collision with root package name */
    private final List f9629c = Collections.synchronizedList(new ArrayList());

    /* loaded from: classes2.dex */
    public interface a {
        void a(com.applovin.impl.sdk.ad.b bVar);
    }

    public d(k kVar) {
        this.f9627a = kVar;
        this.f9628b = new c(kVar);
    }

    private void e() {
        String str = (String) this.f9627a.q0().a(x4.D);
        if (str == null) {
            return;
        }
        JSONArray jsonArray = JsonUtils.toJsonArray(str, new JSONArray());
        for (int length = jsonArray.length() - 1; length >= 0; length--) {
            c.a a10 = c.a.a(JsonUtils.getJSONObject(jsonArray, length, new JSONObject()), this.f9627a);
            if (a10 != null) {
                if (a(a10)) {
                    long c10 = a10.c() - SystemClock.elapsedRealtime();
                    this.f9627a.g().d(com.applovin.impl.c2.L, CollectionUtils.map("details", "ttl = " + c10 + "ms"));
                } else {
                    this.f9629c.add(0, a10);
                }
            }
        }
    }

    private void f() {
        this.f9627a.r0().a((g5) new p6(this.f9627a, "loadPersistedAdFilesQueueAndCleanupAsync", new Runnable() { // from class: com.applovin.impl.sdk.e0
            @Override // java.lang.Runnable
            public final void run() {
                d.this.c();
            }
        }), b6.b.OTHER);
    }

    private void h() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f9629c) {
            try {
                for (c.a aVar : this.f9629c) {
                    arrayList.add(aVar.a());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f9627a.q0().b(x4.D, new JSONArray((Collection) arrayList).toString());
    }

    public void g() {
        this.f9627a.r0().a((g5) new p6(this.f9627a, "resetManagerState", new Runnable() { // from class: com.applovin.impl.sdk.f0
            @Override // java.lang.Runnable
            public final void run() {
                d.this.d();
            }
        }), b6.b.OTHER);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(c.a aVar) {
        if (aVar == null) {
            this.f9627a.O();
            if (o.a()) {
                this.f9627a.O().a("AdPersistenceManager", "Ad failed to persist");
                return;
            }
            return;
        }
        this.f9629c.add(aVar);
        if (((Boolean) this.f9627a.a(v4.X0)).booleanValue()) {
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f9627a.q0().b(x4.D);
        this.f9628b.a();
    }

    public void a(final com.applovin.impl.u uVar, final a aVar) {
        if (aVar == null) {
            this.f9627a.O();
            if (o.a()) {
                this.f9627a.O().b("AdPersistenceManager", "Persisted ad could not be retrieved: listener is null");
            }
            com.applovin.impl.k1.a("Persisted ad could not be retrieved: listener is null", new Object[0]);
        } else if (uVar == null) {
            a(aVar, null, null, "Persisted ad could not be retrieved: adZone is null");
        } else {
            this.f9627a.g().a(com.applovin.impl.c2.I, uVar, (AppLovinError) null);
            final c.a a10 = a(uVar.g());
            this.f9628b.a(a10, new c.InterfaceC0119c() { // from class: com.applovin.impl.sdk.d0
                @Override // com.applovin.impl.sdk.c.InterfaceC0119c
                public final void a(com.applovin.impl.sdk.ad.b bVar, String str) {
                    d.this.a(aVar, a10, uVar, bVar, str);
                }
            });
        }
    }

    public void b() {
        f();
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
    }

    private void d(c.a aVar) {
        if (aVar != null && this.f9629c.remove(aVar)) {
            this.f9628b.b(aVar);
        }
    }

    public void b(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            return;
        }
        this.f9627a.g().a(com.applovin.impl.c2.F, bVar);
        this.f9628b.b(bVar, new c.b() { // from class: com.applovin.impl.sdk.g0
            @Override // com.applovin.impl.sdk.c.b
            public final void a(c.a aVar) {
                d.this.c(aVar);
            }
        });
    }

    private boolean b(c.a aVar) {
        long b10 = aVar.b();
        return (b10 == 0 || b10 == k.n()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        e();
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, c.a aVar2, com.applovin.impl.u uVar, com.applovin.impl.sdk.ad.b bVar, String str) {
        if (bVar != null && !StringUtils.isValidString(str)) {
            a(aVar, bVar, aVar2);
        } else {
            a(aVar, aVar2, uVar, str);
        }
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            return;
        }
        d(c.a.a(bVar));
    }

    private c.a a(AppLovinAdType appLovinAdType) {
        c.a aVar;
        synchronized (this.f9629c) {
            try {
                Iterator it = this.f9629c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        aVar = null;
                        break;
                    }
                    aVar = (c.a) it.next();
                    if (aVar.f().equals(appLovinAdType) && !a(aVar) && b(aVar)) {
                        break;
                    }
                }
                this.f9629c.remove(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    private void a(a aVar, c.a aVar2, com.applovin.impl.u uVar, String str) {
        if (aVar == null) {
            return;
        }
        this.f9627a.O();
        if (o.a()) {
            this.f9627a.O().a("AdPersistenceManager", str);
        }
        aVar.a(null);
        this.f9628b.b(aVar2);
        this.f9627a.g().a(com.applovin.impl.c2.K, uVar, new AppLovinError(-1, str));
    }

    private void a(a aVar, com.applovin.impl.sdk.ad.b bVar, c.a aVar2) {
        if (aVar == null) {
            return;
        }
        this.f9627a.O();
        if (o.a()) {
            this.f9627a.O().a("AdPersistenceManager", "Loading persisted ad");
        }
        aVar.a(bVar);
        this.f9628b.b(aVar2);
        this.f9627a.g().a(com.applovin.impl.c2.J, bVar);
    }

    private boolean a(c.a aVar) {
        return SystemClock.elapsedRealtime() + ((Long) this.f9627a.a(v4.Z0)).longValue() >= aVar.c();
    }

    private void a() {
        synchronized (this.f9629c) {
            this.f9628b.a(new ArrayList(this.f9629c));
        }
    }
}
