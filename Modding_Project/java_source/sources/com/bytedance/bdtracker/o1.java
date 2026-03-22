package com.bytedance.bdtracker;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class o1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final d f12290e;

    /* renamed from: f  reason: collision with root package name */
    public final p1 f12291f;

    public o1(d dVar, Context context, p1 p1Var) {
        super(false, false);
        this.f12290e = dVar;
        this.f12291f = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Config";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        jSONObject.put("sdk_version", 6150490);
        jSONObject.put("sdk_version_code", 16150089);
        jSONObject.put("sdk_version_name", "6.15.4");
        jSONObject.put(AppsFlyerProperties.CHANNEL, this.f12291f.b());
        jSONObject.put("not_request_sender", this.f12291f.f12304c.getNotReuqestSender() ? 1 : 0);
        r1.a(jSONObject, TTVideoEngineInterface.PLAY_API_KEY_APPID, this.f12291f.f12304c.getAid());
        r1.a(jSONObject, "release_build", this.f12291f.f12304c.getReleaseBuild());
        r1.a(jSONObject, "user_agent", this.f12291f.f12307f.getString("user_agent", null));
        r1.a(jSONObject, "ab_sdk_version", this.f12291f.f12305d.getString("ab_sdk_version", ""));
        String language = this.f12291f.f12304c.getLanguage();
        if (TextUtils.isEmpty(language)) {
            language = this.f12291f.f12307f.getString("app_language", null);
        }
        r1.a(jSONObject, "app_language", language);
        String region = this.f12291f.f12304c.getRegion();
        if (TextUtils.isEmpty(region)) {
            region = this.f12291f.f12307f.getString("app_region", null);
        }
        r1.a(jSONObject, "app_region", region);
        String string = this.f12291f.f12305d.getString("app_track", null);
        if (!TextUtils.isEmpty(string)) {
            try {
                jSONObject.put("app_track", new JSONObject(string));
            } catch (Throwable th2) {
                this.f12290e.D.error("JSON handle appTrack failed", th2, new Object[0]);
            }
        }
        String string2 = this.f12291f.f12305d.getString("header_custom_info", null);
        if (string2 != null && string2.length() > 0) {
            try {
                JSONObject jSONObject2 = new JSONObject(string2);
                jSONObject2.remove("_debug_flag");
                jSONObject.put("custom", jSONObject2);
            } catch (Throwable th3) {
                this.f12290e.D.error("JSON handle failed", th3, new Object[0]);
            }
        }
        String f10 = this.f12291f.f();
        if (TextUtils.isEmpty(f10)) {
            return true;
        }
        r1.a(jSONObject, "user_unique_id", f10);
        return true;
    }
}
