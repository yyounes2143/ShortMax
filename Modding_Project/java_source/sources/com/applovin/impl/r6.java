package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.appsflyer.AdRevenueScheme;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class r6 extends s6 {

    /* renamed from: g  reason: collision with root package name */
    private final z2 f9409g;

    public r6(z2 z2Var, com.applovin.impl.sdk.k kVar) {
        super("TaskValidateMaxReward", kVar);
        this.f9409g = z2Var;
    }

    @Override // com.applovin.impl.o6
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.f9409g.getAdUnitId());
        JsonUtils.putString(jSONObject, AdRevenueScheme.PLACEMENT, this.f9409g.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.f9409g.e());
        JsonUtils.putString(jSONObject, "ad_format", this.f9409g.getFormat().getLabel());
        String m02 = this.f9409g.m0();
        if (!StringUtils.isValidString(m02)) {
            m02 = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", m02);
        String C = this.f9409g.C();
        if (!StringUtils.isValidString(C)) {
            C = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", C);
    }

    @Override // com.applovin.impl.o6
    protected String f() {
        return "2.0/mvr";
    }

    @Override // com.applovin.impl.s6
    protected boolean h() {
        return this.f9409g.q0();
    }

    @Override // com.applovin.impl.s6
    protected void a(l4 l4Var) {
        this.f9409g.a(l4Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.o6
    public void a(int i10) {
        String str;
        super.a(i10);
        if (i10 >= 400 && i10 < 500) {
            str = "rejected";
        } else {
            str = IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT;
        }
        this.f9409g.a(l4.a(str));
        this.f7960a.P().a(c2.f7645h0, this.f9409g, CollectionUtils.hashMap("error_message", str));
    }
}
