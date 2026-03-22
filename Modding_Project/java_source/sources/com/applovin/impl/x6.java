package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class x6 {

    /* renamed from: a  reason: collision with root package name */
    private final a f10536a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f10537b;

    /* renamed from: c  reason: collision with root package name */
    private final String f10538c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10539d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f10540e;

    /* loaded from: classes2.dex */
    public enum a {
        TCF_VENDOR,
        ATP_NETWORK,
        OTHER;

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    return OTHER;
                }
                return ATP_NETWORK;
            }
            return TCF_VENDOR;
        }
    }

    public x6(JSONObject jSONObject, String str) {
        this.f10539d = str;
        this.f10536a = a.b(JsonUtils.getInt(jSONObject, "type", a.OTHER.ordinal()));
        this.f10537b = JsonUtils.getInteger(jSONObject, "id", null);
        this.f10538c = JsonUtils.getString(jSONObject, "name", null);
    }

    public void a(Boolean bool) {
        this.f10540e = bool;
    }

    public String b() {
        return this.f10539d;
    }

    public String c() {
        return this.f10538c;
    }

    public Integer d() {
        return this.f10537b;
    }

    public String e() {
        String a10;
        Boolean bool = this.f10540e;
        if (bool != null) {
            a10 = String.valueOf(bool);
        } else {
            a10 = p0.b().a(com.applovin.impl.sdk.k.o());
        }
        return "\n" + this.f10539d + " - " + a10;
    }

    public a f() {
        return this.f10536a;
    }

    public Boolean a() {
        return this.f10540e;
    }
}
