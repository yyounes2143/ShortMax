package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.a5;
import com.applovin.impl.b6;
import com.applovin.impl.n5;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class n5 extends g5 {

    /* renamed from: j  reason: collision with root package name */
    private static JSONObject f9013j;

    /* renamed from: k  reason: collision with root package name */
    private static final Object f9014k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static final Map f9015l = Collections.synchronizedMap(new HashMap());

    /* renamed from: g  reason: collision with root package name */
    private final x2 f9016g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f9017h;

    /* renamed from: i  reason: collision with root package name */
    private final b f9018i;

    /* loaded from: classes2.dex */
    public interface b {
        void a(JSONArray jSONArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c implements a5.a, Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final b f9019a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f9020b;

        /* renamed from: c  reason: collision with root package name */
        private int f9021c;

        /* renamed from: d  reason: collision with root package name */
        private final AtomicBoolean f9022d;

        /* renamed from: e  reason: collision with root package name */
        private final Collection f9023e;

        /* renamed from: f  reason: collision with root package name */
        private final com.applovin.impl.sdk.k f9024f;

        /* renamed from: g  reason: collision with root package name */
        private final com.applovin.impl.sdk.o f9025g;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9022d.compareAndSet(false, true)) {
                a();
            }
        }

        private c(int i10, b bVar, com.applovin.impl.sdk.k kVar) {
            this.f9021c = i10;
            this.f9019a = bVar;
            this.f9024f = kVar;
            this.f9025g = kVar.O();
            this.f9020b = new Object();
            this.f9023e = new ArrayList(i10);
            this.f9022d = new AtomicBoolean();
        }

        @Override // com.applovin.impl.a5.a
        public void a(a5 a5Var) {
            boolean z10;
            synchronized (this.f9020b) {
                this.f9023e.add(a5Var);
                int i10 = this.f9021c - 1;
                this.f9021c = i10;
                z10 = i10 < 1;
            }
            if (z10 && this.f9022d.compareAndSet(false, true)) {
                if (k7.h() && ((Boolean) this.f9024f.a(v4.N)).booleanValue()) {
                    this.f9024f.r0().a((g5) new p6(this.f9024f, "handleSignalCollectionCompleted", new Runnable() { // from class: com.applovin.impl.rc
                        @Override // java.lang.Runnable
                        public final void run() {
                            n5.c.this.a();
                        }
                    }), b6.b.MEDIATION);
                } else {
                    a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            ArrayList<a5> arrayList;
            synchronized (this.f9020b) {
                arrayList = new ArrayList(this.f9023e);
            }
            JSONArray jSONArray = new JSONArray();
            for (a5 a5Var : arrayList) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    b5 f10 = a5Var.f();
                    jSONObject.put("name", f10.c());
                    jSONObject.put("class", f10.b());
                    jSONObject.put("adapter_version", a5Var.a());
                    jSONObject.put("sdk_version", a5Var.d());
                    JSONObject jSONObject2 = new JSONObject();
                    MaxError c10 = a5Var.c();
                    if (c10 != null) {
                        jSONObject2.put("error_message", c10.getMessage());
                    } else {
                        jSONObject2.put("signal", a5Var.e());
                    }
                    jSONObject2.put("signal_collection_time_ms", a5Var.b());
                    jSONObject2.put("is_cached", a5Var.g());
                    jSONObject.put("data", jSONObject2);
                    jSONArray.put(jSONObject);
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f9025g;
                        oVar.a("TaskCollectSignals", "Collected signal from " + f10);
                    }
                } catch (JSONException e10) {
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f9025g.a("TaskCollectSignals", "Failed to create signal data", e10);
                    }
                    this.f9024f.E().a("TaskCollectSignals", "createSignalsData", e10);
                }
            }
            a(jSONArray);
        }

        private void a(JSONArray jSONArray) {
            b bVar = this.f9019a;
            if (bVar != null) {
                bVar.a(jSONArray);
            }
        }
    }

    public n5(x2 x2Var, Context context, com.applovin.impl.sdk.k kVar, b bVar) {
        super("TaskCollectSignals", kVar);
        this.f9016g = x2Var;
        this.f9017h = context;
        this.f9018i = bVar;
    }

    private void a(JSONArray jSONArray, JSONObject jSONObject) {
        c cVar = new c(jSONArray.length(), this.f9018i, this.f7960a);
        this.f7960a.r0().a(new p6(this.f7960a, "timeoutCollectSignal", cVar), b6.b.TIMEOUT, ((Long) this.f7960a.a(o3.f9131n7)).longValue());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            a(new b5(this.f9016g, jSONArray.getJSONObject(i10), jSONObject, this.f7960a), cVar);
        }
    }

    private void b(JSONArray jSONArray, JSONObject jSONObject) {
        Set set = (Set) f9015l.get(this.f9016g.b());
        if (set != null && !set.isEmpty()) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                if (set.contains(JsonUtils.getString(jSONObject2, "name", null))) {
                    jSONArray2.put(jSONObject2);
                }
            }
            a(jSONArray2, jSONObject);
            return;
        }
        a("No signal providers found for ad unit: " + this.f9016g.b(), (Throwable) null);
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray;
        try {
            synchronized (f9014k) {
                jSONArray = JsonUtils.getJSONArray(f9013j, "signal_providers", null);
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                if (f9015l.size() > 0) {
                    b(jSONArray, f9013j);
                    return;
                } else {
                    a(jSONArray, f9013j);
                    return;
                }
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.k(this.f7961b, "Unable to find cached signal providers, fetching signal providers from SharedPreferences.");
            }
            JSONObject jSONObject = new JSONObject((String) this.f7960a.a(x4.E, JsonUtils.EMPTY_JSON));
            JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
            if (jSONArray2 != null && jSONArray2.length() != 0) {
                if (f9015l.size() > 0) {
                    b(jSONArray2, jSONObject);
                    return;
                } else {
                    a(jSONArray2, jSONObject);
                    return;
                }
            }
            a("No signal providers found", (Throwable) null);
        } catch (InterruptedException e10) {
            a("Failed to wait for signals", e10);
            this.f7960a.E().a("TaskCollectSignals", "waitForSignals", e10);
        } catch (JSONException e11) {
            a("Failed to parse signals JSON", e11);
            this.f7960a.E().a("TaskCollectSignals", "parseSignalsJSON", e11);
        } catch (Throwable th2) {
            a("Failed to collect signals", th2);
            this.f7960a.E().a("TaskCollectSignals", "collectSignals", th2);
        }
    }

    private void a(final b5 b5Var, final a5.a aVar) {
        if (b5Var.r()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.qc
                @Override // java.lang.Runnable
                public final void run() {
                    n5.this.b(b5Var, aVar);
                }
            });
        } else {
            this.f7960a.X().collectSignal(b5Var, this.f9017h, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(b5 b5Var, a5.a aVar) {
        this.f7960a.X().collectSignal(b5Var, this.f9017h, aVar);
    }

    private void a(String str, Throwable th2) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str2 = this.f7961b;
            oVar.a(str2, "No signals collected: " + str, th2);
        }
        b bVar = this.f9018i;
        if (bVar != null) {
            bVar.a(new JSONArray());
        }
    }

    public static void a(JSONObject jSONObject) {
        synchronized (f9014k) {
            f9013j = jSONObject;
        }
    }

    public static void a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        try {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "ad_unit_signal_providers", (JSONObject) null);
            if (jSONObject2 != null) {
                for (String str : JsonUtils.toList(jSONObject2.names())) {
                    f9015l.put(str, new HashSet(JsonUtils.getList(jSONObject2, str, null)));
                }
            }
        } catch (JSONException e10) {
            com.applovin.impl.sdk.o.c("TaskCollectSignals", "Failed to parse ad unit signal providers for JSON object: " + jSONObject, e10);
            kVar.E().a("TaskCollectSignals", "parseAdUnitSignalProvidersJSON", e10);
        }
    }
}
