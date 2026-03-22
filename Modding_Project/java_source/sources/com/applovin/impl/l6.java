package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.appsflyer.AdRevenueScheme;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class l6 extends m6 {

    /* renamed from: g  reason: collision with root package name */
    private final z2 f8375g;

    public l6(z2 z2Var, com.applovin.impl.sdk.k kVar) {
        super("TaskReportMaxReward", kVar);
        this.f8375g = z2Var;
    }

    @Override // com.applovin.impl.o6
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.f8375g.getAdUnitId());
        JsonUtils.putString(jSONObject, AdRevenueScheme.PLACEMENT, this.f8375g.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.f8375g.e());
        String m02 = this.f8375g.m0();
        if (!StringUtils.isValidString(m02)) {
            m02 = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", m02);
        String C = this.f8375g.C();
        if (!StringUtils.isValidString(C)) {
            C = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", C);
    }

    @Override // com.applovin.impl.m6
    protected void b(JSONObject jSONObject) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Reported reward successfully for mediated ad: " + this.f8375g);
        }
    }

    @Override // com.applovin.impl.o6
    protected String f() {
        return "2.0/mcr";
    }

    @Override // com.applovin.impl.m6
    protected l4 h() {
        return this.f8375g.i0();
    }

    @Override // com.applovin.impl.m6
    protected void i() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.b(str, "No reward result was found for mediated ad: " + this.f8375g);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.o6
    public void a(int i10) {
        super.a(i10);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Failed to report reward for mediated ad: " + this.f8375g + " - error code: " + i10);
        }
        this.f7960a.P().a(c2.f7643g0, this.f8375g);
    }
}
