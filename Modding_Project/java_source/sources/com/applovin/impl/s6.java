package com.applovin.impl;

import com.applovin.impl.q0;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.Collections;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class s6 extends o6 {
    /* JADX INFO: Access modifiers changed from: protected */
    public s6(String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
    }

    private l4 b(JSONObject jSONObject) {
        Map<String, String> emptyMap;
        String str;
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        r0.c(jSONObject2, this.f7960a);
        r0.b(jSONObject, this.f7960a);
        r0.a(jSONObject, this.f7960a);
        try {
            emptyMap = JsonUtils.toStringMap((JSONObject) jSONObject2.get(MetricsSQLiteCacheKt.METRICS_PARAMS));
        } catch (Throwable unused) {
            emptyMap = Collections.emptyMap();
        }
        try {
            str = jSONObject2.getString("result");
        } catch (Throwable unused2) {
            str = IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT;
        }
        return l4.a(str, emptyMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject) {
        l4 b10 = b(jSONObject);
        a(b10);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Pending reward handled: " + b10);
        }
    }

    protected abstract void a(l4 l4Var);

    @Override // com.applovin.impl.o6
    protected int g() {
        return ((Integer) this.f7960a.a(v4.f10227d1)).intValue();
    }

    protected abstract boolean h();

    @Override // java.lang.Runnable
    public void run() {
        a(e(), new a());
    }

    /* loaded from: classes2.dex */
    class a implements q0.e {
        a() {
        }

        @Override // com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            if (s6.this.h()) {
                com.applovin.impl.sdk.o oVar = s6.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    s6 s6Var = s6.this;
                    com.applovin.impl.sdk.o oVar2 = s6Var.f7962c;
                    String str2 = s6Var.f7961b;
                    oVar2.b(str2, "Reward validation succeeded with code " + i10 + " but task was cancelled already");
                }
                com.applovin.impl.sdk.o oVar3 = s6.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    s6 s6Var2 = s6.this;
                    com.applovin.impl.sdk.o oVar4 = s6Var2.f7962c;
                    String str3 = s6Var2.f7961b;
                    oVar4.b(str3, "Response: " + jSONObject);
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.o oVar5 = s6.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                s6 s6Var3 = s6.this;
                com.applovin.impl.sdk.o oVar6 = s6Var3.f7962c;
                String str4 = s6Var3.f7961b;
                oVar6.a(str4, "Reward validation succeeded with code " + i10 + " and response: " + jSONObject);
            }
            s6.this.c(jSONObject);
        }

        @Override // com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            if (s6.this.h()) {
                com.applovin.impl.sdk.o oVar = s6.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    s6 s6Var = s6.this;
                    com.applovin.impl.sdk.o oVar2 = s6Var.f7962c;
                    String str3 = s6Var.f7961b;
                    oVar2.b(str3, "Reward validation failed with error code " + i10 + " but task was cancelled already");
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.o oVar3 = s6.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                s6 s6Var2 = s6.this;
                com.applovin.impl.sdk.o oVar4 = s6Var2.f7962c;
                String str4 = s6Var2.f7961b;
                oVar4.b(str4, "Reward validation failed with code " + i10 + " and error: " + str2);
            }
            s6.this.a(i10);
        }
    }
}
