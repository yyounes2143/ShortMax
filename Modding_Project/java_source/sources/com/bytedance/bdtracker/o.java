package com.bytedance.bdtracker;

import com.appsflyer.AppsFlyerProperties;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.net.DNSParser;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class o extends p {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public String f12271b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public String f12272c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public String f12273d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public String f12274e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public String f12275f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public String f12276g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f12277h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f12278i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public String f12279j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public String f12280k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public String f12281l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public String f12282m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public String f12283n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public String f12284o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    public String f12285p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public String f12286q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    public String f12287r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public String f12288s;

    @Override // com.bytedance.bdtracker.p
    @NotNull
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, this.f12271b);
        jSONObject.put("device_id", this.f12272c);
        jSONObject.put("bd_did", this.f12273d);
        jSONObject.put("install_id", this.f12274e);
        jSONObject.put("os", this.f12275f);
        jSONObject.put("caid", this.f12276g);
        jSONObject.put("androidid", this.f12281l);
        jSONObject.put("imei", this.f12282m);
        jSONObject.put("oaid", this.f12283n);
        jSONObject.put("google_aid", this.f12284o);
        jSONObject.put(DNSParser.DNS_RESULT_IP, this.f12285p);
        jSONObject.put("ua", this.f12286q);
        jSONObject.put("device_model", this.f12287r);
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, this.f12288s);
        jSONObject.put("is_new_user", this.f12277h);
        jSONObject.put("exist_app_cache", this.f12278i);
        jSONObject.put("app_version", this.f12279j);
        jSONObject.put(AppsFlyerProperties.CHANNEL, this.f12280k);
        return jSONObject;
    }

    @Override // com.bytedance.bdtracker.p
    public void a(@Nullable JSONObject jSONObject) {
    }
}
