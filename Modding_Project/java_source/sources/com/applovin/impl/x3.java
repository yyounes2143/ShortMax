package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class x3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f10507a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10508b;

    public x3(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        this.f10507a = JsonUtils.getString(jSONObject, "id", "");
        this.f10508b = JsonUtils.getString(jSONObject, "price", null);
    }

    public String a() {
        return this.f10507a;
    }

    public String b() {
        return this.f10508b;
    }
}
