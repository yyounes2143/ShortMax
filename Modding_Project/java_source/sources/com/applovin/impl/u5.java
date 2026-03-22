package com.applovin.impl;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.q0;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.v;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class u5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final q0.e f10123g;

    public u5(q0.e eVar, com.applovin.impl.sdk.k kVar) {
        super("TaskFetchMediationDebuggerInfo", kVar, true);
        this.f10123g = eVar;
    }

    protected Map e() {
        HashMap hashMap = new HashMap();
        hashMap.put("sdk_version", AppLovinSdk.VERSION);
        if (!((Boolean) this.f7960a.a(v4.f10205a5)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f7960a.j0());
        }
        Map E = this.f7960a.B().E();
        hashMap.put("package_name", String.valueOf(E.get("package_name")));
        hashMap.put("app_version", String.valueOf(E.get("app_version")));
        Map L = this.f7960a.B().L();
        hashMap.put("platform", String.valueOf(L.get("platform")));
        hashMap.put("os", String.valueOf(L.get("os")));
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map e10 = e();
        JSONObject a10 = a(a());
        if (((Boolean) this.f7960a.a(v4.f10343r5)).booleanValue() || ((Boolean) this.f7960a.a(v4.f10319o5)).booleanValue()) {
            JsonUtils.putAll(a10, e10);
            e10 = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f7960a).c(ShareTarget.METHOD_POST).b(i3.i(this.f7960a)).a(i3.h(this.f7960a)).b(e10).a(a10).a((Object) new JSONObject()).c(((Long) this.f7960a.a(o3.f9125k7)).intValue()).a(s4.a.a(((Integer) this.f7960a.a(v4.f10263h5)).intValue())).a(), this.f7960a, d());
        aVar.c(o3.f9117g7);
        aVar.b(o3.f9119h7);
        this.f7960a.r0().a(aVar);
    }

    /* loaded from: classes2.dex */
    class a extends j6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z10) {
            super(aVar, kVar, z10);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            u5.this.f10123g.a(str, jSONObject, i10);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            u5.this.f10123g.a(str, i10, str2, jSONObject);
        }
    }

    private JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putJsonArrayIfValid(jSONObject, "installed_mediation_adapters", t3.b(this.f7960a));
        JsonUtils.putBoolean(jSONObject, "is_tablet", AppLovinSdkUtils.isTablet(context));
        v.a f10 = this.f7960a.B().f();
        JsonUtils.putStringIfValid(jSONObject, "dnt_code", f10.b().b());
        JsonUtils.putStringIfValid(jSONObject, "idfa", f10.a());
        Map l02 = this.f7960a.l0();
        if (!CollectionUtils.isEmpty(l02)) {
            JsonUtils.putJSONObject(jSONObject, "segments", new JSONObject(l02));
        }
        return jSONObject;
    }
}
