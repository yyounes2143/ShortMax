package com.applovin.impl.sdk.network;

import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.p6;
import com.applovin.impl.q2;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final k f9889a;

    /* renamed from: b  reason: collision with root package name */
    private final o f9890b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9891c;

    /* renamed from: d  reason: collision with root package name */
    private final c f9892d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f9893e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final List f9894f;

    /* renamed from: g  reason: collision with root package name */
    private final Set f9895g;

    /* renamed from: h  reason: collision with root package name */
    private final List f9896h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements AppLovinPostbackListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f9897a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AppLovinPostbackListener f9898b;

        a(d dVar, AppLovinPostbackListener appLovinPostbackListener) {
            this.f9897a = dVar;
            this.f9898b = appLovinPostbackListener;
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackFailure(String str, int i10) {
            o unused = b.this.f9890b;
            if (o.a()) {
                o oVar = b.this.f9890b;
                oVar.d("PersistentPostbackManager", "Failed to submit postback: " + this.f9897a + " with error code: " + i10 + "; will retry later...");
            }
            b.this.d(this.f9897a);
            q2.a(this.f9898b, str, i10);
            if (this.f9897a.c() == 1) {
                b.this.f9889a.E().a("dispatchPostback", str, i10, (String) null);
            }
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackSuccess(String str) {
            b.this.a(this.f9897a);
            o unused = b.this.f9890b;
            if (o.a()) {
                o oVar = b.this.f9890b;
                oVar.a("PersistentPostbackManager", "Successfully submit postback: " + this.f9897a);
            }
            b.this.c();
            q2.a(this.f9898b, str);
        }
    }

    public b(k kVar) {
        ArrayList arrayList = new ArrayList();
        this.f9894f = arrayList;
        this.f9895g = new HashSet();
        this.f9896h = new ArrayList();
        if (kVar != null) {
            this.f9889a = kVar;
            this.f9890b = kVar.O();
            int intValue = ((Integer) kVar.a(v4.H2)).intValue();
            this.f9891c = intValue;
            if (((Boolean) kVar.a(v4.K2)).booleanValue()) {
                c cVar = new c(this, kVar);
                this.f9892d = cVar;
                arrayList.addAll(cVar.a(intValue));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                return;
            }
            this.f9892d = null;
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        this.f9889a.r0().a((g5) this.f9892d, b6.b.OTHER);
    }

    private void c(d dVar) {
        synchronized (this.f9893e) {
            while (this.f9894f.size() > this.f9891c) {
                try {
                    this.f9894f.remove(0);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f9894f.add(dVar);
        }
        if (o.a()) {
            o oVar = this.f9890b;
            oVar.a("PersistentPostbackManager", "Enqueued postback: " + dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List d() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f9893e) {
            try {
                if (((Boolean) this.f9889a.a(v4.J2)).booleanValue()) {
                    arrayList.ensureCapacity(this.f9896h.size());
                    arrayList.addAll(this.f9896h);
                } else {
                    arrayList.ensureCapacity(this.f9894f.size());
                    arrayList.addAll(this.f9894f);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    public void e(d dVar) {
        a(dVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(d dVar, AppLovinPostbackListener appLovinPostbackListener) {
        synchronized (this.f9893e) {
            c(dVar);
            a(dVar, appLovinPostbackListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        synchronized (this.f9893e) {
            try {
                Iterator it = new ArrayList(this.f9894f).iterator();
                while (it.hasNext()) {
                    b((d) it.next());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(d dVar, boolean z10) {
        a(dVar, z10, (AppLovinPostbackListener) null);
    }

    public void a(final d dVar, boolean z10, final AppLovinPostbackListener appLovinPostbackListener) {
        if (TextUtils.isEmpty(dVar.k())) {
            if (o.a()) {
                this.f9890b.b("PersistentPostbackManager", "Requested a postback dispatch for empty URL; nothing to do...");
                return;
            }
            return;
        }
        if (z10) {
            dVar.a();
        }
        a(new Runnable() { // from class: com.applovin.impl.sdk.network.f
            @Override // java.lang.Runnable
            public final void run() {
                b.this.b(dVar, appLovinPostbackListener);
            }
        }, k7.h(), dVar.m());
    }

    public void b() {
        a(new Runnable() { // from class: com.applovin.impl.sdk.network.g
            @Override // java.lang.Runnable
            public final void run() {
                b.this.e();
            }
        }, true, false);
    }

    private void b(d dVar) {
        a(dVar, (AppLovinPostbackListener) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this.f9893e) {
            try {
                for (d dVar : this.f9896h) {
                    b(dVar);
                }
                this.f9896h.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a() {
        synchronized (this.f9893e) {
            this.f9894f.clear();
            this.f9896h.clear();
        }
        this.f9889a.r0().a((g5) this.f9892d, b6.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(d dVar) {
        synchronized (this.f9893e) {
            this.f9895g.remove(dVar);
            this.f9896h.add(dVar);
        }
    }

    private void a(d dVar, AppLovinPostbackListener appLovinPostbackListener) {
        if (o.a()) {
            o oVar = this.f9890b;
            oVar.a("PersistentPostbackManager", "Preparing to submit postback: " + dVar);
        }
        if (this.f9889a.F0() && !dVar.m()) {
            if (o.a()) {
                this.f9890b.a("PersistentPostbackManager", "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards");
            }
        } else if (TextUtils.isEmpty(dVar.k())) {
            if (o.a()) {
                this.f9890b.b("PersistentPostbackManager", "Skipping empty postback dispatch...");
            }
        } else {
            synchronized (this.f9893e) {
                try {
                    if (this.f9895g.contains(dVar)) {
                        if (o.a()) {
                            o oVar2 = this.f9890b;
                            oVar2.a("PersistentPostbackManager", "Skipping in progress postback: " + dVar.k());
                        }
                        return;
                    }
                    dVar.l();
                    Integer num = (Integer) this.f9889a.a(v4.G2);
                    if (dVar.c() > num.intValue()) {
                        if (o.a()) {
                            o oVar3 = this.f9890b;
                            oVar3.k("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + num + ". Dequeuing postback: " + dVar);
                        }
                        a(dVar);
                        return;
                    }
                    synchronized (this.f9893e) {
                        this.f9895g.add(dVar);
                    }
                    e a10 = e.b(this.f9889a).b(dVar.k()).a(dVar.d()).b(dVar.i()).c(dVar.h()).a(dVar.g()).a(dVar.j() != null ? new JSONObject(dVar.j()) : null).b(dVar.o()).a(dVar.n()).a(dVar.f()).h(dVar.p()).e(dVar.e()).a();
                    if (o.a()) {
                        o oVar4 = this.f9890b;
                        oVar4.a("PersistentPostbackManager", "Submitting postback: " + dVar);
                    }
                    this.f9889a.g0().dispatchPostbackRequest(a10, new a(dVar, appLovinPostbackListener));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(d dVar) {
        synchronized (this.f9893e) {
            this.f9895g.remove(dVar);
            this.f9894f.remove(dVar);
        }
        if (o.a()) {
            o oVar = this.f9890b;
            oVar.a("PersistentPostbackManager", "Dequeued postback: " + dVar);
        }
    }

    private void a(Runnable runnable, boolean z10, boolean z11) {
        if (z10) {
            this.f9889a.r0().a((g5) new p6(this.f9889a, z11, "runPostbackTask", runnable), b6.b.OTHER);
            return;
        }
        runnable.run();
    }
}
