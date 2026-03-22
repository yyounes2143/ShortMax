package com.applovin.impl;

import com.adjust.sdk.Constants;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f1 {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f7907a;

    public f1(JSONObject jSONObject) {
        this.f7907a = jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer a() {
        return JsonUtils.getInteger(this.f7907a, "dark_mode_toolbar_color", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        return JsonUtils.getString(this.f7907a, "digital_asset_link_url", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean c() {
        return JsonUtils.getBoolean(this.f7907a, "instant_apps_enabled", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String d() {
        return JsonUtils.getString(this.f7907a, Constants.REFERRER, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer e() {
        return JsonUtils.getInteger(this.f7907a, "session_url_relation", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer f() {
        return JsonUtils.getInteger(this.f7907a, "share_state", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean g() {
        return JsonUtils.getBoolean(this.f7907a, "should_show_title", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer h() {
        return JsonUtils.getInteger(this.f7907a, "toolbar_color", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean i() {
        return JsonUtils.getBoolean(this.f7907a, "url_bar_hiding_enabled", null);
    }
}
