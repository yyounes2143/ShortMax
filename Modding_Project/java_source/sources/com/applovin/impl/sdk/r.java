package com.applovin.impl.sdk;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import android.text.TextUtils;
import android.view.InputEvent;
import com.applovin.impl.b6;
import com.applovin.impl.o4;
import com.applovin.impl.p6;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.v4;
import i.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final k f9953a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f9954b;

    /* renamed from: e  reason: collision with root package name */
    private final MeasurementManager f9957e;

    /* renamed from: h  reason: collision with root package name */
    private final i.d f9960h;

    /* renamed from: c  reason: collision with root package name */
    private final Set f9955c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final Object f9956d = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference f9958f = new AtomicReference(new JSONArray());

    /* renamed from: g  reason: collision with root package name */
    private final d f9959g = new d(this, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements OutcomeReceiver {
        a() {
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            r.this.f9953a.O();
            if (o.a()) {
                r.this.f9953a.O().a("PrivacySandboxService", "Failed to register impression", exc);
            }
        }

        public void onResult(Object obj) {
            r.this.f9953a.O();
            if (o.a()) {
                r.this.f9953a.O().a("PrivacySandboxService", "Successfully registered impression");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements OutcomeReceiver {
        b() {
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            r.this.f9953a.O();
            if (o.a()) {
                r.this.f9953a.O().a("PrivacySandboxService", "Failed to register click", exc);
            }
        }

        public void onResult(Object obj) {
            r.this.f9953a.O();
            if (o.a()) {
                r.this.f9953a.O().a("PrivacySandboxService", "Successfully registered click");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements OutcomeReceiver {
        c() {
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            r.this.f9953a.O();
            if (o.a()) {
                r.this.f9953a.O().a("PrivacySandboxService", "Failed to register conversion", exc);
            }
        }

        public void onResult(Object obj) {
            r.this.f9953a.O();
            if (o.a()) {
                r.this.f9953a.O().a("PrivacySandboxService", "Successfully registered conversion");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d implements OutcomeReceiver {
        private d() {
        }

        /* renamed from: a */
        public void onResult(i.b bVar) {
            List<i.c> a10 = bVar.a();
            int size = a10.size();
            r.this.f9953a.O();
            if (o.a()) {
                o O = r.this.f9953a.O();
                O.d("PrivacySandboxService", size + " topic(s) received");
            }
            JSONArray jSONArray = new JSONArray();
            for (i.c cVar : a10) {
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putInt(jSONObject, "id", cVar.c());
                JsonUtils.putLong(jSONObject, "model", cVar.a());
                JsonUtils.putLong(jSONObject, "taxonomy", cVar.b());
                jSONArray.put(jSONObject);
            }
            r.this.f9958f.set(jSONArray);
            r.this.b(((Boolean) r.this.f9953a.a(v4.X6)).booleanValue(), ((Long) r.this.f9953a.a(v4.V6)).longValue());
        }

        /* synthetic */ d(r rVar, a aVar) {
            this();
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            String str;
            Long l10 = (Long) r.this.f9953a.a(v4.W6);
            boolean z10 = l10.longValue() == -1;
            r.this.f9953a.O();
            if (o.a()) {
                o O = r.this.f9953a.O();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to retrieve topics");
                if (z10) {
                    str = "";
                } else {
                    str = ", retrying in " + l10 + " ms";
                }
                sb2.append(str);
                O.a("PrivacySandboxService", sb2.toString(), exc);
            }
            if (z10) {
                return;
            }
            r.this.b(((Boolean) r.this.f9953a.a(v4.Y6)).booleanValue(), l10.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public r(k kVar) {
        this.f9953a = kVar;
        this.f9954b = kVar.r0().b();
        Context o10 = k.o();
        this.f9957e = androidx.privacysandbox.ads.adservices.measurement.n.a(o10.getSystemService(androidx.privacysandbox.ads.adservices.measurement.m.a()));
        this.f9960h = (i.d) o10.getSystemService(i.d.class);
        if (((Boolean) kVar.a(v4.U6)).booleanValue()) {
            b(((Boolean) kVar.a(v4.X6)).booleanValue(), 0L);
        }
    }

    private boolean c(String str) {
        synchronized (this.f9956d) {
            try {
                if (this.f9955c.contains(str)) {
                    return false;
                }
                this.f9955c.add(str);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(final List list) {
        a("register impression", new Runnable() { // from class: com.applovin.impl.sdk.d2
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        if (list == null || list.isEmpty() || this.f9957e == null || !o4.e(k.E0)) {
            return;
        }
        this.f9953a.O();
        if (o.a()) {
            this.f9953a.O().a("PrivacySandboxService", "Registering impression...");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.f9957e.registerSource(Uri.parse((String) it.next()), null, this.f9954b, new a());
        }
    }

    public void b(final List list, final InputEvent inputEvent) {
        a("register click", new Runnable() { // from class: com.applovin.impl.sdk.f2
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(list, inputEvent);
            }
        });
    }

    public void b(final String str) {
        a("register conversion trigger event", new Runnable() { // from class: com.applovin.impl.sdk.e2
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final boolean z10, final long j10) {
        a("retrieve topics", new Runnable() { // from class: com.applovin.impl.sdk.b2
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(z10, j10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, InputEvent inputEvent) {
        if (list == null || list.isEmpty() || this.f9957e == null || !o4.e(k.E0)) {
            return;
        }
        this.f9953a.O();
        if (o.a()) {
            this.f9953a.O().a("PrivacySandboxService", "Registering click...");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.f9957e.registerSource(Uri.parse((String) it.next()), inputEvent, this.f9954b, new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (TextUtils.isEmpty(str) || this.f9957e == null || !o4.e(k.E0)) {
            return;
        }
        this.f9953a.O();
        if (o.a()) {
            o O = this.f9953a.O();
            O.a("PrivacySandboxService", "Registering conversion: " + str);
        }
        this.f9957e.registerTrigger(Uri.parse(str), this.f9954b, new c());
    }

    public JSONArray a() {
        return (JSONArray) this.f9958f.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10, long j10) {
        if (this.f9960h == null) {
            return;
        }
        new a.C0772a().c(z10).b("AppLovin").a();
        if (j10 > 0) {
            this.f9953a.r0().a(new p6(this.f9953a, true, "getTopics", new Runnable(null) { // from class: com.applovin.impl.sdk.c2
                @Override // java.lang.Runnable
                public final void run() {
                    r.this.a((i.a) null);
                }
            }), b6.b.OTHER, j10);
            return;
        }
        this.f9960h.b(null, this.f9954b, this.f9959g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(i.a aVar) {
        this.f9960h.b(aVar, this.f9954b, this.f9959g);
    }

    private void a(String str, Runnable runnable) {
        try {
            this.f9953a.O();
            if (o.a()) {
                o O = this.f9953a.O();
                O.a("PrivacySandboxService", "Running operation: " + str);
            }
            runnable.run();
        } catch (Throwable th2) {
            this.f9953a.O();
            if (o.a()) {
                o O2 = this.f9953a.O();
                O2.a("PrivacySandboxService", "Failed to run operation: " + str, th2);
            }
            if (c(str)) {
                this.f9953a.E().a("PrivacySandboxService", str, th2);
            }
        }
    }
}
