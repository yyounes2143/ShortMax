package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class e3 extends v2 {
    /* JADX INFO: Access modifiers changed from: protected */
    public e3(x2 x2Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.h hVar, com.applovin.impl.sdk.k kVar) {
        super(x2Var, jSONObject, jSONObject2, hVar, kVar);
    }

    public float d0() {
        return a("viewability_min_alpha", ((Float) this.f8036a.a(v4.f10363u1)).floatValue() / 100.0f);
    }

    public int e0() {
        return a("viewability_min_pixels", -1);
    }

    public int f0() {
        v4 v4Var;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            v4Var = v4.f10307n1;
        } else if (format == MaxAdFormat.MREC) {
            v4Var = v4.f10323p1;
        } else if (format == MaxAdFormat.LEADER) {
            v4Var = v4.f10339r1;
        } else if (format == MaxAdFormat.NATIVE) {
            v4Var = v4.f10355t1;
        } else {
            v4Var = null;
        }
        if (v4Var != null) {
            return a("viewability_min_height", ((Integer) this.f8036a.a(v4Var)).intValue());
        }
        return 0;
    }

    public float g0() {
        return a("viewability_min_percentage_dp", -1.0f);
    }

    public float h0() {
        return a("viewability_min_percentage_pixels", -1.0f);
    }

    public long i0() {
        return a("viewability_timer_min_visible_ms", ((Long) this.f8036a.a(v4.f10371v1)).longValue());
    }

    public int j0() {
        v4 v4Var;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            v4Var = v4.f10299m1;
        } else if (format == MaxAdFormat.MREC) {
            v4Var = v4.f10315o1;
        } else if (format == MaxAdFormat.LEADER) {
            v4Var = v4.f10331q1;
        } else if (format == MaxAdFormat.NATIVE) {
            v4Var = v4.f10347s1;
        } else {
            v4Var = null;
        }
        if (v4Var != null) {
            return a("viewability_min_width", ((Integer) this.f8036a.a(v4Var)).intValue());
        }
        return 0;
    }

    public boolean k0() {
        if (e0() < 0 && g0() < 0.0f && h0() < 0.0f) {
            return false;
        }
        return true;
    }
}
