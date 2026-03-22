package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class k6 extends m6 {

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.b f8243g;

    public k6(com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        super("TaskReportAppLovinReward", kVar);
        this.f8243g = bVar;
    }

    @Override // com.applovin.impl.o6
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, this.f8243g.getAdZone().e());
        JsonUtils.putInt(jSONObject, "fire_percent", this.f8243g.Z());
        String clCode = this.f8243g.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.m6
    protected void b(JSONObject jSONObject) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Reported reward successfully for ad: " + this.f8243g);
        }
    }

    @Override // com.applovin.impl.o6
    protected String f() {
        return "2.0/cr";
    }

    @Override // com.applovin.impl.m6
    protected l4 h() {
        return this.f8243g.i();
    }

    @Override // com.applovin.impl.m6
    protected void i() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.b(str, "No reward result was found for ad: " + this.f8243g);
        }
    }

    @Override // com.applovin.impl.o6
    protected void a(int i10) {
        super.a(i10);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.b(str, "Failed to report reward for ad: " + this.f8243g + " - error code: " + i10);
        }
        this.f7960a.g().a(c2.f7670u, this.f8243g);
    }
}
