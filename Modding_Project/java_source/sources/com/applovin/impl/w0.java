package com.applovin.impl;

import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.DataLoaderHelper;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class w0 {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f10456a;

    /* loaded from: classes2.dex */
    public enum a {
        NEUTRAL,
        POSITIVE,
        NEGATIVE
    }

    private w0(JSONObject jSONObject) {
        this.f10456a = jSONObject;
    }

    public static w0 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        String string = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "title", (JSONObject) null), "key", null);
        if ("TOS".equalsIgnoreCase(string) && kVar.y().h() == null) {
            return null;
        }
        if ("PP".equalsIgnoreCase(string) && kVar.y().f() == null) {
            return null;
        }
        return new w0(jSONObject);
    }

    public String b() {
        return JsonUtils.getString(this.f10456a, NotificationCompat.CATEGORY_EVENT, null);
    }

    public a c() {
        String string = JsonUtils.getString(this.f10456a, TtmlNode.TAG_STYLE, null);
        if (DataLoaderHelper.PRELOAD_DEFAULT_SCENE.equalsIgnoreCase(string)) {
            return a.POSITIVE;
        }
        if (!"destructive".equalsIgnoreCase(string) && !"cancel".equalsIgnoreCase(string)) {
            return a.NEUTRAL;
        }
        return a.NEGATIVE;
    }

    public String d() {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f10456a, "title", (JSONObject) null);
        return com.applovin.impl.sdk.k.a(JsonUtils.getString(jSONObject, "key", ""), JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "replacements", null), null));
    }

    public String toString() {
        return "ConsentFlowStateAlertAction{title=" + d() + ", destinationStateId=" + a() + ", event=" + b() + "}";
    }

    public int a() {
        return JsonUtils.getInt(this.f10456a, "destination_state_id", -1);
    }
}
