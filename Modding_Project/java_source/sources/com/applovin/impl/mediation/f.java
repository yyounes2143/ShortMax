package com.applovin.impl.mediation;

import android.app.Activity;
import com.applovin.impl.b6;
import com.applovin.impl.c2;
import com.applovin.impl.e2;
import com.applovin.impl.g6;
import com.applovin.impl.h3;
import com.applovin.impl.i5;
import com.applovin.impl.k1;
import com.applovin.impl.o3;
import com.applovin.impl.q4;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.x4;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8819a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8820b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f8821c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final Set f8822d = new HashSet();

    /* renamed from: e  reason: collision with root package name */
    private final Object f8823e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final JSONArray f8824f = new JSONArray();

    /* renamed from: g  reason: collision with root package name */
    private final LinkedHashMap f8825g = new LinkedHashMap();

    /* renamed from: h  reason: collision with root package name */
    private final Object f8826h = new Object();

    /* renamed from: i  reason: collision with root package name */
    private final Map f8827i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    private final Map f8828j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    private final Object f8829k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private List f8830l;

    public f(com.applovin.impl.sdk.k kVar) {
        this.f8819a = kVar;
        this.f8820b = kVar.O();
    }

    public void a(Activity activity) {
        if (this.f8821c.compareAndSet(false, true)) {
            String str = (String) this.f8819a.a(x4.F);
            if (StringUtils.isValidString(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    List<h3> a10 = a(JsonUtils.getJSONArray(jSONObject, this.f8819a.t0().c() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray()), jSONObject);
                    this.f8830l = a10;
                    for (h3 h3Var : a10) {
                        this.f8827i.put(h3Var.b(), h3Var);
                    }
                    long parseLong = StringUtils.parseLong(this.f8819a.o0().getExtraParameters().get("adapter_initialization_delay_ms"), -1L);
                    i5 i5Var = new i5(a10, activity, this.f8819a);
                    if (parseLong > 0) {
                        this.f8819a.r0().a(i5Var, b6.b.MEDIATION, parseLong);
                    } else {
                        this.f8819a.r0().a(i5Var);
                    }
                } catch (JSONException e10) {
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f8820b.a("MediationAdapterInitializationManager", "Failed to parse auto-init adapters JSON", e10);
                    }
                    k1.a((Throwable) e10);
                }
            }
        }
    }

    public boolean c() {
        return this.f8821c.get();
    }

    private void c(h3 h3Var) {
        String b10 = h3Var.b();
        synchronized (this.f8823e) {
            try {
                if (this.f8822d.contains(b10)) {
                    return;
                }
                this.f8822d.add(b10);
                this.f8819a.P().d(c2.O, e2.a(h3Var));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public JSONArray b() {
        JSONArray shallowCopy;
        synchronized (this.f8826h) {
            shallowCopy = JsonUtils.shallowCopy(this.f8824f);
        }
        return shallowCopy;
    }

    boolean b(h3 h3Var) {
        boolean containsKey;
        synchronized (this.f8826h) {
            containsKey = this.f8825g.containsKey(h3Var.b());
        }
        return containsKey;
    }

    public q4 a(h3 h3Var, Activity activity) {
        h3 a10 = a(h3Var);
        if (a10 == null) {
            return q4.a("AdapterInitialization:" + h3Var.c(), MaxAdapter.InitializationStatus.DOES_NOT_APPLY);
        }
        String b10 = h3Var.b();
        synchronized (this.f8829k) {
            try {
                q4 q4Var = (q4) this.f8828j.get(b10);
                if (q4Var == null || (q4Var.d() && a10.q())) {
                    final q4 q4Var2 = new q4("AdapterInitialization:" + h3Var.c());
                    this.f8828j.put(b10, q4Var2);
                    h a11 = this.f8819a.T().a(a10);
                    if (a11 == null) {
                        q4Var2.a("Adapter implementation not found");
                        return q4Var2;
                    }
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f8820b;
                        oVar.d("MediationAdapterInitializationManager", "Initializing adapter " + a10);
                    }
                    c(a10);
                    a11.a(MaxAdapterParametersImpl.a(a10), activity, new MaxAdapter.OnCompletionListener() { // from class: com.applovin.impl.mediation.v
                        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
                        public final void onCompletion(MaxAdapter.InitializationStatus initializationStatus, String str) {
                            f.a(q4.this, initializationStatus, str);
                        }
                    });
                    long m10 = a10.m();
                    g6.a(m10, q4Var2, "The adapter (" + h3Var.c() + ") timed out initializing", "MediationAdapterInitializationManager", this.f8819a);
                    return q4Var2;
                }
                return q4Var;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(q4 q4Var, MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (initializationStatus != null && initializationStatus != MaxAdapter.InitializationStatus.INITIALIZING) {
            if (initializationStatus == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE) {
                q4Var.a(str);
                return;
            } else {
                q4Var.b(initializationStatus);
                return;
            }
        }
        k1.a("Adapters should never report a null or INITIALIZING status.", new Object[0]);
        q4Var.a("Adapter reported INITIALIZING");
    }

    private h3 a(h3 h3Var) {
        List<h3> list;
        if (((Boolean) this.f8819a.a(o3.f9128l8)).booleanValue()) {
            h3 h3Var2 = (h3) this.f8827i.get(h3Var.b());
            return h3Var2 != null ? h3Var2 : h3Var;
        } else if (!this.f8819a.t0().c() || (list = this.f8830l) == null) {
            return h3Var;
        } else {
            for (h3 h3Var3 : list) {
                if (h3Var3.b().equals(h3Var.b())) {
                    return h3Var3;
                }
            }
            return null;
        }
    }

    public Integer a(String str) {
        Integer num;
        synchronized (this.f8826h) {
            num = (Integer) this.f8825g.get(str);
        }
        return num;
    }

    public Set a() {
        HashSet hashSet;
        synchronized (this.f8826h) {
            hashSet = new HashSet(this.f8825g.keySet());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(h3 h3Var, long j10, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean b10;
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            return;
        }
        synchronized (this.f8826h) {
            try {
                b10 = b(h3Var);
                if (!b10) {
                    this.f8825g.put(h3Var.b(), Integer.valueOf(initializationStatus.getCode()));
                    JSONObject jSONObject = new JSONObject();
                    JsonUtils.putString(jSONObject, "class", h3Var.b());
                    JsonUtils.putString(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()));
                    JsonUtils.putLong(jSONObject, "init_time_ms", j10);
                    JsonUtils.putString(jSONObject, "error_message", JSONObject.quote(str));
                    this.f8824f.put(jSONObject);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (b10) {
            return;
        }
        this.f8819a.a(h3Var);
        this.f8819a.X().processAdapterInitializationPostback(h3Var, j10, initializationStatus, str);
        this.f8819a.u().a(initializationStatus, h3Var.b());
    }

    private List a(JSONArray jSONArray, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            arrayList.add(new h3(Collections.EMPTY_MAP, JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null), jSONObject, this.f8819a));
        }
        return arrayList;
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus) {
        synchronized (this.f8826h) {
            this.f8825g.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", Integer.valueOf(initializationStatus.getCode()));
        }
        this.f8819a.u().a(initializationStatus, "com.applovin.mediation.adapters.AppLovinMediationAdapter");
    }
}
