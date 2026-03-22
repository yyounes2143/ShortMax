package com.applovin.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.q0;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class o6 extends g5 {
    /* JADX INFO: Access modifiers changed from: protected */
    public o6(String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
    }

    protected abstract void a(JSONObject jSONObject);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject, q0.e eVar) {
        Map c10 = r0.c(this.f7960a);
        if (((Boolean) this.f7960a.a(v4.f10375v5)).booleanValue() || ((Boolean) this.f7960a.a(v4.f10319o5)).booleanValue()) {
            JsonUtils.putAll(jSONObject, c10);
            c10 = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f7960a).b(r0.b(f(), this.f7960a)).a(r0.a(f(), this.f7960a)).b(c10).a(jSONObject).c(ShareTarget.METHOD_POST).b(((Boolean) this.f7960a.a(v4.E5)).booleanValue()).a((Object) new JSONObject()).a(g()).a(s4.a.a(((Integer) this.f7960a.a(v4.f10311n5)).intValue())).a(), this.f7960a, eVar);
        aVar.c(v4.f10330q0);
        aVar.b(v4.f10338r0);
        this.f7960a.r0().a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        String e10 = this.f7960a.x0().e();
        if (((Boolean) this.f7960a.a(v4.f10397y3)).booleanValue() && StringUtils.isValidString(e10)) {
            JsonUtils.putString(jSONObject, "cuid", e10);
        }
        if (((Boolean) this.f7960a.a(v4.A3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "compass_random_token", this.f7960a.v());
        }
        if (((Boolean) this.f7960a.a(v4.C3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "applovin_random_token", this.f7960a.i0());
        }
        a(jSONObject);
        return jSONObject;
    }

    protected abstract String f();

    protected abstract int g();

    /* loaded from: classes2.dex */
    class a extends j6 {

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ q0.e f9156m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, q0.e eVar) {
            super(aVar, kVar);
            this.f9156m = eVar;
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            this.f9156m.a(str, jSONObject, i10);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            this.f9156m.a(str, i10, str2, jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i10) {
        r0.a(i10, this.f7960a);
    }
}
