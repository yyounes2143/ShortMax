package com.applovin.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class h5 extends g5 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h5(com.applovin.impl.sdk.k kVar) {
        super("TaskApiSubmitData", kVar);
    }

    private void b(JSONObject jSONObject) {
        com.applovin.impl.sdk.l B = this.f7960a.B();
        Map o10 = B.o();
        k7.a("platform", "type", o10);
        k7.a("api_level", "sdk_version", o10);
        JsonUtils.putObject(jSONObject, "device_info", new JSONObject(o10));
        Map E = B.E();
        k7.a("sdk_version", "applovin_sdk_version", E);
        k7.a("ia", "installed_at", E);
        JsonUtils.putObject(jSONObject, "app_info", new JSONObject(E));
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.d(this.f7961b, "Submitting user data...");
        }
        Map c10 = r0.c(this.f7960a);
        JSONObject jSONObject = new JSONObject();
        b(jSONObject);
        if (((Boolean) this.f7960a.a(v4.f10367u5)).booleanValue() || ((Boolean) this.f7960a.a(v4.f10319o5)).booleanValue()) {
            JsonUtils.putAll(jSONObject, c10);
            c10 = null;
        }
        a(c10, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends j6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            h5.this.a(jSONObject);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            r0.a(i10, this.f7960a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        this.f7960a.p0().a(v4.f10241f, JsonUtils.getString(jSONObject2, "device_id", ""));
        this.f7960a.p0().a(v4.f10273j, JsonUtils.getString(jSONObject2, "device_token", ""));
        r0.a(jSONObject2, this.f7960a);
    }

    private void a(Map map, JSONObject jSONObject) {
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f7960a).b(r0.b("2.0/device", this.f7960a)).a(r0.a("2.0/device", this.f7960a)).b(map).a(jSONObject).c(ShareTarget.METHOD_POST).b(((Boolean) this.f7960a.a(v4.B5)).booleanValue()).a((Object) new JSONObject()).a(((Integer) this.f7960a.a(v4.X2)).intValue()).a(s4.a.a(((Integer) this.f7960a.a(v4.f10303m5)).intValue())).a(), this.f7960a);
        aVar.c(v4.f10330q0);
        aVar.b(v4.f10338r0);
        this.f7960a.r0().a(aVar);
    }
}
