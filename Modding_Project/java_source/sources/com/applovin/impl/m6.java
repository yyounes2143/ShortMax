package com.applovin.impl;

import com.applovin.impl.q0;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class m6 extends o6 {
    /* JADX INFO: Access modifiers changed from: protected */
    public m6(String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
    }

    private JSONObject a(l4 l4Var) {
        JSONObject e10 = e();
        JsonUtils.putString(e10, "result", l4Var.b());
        Map a10 = l4Var.a();
        if (a10 != null) {
            JsonUtils.putJSONObject(e10, MetricsSQLiteCacheKt.METRICS_PARAMS, new JSONObject(a10));
        }
        return e10;
    }

    protected abstract void b(JSONObject jSONObject);

    @Override // com.applovin.impl.o6
    protected int g() {
        return ((Integer) this.f7960a.a(v4.f10235e1)).intValue();
    }

    protected abstract l4 h();

    protected abstract void i();

    @Override // java.lang.Runnable
    public void run() {
        l4 h10 = h();
        if (h10 != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.a(str, "Reporting pending reward: " + h10 + "...");
            }
            a(a(h10), new a());
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.b(this.f7961b, "Pending reward not found");
        }
        i();
    }

    /* loaded from: classes2.dex */
    class a implements q0.e {
        a() {
        }

        @Override // com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            m6.this.b(jSONObject);
        }

        @Override // com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            m6.this.a(i10);
        }
    }
}
