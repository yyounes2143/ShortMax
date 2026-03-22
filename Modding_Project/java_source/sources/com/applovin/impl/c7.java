package com.applovin.impl;

import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class c7 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7713a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7714b;

    /* renamed from: c  reason: collision with root package name */
    private List f7715c;

    public c7(com.applovin.impl.sdk.k kVar) {
        boolean z10;
        this.f7713a = kVar;
        x4 x4Var = x4.H;
        if (!((Boolean) kVar.a(x4Var, Boolean.FALSE)).booleanValue() && !y.a(com.applovin.impl.sdk.k.o()).a("applovin.sdk.is_test_environment") && !AppLovinSdkUtils.isEmulator() && !kVar.B().R()) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.f7714b = z10;
        kVar.c(x4Var);
    }

    private void e() {
        com.applovin.impl.sdk.j u10 = this.f7713a.u();
        if (this.f7714b) {
            u10.b(this.f7715c);
        } else {
            u10.a(this.f7715c);
        }
    }

    public void a(String str) {
        if (StringUtils.isValidString(str)) {
            a(Collections.singletonList(str));
        } else {
            a((List) null);
        }
    }

    public List b() {
        return this.f7715c;
    }

    public boolean c() {
        return this.f7714b;
    }

    public boolean d() {
        List list = this.f7715c;
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }

    public void a(List list) {
        if (list == null && this.f7715c == null) {
            return;
        }
        if (list == null || !list.equals(this.f7715c)) {
            this.f7715c = list;
            e();
        }
    }

    public void a() {
        this.f7713a.b(x4.H, Boolean.TRUE);
    }

    public void a(JSONObject jSONObject) {
        if (this.f7714b) {
            return;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "test_mode_idfas", new JSONArray());
        com.applovin.impl.sdk.l B = this.f7713a.B();
        boolean R = B.R();
        String a10 = B.f().a();
        l.b F = B.F();
        this.f7714b = R || JsonUtils.containsCaseInsensitiveString(a10, jSONArray) || JsonUtils.containsCaseInsensitiveString(F != null ? F.f9781a : null, jSONArray);
    }
}
