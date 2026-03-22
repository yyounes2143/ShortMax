package com.applovin.impl;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class z2 extends v2 implements s1 {
    private String A;

    /* renamed from: u  reason: collision with root package name */
    private final Bundle f10694u;

    /* renamed from: v  reason: collision with root package name */
    private final AtomicReference f10695v;

    /* renamed from: w  reason: collision with root package name */
    private final AtomicBoolean f10696w;

    /* renamed from: x  reason: collision with root package name */
    private final AtomicBoolean f10697x;

    /* renamed from: y  reason: collision with root package name */
    private final AtomicBoolean f10698y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f10699z;

    public z2(x2 x2Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(x2Var, jSONObject, jSONObject2, null, kVar);
        this.f10694u = new Bundle();
        this.f10697x = new AtomicBoolean();
        this.f10698y = new AtomicBoolean();
        this.f10695v = new AtomicReference();
        this.f10696w = new AtomicBoolean();
    }

    private long e0() {
        long a10 = a("ad_expiration_ms", -1L);
        if (a10 < 0) {
            return b("ad_expiration_ms", ((Long) this.f8036a.a(o3.I7)).longValue());
        }
        return a10;
    }

    @Override // com.applovin.impl.v2
    public v2 a(com.applovin.impl.mediation.h hVar) {
        return new z2(this, hVar);
    }

    public void d0() {
        this.f10696w.set(true);
    }

    public long f0() {
        return a("ahdm", ((Long) this.f8036a.a(o3.C7)).longValue());
    }

    public long g0() {
        long a10 = a("ad_hidden_on_ad_dismiss_callback_delay_ms", -1L);
        if (a10 >= 0) {
            return a10;
        }
        return b("ad_hidden_on_ad_dismiss_callback_delay_ms", ((Long) this.f8036a.a(o3.Q7)).longValue());
    }

    @Override // com.applovin.impl.s1
    public long getTimeToLiveMillis() {
        return e0() - (SystemClock.elapsedRealtime() - H());
    }

    public long h0() {
        long a10 = a("ad_hidden_timeout_ms", -1L);
        if (a10 >= 0) {
            return a10;
        }
        return b("ad_hidden_timeout_ms", ((Long) this.f8036a.a(o3.N7)).longValue());
    }

    public l4 i0() {
        return (l4) this.f10695v.getAndSet(null);
    }

    public void j(String str) {
        this.A = str;
    }

    public long j0() {
        if (H() > 0) {
            return SystemClock.elapsedRealtime() - H();
        }
        return -1L;
    }

    public Bundle k0() {
        return this.f10694u;
    }

    public long l0() {
        long a10 = a("fullscreen_display_delay_ms", -1L);
        if (a10 >= 0) {
            return a10;
        }
        return ((Long) this.f8036a.a(o3.A7)).longValue();
    }

    public String m0() {
        return b("mcode", "");
    }

    public AtomicBoolean n0() {
        return this.f10697x;
    }

    public String o0() {
        return this.A;
    }

    public AtomicBoolean p0() {
        return this.f10698y;
    }

    public boolean q0() {
        return this.f10696w.get();
    }

    public boolean r0() {
        if (a("schedule_ad_hidden_on_ad_dismiss", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_ad_dismiss", (Boolean) this.f8036a.a(o3.O7)).booleanValue();
    }

    public boolean s0() {
        if (a("schedule_ad_hidden_on_single_task_app_relaunch", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_single_task_app_relaunch", (Boolean) this.f8036a.a(o3.P7)).booleanValue();
    }

    @Override // com.applovin.impl.s1
    public void setExpired() {
        this.f10699z = true;
    }

    public boolean t0() {
        return a("susaode", (Boolean) this.f8036a.a(o3.B7)).booleanValue();
    }

    @Override // com.applovin.impl.v2
    public void a(Bundle bundle) {
        Bundle bundle2;
        super.a(bundle);
        if (bundle == null || (bundle2 = bundle.getBundle("applovin_ad_view_info")) == null) {
            return;
        }
        this.f10694u.putBundle("applovin_ad_view_info", bundle2);
    }

    public void a(l4 l4Var) {
        this.f10695v.set(l4Var);
    }

    private z2(z2 z2Var, com.applovin.impl.mediation.h hVar) {
        super(z2Var.M(), z2Var.a(), z2Var.g(), hVar, z2Var.f8036a);
        this.f10694u = new Bundle();
        this.f10697x = new AtomicBoolean();
        this.f10698y = new AtomicBoolean();
        this.f10695v = z2Var.f10695v;
        this.f10696w = z2Var.f10696w;
    }
}
