package com.bytedance.bdtracker;

import com.mbridge.msdk.mbbid.out.BidResponsed;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class k extends p {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public String f12117b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public String f12118c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public String f12119d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public String f12120e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public String f12121f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public String f12122g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public String f12123h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public String f12124i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public String f12125j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public String f12126k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public String f12127l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public String f12128m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f12129n;

    /* renamed from: o  reason: collision with root package name */
    public int f12130o;

    /* renamed from: p  reason: collision with root package name */
    public long f12131p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public String f12132q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    public String f12133r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public String f12134s;

    @Override // com.bytedance.bdtracker.p
    @NotNull
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", this.f12117b);
        jSONObject.put("utm_campaign", this.f12118c);
        jSONObject.put("utm_source", this.f12119d);
        jSONObject.put("utm_medium", this.f12120e);
        jSONObject.put("utm_content", this.f12121f);
        jSONObject.put("utm_term", this.f12122g);
        jSONObject.put("tr_shareuser", this.f12123h);
        jSONObject.put("tr_admaster", this.f12124i);
        jSONObject.put("tr_param1", this.f12125j);
        jSONObject.put("tr_param2", this.f12126k);
        jSONObject.put("tr_param3", this.f12127l);
        jSONObject.put("tr_param4", this.f12128m);
        jSONObject.put("tr_dp", this.f12132q);
        jSONObject.put("is_retargeting", this.f12129n);
        jSONObject.put("reengagement_window", this.f12130o);
        jSONObject.put("reengagement_time", this.f12131p);
        jSONObject.put("deeplink_value", this.f12133r);
        jSONObject.put(BidResponsed.KEY_TOKEN, this.f12134s);
        return jSONObject;
    }

    @Override // com.bytedance.bdtracker.p
    public void a(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f12117b = jSONObject.optString("name", null);
            this.f12118c = jSONObject.optString("utm_campaign", null);
            this.f12119d = jSONObject.optString("utm_source", null);
            this.f12120e = jSONObject.optString("utm_medium", null);
            this.f12121f = jSONObject.optString("utm_content", null);
            this.f12122g = jSONObject.optString("utm_term", null);
            this.f12123h = jSONObject.optString("tr_shareuser", null);
            this.f12124i = jSONObject.optString("tr_admaster", null);
            this.f12125j = jSONObject.optString("tr_param1", null);
            this.f12126k = jSONObject.optString("tr_param2", null);
            this.f12127l = jSONObject.optString("tr_param3", null);
            this.f12128m = jSONObject.optString("tr_param4", null);
            this.f12129n = jSONObject.optBoolean("is_retargeting");
            this.f12130o = jSONObject.optInt("reengagement_window");
            this.f12131p = jSONObject.optLong("reengagement_time");
            this.f12132q = jSONObject.optString("tr_dp", null);
            this.f12133r = jSONObject.optString("deeplink_value", null);
            this.f12134s = jSONObject.optString(BidResponsed.KEY_TOKEN, null);
        }
    }
}
