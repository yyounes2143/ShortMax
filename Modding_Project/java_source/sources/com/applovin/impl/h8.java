package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.bytedance.vodsetting.Module;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class h8 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8054a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8055b;

    /* renamed from: c  reason: collision with root package name */
    private final List f8056c;

    public h8(JSONObject jSONObject) {
        this.f8054a = JsonUtils.getString(jSONObject, "user_type", Module.ALL);
        this.f8055b = JsonUtils.getString(jSONObject, TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, Module.ALL);
        this.f8056c = JsonUtils.getStringList(jSONObject, "segments", null);
    }

    public String a() {
        return this.f8054a;
    }

    public String b() {
        return this.f8055b;
    }

    public List c() {
        return this.f8056c;
    }
}
