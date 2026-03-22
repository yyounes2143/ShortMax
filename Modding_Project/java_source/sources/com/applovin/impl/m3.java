package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.applovin.impl.b3;
import com.applovin.impl.b6;
import com.applovin.impl.q0;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxDebuggerActivity;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class m3 implements q0.e {

    /* renamed from: l  reason: collision with root package name */
    private static WeakReference f8458l;

    /* renamed from: m  reason: collision with root package name */
    private static final AtomicBoolean f8459m = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8460a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8461b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f8462c;

    /* renamed from: d  reason: collision with root package name */
    private final l3 f8463d;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8466g;

    /* renamed from: i  reason: collision with root package name */
    private boolean f8468i;

    /* renamed from: j  reason: collision with root package name */
    private Map f8469j;

    /* renamed from: k  reason: collision with root package name */
    private final b0 f8470k;

    /* renamed from: e  reason: collision with root package name */
    private final Map f8464e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f8465f = new AtomicBoolean();

    /* renamed from: h  reason: collision with root package name */
    private int f8467h = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends b {
        a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxDebuggerActivity) {
                com.applovin.impl.sdk.o.g("AppLovinSdk", "Started mediation debugger");
                if (!m3.this.c() || m3.f8458l.get() != activity) {
                    MaxDebuggerActivity maxDebuggerActivity = (MaxDebuggerActivity) activity;
                    WeakReference unused = m3.f8458l = new WeakReference(maxDebuggerActivity);
                    maxDebuggerActivity.setListAdapter(m3.this.f8463d, m3.this.f8460a.e());
                }
                m3.f8459m.set(false);
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof MaxDebuggerActivity) {
                com.applovin.impl.sdk.o.g("AppLovinSdk", "Mediation debugger destroyed");
                WeakReference unused = m3.f8458l = null;
            }
        }
    }

    public m3(com.applovin.impl.sdk.k kVar) {
        this.f8460a = kVar;
        this.f8461b = kVar.O();
        Context o10 = com.applovin.impl.sdk.k.o();
        this.f8462c = o10;
        l3 l3Var = new l3(o10);
        this.f8463d = l3Var;
        this.f8470k = new b0(kVar, l3Var);
    }

    private void f() {
        this.f8460a.e().a(new a());
    }

    public void e() {
        if (this.f8465f.compareAndSet(false, true)) {
            this.f8460a.r0().a((g5) new u5(this, this.f8460a), b6.b.OTHER);
        }
    }

    public boolean g() {
        return this.f8466g;
    }

    public void h() {
        a((Map) null);
    }

    public String toString() {
        return "MediationDebuggerService{, listAdapter=" + this.f8463d + "}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        WeakReference weakReference = f8458l;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        Activity v02 = this.f8460a.v0();
        if (v02 != null && !v02.isFinishing()) {
            new AlertDialog.Builder(v02).setTitle("Review Integration Errors").setMessage("Looks like MAX Mediation Debugger flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this prompt will only be shown in your development builds. Live apps will not be affected.").setPositiveButton("Show Mediation Debugger", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.oc
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    m3.this.a(dialogInterface, i10);
                }
            }).setNegativeButton("DISMISS", (DialogInterface.OnClickListener) null).create().show();
        } else {
            com.applovin.impl.sdk.o.h("AppLovinSdk", "MAX Mediation Debugger has flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this log will only be shown in your development builds. Live apps will not be affected.");
        }
    }

    public void a(boolean z10, int i10) {
        this.f8466g = z10;
        this.f8467h = i10;
    }

    public void a(Map map) {
        this.f8469j = map;
        e();
        if (!c() && f8459m.compareAndSet(false, true)) {
            if (!this.f8468i) {
                f();
                this.f8468i = true;
            }
            Intent intent = new Intent(this.f8462c, MaxDebuggerActivity.class);
            intent.setFlags(268435456);
            com.applovin.impl.sdk.o.g("AppLovinSdk", "Starting mediation debugger...");
            this.f8462c.startActivity(intent);
            return;
        }
        com.applovin.impl.sdk.o.h("AppLovinSdk", "Mediation debugger is already showing");
    }

    public List a(String str) {
        Map map = this.f8469j;
        if (map == null || map.isEmpty()) {
            return null;
        }
        return (List) this.f8469j.get(str);
    }

    private void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b3 b3Var = (b3) it.next();
            if (b3Var.A() && b3Var.q() == b3.a.INVALID_INTEGRATION) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.nc
                    @Override // java.lang.Runnable
                    public final void run() {
                        m3.this.d();
                    }
                }, TimeUnit.SECONDS.toMillis(2L));
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i10) {
        h();
    }

    private List a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "networks", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            if (jSONObject2 != null) {
                b3 b3Var = new b3(jSONObject2, kVar);
                arrayList.add(b3Var);
                this.f8464e.put(b3Var.b(), b3Var);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private List a(JSONObject jSONObject, List list, com.applovin.impl.sdk.k kVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ad_units", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new n(jSONObject2, this.f8464e, kVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private List a(List list, com.applovin.impl.sdk.k kVar) {
        List<String> adUnitIds = kVar.K() != null ? kVar.K().getAdUnitIds() : null;
        if (adUnitIds != null && !adUnitIds.isEmpty()) {
            ArrayList arrayList = new ArrayList(adUnitIds.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                n nVar = (n) it.next();
                if (adUnitIds.contains(nVar.c())) {
                    arrayList.add(nVar);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    private List a(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        for (String str : JsonUtils.getList(jSONObject, "required_app_ads_txt_entries", new ArrayList())) {
            a0 a0Var = new a0(str);
            if (a0Var.h()) {
                arrayList.add(a0Var);
            } else if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8461b;
                oVar.b("MediationDebuggerService", "app-ads.txt entry passed down for validation is misformatted: " + str);
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.q0.e
    public void a(String str, JSONObject jSONObject, int i10) {
        List a10 = a(jSONObject, this.f8460a);
        List a11 = a(jSONObject, a10, this.f8460a);
        List a12 = a(a11, this.f8460a);
        List a13 = a(jSONObject);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "alert", (JSONObject) null);
        this.f8463d.a(a10, a11, a12, a13, JsonUtils.getString(jSONObject2, "title", null), JsonUtils.getString(jSONObject2, "message", null), JsonUtils.getString(jSONObject, "account_id", null), JsonUtils.getBoolean(jSONObject, "should_display_cmp_details", Boolean.TRUE).booleanValue(), this.f8460a);
        if (!a13.isEmpty()) {
            this.f8470k.a();
        }
        if (g()) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mc
                @Override // java.lang.Runnable
                public final void run() {
                    m3.this.h();
                }
            }, TimeUnit.SECONDS.toMillis(this.f8467h));
        } else {
            a(a10);
        }
    }

    @Override // com.applovin.impl.q0.e
    public void a(String str, int i10, String str2, JSONObject jSONObject) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8461b;
            oVar.b("MediationDebuggerService", "Unable to fetch mediation debugger info: server returned " + i10);
        }
        com.applovin.impl.sdk.o.h("AppLovinSdk", "Unable to show mediation debugger.");
        this.f8460a.E().a("fetchMediationDebuggerInfo", str, i10, str2);
        this.f8463d.a(null, null, null, null, null, null, null, false, this.f8460a);
        this.f8465f.set(false);
    }
}
