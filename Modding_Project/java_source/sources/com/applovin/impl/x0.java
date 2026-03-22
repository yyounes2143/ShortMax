package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class x0 extends u0 {

    /* renamed from: c  reason: collision with root package name */
    private Map f10500c;

    public x0(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        super(jSONObject, kVar);
    }

    public Map d() {
        return this.f10500c;
    }

    public String e() {
        return JsonUtils.getString(this.f10087b, "name", null);
    }

    @Override // com.applovin.impl.u0
    public String toString() {
        return "ConsentFlowState{id=" + b() + ", type=" + c() + ", name=" + e() + "}";
    }
}
