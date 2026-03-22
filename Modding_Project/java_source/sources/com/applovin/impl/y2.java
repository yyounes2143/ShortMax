package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class y2 extends e3 {
    public y2(x2 x2Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(x2Var, jSONObject, jSONObject2, null, kVar);
    }

    @Override // com.applovin.impl.v2
    public v2 a(com.applovin.impl.mediation.h hVar) {
        return new y2(this, hVar);
    }

    public long l0() {
        long a10 = a("ad_refresh_ms", -1L);
        if (a10 >= 0) {
            return a10;
        }
        return b("ad_refresh_ms", ((Long) this.f8036a.a(o3.f9135p7)).longValue());
    }

    public long m0() {
        return k7.e(a("bg_color", (String) null));
    }

    public int n0() {
        int a10 = a("ad_view_height", -2);
        if (a10 == -2) {
            MaxAdFormat format = getFormat();
            if (format.isAdViewAd()) {
                return format.getSize().getHeight();
            }
            throw new IllegalStateException("Invalid ad format");
        }
        return a10;
    }

    public long o0() {
        return a("viewability_imp_delay_ms", ((Long) this.f8036a.a(v4.f10291l1)).longValue());
    }

    public int p0() {
        int a10 = a("ad_view_width", -2);
        if (a10 == -2) {
            MaxAdFormat format = getFormat();
            if (format.isAdViewAd()) {
                return format.getSize().getWidth();
            }
            throw new IllegalStateException("Invalid ad format");
        }
        return a10;
    }

    public boolean q0() {
        if (l0() >= 0) {
            return true;
        }
        return false;
    }

    public boolean r0() {
        return a("proe", (Boolean) this.f8036a.a(o3.R7)).booleanValue();
    }

    private y2(y2 y2Var, com.applovin.impl.mediation.h hVar) {
        super(y2Var.M(), y2Var.a(), y2Var.g(), hVar, y2Var.f8036a);
    }
}
