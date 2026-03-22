package com.bytedance.bdtracker;

import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class l extends p {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public String f12171b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public String f12172c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public String f12173d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public String f12174e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public String f12175f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public String f12176g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public String f12177h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public String f12178i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public String f12179j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public String f12180k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public String f12181l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public String f12182m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public String f12183n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public String f12184o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    public Integer f12185p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public String f12186q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    public String f12187r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public String f12188s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    public String f12189t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    public String f12190u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    public String f12191v;

    @Override // com.bytedance.bdtracker.p
    @NotNull
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(BidResponsed.KEY_TOKEN, this.f12184o);
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, this.f12171b);
        jSONObject.put("os", this.f12181l);
        jSONObject.put("bd_did", this.f12172c);
        jSONObject.put("ssid", this.f12173d);
        jSONObject.put("user_unique_id", this.f12174e);
        jSONObject.put("androidid", this.f12177h);
        jSONObject.put("imei", this.f12178i);
        jSONObject.put("oaid", this.f12179j);
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, this.f12182m);
        jSONObject.put("device_model", this.f12183n);
        jSONObject.put("google_aid", this.f12180k);
        jSONObject.put("click_time", this.f12185p);
        jSONObject.put("tr_shareuser", this.f12186q);
        jSONObject.put("tr_admaster", this.f12187r);
        jSONObject.put("tr_param1", this.f12188s);
        jSONObject.put("tr_param2", this.f12189t);
        jSONObject.put("tr_param3", this.f12190u);
        jSONObject.put("tr_param4", this.f12191v);
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_ABVERSION, this.f12175f);
        jSONObject.put("tr_web_ssid", this.f12176g);
        return jSONObject;
    }

    public final void b(@Nullable String str) {
        this.f12172c = str;
    }

    @Nullable
    public final String c() {
        return this.f12175f;
    }

    @Nullable
    public final String d() {
        return this.f12184o;
    }

    @Nullable
    public final String e() {
        return this.f12176g;
    }

    public final void a(@Nullable String str) {
        this.f12171b = str;
    }

    public final void c(@Nullable String str) {
        this.f12173d = str;
    }

    public final void d(@Nullable String str) {
        this.f12174e = str;
    }

    @Override // com.bytedance.bdtracker.p
    public void a(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f12184o = jSONObject.optString("tr_token", null);
            this.f12171b = jSONObject.optString(TTVideoEngineInterface.PLAY_API_KEY_APPID, null);
            this.f12181l = jSONObject.optString("os", null);
            this.f12172c = jSONObject.optString("bd_did", null);
            this.f12173d = jSONObject.optString("ssid", null);
            this.f12174e = jSONObject.optString("user_unique_id", null);
            this.f12177h = jSONObject.optString("androidid", null);
            this.f12178i = jSONObject.optString("imei", null);
            this.f12179j = jSONObject.optString("oaid", null);
            this.f12182m = jSONObject.optString(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, null);
            this.f12183n = jSONObject.optString("device_model", null);
            this.f12180k = jSONObject.optString("google_aid", null);
            this.f12185p = Integer.valueOf(jSONObject.optInt("click_time"));
            this.f12186q = jSONObject.optString("tr_shareuser", null);
            this.f12187r = jSONObject.optString("tr_admaster", null);
            this.f12188s = jSONObject.optString("tr_param1", null);
            this.f12189t = jSONObject.optString("tr_param2", null);
            this.f12190u = jSONObject.optString("tr_param3", null);
            this.f12191v = jSONObject.optString("tr_param4", null);
            this.f12175f = jSONObject.optString(TTVideoEngineInterface.PLAY_API_KEY_ABVERSION, null);
            this.f12176g = jSONObject.optString("tr_web_ssid", null);
        }
    }
}
